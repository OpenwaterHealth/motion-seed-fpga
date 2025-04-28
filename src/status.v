///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: top.v
// File history:
//      <Revision number>: <Date>: <Comments>
//      <Revision number>: <Date>: <Comments>
//      <Revision number>: <Date>: <Comments>
//
// Description: 
//
// <Description here>
//
// Targeted device: <Family::ProASIC3> <Die::A3PN010> <Package::48 QFN>
// Author: <Name>
//
/////////////////////////////////////////////////////////////////////////////////////////////////// 

`timescale 1ns/100ps

module status( 
    input            rstn,
    input            clk,

    input [7:0]      address,
    input            address_valid,

    input [15:0]     adc_data_value,
    input            adc_data_valid,

    input [7:0]      rx_data,
    input            rx_valid,

    output reg [7:0] tx_data,
    output reg       tx_valid
);

reg [7:0] reg1;
reg [5:0] wr_addr;
reg [5:0] addr;
reg read,write;

always @(posedge clk,negedge rstn)
begin
    if (!rstn) begin
        reg1 <= 0;     
    end else begin
                if (address_valid) begin
                    case(address)
                        7'h0 : reg1 <= rx_data;
                    endcase
                end
            end
end

always @(posedge clk,negedge rstn)
begin
    if (!rstn) begin
        tx_valid <= 0;     
        tx_data <= 0;     
    end else begin
                if (address_valid) begin
                    case(address)
                        7'h0 : begin
                                    tx_valid <= 1;
                                    tx_data <= 8'h55;
                               end
                        7'h1 : begin
                                    tx_valid <= 1;
                                    tx_data <= adc_data_value[7:0];
                               end
                        7'h2 : begin
                                    tx_valid <= 1;
                                    tx_data <= adc_data_value[15:8];
                               end
                    endcase
                end else begin
                            tx_valid <= 0;
                            tx_data <= 0;
                         end
            end
end


endmodule

