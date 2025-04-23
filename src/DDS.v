`timescale 1ns / 1ps

module DDS(
	input       clk,
    input       rstn,
 
    input [7:0] DATA,
    input       DATA_VALID,

    input       dds_update,

    input [15:0] control_reg,
    input [15:0] frequency_reg0_LSB,
    input [15:0] frequency_reg0_MSB,
    input [15:0] phase_reg0,
    input [15:0] exit_reset,

    output reg  SDATA,
    output reg  SCLK,
    output reg  FSYNC,
    output reg  SDATA_RDY

	);
		
	localparam IDLE = 0;
	localparam SEND = 1;
	localparam DONE = 2;
	
	//localparam control_reg        = 16'h2100;
	//localparam frequency_reg0_LSB = 16'h50C7;
	//localparam frequency_reg0_MSB = 16'h4000;
	//localparam phase_reg0         = 16'hC000;
	//localparam exit_reset         = 16'h2000;
	
    reg [3:0] state;
    reg [7:0] count;
    reg [7:0] DATA_TMP;

	
	always @(posedge clk) begin
		if (!rstn) begin
             SCLK <= 0;
             SDATA <= 0;
             DATA_TMP <= 0;
             SDATA_RDY <= 0;
        end else begin
			case(state)
				IDLE: begin
					      if (DATA_VALID) begin
                              DATA_TMP <= DATA;
                              state <= SEND;
                          end
                          SDATA_RDY <= 0;
				      end
				SEND: begin
					     if (count < 7) begin
                             SCLK <= ~SCLK;
                             SDATA <= DATA_TMP[7];
                             DATA_TMP <= DATA_TMP << 1;
                             count <= count + 1;
						 end else begin
                                    count <= 0;
						            state <= DONE;
					             end
				      end
				DONE: begin
					     SDATA_RDY <= 1;
                         state <= IDLE;
                      end
			endcase
		end
	end
	
endmodule