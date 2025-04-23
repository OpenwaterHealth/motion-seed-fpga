//   ==================================================================
//   >>>>>>>>>>>>>>>>>>>>>>> COPYRIGHT NOTICE <<<<<<<<<<<<<<<<<<<<<<<<<
//   ------------------------------------------------------------------
//   Copyright (c) 2020 by Lattice Semiconductor Corporation
//   ALL RIGHTS RESERVED 
//   ------------------------------------------------------------------
//
//   Permission:
//
//      Lattice SG Pte. Ltd. grants permission to use this code
//      pursuant to the terms of the Lattice Reference Design License Agreement. 
//
//
//   Disclaimer:
//
//      This VHDL or Verilog source code is intended as a design reference
//      which illustrates how these types of functions can be implemented.
//      It is the user's responsibility to verify their design for
//      consistency and functionality through the use of formal
//      verification methods.  Lattice provides no warranty
//      regarding the use or functionality of this code.
//
//   --------------------------------------------------------------------
//
//                  Lattice SG Pte. Ltd.
//                  101 Thomson Road, United Square #07-02 
//                  Singapore 307591
//
//
//                  TEL: 1-800-Lattice (USA and Canada)
//                       +65-6631-2000 (Singapore)
//                       +1-503-268-8001 (other locations)
//
//                  web: http://www.latticesemi.com/
//                  email: techsupport@latticesemi.com
//
//   --------------------------------------------------------------------
// 
//  Project  : I2C Slave Peripheral using soft-based I2C core
//  File Name: i2cslave_controller_top.v
// 
//  Description: This file is the top module wrapper for the soft-based I2C core.
//
//  Code Revision History :
//-------------------------------------------------------------------------
// Ver: | Author	| Mod. Date		|Changes Made:
// V1.0 | AISLA 	| 2020-Mar-24	|Initial version  
// V1.1 | AISLA 	| 2021-Mar-24	|Moved the data_vld strobe before the data byte during read.         
// V1.2 | AISLA		| 2022-Nov-28	|Added glitch filters to the SDA and SCL lines. Modified the Stretch Routine.
//-------------------------------------------------------------------------
`timescale 1 ns / 1 ps

module i2cslave_controller_top #(
/**********************************************************************************
* Paramaters
**********************************************************************************/
				parameter	SLAVE_ADDRESS		=	10'b11_1100_0001, //	10-bit slave address. If 7-bit addressing mode is enabled, then the controller will take only slave_addr[6:0].
				parameter	ADDR_10BIT_ENABLE 	= 	1'b0)			//	1'b1 = Enable, 1'b0 = Disable
				
/*********************************************************************************
* Bidirectional Ports
*********************************************************************************/
			(	inout wire			scl,					// Serial clock line
				inout wire			sda,					// Serial data line

/*********************************************************************************
* Input Ports
*********************************************************************************/
				input wire			clk,					// System clock
				input wire			reset,					// Reset signal
				input wire			stretch_on,				// Ready signal from slave side	
				input wire[7:0]		data_in,				// Parallel input data to be transmitted through I2C bus

/**********************************************************************************
* Output Ports
***********************************************************************************/				
				output wire			start,					// Status signal - indicates the start of I2C transmission
				output wire			stop,					// Status signal - indicates the stop of I2C transmission
				output wire			data_vld,				// Status signal - indicates data is ready
				output wire			r_w,					// Status signal - indicates master is reading or writing to the slave
				output wire[7:0]	data_out				// Parallel output data received from I2C bus
);

/**********************************************************************************
* Internal Signals
**********************************************************************************/
wire			o_data_valid;
wire		    o_i2cs_busy;
wire            o_sda_tri_en;
wire         	o_scl_tri_en;
wire           	o_tx_status;
wire          	o_wr_done;
wire 	     	o_rw_intr;  
wire			i_scl; 
wire			i_sda; 
wire			i_sclk_stretch_en;
wire			scl_filtered;
wire			sda_filtered;
reg				scl_ff;
wire			scl_rising;
wire			scl_falling;
reg[3:0]		count_reg;
reg[3:0]		count_next;


filter filter_scl_inst (
.clk		(clk),
.rst		(reset),
.in			(scl),
.out		(scl_filtered)
);

filter filter_sda_inst (
.clk		(clk),
.rst		(reset),
.in			(sda),
.out		(sda_filtered)
);

i2cslave_controller 
#(
				.i_slave_addr(SLAVE_ADDRESS), 
				.i_addr_10bit_en(ADDR_10BIT_ENABLE)
)i2cslave_controller_u1 (	
				.i_sys_clk(clk),
				.i_rst(reset),
				.i_data(data_in),
				.o_data(data_out),
				.o_data_valid(o_data_valid),	
				.i_sclk_stretch_en(i_sclk_stretch_en),
				.o_i2cs_busy(o_i2cs_busy),			
				.o_tx_status(o_tx_status),
				.o_wr_done(o_wr_done),			
				.i_scl(i_scl),					
				.i_sda(i_sda),					
				.o_sda(o_sda),					
				.o_scl(o_scl),
				.o_scl_tri_en(o_scl_tri_en),
				.o_sda_tri_en(o_sda_tri_en),					
				.o_rw_intr(o_rw_intr),
				.o_stop(stop),
				.o_start(start) 
);


/**********************************************************************************
* Main Ports
**********************************************************************************/
assign	scl  = o_scl_tri_en ? 1'bZ : o_scl;
assign	i_scl = scl_filtered;
assign	sda  = o_sda_tri_en ? 1'bZ : o_sda;
assign	i_sda = sda_filtered;
assign	data_vld = (o_wr_done || o_data_valid) ? 1'b1 : 1'b0; 
assign	r_w = ~o_tx_status;


/**********************************************************************************
* Stretch Routine
**********************************************************************************/
always @ (posedge clk or posedge reset) begin
	if (reset) begin
			scl_ff		<= 0;
			count_reg	<= 0;
		end
	else begin
			scl_ff 		<= scl_filtered;
			count_reg	<= count_next;
		end
end
		
assign scl_rising	= (scl_filtered && ~scl_ff && o_i2cs_busy);
assign scl_falling	= (~scl_filtered && scl_ff && o_i2cs_busy);	
	
always @* begin
count_next = count_reg;
	if (scl_falling) begin
		if (count_reg == 8)
			count_next = 0;
		else
			count_next = count_reg + 1;
		end
	else if (start || stop)
		count_next = 0;
end

assign i_sclk_stretch_en = ((count_next == 0) && (stretch_on) && (o_i2cs_busy)) ? 1'b1 : 1'b0; // Apply clock stretching on the SCL negative edge on the ACK bit.

endmodule