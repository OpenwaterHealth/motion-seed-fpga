`timescale 1ns / 1ps

module dds_control_interface(
	input        clk,
    input        rstn,
 
    input        test_mode,
    input [15:0] dds_control_data,
    input        dds_control_update,

    output       mosi,
    output reg   ss0,
    output reg   sck,
    output       data_valid_dbg

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
reg        data_valid_reset;

reg        ss0_temp=1;
reg        ss0_temp2=1;
reg        sck_temp=0;
reg        sck_temp2= 0;
reg        mosi_temp=0;
reg [15:0] total_count,dac_count;
reg        mod_data_select,cw_data_select;
reg        mosi_reset;
reg        ss0_temp_d,ss0_temp_dd,ss0_temp_dd2;
reg [15:0] dds_control_reg;

reg [15:0] dds_control_reg_old;
reg         transfer_completed,transfer_completed_temp,transfer_completed_temp_d,transfer_completed_temp_d2;
reg [3:0]  index=0;
reg test_mode_d=0;

reg transfer_done=0;
reg transfer_completed_reset,test_run;

assign mosi = mosi_temp;
assign data_valid_dbg = data_valid_reset;

always @(negedge clk or negedge rstn) begin
		if (!rstn) begin
             ss0_temp_dd <= 1;
             ss0_temp_dd2 <= 1;
        end else begin
                      ss0_temp_dd <= ss0_temp;
                      ss0_temp_dd2 <= ss0_temp_dd;
                 end
end

always @(negedge clk or negedge rstn) begin
		if (!rstn) begin
             ss0 <= 1;
             sck_temp2 <= 0;
        end else begin
                      ss0 <= ss0_temp2;
                      sck_temp2 <= sck_temp;
                 end
end

always @(posedge clk or negedge rstn) begin
		if (!rstn) begin
             ss0_temp2 <= 1;
             sck <= 0;
        end else begin
                      ss0_temp2 <= ss0_temp_dd | ss0_temp;
                      sck <= sck_temp2;
                 end
end

always @(posedge clk or negedge rstn) begin
		if (!rstn) begin
             total_count <= 0;
             mod_data_select <= 0;
             cw_data_select <= 0;
             ss0_temp <= 1;
             sck_temp <= 0;
             ss0_temp_d <= 0;
             mosi_reset <= 0;
			 transfer_completed_temp <= 0;
			 transfer_completed_temp_d <= 0;
			 transfer_completed_temp_d2 <= 0;

             data_valid_reset <= 0;
             cstate <= IDLE;
        end else begin
					  transfer_completed_temp_d <= transfer_completed_temp;
					  transfer_completed_temp_d2 <= transfer_completed_temp_d;
                      ss0_temp_d <= ss0_temp;
                      if (!ss0_temp_d & ss0_temp) mosi_reset <= 1;
                      else mosi_reset <= 0;

                      case (cstate)
                            IDLE : begin
								        transfer_completed_temp <= 0;

                                        data_valid_reset <= 0;
                                        total_count <= 0;
                                        if (data_valid) begin
                                           cstate <= SCK_STATE;
                                        end
                                   end
                       SCK_STATE : begin
                                      ss0_temp <= 0; 
                                      if (total_count > 30) begin
                                          sck_temp <= 0;
                                          cstate <= WAIT;
                                      end else begin
                                                    sck_temp <= ~sck_temp;
                                                    total_count <= total_count + 1;
                                               end
                                    end
                        WAIT: begin
								 data_valid_reset <= 1;
                                 mod_data_select <= 0;
                                 cw_data_select <= 0;
                                 total_count <= 0;
                                 ss0_temp <= 1; 
                                 cstate <= DONE;
                                 sck_temp <= 0;
                              end
                        DONE: begin
								 transfer_completed_temp <= 1;
                                 cstate <= IDLE;
                              end
                    endcase
		end
	end

always @(negedge sck_temp or negedge rstn or posedge mosi_reset or posedge transfer_completed_reset) begin
		if (!rstn | mosi_reset) begin
             count <= 15;
             mosi_temp <= 0;
             data_temp <= 0;
             state <= IDLE;
        end else begin
                      case(state)
                              IDLE: begin
                                       if (!ss0_temp) begin
                                            count <= count - 1;
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
                                         data_temp <= 0;
                                         mosi_temp <= 0;
                                         state <= IDLE;
                                    end
                       endcase
		        end
end

always @(posedge clk or negedge rstn or posedge data_valid_reset) begin
    if (!rstn | data_valid_reset) begin
         transfer_completed_reset <= 0;
         data <= 0;
         data_valid <= 0;
         test_run <= 0;
    end else begin
		         test_mode_d <= test_mode;
		         test_run <= !test_mode_d & test_mode;
                 if (test_mode & !transfer_done) begin
					 if (transfer_completed_temp_d | test_run) begin
						 if (index <5) begin
							 data_valid <= 1;
							 index <= index + 1;
					     end else begin
									data_valid <= 0;
									transfer_done <= 1;
								  end
						 case (index)
							   0 : data <= 16'h0021;
							   1 : data <= 16'hc75f;
							   2 : data <= 16'h0040;
							   3 : data <= 16'h00c0;
							   4 : data <= 16'h0020;
					     default : transfer_done <= 1;
						 endcase
					 end else data_valid <= 0; 
				 end else begin
							transfer_completed_reset <= 0;
							 if (dds_control_update) begin
								 data <= dds_control_data;
								 data_valid <= 1;
							 end  
					      end
             end
end


endmodule