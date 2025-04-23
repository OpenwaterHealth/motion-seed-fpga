`timescale 1ns / 1ps

module dds_cw_control(
	input        clk,
    input        rstn,
 
    input [15:0] dds_control,
    input        dds_control_update,

    output       mosi,
    output       ss0,
    output       sck,
    output       spi_ready

	);
	
localparam IDLE      = 0;
localparam WAIT      = 1;
localparam SEND      = 2;
localparam SCK_STATE = 3;
localparam READY     = 4;
localparam DONE      = 6;
		
reg [3:0]  state=0,cstate=0,dac_state=0;
reg [7:0]  count;
reg [15:0] data_temp;
reg [15:0] data;
reg        data_valid;
reg        cw_data_valid;
reg        data_ready;

reg        ss0_temp=1;
reg        sck_temp=0;
reg        mosi_temp=0;

reg [15:0] dds_control_reg;

reg [15:0] dds_control_reg_old;
	
assign ss0 = ss0_temp;
assign sck = sck_temp;
assign mosi = mosi_temp;
assign spi_ready = data_ready;

reg [15:0] total_count,dac_count;
reg mod_data_select,cw_data_select;
reg data_ready_d;
reg mosi_reset;
reg ss0_temp_d;

always @(posedge clk or negedge rstn) begin
		if (!rstn) begin
             total_count <= 0;
             mod_data_select <= 0;
             cw_data_select <= 0;
             ss0_temp <= 1;
             sck_temp <= 0;
             ss0_temp_d <= 0;
             mosi_reset <= 0;
             data_ready <= 1;
             cstate <= IDLE;
        end else begin
                      ss0_temp_d <= ss0_temp;
                      if (!ss0_temp_d & ss0_temp) mosi_reset <= 1;
                      else mosi_reset <= 0;

                      case (cstate)
                            IDLE : begin
                                        total_count <= 0;
                                        if (data_valid) begin
                                           ss0_temp <= 0; 
                                           data_ready <= 0;
                                           cstate <= SCK_STATE;
                                        end
                                   end
                       SCK_STATE : begin
                                      if (total_count > 31) begin
                                          sck_temp <= 0;
                                          cstate <= DONE;
                                      end else begin
                                                    sck_temp <= ~sck_temp;
                                                    total_count <= total_count + 1;
                                               end
                                    end
                        DONE: begin
                                 mod_data_select <= 0;
                                 cw_data_select <= 0;
                                 total_count <= 0;
                                 ss0_temp <= 1; 
                                 data_ready <= 1;
                                 cstate <= IDLE;
                                 sck_temp <= 0;
                              end
                    endcase
		end
	end

always @(posedge sck_temp or negedge rstn or posedge mosi_reset) begin
		if (!rstn | mosi_reset) begin
             count <= 15;
             mosi_temp <= 0;
             data_temp <= 0;
             state <= IDLE;
        end else begin
                     case(state)
                          IDLE: begin
                                   if (!ss0_temp) begin
                                        mosi_temp <= data[15];
                                        data_temp <= data << 1;
                                        state <= SEND;
                                   end
                                end
                          SEND: begin
                                   mosi_temp <= data_temp[15];
                                   data_temp <= data_temp << 1;
                                   if (count == 8'h0) begin
                                       count <= 14;
                                       state <= DONE;
                                   end else count <= count - 1;
                                end
                          DONE: begin
                                     mosi_temp <= 0;
                                     state <= IDLE;
                                end
                     endcase
		        end
end

always @(posedge clk or negedge rstn) begin
    if (!rstn) begin
             dds_control_reg <= 0;
    end else begin
                 if (dds_control_update) dds_control_reg <= dds_control;
             end
end

always @(posedge clk or negedge rstn) begin
    if (!rstn) begin
             dds_control_reg_old <= 0;
             data <= 0;
             data_valid <= 0;
    end else begin
			        if (dds_control_reg != dds_control_reg_old) begin
                        dds_control_reg_old <= dds_control_reg;
                        data <= dds_control_reg;
                        data_valid <= 1;
                    end else data_valid <= 0;

		     end
end
	

endmodule