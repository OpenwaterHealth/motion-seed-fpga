
//FOR WRITE----------------------------------------------

/*START
Master-to-slave: device address, R/W# = 0 (0xAA)
Master-to-slave: register index (0x03)
Master-to-slave: register data (0x57)
STOP*/

//FOR READ-----------------------------------------------

/*START
Master-to-slave: device address, R/W# = 0 (0xAA)
Master-to-slave: register index (0x03)
RESTART
Master-to-slave: device address, R/W# = 1 (0xAB)
Slave-to-master (not acked): register data (0x57)
STOP*/

//-------------------------------------------------------

module i2c(
   input RST,
   input SCL,
   inout SDA,

   input [7:0]   status,

   output [15:0] dds_control_reg,
   output [15:0] dds_gain,
   output [15:0] cw_gain,
   output [15:0] dds_current_limit,
   output [15:0] cw_current_limit,
   output [15:0] adc_current_limit,
   output [7:0]  control,
   output        clear,

   output        write_strobe,
   output        lsb_bit,
   output        ack_bit

);

parameter [2:0] STATE_IDLE      = 3'h0,//idle
                STATE_DEV_ADDR  = 3'h1,//the slave addr match
                STATE_READ      = 3'h2,//the op=read 
                STATE_IDX_PTR   = 3'h3,//get the index of inner-register
                STATE_WRITE     = 3'h4;//write the data in the reg 


reg             start_detect;
reg             start_resetter;

reg             stop_detect;
reg             stop_resetter;

reg [3:0]       bit_counter;
reg [7:0]       input_shift;
reg             master_ack;
reg [2:0]       state;
reg [7:0]       reg_0,reg_1,reg_2,reg_3,reg_4,reg_5,reg_6,reg_7; 
reg [7:0]       reg_8,reg_9,reg_10,reg_11,reg_12,reg_13,reg_14,reg_15; 
reg [7:0]       reg_16,reg_17,reg_18,reg_19,reg_20,reg_21,reg_22,reg_23; 
reg [7:0]       output_shift;
reg             output_control;
reg [7:0]       index_pointer;

