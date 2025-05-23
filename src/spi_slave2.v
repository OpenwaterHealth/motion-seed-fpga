`timescale 1ns /10ps
 
 module spi_slave2( 
 	input rstn,
 	input clk,
 	
 	// SPI signals
 	input spi_cs,
 	input spi_clk,
 	input spi_d_in,
 	output reg spi_d_o,
 	output spi_d_oe,
 	
 	// internal FPGA memory interface
 	output [10:0] mem_addr,	
 	output [4:0] mux_sel,
 	input [8:0] d_i,			// data out of FPGA memories
 	output reg [8:0] d_o,		// data into FPGA memories
	
 	// individual memory selects
 	output reg we,
 	output oe,
 	output reg dpram_tx_sel,
 	output reg dpram_rx_sel,
 	output reg dpram_ptrs_sel,
 	output reg [3:0] param_sel,
 	output reg pkt_filter_sel_01,
 	output reg pkt_filter_sel_02,
 	output reg pkt_filter_sel_03,
 	output reg pkt_filter_sel_10,
 	output reg pkt_filter_sel_12,
 	output reg pkt_filter_sel_13,
 	output reg pkt_filter_sel_20,
 	output reg pkt_filter_sel_21,
 	output reg pkt_filter_sel_23,
 	output reg pkt_filter_sel_2u,
 	output reg pkt_filter_sel_30,
 	output reg pkt_filter_sel_31,
 	output reg pkt_filter_sel_32,
 	output reg pkt_filter_sel_u2,
 	output reg interrupts_sel,
 	output reg[1:0] sci_sel_dual,
 	output reg[3:0] sci_sel_ch		
 );
 	
 	localparam start_code = 9'h76;
 	
 	wire bit_cnt_rstn;	// async reset at start of SPI cycle
 	
 	reg spi_clk_m1, spi_clk_m2;			// detect / debounce the SPI CLK
 	reg spi_clk_high, spi_clk_high_m1;		// one shot clocks for sequencing events 
 	reg spi_clk_low, spi_clk_low_m1;		// one shot clocks for sequencing events 
 	
 	reg [4:0] bit_cnt;	// cnt the bits
 	reg [6:0] word_cnt;	// number of bytes transferred, OK to roll over
 	
 	// capture these from SPI bus
 	reg [7:0] dev_ad;	// device address
 	reg rwn;			// follows address
 	reg [8:0] addr;		// address

	wire mem_sel, pkt_filter_sel;	//
	 	
 	// async reset at the start of each SPI transfer
 	assign bit_cnt_rstn = spi_cs & rstn;	
 	
 	// debounce and capture the asynch spi_clk
 	always @(posedge clk or negedge bit_cnt_rstn)
 	begin
 		if ( !bit_cnt_rstn ) begin
 			spi_clk_m1 <= 1'b0;
 			spi_clk_m2 <= 1'b0;
 		end
 		else if ( spi_cs ) begin
 			spi_clk_m1 <= spi_clk;
 			spi_clk_m2 <= spi_clk_m1;
 		end
 	end 
 	
 	// create two seq one shots for actions
 	always @(posedge clk or negedge bit_cnt_rstn)
 	begin
 		if ( !bit_cnt_rstn ) 
 			spi_clk_high <= 0;
 		else if ( spi_cs && spi_clk && spi_clk_m1 && !spi_clk_m2 )
 			spi_clk_high <= 1'b1;
 		else
 			spi_clk_high <= 1'b0;
 	end
 	
 	always @(posedge clk or negedge bit_cnt_rstn)
 	begin
 		if ( !bit_cnt_rstn ) 
 			spi_clk_high_m1 <= 0;
 		else
 			spi_clk_high_m1 <= spi_clk_high;
 	end
 	
	
 	// create two seq one shots for actions
 	always @(posedge clk or negedge bit_cnt_rstn)
 	begin
 		if ( !bit_cnt_rstn ) 
 			spi_clk_low <= 0;
 		else if ( spi_cs && spi_clk && !spi_clk_m1 && spi_clk_m2 )
 			spi_clk_low <= 1'b1;
 		else
 			spi_clk_low <= 1'b0;
 	end
 	
 	always @(posedge clk or negedge bit_cnt_rstn)
 	begin
 		if ( !bit_cnt_rstn ) 
 			spi_clk_low_m1 <= 0;
 		else
 			spi_clk_low_m1 <= spi_clk_low;
 	end
 
 	/* 
	bit_cnt indicates the state of the SPI transfer
	
	0:7: dev_ad
	8: rwn
	9:17: addr
	18:26: data (repeats)
 	 */
 	always @(posedge clk or negedge bit_cnt_rstn)
 	begin
 		if ( !bit_cnt_rstn )
 			bit_cnt <= 5'h0;
 		else if ( spi_cs && spi_clk_high_m1 ) begin
 			if ( bit_cnt == 5'd26 )
 				bit_cnt <= 5'd18;
 			else
 				bit_cnt <= bit_cnt + 1;
 		end
 	end
 	
 	// word_cnt
 	always @(posedge clk or negedge bit_cnt_rstn)
 	begin
 		if (!bit_cnt_rstn)
 			word_cnt <= 0;
 		else if ( spi_cs && spi_clk_high && bit_cnt == 5'd26 ) 
 			word_cnt <= word_cnt + 1;
 	end
 	
 	/* Logic to capture common dev_ad, rwn, and address */
 	
 	// capture dev_ad
 	always @(posedge clk or negedge bit_cnt_rstn)	
 	begin
 		if ( !bit_cnt_rstn )
 			dev_ad <= 'h0;
 		else if ( spi_cs && spi_clk_high && bit_cnt < 5'd8 )
 			dev_ad <= { dev_ad[6:0], spi_d_in };
 	end
 	
 	// capture rwn bit
 	always @(posedge clk or negedge bit_cnt_rstn)
 	begin
 		if ( !bit_cnt_rstn )
 			rwn <= 1'b1;
 		else if ( spi_cs && spi_clk_high && bit_cnt == 5'd8 )
 			rwn <= spi_d_in;
 	end
 	
 	// capture addr
 	always @(posedge clk or negedge bit_cnt_rstn)	
 	begin
 		if (!bit_cnt_rstn)
 			addr <= 'h0;
 		else if (spi_cs ) begin
 			if ( spi_clk_high && bit_cnt >= 5'd9 && bit_cnt <= 5'd17 )
 				addr <= { addr[7:0], spi_d_in };
 			// delay advancing addr until write completes
 			else if ( spi_clk_high_m1 && bit_cnt == 5'd26 )
 				addr <= addr + 1;
 		end
 	end

 	assign mem_addr = { dev_ad[1:0], addr };
 	
 	/* Logic for write data into FPGA */
 	
 	// capture write data
 	always @(posedge clk or negedge bit_cnt_rstn)	
 	begin
 		if (!bit_cnt_rstn)
 			d_o <= 8'h0;
 		else if (spi_cs && spi_clk_high && !rwn && bit_cnt >= 5'd18)
 			d_o <= { d_o[7:0], spi_d_in };
 	end 	
 	
 	// we
 	always @(posedge clk or negedge bit_cnt_rstn)
 		if (!bit_cnt_rstn)
 			we <= 1'b0;
 		else if ( spi_cs )
	 		if ( spi_clk_high && !rwn && bit_cnt == 5'd26 ) 
	 			we <= 1'b1;
	 		else
	 			we <= 1'b0;
 	
 	/* SPI data output enable */
	assign spi_d_oe = spi_cs;
 	
 
 	/* 
 	 * 	clock out msb first. 
 	 * 	
 	 */
 	always @(posedge clk or negedge bit_cnt_rstn)	
 	if ( !bit_cnt_rstn )
 		spi_d_o <= start_code[8];
 	else if ( spi_cs && spi_clk_high_m1 ) begin
		if ( bit_cnt < 9 )
			spi_d_o <= start_code['d8 - bit_cnt[3:0]];
	 	else if ( !rwn && bit_cnt >= 'd18 && bit_cnt < 'd26 )
	 		spi_d_o <= word_cnt['d25-bit_cnt];
		else if ( rwn && bit_cnt >= 'd18 && bit_cnt < 'd26 )
			spi_d_o <= d_i['d25-bit_cnt];			
		else
			spi_d_o <= 1'b0;
	 	end
	else if (spi_cs && spi_clk_high_m1 && rwn && bit_cnt == 'd26)
		spi_d_o <= d_i[8];

 	assign oe = mem_sel && rwn;
 		
 	/* Address Decoding */
 	assign pkt_filter_sel = pkt_filter_sel_01 | pkt_filter_sel_02 | pkt_filter_sel_10 | pkt_filter_sel_12 |
 		pkt_filter_sel_20 | pkt_filter_sel_21 | pkt_filter_sel_23;

 	assign mem_sel = dpram_rx_sel | dpram_tx_sel | dpram_ptrs_sel | pkt_filter_sel | param_sel[0] | 
 		param_sel[1] | param_sel[2] | param_sel[2] | interrupts_sel;
 	
 	
 	// use to steer data into this module 
 	assign mux_sel = dev_ad[6:2];
 	
 	// address decode
 	always @(*)
 	begin
 		sci_sel_dual = 2'b00;
 		sci_sel_ch = 4'b000;
 		dpram_rx_sel = 1'b0;
 		dpram_tx_sel = 1'b0;
 		dpram_ptrs_sel = 1'b0;
 		pkt_filter_sel_01 = 1'b0;
 		pkt_filter_sel_02 = 1'b0;
 		pkt_filter_sel_10 = 1'b0;
 		pkt_filter_sel_12 = 1'b0;
 		pkt_filter_sel_20 = 1'b0;
 		pkt_filter_sel_21 = 1'b0;
 		pkt_filter_sel_23 = 1'b0;
 		param_sel = 4'b0000;
 		interrupts_sel = 1'b0;
 		casez( dev_ad[7:0] ) 
 			8'b00000000: sci_sel_ch = 4'b0001;	// sgmii0
 			8'b00000001: sci_sel_ch = 4'b0010;	// sgmii1 
 			8'b00000010: sci_sel_dual = 2'b01;	// DCU0 Dual
 			8'b00000100: sci_sel_ch = 4'b0100;	// sgmii2
 			8'b00000101: sci_sel_ch = 4'b1000;	// sgmii3
 			8'b00000110: sci_sel_dual = 2'b10;	// DCU1 Dual
 			8'b000010??: dpram_rx_sel = 1'b1;		
 			8'b000011??: dpram_tx_sel = 1'b1;
 			8'b00010000: dpram_ptrs_sel = 1'b1;
 			8'b00010001: interrupts_sel = 1'b1;
 			8'b001000??: param_sel[0] = 1'b1;
 			8'b001001??: param_sel[1] = 1'b1;
 			8'b001010??: param_sel[2] = 1'b1;			
 			8'b001011??: param_sel[3] = 1'b1;
 			8'b01000001: pkt_filter_sel_01 = 1'b1;
 			8'b01000010: pkt_filter_sel_02 = 1'b1;
 			8'b01000011: pkt_filter_sel_03 = 1'b1;
 			8'b01001000: pkt_filter_sel_10 = 1'b1;
 			8'b01001010: pkt_filter_sel_12 = 1'b1;
 			8'b01001011: pkt_filter_sel_13 = 1'b1;
 			8'b01010000: pkt_filter_sel_20 = 1'b1;
 			8'b01010001: pkt_filter_sel_21 = 1'b1;
 			8'b01010011: pkt_filter_sel_23 = 1'b1;
 			8'b01010111: pkt_filter_sel_2u = 1'b1; 
 			8'b01011000: pkt_filter_sel_30 = 1'b1; 
 			8'b01011001: pkt_filter_sel_31 = 1'b1;
 			8'b01011010: pkt_filter_sel_32 = 1'b1; 
 			8'b01111010: pkt_filter_sel_u2 = 1'b1;
 		endcase
 	end
 	
 endmodule