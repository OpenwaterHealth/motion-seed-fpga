///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: address_decode.v
// File history:
//      <Revision number>: <Date>: <Comments>
//      <Revision number>: <Date>: <Comments>
//      <Revision number>: <Date>: <Comments>
//
// Description: 
//
// <Description here>
//
// Targeted device: <Family::ProASIC3> <Die::A3PN030Z> <Package::48 QFN>
// Author: <Name>
//
/////////////////////////////////////////////////////////////////////////////////////////////////// 

`timescale 1ns / 1ps

module address_decode(
	input            clk,
    input            rstn,
 
    input            spi_ss,
    input [7:0]      rx_data,
    input            rx_valid,

    output reg [7:0]  address,
    output reg        address_valid,
    output reg [15:0] data,
    output reg        data_valid

	);
		
parameter   IDLE        = 4'd0,
            CAP_ADDR    = 4'd1, 
            CAP_DATA    = 4'd2, 
            DONE        = 4'd3;

reg [3:0] state;
reg       index;

	always @(posedge clk or negedge rstn) begin
		if (!rstn) begin
             index <= 0;
             address <= 0;
             address_valid <= 0;
             data <= 0;
             data_valid <= 0;
             state <= IDLE;
        end else begin
                    case (state)
                           IDLE :  begin
                                        if (!spi_ss) state <= CAP_ADDR;
                                        data_valid <= 0;
                                   end
                       CAP_ADDR :  begin
                                      address <= rx_data;
                                      address_valid <= 1;
                                      state <= CAP_DATA;
                                   end
                       CAP_DATA :  begin
                                      address_valid <= 0;
                                      if (spi_ss) begin
                                          index <= 0;
                                          state <= DONE;
                                      end else begin
                                                  case (index)
                                                        0 : begin
                                                                data[7:0] <= rx_data;
                                                                index <= 1;
                                                            end
                                                        1 : begin
                                                                data[15:8] <= rx_data;
                                                                index <= 0;
                                                                state <= DONE;
                                                            end
                                                  endcase
                                               end
                                   end
                           DONE :  begin
                                         data_valid <= 1;
                                         state <= IDLE;
                                   end
                    endcase
		        end
	end
	
endmodule

