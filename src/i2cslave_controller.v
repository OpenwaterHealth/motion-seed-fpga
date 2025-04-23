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
//  File Name: i2c_slave_top.v
// 
//  Description: This file has the state machine for the soft-based I2C core.
//
//  Code Revision History :
//-------------------------------------------------------------------------
// Ver: | Author	| Mod. Date		|Changes Made:
// V1.0 | AISLA 	| 2020-Mar-24	|Initial version
// V1.1 | AISLA 	| 2021-Mar-24	|Moved the data_vld strobe before the data byte during read.               
// V1.2 | AISLA		| 2022-Nov-22   |Fixed a bug that causes the bit[7] of the data byte to be read incorrectly during succesful Master Reads.      
//-------------------------------------------------------------------------
`timescale 1 ns / 1 ps


module i2cslave_controller (
                            i_rst,
                            i_scl,
                            o_scl,
                            i_sda,
                            o_sda,
                            i_data,
                            o_data,
                            i_sclk_stretch_en,
                            i_sys_clk,
                            o_intr,
                            o_rx_status,
                            o_tx_status,
                            o_data_valid,
                            o_data_request,
                            o_i2cs_busy,
                            o_init_done,
                            o_rd_done,
                            o_wr_done,
                            o_timeout_err,
                            o_sda_tri_en,
                            o_scl_tri_en,
                            o_init_intr,
                            o_rw_intr,
                            o_timeout_intr,
							o_stop,
							o_start
		            );
                            
                           
                             
   /*********************************************************************************
    * Input Ports
    *********************************************************************************/
    input        i_rst;
    input        i_scl;
    input        i_sda;
    input  [7:0] i_data;
    input        i_sclk_stretch_en;
    input        i_sys_clk;
       
      
    
    /**********************************************************************************
    * Output Ports
    ***********************************************************************************/
    output [7:0]     o_data;
    output           o_sda;
    output           o_scl;
    output           o_data_valid;
    output reg       o_i2cs_busy;
    output           o_sda_tri_en;
    output           o_scl_tri_en;
    output           o_intr;
    output reg       o_rx_status;
    output reg       o_tx_status;
    output           o_init_done;
    output           o_rd_done;
    output           o_wr_done;
    output reg       o_timeout_err;
    output			 o_init_intr;
    output 	    	 o_rw_intr;  
    output	     	 o_timeout_intr;
    output           o_data_request;
	output			 o_stop;
	output			 o_start;
            
       
   
    /**********************************************************************************
    * Internal Signals
    **********************************************************************************/
    reg          start_detect_i;
	reg			 start_detect2_i;
	reg			 start_detect3_i;
    reg          stop_detect_i;
	reg	[2:0]	 cnt_stop;
	wire		 stop_tick;
    reg          sda_wr_data_i;
    reg [3:0]    next_state_i;
    reg [8:0]    data_buffer_i;
    reg          addr_ack1_i;
    reg          rw_mode_i;
    reg          read_ack_i;
    reg          write_ack_i;
    reg          sda_data_i;
    reg          not_write_ack_i;
    reg          reset_bus_i;
    reg          addr_ack2_i;
    reg          addr_ack3_i;
    reg          master_code_not_ack_i;
    wire         init_intr_i ;
    reg          init_intr_temp_i ;
    wire         rw_done_intr_i;
    wire         timeout_intr_i;
    reg          rw_done_intr_temp_i;
    reg          timeout_intr_temp_i;
    reg          timeout_intr_temp1_i;
    reg [1:0]    timeout_state_i;
 
    reg          reset_fsm_i;
    reg          reset_fsm1_i;
    reg          data_request_reg1_i;
    reg          data_request_reg2_i;
    reg          read_ack1_i;
	reg			 sda_reg;
  
    reg          init_intr_reg1_i;
    reg          init_intr_reg2_i;
    reg          rw_done_intr_reg1_i;
    reg          rw_done_intr_reg2_i;
    reg          init_done_reg1_i;
    reg          init_done_reg2_i;
    reg          rd_done_reg1_i;
    reg          rd_done_reg2_i;
    reg          wr_done_reg1_i;
    reg          wr_done_reg2_i;
    reg          init_done_i;
    reg          rd_done_i;
    reg          wr_done_i;
    
  
    reg          read_ack2_i;
    reg          read_ack3_i;
    reg          write_ack1_i;
    reg          write_ack2_i;
    wire         write_ack_pulse_i;

       
    reg          start_i;
    reg          rep_start_i;
    reg          rw_done_intr_rep_start_i;
    reg          rw_done_intr_rep_start_reg_i;

    reg   [7:0]  data_i;
   
    reg          hs_mode_reg_i;
    reg          addr_10bit_en_reg_i;
    reg          master_code_not_ack_reg_i;
       

    wire          scl_i;
    wire		  addr_2nd_byte_ack;
   
    integer      timeout_counter_i;
    reg [3:0]      count_i;
	
	reg			d_ff; //AISLA: 
	wire		neg_edge_tick;
	reg			o_start_reg;

// I2C Address Parameters
    parameter	i_slave_addr					=	10'b11_1100_0001;
    parameter	i_addr_10bit_en					=	1'b0;

    // Main Slave FSM States
    parameter	BUS_IDLE						=	4'b0000;
    parameter	READ_ADDR_BYTE1_STATE			=	4'b0001;
    parameter	READ_ADDR_BYTE2_STATE			=	4'b0010;
    parameter	READ_ADDR_BYTE3_STATE			=	4'b0011;
    parameter	REPEAT_SR_DETECT_10BIT_STATE	=	4'b0100;
    parameter	READ_DATA_STATE					=	4'b0101;
    parameter	WRITE_DATA_STATE				=	4'b0110;
    parameter	REPEAT_SR_DETECT_HS_STATE		=	4'b0111;
    


    // Time out Condition States
    parameter	TIMEOUT_IDLE		=	2'b00;
    parameter	TIMEOUT_COUNTER		=	2'b01;
	parameter	i_rw_done_intr_en	=	1'b1;
	parameter	i_timeout_intr_en	=	1'b0;
	parameter	i_timeout_en		=	1'b0;				
	parameter	i_timeout_val		=	16'b0;

    //
	parameter	i_hs_mode 			=	1'b0;					
	parameter	i_ack_busy			=	1'b0;
	parameter	i_init_intr_en		=	1'b0;

    
    /************************************************************************************
     * Start Detection
    *************************************************************************************/
    always @(negedge sda_reg or posedge i_rst, posedge reset_bus_i)
        if ((i_rst) || (reset_bus_i)) begin
	    start_detect_i <= 1'b0; end
        else begin
	    if (i_scl)
	        start_detect_i <=  1'b1;
            else
	        start_detect_i <= 1'b0;
	end
        
	 always @(posedge i_sys_clk or posedge i_rst)
        if ((i_rst))
			sda_reg <= 1'b1;
		else
			sda_reg <= i_sda;
			
 	  always @(posedge i_sys_clk or posedge i_rst) begin
		if (i_rst) begin
			start_detect2_i <= 0;
			start_detect3_i <= 0;
			end
		else begin
			start_detect2_i <= start_detect_i;
			start_detect3_i <= start_detect2_i;
			end
	end
		assign o_start =  ~start_detect2_i && start_detect3_i;
		
            
    /*************************************************************************************
     * Stop Detection
    *************************************************************************************/
    always @(posedge sda_reg or posedge i_rst, posedge reset_bus_i)
        if ((i_rst) || (reset_bus_i)) begin
	    stop_detect_i <= 1'b0; end
        else begin
	    if (i_scl)
	        stop_detect_i <= 1'b1;
            else
	        stop_detect_i <= 1'b0;
	end
  
//	  always @(posedge i_sys_clk or posedge i_rst)
//		if ((i_rst)) 
//			cnt_stop <= 0;
//		else
//			begin
//				if ((stop_detect_i) &&  (cnt_stop != 3'b111))
//					cnt_stop <= cnt_stop + 1;
//				else
//					cnt_stop <= 0;
//			end
//	
//		assign stop_tick =  (cnt_stop == 3'b111) ? 1'b1 : 1'b0;
	

    /*************************************************************************************
     * negedge detect
    *************************************************************************************/
 	  always @(posedge i_sys_clk or posedge i_rst) begin
		if ((i_rst)) 
			d_ff <= 0;
		else
			d_ff <= stop_detect_i;
	end
		assign stop_tick =  ~d_ff && stop_detect_i;
		
     assign	o_stop  = stop_tick;
    /*************************************************************************************
     * Latching i_addr_10bit_en 
    *************************************************************************************/
    always @(posedge i_sys_clk or posedge i_rst)
        if ((i_rst)) begin
            addr_10bit_en_reg_i <= 1'b0; end
        else if (start_detect_i && (next_state_i == BUS_IDLE || next_state_i == READ_DATA_STATE)) begin
            addr_10bit_en_reg_i <= i_addr_10bit_en; end
           
    
    /*************************************************************************************
     * Latching i_hs_mode 
    *************************************************************************************/
    always @(posedge i_sys_clk or posedge i_rst)
        if ((i_rst)) begin
            hs_mode_reg_i <= 1'b0; end
        else if (start_detect_i && (next_state_i == BUS_IDLE || next_state_i == READ_DATA_STATE)) begin
            hs_mode_reg_i <= i_hs_mode; end
            
              
    /***************************************************************************************
     * Main Slave FSM operates on SCL falling edge
    ***************************************************************************************/
    always @(negedge i_scl or posedge i_rst or posedge stop_tick)
        if ((i_rst) || (stop_tick)) begin
            sda_wr_data_i <= 1'b1;
            count_i <= 1'b0;
            reset_bus_i <= 1'b0;
            rw_done_intr_rep_start_i <= 1'b0;
            next_state_i <= BUS_IDLE; end
        else begin
            sda_wr_data_i <= 1'b1;
            case (next_state_i)
                BUS_IDLE: //4'b000
                    if (start_detect_i) begin
                        reset_bus_i             <= 1'b1;
                        count_i                 <= 8;
                        data_buffer_i[count_i]  <= sda_reg;
                        next_state_i            <= READ_ADDR_BYTE1_STATE; end
                    else if (stop_detect_i) begin
                        reset_bus_i             <= 1'b1;
                        count_i                 <= 0;
                        next_state_i            <= BUS_IDLE; end
                    else if (reset_fsm_i) begin
                        next_state_i            <= BUS_IDLE; end
                    else begin
                        reset_bus_i             <= 1'b0;
                        count_i                 <= 0;
                        rw_done_intr_rep_start_i <= 1'b0;
                        next_state_i            <= BUS_IDLE; end
             
                READ_ADDR_BYTE1_STATE: //4'b001
                    if (addr_ack1_i && !rw_mode_i && !addr_10bit_en_reg_i) 
                        if (i_sclk_stretch_en) begin
                            data_buffer_i           <= data_buffer_i;
                            next_state_i            <= READ_ADDR_BYTE1_STATE;  
                            count_i                 <= 0;  end
                        else begin
                            count_i                 <= 8;
                            reset_bus_i             <= 1'b0;
                            next_state_i            <= READ_DATA_STATE; end
                    else if (i_sclk_stretch_en) begin
                        next_state_i            <= READ_ADDR_BYTE1_STATE;  
                        count_i                 <= 0;  end
                    else if (addr_ack1_i && rw_mode_i && !addr_10bit_en_reg_i) 
                        if (i_sclk_stretch_en) begin
                            count_i                 <= 0;
                            next_state_i            <= READ_ADDR_BYTE1_STATE;  
                            data_buffer_i           <= data_buffer_i; end
                        else begin
                            count_i                 <= 8;
                            sda_wr_data_i           <= data_i[7];
                            reset_bus_i             <= 1'b0;
                            next_state_i            <= WRITE_DATA_STATE; end
                    else if (addr_ack1_i && !rw_mode_i && addr_10bit_en_reg_i) 
                        if (i_sclk_stretch_en) begin              
                            count_i                 <= 0;
                            next_state_i            <= READ_ADDR_BYTE1_STATE;    
                            data_buffer_i           <= data_buffer_i; end
                        else begin
                            count_i                 <= 8;
                            data_buffer_i[count_i]  <= sda_reg;
                            next_state_i            <= READ_ADDR_BYTE2_STATE; end
                    else if (master_code_not_ack_i) begin
                        if (i_sclk_stretch_en) begin
                            count_i                 <= 0;
                            next_state_i            <= READ_ADDR_BYTE1_STATE;  end
                        else begin
                            reset_bus_i             <= 1'b0;
                            count_i                 <= 8;
                            data_buffer_i[count_i]  <= sda_reg;
                            next_state_i            <= REPEAT_SR_DETECT_HS_STATE; end
                    end
                    else if (count_i == 0)
                        next_state_i            <= BUS_IDLE;
                    else if (reset_fsm_i) begin
                        next_state_i            <= BUS_IDLE; end
                    else begin
                        if (i_sclk_stretch_en) begin
                            count_i                 <= count_i;
                            next_state_i            <= READ_ADDR_BYTE1_STATE; end
                        else begin
                            count_i                 <= count_i - 1;
                            reset_bus_i             <= 1'b0;
                            data_buffer_i[count_i]  <= sda_reg;
                            next_state_i            <= READ_ADDR_BYTE1_STATE; end
                    end 
              
                READ_ADDR_BYTE2_STATE : //4'b010
                    if (addr_ack2_i) 
                        if (i_sclk_stretch_en) begin
                            next_state_i            <= READ_ADDR_BYTE2_STATE;  
                            count_i                 <= 0;  end
                        else begin
                            next_state_i            <= REPEAT_SR_DETECT_10BIT_STATE;
                            reset_bus_i             <= 1'b0;
                            count_i                 <= 8;
                            data_buffer_i[count_i]  <= sda_reg; end
                    else if (count_i == 0)
                        next_state_i            <= BUS_IDLE;
                    else if (reset_fsm_i) begin
                        next_state_i            <= BUS_IDLE; end
                    else begin
                        if (i_sclk_stretch_en) begin
                            count_i                 <= count_i;
                            next_state_i            <= READ_ADDR_BYTE2_STATE; end
                        else begin
                            count_i                 <= count_i -1;
                            reset_bus_i             <= 1'b0;
                            data_buffer_i[count_i]  <= sda_reg;
                            next_state_i            <= READ_ADDR_BYTE2_STATE; end
                    end
 
                 REPEAT_SR_DETECT_10BIT_STATE: //4'b100
                    if (start_detect_i) begin
                        if (i_sclk_stretch_en) begin
                            next_state_i            <= REPEAT_SR_DETECT_10BIT_STATE; end
                        else
                            reset_bus_i             <= 1'b1;
                            count_i                 <= 8;
                            data_buffer_i[count_i ] <= sda_reg;
                            next_state_i            <= READ_ADDR_BYTE3_STATE; end
                    else if (reset_fsm_i) begin
                        next_state_i            <= BUS_IDLE; end
                    else begin
                        if (i_sclk_stretch_en) begin
                            next_state_i            <= REPEAT_SR_DETECT_10BIT_STATE; end
                        else begin
                            count_i                 <= count_i - 1;
                            data_buffer_i[count_i]  <= sda_reg;
                            next_state_i            <= READ_DATA_STATE; end
                    end
              
                READ_ADDR_BYTE3_STATE: //4'b011
                    if (addr_ack3_i && rw_mode_i) 
                        if (i_sclk_stretch_en) begin
                            next_state_i            <= READ_ADDR_BYTE3_STATE;  
                            count_i                 <= 0;  end
                        else begin
                            count_i             <= 8;
                            sda_wr_data_i       <= data_i[7];
                            reset_bus_i         <= 1'b0; 
                            next_state_i        <= WRITE_DATA_STATE; end
                    else if (addr_ack3_i && !rw_mode_i && !addr_10bit_en_reg_i) 
                        if (i_sclk_stretch_en) begin
                            next_state_i            <= READ_ADDR_BYTE3_STATE;  
                            count_i                 <= 0;  end
                        else begin
                            count_i                 <= 8;
                            reset_bus_i             <= 1'b0; 
                            next_state_i            <= READ_DATA_STATE; end
                    else if (addr_ack3_i && !rw_mode_i && addr_10bit_en_reg_i) 
                        if (i_sclk_stretch_en) begin
                            next_state_i            <= READ_ADDR_BYTE3_STATE;  
                            count_i                 <= 0;  end
                        else begin
                            count_i                 <= 8;
                            data_buffer_i[count_i]  <= sda_reg;
                            next_state_i            <= READ_ADDR_BYTE2_STATE; end
                    else if (count_i == 0)  begin
                        next_state_i            <= BUS_IDLE; end
                    else if (reset_fsm_i) begin
                        next_state_i            <= BUS_IDLE; end
                    else begin
                        if (i_sclk_stretch_en) begin
                            next_state_i            <= READ_ADDR_BYTE3_STATE; 
                            count_i                 <= count_i; end
                        else begin
                            next_state_i            <= READ_ADDR_BYTE3_STATE;
                            count_i                 <= count_i - 1;
                            reset_bus_i             <= 1'b0;
                            data_buffer_i[count_i]  <= sda_reg; end
                    end 
              
                READ_DATA_STATE: //4'b101
                    if (reset_fsm_i) begin
                        next_state_i            <= BUS_IDLE; end
                    else if (stop_detect_i) begin
                        if (i_sclk_stretch_en) begin
                            next_state_i            <= READ_DATA_STATE;
                            count_i                 <= count_i; end
                        else begin
                            count_i                 <= 0;
                            reset_bus_i             <= 1'b1;
                            next_state_i            <= BUS_IDLE; end
                    end
                    else if (start_detect_i && !(addr_10bit_en_reg_i)) begin
                        if (i_sclk_stretch_en) begin
                            next_state_i            <= READ_DATA_STATE;
                            count_i                 <= count_i; end
                        else begin
                            reset_bus_i             <= 1'b1;
                            count_i                 <= 8;
                            next_state_i            <= READ_ADDR_BYTE1_STATE;
                            data_buffer_i[count_i]  <= sda_reg; end
                    end
                    else if (start_detect_i && addr_10bit_en_reg_i) begin
                        if (i_sclk_stretch_en) begin
                            next_state_i            <= READ_DATA_STATE;
                            count_i                 <= count_i; end
                        else begin
                            reset_bus_i             <= 1'b1;
                            count_i                 <= 8;
                            next_state_i            <= READ_ADDR_BYTE3_STATE; 
                            data_buffer_i[count_i]  <= sda_reg; end
                    end
                    else if ((count_i == 0) && (read_ack_i == 1'b1)) 
                        if (i_sclk_stretch_en) begin
                            next_state_i            <= READ_DATA_STATE;  
                            count_i                 <= 0;  end
                        else begin
                            count_i                 <= 8;
                            data_buffer_i[count_i]  <= sda_reg;
                            next_state_i            <= READ_DATA_STATE; end
                    else  if (count_i != 0) begin
                        if (i_sclk_stretch_en) begin
                            next_state_i            <= READ_DATA_STATE;  
                            count_i                 <= count_i;  end
                        else begin
                            count_i                 <= count_i -1;
                            data_buffer_i[count_i]  <= sda_reg;
                            next_state_i            <= READ_DATA_STATE; end
                    end
                    else if (count_i == 0) begin
                        count_i                 <= 0;
                        reset_bus_i             <= 1'b1;
                        next_state_i            <= BUS_IDLE; end
                                              
                WRITE_DATA_STATE: //4'b110
                    if (not_write_ack_i) begin
                        count_i                 <= 0;
                        reset_bus_i             <= 1'b0;
                        rw_done_intr_rep_start_i <= 1'b1;
                        next_state_i            <= BUS_IDLE; end
                    else if (write_ack_i == 1'b1) 
                        if (i_sclk_stretch_en) begin
                            next_state_i            <= WRITE_DATA_STATE;  
                            count_i                 <= 0;  end
                        else begin
                            count_i                 <= 8;
                            sda_wr_data_i           <= data_i[7];
                            next_state_i            <= WRITE_DATA_STATE; end
                    else if (count_i == 1'b1) begin
                        if (i_sclk_stretch_en) begin
                            next_state_i            <= WRITE_DATA_STATE;  
                            count_i                 <= count_i;  end
                        else begin
                            count_i                <= count_i - 1;
                            next_state_i           <= WRITE_DATA_STATE;  end
                    end
                    else if (count_i > 1)   
                        if (i_sclk_stretch_en) begin
                            next_state_i            <= WRITE_DATA_STATE;  
                            count_i                 <= count_i;  end
                        else begin
                            next_state_i            <= WRITE_DATA_STATE;  
                            count_i                 <= count_i - 1;
                            sda_wr_data_i           <= data_i[count_i -2]; end
                    else if (count_i == 0) begin
                        count_i                 <= 0;
                        reset_bus_i             <= 1'b1;
                        next_state_i            <= BUS_IDLE; end
                    else if (reset_fsm_i) begin
                        next_state_i            <= BUS_IDLE; end
                              
                REPEAT_SR_DETECT_HS_STATE: //4'b111
                    if (start_detect_i) begin
                        if (i_sclk_stretch_en) begin
                            next_state_i            <= REPEAT_SR_DETECT_HS_STATE;  
                            count_i                 <= count_i;  end
                        else begin
                            reset_bus_i             <= 1'b1;
                            count_i                 <= 8;
                            data_buffer_i[count_i ] <= sda_reg;
                            next_state_i            <= READ_ADDR_BYTE1_STATE; end
                    end
                    else if (master_code_not_ack_reg_i) begin
                        if (i_sclk_stretch_en) begin
                            next_state_i            <= REPEAT_SR_DETECT_HS_STATE;  
                            count_i                 <= count_i;  end
                        else begin
                            next_state_i            <= REPEAT_SR_DETECT_HS_STATE; end
                    end
                    else if (reset_fsm_i) begin
                        next_state_i            <= BUS_IDLE; end
                    else begin
                        count_i                 <= 0;
                        next_state_i            <= BUS_IDLE; end
                                       
                default : begin
                    next_state_i                <= BUS_IDLE;
                    reset_bus_i                 <= 1'b1; end
            endcase // case (next_state_i)
        end 
                
 
    /****************************************************************************************
     * Generation of o_data_request
    *****************************************************************************************/ 
    assign o_data_request = (write_ack_pulse_i) ? 1'b1 :
                               (o_init_intr && rw_mode_i) ? 1'b1 :
                               1'b0;
                                
                                
   /****************************************************************************************
     * Making pulse for write ack
    *****************************************************************************************/ 
    always @(posedge i_sys_clk or posedge i_rst)
        if ((i_rst)) begin      
            write_ack1_i <= 1'b0;
            write_ack2_i <= 1'b0; end
        else begin
            write_ack1_i <= write_ack_i;
            write_ack2_i <= write_ack1_i; end
    
    assign write_ack_pulse_i = (!write_ack2_i) &&  write_ack1_i;
          
              
   /****************************************************************************************
     * Latching input data with respect to System Clock
    *****************************************************************************************/ 
    always @(posedge i_sys_clk or posedge i_rst)
        if ((i_rst))
            data_i <= 8'b0;
        else
            data_i <= i_data;
             
                
    /****************************************************************************************
     * Generating output data
    *****************************************************************************************/   
    assign o_data = o_data_valid ? data_buffer_i[8:1] : 1'b0; 
             
                  
    /****************************************************************************************
     * Generating output data valid
    *****************************************************************************************/
    always @(posedge i_scl or posedge i_rst)
        if ((i_rst))       
            read_ack1_i <= 1'b0;
        else
            read_ack1_i <= read_ack_i;

    always @(posedge i_sys_clk or posedge i_rst)
        if ((i_rst))       
            read_ack2_i <= 1'b0;
        else
            read_ack2_i <= read_ack1_i;

    always @(posedge i_sys_clk or posedge i_rst)
        if ((i_rst))       
            read_ack3_i <= 1'b0;
        else
            read_ack3_i <= read_ack2_i;

    assign o_data_valid = (!read_ack3_i) &&  read_ack2_i;      
     
                  
    /******************************************************************************************
     * Generate Control Signals
    *******************************************************************************************/
    always @(posedge i_scl or posedge i_rst)
        if ((i_rst))begin
            addr_ack1_i <= 1'b0;
            read_ack_i <= 1'b0;
            write_ack_i <= 1'b0;
            rw_mode_i <= 1'b0; end
        else begin
            if (((!i_ack_busy) && (next_state_i == READ_ADDR_BYTE1_STATE) && (count_i == 0) && (data_buffer_i[8:4] != 5'b00001) && 
                (data_buffer_i[8:2] == i_slave_addr[6:0]) && 
                (!addr_10bit_en_reg_i)) ||
                ((!i_ack_busy) && (next_state_i == READ_ADDR_BYTE1_STATE) && (count_i == 0) && (data_buffer_i[8:4] != 5'b00001) && 
                (data_buffer_i[8:4] == 5'b11110) && 
                (data_buffer_i[3:2] == i_slave_addr[9:8]) && (addr_10bit_en_reg_i)))  begin
                addr_ack1_i <= 1'b1; end
            else begin
                addr_ack1_i <= 1'b0; end
            if ((next_state_i == READ_ADDR_BYTE1_STATE) && (count_i == 0)) begin
                rw_mode_i <= data_buffer_i[1]; end
            else if ((next_state_i == READ_ADDR_BYTE3_STATE) && (count_i == 0)) begin
                rw_mode_i <= data_buffer_i[1]; end
            if ((next_state_i == WRITE_DATA_STATE) && (count_i ==0) && (sda_reg == 1'b0)) begin
                write_ack_i <= 1'b1; end
            else begin
                write_ack_i <= 1'b0; end
            if ((next_state_i == WRITE_DATA_STATE) && (count_i ==0) && (sda_reg == 1'b1)) begin
                not_write_ack_i <= 1'b1; end
            else begin
                not_write_ack_i <= 1'b0; end
            if ((!i_ack_busy) && (next_state_i == READ_DATA_STATE) && (count_i == 0)) begin
                read_ack_i <= 1'b1; end
            else begin
                read_ack_i <= 1'b0; end
            if ((!i_ack_busy) && (next_state_i == READ_ADDR_BYTE2_STATE) && (count_i == 0) && (data_buffer_i[8:1] == i_slave_addr[7:0]) &&
                (addr_10bit_en_reg_i)) begin
                addr_ack2_i <= 1'b1; end
            else begin
                addr_ack2_i<= 1'b0; end
            if ((!i_ack_busy) && (next_state_i == READ_ADDR_BYTE3_STATE) && (count_i == 0) && (data_buffer_i[8:4] == 5'b11110) &&
                (data_buffer_i[3:2] == i_slave_addr[9:8]) && (addr_10bit_en_reg_i)) begin
                addr_ack3_i <= 1'b1; end
            else begin
                addr_ack3_i<= 1'b0; end
            if ((next_state_i == READ_ADDR_BYTE1_STATE) && (count_i == 0) && (data_buffer_i[8:4] == 5'b00001) &&
                 (data_buffer_i[3:1] == i_slave_addr[4:2])&& (hs_mode_reg_i)) begin
                master_code_not_ack_i <= 1'b1; end
            else begin
                master_code_not_ack_i <= 1'b0; end

        end
          
            
    /****************************************************************************************
     * Registering Master code Not Ack
    *****************************************************************************************/
    always @(posedge i_scl or posedge i_rst)
        if ((i_rst))
            master_code_not_ack_reg_i <= 1'b0;
        else
            master_code_not_ack_reg_i <= master_code_not_ack_i;
              
                         
    /*****************************************************************************************
     * Generate Address Acknowledge and Read Acknowledge from Slave
    ******************************************************************************************/    
    always @(negedge i_scl or posedge i_rst) 
        if ((i_rst))
            sda_data_i <= 1'b1;
        else
            if ((i_ack_busy) && (next_state_i == READ_ADDR_BYTE1_STATE) && (data_buffer_i[8:4] != 5'b00001) && 
                (data_buffer_i[8:2] == i_slave_addr[6:0]) && (count_i == 1) &&
                (!addr_10bit_en_reg_i))
                sda_data_i <= 1'b1; 
            else if ((i_ack_busy) && (next_state_i == READ_ADDR_BYTE1_STATE) && (count_i == 1) && (data_buffer_i[8:4] == 5'b11110) && 
                 (data_buffer_i[8:4] != 5'b00001) && (data_buffer_i[3:2] == i_slave_addr[9:8]) && (addr_10bit_en_reg_i))  
                sda_data_i <= 1'b1;
            else if ((i_ack_busy) && (next_state_i == READ_ADDR_BYTE2_STATE) && (count_i == 1) && (data_buffer_i[8:1] == i_slave_addr[7:0]))
                sda_data_i <= 1'b1;
            else if ((i_ack_busy) && (next_state_i == READ_ADDR_BYTE3_STATE) && (count_i == 1) && (data_buffer_i[8:4] == 5'b11110) && 
                (data_buffer_i[3:2] == i_slave_addr[9:8]) && (addr_10bit_en_reg_i))  
                sda_data_i <= 1'b1;
            else if ((i_ack_busy) && (next_state_i == READ_DATA_STATE) && (count_i == 1))
                sda_data_i <= 1'b1;  
            else if ((next_state_i == READ_ADDR_BYTE1_STATE) && (data_buffer_i[8:4] != 5'b00001) && 
                (data_buffer_i[8:2] == i_slave_addr[6:0]) && (count_i == 1) &&
                (!addr_10bit_en_reg_i))
                sda_data_i <= 1'b0; 
            else if ((next_state_i == READ_ADDR_BYTE1_STATE) && (count_i == 1) && (data_buffer_i[8:4] == 5'b11110) && 
                 (data_buffer_i[8:4] != 5'b00001) && (data_buffer_i[3:2] == i_slave_addr[9:8]) && (addr_10bit_en_reg_i))  
                sda_data_i <= 1'b0;
            else if ((next_state_i == READ_ADDR_BYTE2_STATE) && (count_i == 1) && (data_buffer_i[8:1] == i_slave_addr[7:0]))
                sda_data_i <= 1'b0;

	
            else if ((next_state_i == READ_ADDR_BYTE3_STATE) && (count_i == 1) && (data_buffer_i[8:4] == 5'b11110) && 
                (data_buffer_i[3:2] == i_slave_addr[9:8]) && (addr_10bit_en_reg_i))  
                sda_data_i <= 1'b0;
            else if ((next_state_i == READ_DATA_STATE) && (count_i == 1))
                sda_data_i <= 1'b0;
            else if
                ((next_state_i == READ_ADDR_BYTE1_STATE) && (count_i == 1) && (data_buffer_i[8:4] == 5'b00001) &&
                 (data_buffer_i[3:1] == i_slave_addr[4:2]))
                sda_data_i <= 1'b1;

            else 
                sda_data_i <= 1'b1;
                   
                              
   /*********************************************************************************************
     * Generation of Busy signal
    ********************************************************************************************/    
    always @(posedge i_scl or posedge i_rst or posedge stop_tick)
        if ((i_rst) || (stop_tick))
            o_i2cs_busy <= 1'b0;
        else
            case (next_state_i)
                BUS_IDLE:
                    o_i2cs_busy <= 1'b0;
                READ_ADDR_BYTE1_STATE,
                READ_ADDR_BYTE2_STATE,
                READ_ADDR_BYTE3_STATE,
                REPEAT_SR_DETECT_10BIT_STATE,
                READ_DATA_STATE,
                WRITE_DATA_STATE,
                REPEAT_SR_DETECT_HS_STATE:
                    o_i2cs_busy <= 1'b1;
              
                default:
                    o_i2cs_busy <= 1'b0;
            endcase
             
                  
    /****************************************************************************************
     * Transmit and Receive Status signals
    *****************************************************************************************/
    always @(posedge i_scl or posedge i_rst)
        if ((i_rst)) begin
            o_rx_status <= 1'b0;
            o_tx_status <= 1'b0;end
        else
            case (next_state_i)
                BUS_IDLE,
                READ_ADDR_BYTE1_STATE,
                READ_ADDR_BYTE2_STATE,
                READ_ADDR_BYTE3_STATE,
                REPEAT_SR_DETECT_HS_STATE,
                REPEAT_SR_DETECT_10BIT_STATE: begin
                    o_rx_status <= 1'b0;
                    o_tx_status <= 1'b0; end
                READ_DATA_STATE: begin
                    o_rx_status <= 1'b0;
                    o_tx_status <= 1'b1; end
                WRITE_DATA_STATE: begin
                    o_rx_status <= 1'b1;
                    o_tx_status <= 1'b0; end

                default: begin
                    o_rx_status <= 1'b0;
                    o_tx_status <= 1'b0; end
            endcase // case (next_state_i)
              
                                
    /****************************************************************************************
     * Generation of o_init_done, o_rd_done, o_wr_done
    *****************************************************************************************/
    always @(posedge i_scl or posedge i_rst)
        if ((i_rst)) begin
            init_done_i <= 1'b0;
            rd_done_i <= 1'b0; end
        else
            case (next_state_i)
                BUS_IDLE: begin		//0
                    init_done_i <= 1'b0;
                    rd_done_i   <= 1'b0; end
                   
                READ_ADDR_BYTE1_STATE,	//1
                READ_ADDR_BYTE2_STATE,	//2
                READ_ADDR_BYTE3_STATE: begin //3
                    init_done_i <= (count_i == 1) ? 1'b1 : 1'b0;
                    rd_done_i   <= 1'b0; end
              
                REPEAT_SR_DETECT_10BIT_STATE, //4
                REPEAT_SR_DETECT_HS_STATE:begin //7
                    init_done_i <= 1'b0;
                    rd_done_i   <= 1'b0;	end

                READ_DATA_STATE: begin //5
                    init_done_i <= 1'b0;
                    rd_done_i <= (count_i == 0) ? 1'b1 : 1'b0; end
              
                WRITE_DATA_STATE: begin //6
                    init_done_i <= 1'b0;
                    rd_done_i   <= 1'b0; end
                    
                default: begin
                    init_done_i <= 1'b0;
                    rd_done_i <= 1'b0; end
            endcase // case (next_state_i)

       
    /****************************************************************************************
     * Generating pulse for o_init_done
    *****************************************************************************************/
    always @(posedge i_sys_clk or posedge i_rst)
        if ((i_rst)) begin
            init_done_reg1_i <= 1'b0;
            init_done_reg2_i <= 1'b0; end
        else begin
            init_done_reg1_i <= init_done_i;
            init_done_reg2_i <= init_done_reg1_i;
        end

    assign o_init_done = (!init_done_reg2_i) &&  init_done_reg1_i;   
            
      
    /****************************************************************************************
     * Generating pulse for o_rd_done
    *****************************************************************************************/
    always @(posedge i_sys_clk or posedge i_rst)
        if ((i_rst)) begin
            rd_done_reg1_i <= 1'b0;
            rd_done_reg2_i <= 1'b0; end
        else begin
            rd_done_reg1_i <= rd_done_i;
            rd_done_reg2_i <= rd_done_reg1_i;  end

    assign o_rd_done = (!rd_done_reg2_i) &&  rd_done_reg1_i;   
   
   reg first_read_done;
          
   /****************************************************************************************
     *Generating pulse for o_wr_done 
    *****************************************************************************************/
    always @(posedge i_sys_clk or posedge i_rst) 
        if ((i_rst)) begin
            wr_done_i <= 1'b0;  
			first_read_done <= 0; end
        else
			begin
				if ((next_state_i == READ_ADDR_BYTE1_STATE) && (addr_ack1_i) && (rw_mode_i) && (i_scl)) begin	//For first read data of 7-bit address mode.
					wr_done_i <= (count_i == 0) ? 1'b1 : 1'b0;			
					first_read_done <= 1'b1;
					end
				else if ((next_state_i == READ_ADDR_BYTE3_STATE) && (addr_ack3_i) && (rw_mode_i) && (i_scl)) begin	//For first read data of 10-bit address mode.
					wr_done_i <= (count_i == 0) ? 1'b1 : 1'b0;			
					first_read_done <= 1'b1;
					end
				else if ((next_state_i == WRITE_DATA_STATE) && (first_read_done) && (write_ack_i))					//For succeeding read data
					wr_done_i <= (count_i == 0) ? 1'b1 : 1'b0;	
				else
					wr_done_i <= 1'b0;  
			end	 


    always @(posedge i_sys_clk or posedge i_rst)
        if ((i_rst)) begin
            wr_done_reg1_i <= 1'b0;
            wr_done_reg2_i <= 1'b0; end
        else begin
            wr_done_reg1_i <= wr_done_i;
            wr_done_reg2_i <= wr_done_reg1_i; end

    assign o_wr_done = (!wr_done_reg2_i) &&  wr_done_reg1_i;   

      
    /****************************************************************************************
     * Output Interrupt generation (o_intr)
    *****************************************************************************************/
    assign o_intr = o_init_intr || o_rw_intr || o_timeout_intr;
       
         
   /****************************************************************************************
     * Making pulses for init_intr
    *****************************************************************************************/   
    always @(posedge i_sys_clk or posedge i_rst)
        if ((i_rst)) begin
            init_intr_reg1_i <= 1'b0;
            init_intr_reg2_i <= 1'b0; end
        else begin
            init_intr_reg1_i <= init_intr_i;
            init_intr_reg2_i <= init_intr_reg1_i; end

    assign o_init_intr = (!init_intr_reg2_i) &&  init_intr_reg1_i;
          
       
   /****************************************************************************************
     * Making pulses for rw_intr
    *****************************************************************************************/
    always @(posedge i_sys_clk or posedge i_rst)
        if ((i_rst)) begin
            rw_done_intr_reg1_i <= 1'b0;
            rw_done_intr_reg2_i <= 1'b0; end
        else begin
            rw_done_intr_reg1_i <= rw_done_intr_i;
            rw_done_intr_reg2_i <= rw_done_intr_reg1_i; end

    assign o_rw_intr = ((!rw_done_intr_reg2_i) &&  rw_done_intr_reg1_i) || ((stop_tick) && (i_rw_done_intr_en));
   
   

    always @(posedge i_scl or posedge i_rst)
        if ((i_rst))
            init_intr_temp_i <= 1'b0;
        else if (((next_state_i == READ_ADDR_BYTE1_STATE) && (count_i == 0) && (data_buffer_i[8:4] != 5'b00001) && 
            (data_buffer_i[8:2] == i_slave_addr[6:0]) && (!addr_10bit_en_reg_i))) 
            init_intr_temp_i <= 1'b1;
        else if ((next_state_i == READ_ADDR_BYTE3_STATE) && (count_i == 0) && (data_buffer_i[8:4] == 5'b11110) &&
                (data_buffer_i[3:2] == i_slave_addr[9:8]) && (addr_10bit_en_reg_i)) begin
                init_intr_temp_i <= 1'b1;end
        else if (start_i) begin
            init_intr_temp_i <= 1'b1; end
        else
            init_intr_temp_i <= 1'b0;


   
    always @(negedge i_scl or posedge i_rst or posedge reset_bus_i)
        if ((i_rst) || (reset_bus_i))
            start_i <= 1'b0;
        else
            if ((next_state_i == REPEAT_SR_DETECT_10BIT_STATE) && (!start_detect_i))
                start_i <= 1'b1;
            else
                start_i <= 1'b0;
   

       
    always @(negedge i_scl or posedge i_rst)
        if ((i_rst))
            rw_done_intr_temp_i <= 1'b0; 
        else
			if (start_detect_i) begin	
                rw_done_intr_temp_i <= 1'b1; end
            else
                rw_done_intr_temp_i <= 1'b0;

   
    always @(negedge i_scl or posedge i_rst)
        if ((i_rst))
            rw_done_intr_rep_start_reg_i <= 1'b0; 
        else
            rw_done_intr_rep_start_reg_i <= rw_done_intr_rep_start_i;



    assign o_timeout_intr = timeout_intr_i;
   
    always @(posedge i_sys_clk or posedge i_rst)
        if ((i_rst)) 
            o_timeout_err <= 1'b0;
        else
            o_timeout_err <= timeout_intr_i;
   

   /****************************************************************************************
     * FSM for Timeout condition working in rising edge of Sys Clock
    *****************************************************************************************/
    always @(posedge i_sys_clk or posedge i_rst)
        if ((i_rst)) begin
            timeout_counter_i <= 0;
            timeout_intr_temp_i <= 1'b0;
            reset_fsm1_i <= 1'b0;
            timeout_state_i <= TIMEOUT_IDLE; end
        else
            case (timeout_state_i)
                TIMEOUT_IDLE:
                    if (i_timeout_en && !i_scl) begin
                        timeout_counter_i <= 0;
                        timeout_intr_temp_i <= 1'b0;
                        reset_fsm1_i <= 1'b0;
                        timeout_state_i <= TIMEOUT_COUNTER; end
                    else begin
                        timeout_counter_i <= 0;
                        reset_fsm1_i <= 1'b0;
                        timeout_intr_temp_i <= 1'b0; 
                        timeout_state_i <= TIMEOUT_IDLE; end
                TIMEOUT_COUNTER:
                    if (timeout_counter_i == i_timeout_val)
                        if (i_scl == 1'b0) begin
                            timeout_counter_i <= 0;
                            timeout_intr_temp_i <= 1'b1;
                            timeout_state_i <= TIMEOUT_IDLE;
                            reset_fsm1_i <= 1'b1; end
                        else begin 
                            timeout_counter_i <= 0;
                            reset_fsm1_i <= 1'b0;
                            timeout_intr_temp_i <= 1'b1; end
                    else if (!i_scl) begin
                        timeout_counter_i <= timeout_counter_i + 1;
                        reset_fsm1_i <= 1'b0;
                        timeout_state_i <= TIMEOUT_COUNTER; end
                    else begin
                        timeout_counter_i <= 0;
                        reset_fsm1_i <= 1'b0;
                        timeout_intr_temp_i <= 1'b1;
                        timeout_state_i <= TIMEOUT_IDLE; end
                default: begin
                    timeout_counter_i <= 0;
                    reset_fsm1_i <= 1'b0;
                    timeout_intr_temp_i <= 1'b0;
                    timeout_state_i <= TIMEOUT_IDLE; end
            endcase
              
           

    always @ (posedge i_sys_clk or posedge i_rst)
        if ((i_rst))
            reset_fsm_i <= 1'b0;
        else if (reset_fsm1_i)
            reset_fsm_i <= 1'b1;
        else if (next_state_i == BUS_IDLE)
            reset_fsm_i <= 1'b0;
           
  
    assign init_intr_i = (i_init_intr_en) ? init_intr_temp_i : 1'b0;
    assign rw_done_intr_i = (i_rw_done_intr_en) ? rw_done_intr_temp_i : 1'b0;
    assign timeout_intr_i = (i_timeout_intr_en) ? timeout_intr_temp_i : 1'b0;
   
 
    /****************************************************************************************
     * Generate o_sda
    *****************************************************************************************/   
    assign o_sda = o_sda_tri_en ? 1'bZ : 1'b0;
   
    assign o_sda_tri_en = ((sda_data_i == 1'b0) || (sda_wr_data_i == 1'b0) || (addr_2nd_byte_ack)) ? 1'b0 : 1'b1;
    
	assign addr_2nd_byte_ack = ((next_state_i == READ_ADDR_BYTE2_STATE) && (count_i == 0) && (data_buffer_i[8:1] == i_slave_addr[7:0])) ? 1'b1 : 1'b0;
  
    /****************************************************************************************
     * Generate o_scl
    *****************************************************************************************/   
    assign o_scl = o_scl_tri_en ? 1'bz : 1'b0;
  
    assign o_scl_tri_en = i_sclk_stretch_en ? 1'b0 : 1'b1;


endmodule