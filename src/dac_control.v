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

//`timescale <time_units> / <precision>

module dac_control( 
    input        rstn,
    input        clk,

    input        trigger,
    input [15:0] current,
    input [15:0] width,

    output reg   mosi,
    output reg   ss,
    output       sck,
    output reg   ldac_n
)/* synthesis syn_preserve=1 */;

parameter   IDLE          = 4'd0,
            RESET_TRIGGER = 4'd1,
            SET_CURRENT   = 4'd2,
            SCK_DATA      = 4'd3,
            SCK_END       = 4'd4,
            WAIT          = 4'd5,
            START_TIMER   = 4'd6,
            RESET         = 4'd7,
            DONE          = 4'd8;

reg [3:0] state=0,sstate=0,tm_state=0;
reg [15:0] sck_count;
reg trigger_d1;
reg pulse_start,pulse_completed;
reg trig_state;
reg [3:0] index;
reg [15:0] pulse_width_count,timer_count;
reg sck_enable;
wire sck_temp;
reg ss_d1;
wire timer_clk;
reg start_width_count;

assign sck = sck_enable & sck_temp;
assign sck_temp = sck_count[0];
assign timer_clk = sck_count[15];

always @(posedge clk,negedge rstn)
begin
    if (!rstn) begin
        trigger_d1 <= 0;     
        pulse_start <= 0;     
        trig_state <= IDLE;     
    end else begin
                 trigger_d1 <= trigger;
                 case (trig_state) 
                        IDLE : begin
                                    if (!trigger_d1 & trigger) begin
                                        pulse_start <= 1;
                                        trig_state <= RESET_TRIGGER;
                                    end
                               end
               RESET_TRIGGER : begin
                                    if (sck_enable) begin
                                        pulse_start <= 0;
                                        trig_state <= IDLE;
                                    end
                               end
                  endcase
             end
end

always @(negedge sck_temp,negedge rstn)
begin
    if (!rstn) begin
        ss <= 1;     
        mosi <= 0;     
        index <= 15;  
        sck_enable <= 0; 
        ldac_n <= 1; 
        sstate <= IDLE;     
        state <= IDLE;     
    end else begin
                   case (state)
                        IDLE : if (pulse_start) state <= SET_CURRENT;
                 SET_CURRENT : begin
                                    case (sstate)
                                           IDLE : begin
                                                    ldac_n <= 1;
                                                   // sck_enable <= 1;
                                                    sstate <= SCK_DATA;
                                                  end
                                       SCK_DATA : begin
                                                    sck_enable <= 1;
                                                    ss <= 0;
                                                    mosi <= current[index];
                                                    if (index < 1) begin
                                                        sstate <= SCK_END;
                                                        index <= 15;
                                                    end else index <= index - 1;
                                                  end
                                        SCK_END : begin
                                                    sck_enable <= 0;
                                                    ss <= 1;
                                                    start_width_count <= 1;
                                                    sstate <= DONE;
                                                    mosi <= 0;
                                                  end
                                           DONE : begin
                                                      state <= WAIT;
                                                      sstate <= IDLE;
                                                  end
                                    endcase
                               end
                        WAIT : begin
                                    if (pulse_completed) begin
                                        state <= RESET;
                                    end 
                               end
                       RESET : begin
                                    case (sstate)
                                           IDLE : begin
                                                    ss <= 0;
                                                    sstate <= SCK_DATA;
                                                  end
                                       SCK_DATA : begin
                                                    ss <= 0;
                                                    sck_enable <= 1;
                                                    mosi <= 1;
                                                    if (index < 1) begin
                                                        sstate <= SCK_END;
                                                        index <= 15;
                                                    end else index <= index - 1;
                                                  end
                                        SCK_END : begin
                                                    sck_enable <= 0;
                                                    sstate <= DONE;
                                                    mosi <= 0;
                                                    ss <= 1;
                                                    start_width_count <= 0;
                                                  end
                                           DONE : begin
                                                      ldac_n <= 0;
                                                      state <= IDLE;
                                                      sstate <= IDLE;
                                                  end
                                    endcase
                               end
                    endcase
            end
end

always @(posedge timer_clk,negedge rstn)
begin
    if (!rstn) begin
        pulse_completed <= 0;
        timer_count <= 0;     
        ss_d1 <= 0;     
        tm_state <= IDLE;     
    end else begin
                   ss_d1 <= ss;
                   case (tm_state)
                        IDLE : begin
                                    pulse_completed <= 0;
                                    if (start_width_count) tm_state <= START_TIMER;
                               end
                 START_TIMER : begin
                                 if (timer_count > width) begin
                                     timer_count <= 0;
                                     tm_state <= DONE;
                                     pulse_completed <= 1;
                                 end else timer_count <= timer_count + 1;
                               end
                        DONE : begin
                                     pulse_completed <= 0;
                                     tm_state <= IDLE;
                               end
                    endcase
            end
end

always @(posedge clk,negedge rstn)
begin
    if (!rstn) begin
        sck_count <= 0;     
    end else begin
                sck_count <= sck_count + 1;
            end
end


endmodule

