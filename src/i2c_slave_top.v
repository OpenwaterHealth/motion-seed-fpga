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
`timescale 1ns / 1ps

module i2c_slave_top( 
    input     	   rstn,                 	 
    input    	   clk,              	     
	
    inout     	   scl,             		 
    inout     	   sda,             		 
			
    input [15:0]  adc_voltage_data,
    input [15:0]  adc_current_data,
    input [7:0]   monitor_status,
    input [7:0]   status,

    output [15:0] dds_control,
    output [15:0] dds_gain,
    output [15:0] cw_gain,
    output [15:0] dds_current_limit,
    output [15:0] cw_current_limit,
    output [15:0] dds_mon_current_limit,
    output [15:0] cw_mon_current_limit,
    output [15:0] control,
    output [15:0] static_control
            

);

wire start;
wire stop;
wire data_vld;
wire r_w;
wire [7:0] data_in;
wire [7:0] data_out;
wire stretch_on;
		
i2cslave_controller_top i2cslave_controller_top (
	.scl 		(scl),
	.sda 		(sda),
	.clk 		(clk),
	.reset 		(!rstn),
	.stretch_on (stretch_on),
	.data_in 	(data_in),

	.start 		(start),
	.stop 		(stop),
	.data_vld 	(data_vld),
	.r_w 		(r_w),
	.data_out 	(data_out)
);

registers registers(
	.clk 					(clk),
	.rst 					(!rstn),
	.SCL 					(scl),
	.data_to_i2c 			(data_in),
	.start 					(start),
	.stop 					(stop),
	.data_vld 				(data_vld),
	.r_w 					(r_w),
	.i2c_to_data			(data_out),
	.stretch_on             (stretch_on),

	.adc_voltage_data 		(adc_voltage_data),
	.adc_current_data 		(adc_current_data),
	.monitor_status 		(monitor_status),
	.status 				(status),
	.dds_control 			(dds_control),
	.dds_gain 				(dds_gain),
	.cw_gain 				(cw_gain),
	.dds_current_limit 		(dds_current_limit),
	.cw_current_limit 		(cw_current_limit),
	.dds_mon_current_limit 	(dds_mon_current_limit),
	.cw_mon_current_limit 	(cw_mon_current_limit),
	
	.control 		        (control),
	.static_control 		(static_control)
	
);
 
endmodule

