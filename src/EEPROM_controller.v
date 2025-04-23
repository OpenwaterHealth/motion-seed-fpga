///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: EEPROM_controller.v
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

module EEPROM_controller(
	input            clk,
    input            rstn,
 
    input [7:0]      address,
    input [15:0]     data,
    input            data_valid,

    input            SI,
    output reg       SO,
    output           SCK,
    output reg       CSn,

    output reg       data_ready

	);
		
localparam IDLE      = 0;
localparam SEND_CMD  = 1;
localparam SEND_ADDR = 2;
localparam SEND_DATA = 3;
localparam DONE      = 4;

localparam READ     = 8'b0000011;
localparam WRITE    = 8'b0000010;
localparam WRDI     = 8'b0000100;
localparam WREN     = 8'b0000110;
localparam RDSR     = 8'b0000101;
localparam WRSR     = 8'b0000001;
	
reg [3:0] state;
reg [7:0] count;

reg [7:0] save_cmd;
reg [7:0] address_temp,save_address;
reg [15:0] data_temp,save_data;
reg        data_valid_temp;
reg        enable;

assign SCK = clk & enable;

	always @(negedge clk or negedge rstn) begin
		if (!rstn) begin
             state <= IDLE;
             count <= 0;
             enable <= 0;
             CSn <= 1;
             SO <= 0;
             save_data <= 0;
             data_ready <= 1;
             save_cmd <= 0;
             address_temp <= 0;
             data_temp <= 0;
             data_valid_temp <= 0;
        end else begin
                    save_cmd <= WREN;
                    address_temp <= address;
                    data_temp <= data;
                    data_valid_temp <= data_valid;
                    case(state)
                        IDLE: begin
                                  if (data_valid_temp) begin
                                      save_address <= address_temp;
                                      save_data <= data_temp;
                                      data_ready <= 0;
                                      state <= SEND_CMD;
                                  end
                              end
                    SEND_CMD: begin
                                  CSn <= 0;
                                  data_ready <= 0;
                                  if (count < 7) begin
                                      enable <= 1;
                                      SO <= save_cmd[7];
                                      save_cmd <= save_cmd << 1;
                                      count <= count + 1;
                                 end else begin
                                              SO <= save_address[7];
                                              save_address <= save_address << 1;
                                              count <= 1;
                                              state <= SEND_ADDR;
                                         end
                              end
                   SEND_ADDR: begin
                                  CSn <= 0;
                                  data_ready <= 0;
                                  if (count < 7) begin
                                      enable <= 1;
                                      SO <= save_address[7];
                                      save_address <= save_address << 1;
                                      count <= count + 1;
                                 end else begin
                                              SO <= save_data[15];
                                              save_data <= save_data << 1;
                                              count <= 1;
                                              state <= SEND_DATA;
                                         end
                              end
                   SEND_DATA: begin
                                  if (count < 14) begin
                                      enable <= 1;
                                      SO <= save_data[15];
                                      save_data <= save_data << 1;
                                      count <= count + 1;
                                 end else begin
                                              count <= 0;
                                              state <= DONE;
                                         end
                              end
                        DONE: begin
                                  CSn <= 1;
                                  SO <= 0;
                                  enable <= 0;
                                  data_ready <= 1;
                                  state <= IDLE;
                              end
			         endcase
		        end
	end
	
endmodule