parameter [6:0] device_address = 7'h55;
wire            start_rst = RST | start_resetter;//detect the START for one cycle
wire            stop_rst = RST | stop_resetter;//detect the STOP for one cycle
wire            lsb_bit = (bit_counter == 4'h7) && !start_detect;//the 8bits one byte data
wire            ack_bit = (bit_counter == 4'h8) && !start_detect;//the 9bites ack 
wire            address_detect = (input_shift[7:1] == device_address);//the input address match the slave
wire            read_write_bit = input_shift[0];// the write or read operation 0=write and 1=read
wire            write_strobe = (state == STATE_WRITE) && ack_bit;//write state and finish one byte=8bits
assign          SDA = output_control ? 1'bz : 1'b0;

////////////////////////////////////////////////////////////////////////
assign dds_control_reg          = {reg_1,reg_0};
assign dds_gain                 = {reg_3,reg_2};
assign cw_gain                  = {reg_5,reg_4};
assign dds_current_limit        = {reg_7,reg_6};
assign cw_current_limit         = {reg_9,reg_8};
assign adc_current_limit        = {reg_11,reg_10};
assign control                  = reg_16;
assign clear                    = reg_17[0];

//---------------------------------------------
//---------------detect the start--------------
//---------------------------------------------
always @ (posedge start_rst or negedge SDA)
begin
        if (start_rst)
                start_detect <= 1'b0;
        else
                start_detect <= SCL;
end

always @ (posedge RST or posedge SCL)
begin
        if (RST)
                start_resetter <= 1'b0;
        else
                start_resetter <= start_detect;
end

//---------------------------------------------
//---------------detect the stop---------------
//---------------------------------------------
always @ (posedge stop_rst or posedge SDA)
begin   
        if (stop_rst)
                stop_detect <= 1'b0;
        else
                stop_detect <= SCL;
end

always @ (posedge RST or posedge SCL)
begin   
        if (RST)
                stop_resetter <= 1'b0;
        else
                stop_resetter <= stop_detect;
end

//---------------------------------------------
//---------------latch the data---------------
//---------------------------------------------
always @ (negedge SCL or posedge RST)
begin
        if (ack_bit || start_detect || RST) begin
            bit_counter <= 4'h0;
        end else begin
                 bit_counter <= bit_counter + 4'h1;
             end
end

always @ (posedge SCL or posedge RST)
begin   
        if (RST) input_shift <= 0;
        else begin
                 if (!ack_bit) input_shift <= {input_shift[6:0], SDA};
             end

end
//---------------------------------------------
//------------slave-to-master transfer---------
//---------------------------------------------
always @ (posedge SCL)
        if (ack_bit) master_ack <= ~SDA;

always @ (posedge RST or negedge SCL)
begin
        if (RST)
                state <= STATE_IDLE;
        else if (start_detect)
                state <= STATE_DEV_ADDR;
        else if (ack_bit)
        begin
                case (state)
                STATE_IDLE:
                        state <= STATE_IDLE;

                STATE_DEV_ADDR:
                        if (!address_detect)
                                state <= STATE_IDLE;
                        else if (read_write_bit)
                                state <= STATE_READ;
                        else
                                state <= STATE_IDX_PTR;

                STATE_READ:
                        if (master_ack)
                                state <= STATE_READ;
                        else
                                state <= STATE_IDLE;

                STATE_IDX_PTR:
                        state <= STATE_WRITE;

                STATE_WRITE:
                        state <= STATE_WRITE;
                endcase
        end
        else if(stop_detect) 
                state <= STATE_IDLE;
end

//---------------------------------------------
//------------Register transfers---------------
//---------------------------------------------

//-------------------for index----------------
always @ (posedge RST or negedge SCL)
begin
        if (RST)
                index_pointer <= 8'h00;
        else if (stop_detect)
                index_pointer <= 8'h00;
        else if (ack_bit)
        begin
                if (state == STATE_IDX_PTR) 
                        index_pointer <= input_shift;
                else
                        index_pointer <= index_pointer + 8'h01;
        end
end

//----------------for write---------------------------
always @ (posedge RST or negedge SCL)
begin
        if (RST)
        begin
                reg_0 <= 8'h00;
                reg_1 <= 8'h00;
                reg_2 <= 8'h00;
                reg_3 <= 8'h00;
                reg_4 <= 8'h00;
                reg_5 <= 8'h00;
                reg_6 <= 8'h00;
                reg_7 <= 8'h00;
                reg_8 <= 8'h00;
                reg_9 <= 8'h00;
                reg_10 <= 8'h00;
                reg_11 <= 8'h00;
                reg_12 <= 8'h00;
                reg_13 <= 8'h00;
                reg_14 <= 8'h00;
                reg_15 <= 8'h00;
                reg_16 <= 8'h00;
                reg_17 <= 8'h00;
                reg_18 <= 8'h00;
                reg_19 <= 8'h00;
                reg_20 <= 8'h00;
                reg_21 <= 8'h00;
                reg_22 <= 8'h00;
                reg_23 <= 8'h00;
        end else begin
                    if (write_strobe) begin
                        case (index_pointer)
                               8'h0 : reg_0 <= input_shift;
                               8'h1 : reg_1 <= input_shift;
                               8'h2 : reg_2 <= input_shift;
                               8'h3 : reg_3 <= input_shift;
                               8'h4 : reg_4 <= input_shift;
                               8'h5 : reg_5 <= input_shift;
                               8'h6 : reg_6 <= input_shift;
                               8'h7 : reg_7 <= input_shift;
                               8'h8 : reg_8 <= input_shift;
                               8'h9 : reg_9 <= input_shift;
                               8'hA : reg_10 <= input_shift;
                               8'hB : reg_11 <= input_shift;
                               8'hC : reg_12 <= input_shift;
                               8'hD : reg_13 <= input_shift;
                               8'hE : reg_14 <= input_shift;
                               8'hF : reg_15 <= input_shift;
                               8'h10 : reg_16 <= input_shift;
                               8'h11 : reg_17 <= input_shift;
                               8'h12 : reg_18 <= input_shift;
                               8'h13 : reg_19 <= input_shift;
                               8'h14 : reg_20 <= input_shift;
                               8'h15 : reg_21 <= input_shift;
                               8'h16 : reg_22 <= input_shift;
                               8'h17 : reg_23 <= input_shift;
                         endcase
                    end
                end
end

//------------------------for read-----------------------
always @ (posedge RST or negedge SCL)
begin   
        if (RST) output_shift <= 0;
        else begin   
                case (index_pointer)
                8'h0: output_shift <= 8'h55;
              //  8'h0: output_shift <= reg_0;
                8'h1: output_shift <= reg_1;
                8'h2: output_shift <= reg_2;
                8'h3: output_shift <= reg_3;
                8'h4: output_shift <= reg_4;
                8'h5: output_shift <= reg_5;
                8'h6: output_shift <= reg_6;
                8'h7: output_shift <= reg_7;
                8'h8: output_shift <= reg_8;
                8'h9: output_shift <= reg_9;
                8'hA: output_shift <= reg_10;
                8'hB: output_shift <= reg_11;
                8'hC: output_shift <= reg_12;
                8'hD: output_shift <= reg_13;
                8'hE: output_shift <= reg_14;
                8'hF: output_shift <= reg_15;
                8'h10: output_shift <= reg_16;
                8'h11: output_shift <= reg_17;
                8'h12: output_shift <= reg_18;
                8'h13: output_shift <= reg_19;
                8'h14: output_shift <= reg_20;
                8'h15: output_shift <= reg_21;
                8'h16: output_shift <= reg_22;
                8'h17: output_shift <= status;
                endcase
        end 
end

//---------------------------------------------
//------------Output driver--------------------
//---------------------------------------------

always @ (posedge RST or negedge SCL)
begin   
        if (RST)
                output_control <= 1'b1;
        else if (start_detect)
                output_control <= 1'b1;
        else if (lsb_bit)
        begin   
                output_control <=
                    !(((state == STATE_DEV_ADDR) && address_detect) ||
                      (state == STATE_IDX_PTR) ||
                      (state == STATE_WRITE)); 
        end
        else if (ack_bit)
        begin
                if (((state == STATE_READ) && master_ack) ||
                    ((state == STATE_DEV_ADDR) &&
                        address_detect && read_write_bit))
                        output_control <= output_shift[7];
                else
                        output_control <= 1'b1;
        end
        else if (state == STATE_READ)
                output_control <= output_shift[7];
        else
                output_control <= 1'b1;
end
endmodule