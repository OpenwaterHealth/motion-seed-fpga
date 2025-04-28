module top_new (

   /*********************************************************************************
    * Input Ports
    *********************************************************************************/
    input        i_rst,
    input        i_scl,
    input        i_sda,
    input  [7:0] i_data,
    input  [9:0] i_slave_addr,
    input        i_addr_10bit_en,
    input        i_sclk_stretch_en,
    input        i_hs_mode,
    input        i_sys_clk,
    input        i_timeout_en,
    input [15:0] i_timeout_val,
    input        i_ack_busy,
    input        i_init_intr_en,
    input        i_rw_done_intr_en,
    input        i_timeout_intr_en,
   
    /**********************************************************************************
    * Output Ports
    ***********************************************************************************/
    output [7:0]     o_data,
    output           o_sda,
    output           o_scl,
    output           o_data_valid,
    output           o_i2cs_busy,
    output           o_sda_tri_en,
    output           o_scl_tri_en,
    output           o_intr,
    output           o_rx_status,
    output           o_tx_status,
    output           o_init_done,
    output           o_rd_done,
    output           o_wr_done,
    output           o_timeout_err,
    output 	         o_init_intr,
    output 	         o_rw_intr,  
    output	         o_timeout_intr,
    output           o_data_request
);

i2cslave_controller i2cslave_controller 
(
        .i_rst              (rst_tb),
		.i_scl              (i_scl),
        .o_scl              (o_scl),
		.i_sda              (i_sda),
		.o_sda              (o_sda),

		.i_data             (data_in_tb),
		.o_data             (data_out_tb),
        .i_slave_addr       (slave_addr_tb),
        .i_addr_10bit_en    (0),
        .i_sclk_stretch_en  (0),
        .o_data_valid       (o_data_valid_tb),
        .o_data_request     (o_data_request),
        .o_i2cs_busy        ( ),

        .o_sda_tri_en       (sda_tri_en_tb),
        .o_scl_tri_en       (scl_tri_en_tb),

        .i_hs_mode          (0),
        .i_sys_clk          (sys_clk_tb),
        .i_timeout_en       (0),
        .i_timeout_val      (16'h00af),
        .i_ack_busy         (0),
        .i_init_intr_en     (1),
        .i_rw_done_intr_en  (1),
        .i_timeout_intr_en  (0),
        .o_intr             ( ),
        .o_rx_status        (rx_status_tb),
        .o_tx_status        (tx_status_tb),
        .o_init_done        ( ),
        .o_rd_done          (rd_done_tb),
        .o_wr_done          (wr_done_tb),
        .o_timeout_err      ( ),
        .o_init_intr        (init_intr_tb),
		.o_rw_intr          (rw_intr_tb),
		.o_timeout_intr     ( )
	);

    endmodule