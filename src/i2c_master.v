`timescale 1 ns / 1 ns

module i2c_master(
SDA,
SCL,
RST
);
input  RST;
inout  SCL;
inout  SDA;
parameter i2c_delay=900000;

reg scl_en;
reg sda_out,master_ack;
wire sda_in;
assign SDA=sda_out?1'bz:1'b0;
assign sda_in=SDA;

assign SCL=scl_en?1'bz:1'b0;

pullup(SDA);
pullup(SCL);

always@(posedge RST)
begin
	if(RST)
	begin
		sda_out<=1'b1;
		master_ack<=1'b1;

		scl_en<=1'b1;
	end
	else
	begin
		sda_out<=sda_out;
		scl_en<=scl_en;
	end
end


//---------------------------------------------------
//-----------------------base function---------------
//---------------------------------------------------
task start_bit;
begin
	sda_out=1'b0;
	#i2c_delay;
	scl_en=1'b0;
	#i2c_delay;
	$display("I2C START\n");
end
endtask



task stop_bit;
begin
	sda_out=1'b0;
	#i2c_delay;
	scl_en='b1;
	#i2c_delay;
	sda_out=1'b1;
	#i2c_delay;
	$display("I2C STOP\n");
end
endtask


task send_byte;
input [7:0] data;
integer i;
begin
	#i2c_delay;
	for(i=0;i<=7;i=i+1)
	begin
		sda_out=data[7-i];
		#i2c_delay;
		scl_en=1'b1;
		#i2c_delay;
		scl_en=1'b0;
	//	#i2c_delay;
	end
	$display("SEND BYTE %h\n",data);
end
endtask

task detect_ack;
begin
	#i2c_delay;
	scl_en=1'b1;
	if(sda_in==1'b0)
		$display("DETECT ACK\n");
	else
		$display($time,"ERROR ACK\n");
	#i2c_delay;
	scl_en=1'b0;
end
endtask


task restart;
begin
	scl_en=1'b0;
	#i2c_delay;
	sda_out=1'b1;
	#i2c_delay;
	scl_en=1'b1;
	#i2c_delay;
	start_bit();
	$display("I2C RESTART\n");
end
endtask


task receive_byte;
output [7:0] data;
integer i;
begin
	#i2c_delay;
	for(i=0;i<=7;i=i+1)
	begin
		#i2c_delay;
		scl_en=1'b1;
		data[7-i]=sda_in;
		#i2c_delay;
		scl_en=1'b0;
	end
	//gen ack or gen stop;
	$display("RECEIVE BYTE %h\n",data);
end
endtask

task gen_scl;
input cycles;
integer i;
begin
	for(i=0;i<cycles;i=i+1)
	begin
		#i2c_delay;
		scl_en=1'b1;
		#i2c_delay;
		scl_en=1'b0;
	end
	#i2c_delay;
	scl_en=1'b1;
	$display("MASTER GEN %d SCL CYCLES\n",cycles);
end
endtask

task gen_ack;
begin
//	#i2c_delay;
//	scl_en=1'b0;
	#i2c_delay;
	sda_out=1'b0;
	master_ack=1'b0;
	#i2c_delay;
	scl_en=1'b1;
	#i2c_delay;
	scl_en=1'b0;
	#i2c_delay;
	sda_out=1'b1;
	master_ack=1'b1;
	$display("MASTER GEN ACK\n");
end
endtask





//-----------------------------------------------------
//-----------------------functions---------------------
//-----------------------------------------------------
task i2c_write;
input [6:0] addr;
input [7:0] index;
input [7:0] data;
integer i;
begin
	start_bit();
	send_byte({addr,1'b0});//write
	detect_ack();
	send_byte(index);
	detect_ack();
	send_byte(data);
	detect_ack();
	stop_bit();
	gen_scl(3);//for detect the stop to idle
	$display("write Addr=%h   Data=%h\n",addr,data);
end
endtask

task i2c_continue_write;
input [6:0] addr;
input [7:0] index;
input [7:0] data;
integer i;
begin
	start_bit();
	send_byte({addr,1'b0});//write
	detect_ack();
	send_byte(index);
	detect_ack();
	send_byte(data);
	detect_ack();
	send_byte(data+8'h11);
	detect_ack();
	send_byte(data+8'h22);
	detect_ack();
	send_byte(data+8'h33);
	detect_ack();
	send_byte(data+8'h44);
	detect_ack();
	send_byte(data+8'h55);
	detect_ack();
	send_byte(data+8'h66);
	detect_ack();
	send_byte(data+8'h77);
	detect_ack();
	stop_bit();
	gen_scl(3);//for detect the stop to idle
	$display("write Addr=%h   Data=%h\n",addr,data);
end
endtask

task i2c_read;
input [6:0] addr;
input [7:0] index;
output [7:0] data;
begin
	start_bit();
	send_byte({addr,1'b0});//write
	detect_ack();
	send_byte(index);
	detect_ack();
	
	restart();
	send_byte({addr,1'b1});//read
	detect_ack();
    receive_byte(data);
	gen_ack();
	stop_bit();

	$display("read Bytes=%d to Addr=%h\n",data,addr);
end
endtask

task openwater_i2c_read;
input [6:0] addr;
input [7:0] index;
output [7:0] data;
begin
	start_bit();
	send_byte({addr,1'b0});//write
	detect_ack();
	send_byte(index);
	detect_ack();
	stop_bit();
    #i2c_delay;
    #i2c_delay;
	start_bit();
	send_byte({addr,1'b1});//read
	detect_ack();
    receive_byte(data);
	gen_ack();
	stop_bit();

	$display("Address=%h    Data=%h \n",index,data);
end
endtask

task openwater_i2c_continue_read;
input [6:0] addr;
output [7:0] data;
begin
	start_bit();
	send_byte({addr,1'b1});    //read
	detect_ack();
    receive_byte(data);
	gen_ack();
	$display("Read Data=%h \n",data);

    receive_byte(data);
	gen_ack();
	stop_bit();

	$display("Read Data=%h \n",data);
end
endtask


endmodule