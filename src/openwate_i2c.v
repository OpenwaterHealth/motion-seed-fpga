`timescale 1 ns / 1 ns

module openwater_i2c(
   input RST,
   input SYS_CLK,
   input SCL,
   inout SDA,

   output [31:0] current_limit,
   output [7:0]  control,
   output        clear, 

   output [7:0]  dds_control_reg,
   output [15:0] dds_frequency_reg0_LSB,
   output [15:0] dds_frequency_reg0_MSB,
   output [15:0] dds_phase_reg0,
   output [15:0] dds_exit_reset,

   output [15:0] cw_data

);

parameter [2:0] STATE_IDLE                  = 3'h0,//idle
                STATE_DEV_ADDR              = 3'h1,//the slave addr match
                STATE_DEV_ADDR_ACK          = 3'h2,//the slave addr match
                STATE_READ                  = 3'h3,//the op=read 
                STATE_IDX_PTR               = 3'h4,//get the index of inner-register
                STATE_WRITE                 = 3'h5,//write the data in the reg 
                STATE_INC_POINTER           = 3'h6;//write the data in the reg 


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
reg [7:0]       index_pointer=0;
reg             read_write_bit,read_write_bit_d;
reg             address_detect;
reg             write_strobe;

parameter [6:0] device_address = 7'h55;
wire            start_rst = RST | start_resetter;//detect the START for one cycle
wire            stop_rst = RST | stop_resetter;//detect the STOP for one cycle
wire            lsb_bit = (bit_counter == 4'h7) && !start_detect;//the 8bits one byte data
wire            ack_bit = (bit_counter == 4'h8) && !start_detect;//the 9bites ack 
//wire            address_detect = (input_shift[7:1] == device_address);//the input address match the slave
//wire            address_detect = (input_shift[6:0] == device_address);//the input address match the slave
//wire            write_strobe = (state == STATE_WRITE) && ack_bit;//write state and finish one byte=8bits
assign          SDA = output_control ? 1'bz : 1'b0;
////////////////////////////////////////////////////////////////////////
assign current_limit            = {reg_1,reg_0};
assign dds_control_reg          = reg_2;
assign dds_frequency_reg0_LSB   = {reg_4,reg_3};
assign dds_frequency_reg0_MSB   = {reg_6,reg_5};
assign dds_phase_reg0           = {reg_8,reg_7};
assign dds_exit_reset           = {reg_10,reg_9};
assign cw_data                  = {reg_12,reg_11};
assign control                  = reg_16;
assign clear                    = reg_17[0];

//---------------------------------------------
//---------------START detect--------------
//---------------------------------------------
always @ (posedge start_rst or negedge SDA)
begin
        if (start_rst)
                start_detect <= 1'b0;
        else
                if (state == STATE_IDLE) start_detect <= SCL;
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

always @ (posedge SYS_CLK,posedge RST)
begin
        if (RST) stop_resetter <= 0;
        else begin
                if (stop_detect) stop_resetter <= 1;
                else stop_resetter <= 0;
             end
end 

/////////////////////////////////////////////////////////////////
always @ (posedge RST or posedge SCL or posedge stop_detect)
begin   
        if (RST | stop_detect) begin
//              read_write_bit <= 0;
              read_write_bit_d <= 0;
        end else begin
                    read_write_bit_d <= read_write_bit;
//                    if (ack_bit & (state == STATE_DEV_ADDR_ACK))  read_write_bit <= input_shift[0];
                 end
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

always @ (posedge SCL or posedge RST or posedge stop_detect)
begin   
        if (RST | stop_detect) input_shift <= 0;
        else begin
                 if (!ack_bit) input_shift <= {input_shift[6:0], SDA};
             end

end

//---------------------------------------------
//------------slave-to-master transfer---------
//---------------------------------------------
always @ (posedge RST or posedge SCL) begin
        if (RST) master_ack <= 1;
        else if (ack_bit) master_ack <= SDA;
    end
     //   if (ack_bit) master_ack <= ~SDA;

always @ (posedge RST or posedge SCL or posedge stop_detect)
begin
        if (RST | stop_detect) begin
            //    index_pointer <= 0;
                write_strobe <= 0;
                address_detect <= 0;
                read_write_bit <= 0; 
                state <= STATE_IDLE;
        end else begin
                      case (state)
                            STATE_IDLE: begin 
                                            address_detect <=0;
                                            if (start_detect) begin
                                                state <= STATE_DEV_ADDR; 
                                            end
                                        end
                            STATE_DEV_ADDR: begin  //1
                                                if (bit_counter == 7)begin
                                                    address_detect = (input_shift[6:0] == device_address);
                                                 //   read_write_bit <= SDA;
                                                    state <= STATE_DEV_ADDR_ACK; 
                                                end
                                            end
                        STATE_DEV_ADDR_ACK: begin  //2
                                                if (ack_bit) begin
                                                    if (!address_detect) state <= STATE_IDLE;
                                                    else begin
                                                            case (input_shift[0]) 
                                                                   0 : state <= STATE_IDX_PTR;
                                                                   1 : begin
                                                                            read_write_bit <= 1;
                                                                            state <= STATE_READ;
                                                                       end
                                                            endcase
                                                         end
                                                end
                                            end
                            STATE_IDX_PTR: begin  //4
                                               if (ack_bit)begin
                                                   index_pointer <= input_shift;
                                                   state <= STATE_WRITE;
                                               end
                                           end
                            STATE_WRITE: begin //5
                                               if (ack_bit)begin
                                                   write_strobe <= 1;
                                                   state <= STATE_INC_POINTER;
                                               end else write_strobe <= 0;
                                         end
                      STATE_INC_POINTER: begin //6
                                               write_strobe <= 0;
                                               index_pointer <= index_pointer+ 1;
                                               state <= STATE_WRITE;
                                         end
                            STATE_READ: //3
                                    if (!master_ack)
                                            state <= STATE_READ;
                                    else
                                            state <= STATE_IDLE;
                     endcase
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

reg [7:0] output_data;

//------------------------for read-----------------------         
always @ (posedge RST or posedge SCL)
begin   
        if (RST) begin
            output_shift <= 0;
        end else begin   
                case (index_pointer)
                8'h0: output_shift <= reg_0;
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
                8'h17: output_shift <= reg_23;
                endcase
        end 
end

//---------------------------------------------
//------------Output driver--------------------
//---------------------------------------------
reg [3:0] count;

always @ (posedge RST or posedge SCL)
begin   
        if (RST) begin
            output_data <= 0;
        end else if (start_detect) output_data <= output_shift; 
                 else if (ack_bit & read_write_bit) output_data <= output_shift; 
end

always @ (posedge RST or negedge SCL)
begin   
        if (RST) begin
            count <= 7;
            output_control <= 1;
        end else begin
                 if ((state == STATE_DEV_ADDR_ACK) && (address_detect)) begin
                      output_control <= 0;
                 end else begin
                               if (state == STATE_READ) begin
                                   if (read_write_bit) begin
                                       if (lsb_bit) output_control <= 1;
                                   //    output_control <= output_data[count];
                                       if (ack_bit) begin
                                           output_control <= 1;
                                           count <= 7;
                                       end else begin
                                                    output_control <= output_data[count];
                                                    count <= count - 1;
                                                end
                                   end 
                               end else begin
                                            if (lsb_bit) output_control <= 0;
                                            else output_control <= 1;
                                        end
                          end
        end
end

endmodule