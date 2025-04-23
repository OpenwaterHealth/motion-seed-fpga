`timescale 1 ns / 1 ps


module i2c_process (
      input       i_rst,
      input       i_sys_clk,
      input [7:0] pointer,
      input [7:0] i_data,
      input [7:0] o_data,
      input       o_data_valid
);
                                                      
    // Main Slave FSM States
    parameter    IDLE   =  4'b000;
    parameter    DONE   =  4'b001;
    
    
reg [7:0] reg_0,reg_1,reg_2,reg_3,reg_4,reg_5,reg_6,reg_7;

always @(posedge i_sys_clk or posedge i_rst) begin
      if (i_rst) begin
	        reg_0 <= 0;
	        reg_1 <= 0;
	        reg_2 <= 0;
	        reg_3 <= 0;
	        reg_4 <= 0;
	        reg_5 <= 0;
	        reg_6 <= 0;
	        reg_7 <= 0;
      end else begin
                    case(pointer)
                         8'h00 : reg_0 <= i_data;
                         8'h01 : reg_1 <= i_data;
                         8'h02 : reg_2 <= i_data;
                         8'h03 : reg_3 <= i_data;
                         8'h04 : reg_4 <= i_data;
                         8'h05 : reg_5 <= i_data;
                         8'h06 : reg_6 <= i_data;
                         8'h07 : reg_7 <= i_data;
                    endcase
	           end
    
end  



endmodule