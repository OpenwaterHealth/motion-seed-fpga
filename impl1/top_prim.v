// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.13.0.56.2
// Netlist written on Tue Apr 08 23:20:38 2025
//
// Verilog Description of module top
//

module top (rstn, system_reset_n, clk_10mhz, seed_mod_mosi, seed_mod_sck, 
            seed_mod_ss, seed_laser_disable, seed_laser_en_led_n, seed_adc_sdo1, 
            seed_adc_sdo2, seed_adc_sck, seed_adc_convert, scl, sda, 
            seed_compared, over_current_shutdown_n, seed_dac_mosi, seed_dac_ss, 
            seed_dac_sck, seed_ldac_n, seed_reset_n, heartbeat_n, mcu_gpio, 
            seed_spare1, seed_spare2, seed_spare3, seed_spare4, seed_gpio1, 
            seed_gpio2, seed_gpio3, seed_gpio4, spare_led1_n, spare_led2_n) /* synthesis syn_module_defined=1 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/top.v(20[8:11])
    input rstn;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/top.v(21[15:19])
    input system_reset_n;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/top.v(22[15:29])
    input clk_10mhz;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/top.v(24[15:24])
    output seed_mod_mosi;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/top.v(26[12:25])
    output seed_mod_sck;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/top.v(27[12:24])
    output seed_mod_ss;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/top.v(28[12:23])
    output seed_laser_disable;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/top.v(30[12:30])
    output seed_laser_en_led_n;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/top.v(31[12:31])
    input seed_adc_sdo1;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/top.v(33[12:25])
    input seed_adc_sdo2;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/top.v(34[12:25])
    output seed_adc_sck;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/top.v(35[12:24])
    output seed_adc_convert;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/top.v(36[12:28])
    inout scl;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/top.v(38[15:18])
    inout sda;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/top.v(39[15:18])
    input seed_compared;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/top.v(41[12:25])
    output over_current_shutdown_n;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/top.v(42[12:35])
    output seed_dac_mosi;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/top.v(44[12:25])
    output seed_dac_ss;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/top.v(45[12:23])
    output seed_dac_sck;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/top.v(46[12:24])
    output seed_ldac_n;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/top.v(47[12:23])
    output seed_reset_n;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/top.v(48[12:24])
    output heartbeat_n;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/top.v(50[15:26])
    output mcu_gpio /* synthesis .original_dir=IN_OUT */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/top.v(51[12:20])
    output seed_spare1 /* synthesis .original_dir=IN_OUT */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/top.v(53[12:23])
    output seed_spare2 /* synthesis .original_dir=IN_OUT */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/top.v(54[12:23])
    output seed_spare3 /* synthesis .original_dir=IN_OUT */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/top.v(55[12:23])
    output seed_spare4 /* synthesis .original_dir=IN_OUT */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/top.v(56[12:23])
    output seed_gpio1 /* synthesis .original_dir=IN_OUT */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/top.v(58[12:22])
    output seed_gpio2 /* synthesis .original_dir=IN_OUT */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/top.v(59[12:22])
    output seed_gpio3 /* synthesis .original_dir=IN_OUT */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/top.v(60[12:22])
    output seed_gpio4 /* synthesis .original_dir=IN_OUT */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/top.v(61[12:22])
    output spare_led1_n;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/top.v(63[12:24])
    output spare_led2_n;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/top.v(64[12:24])
    
    wire clk_10mhz_c /* synthesis SET_AS_NETWORK=clk_10mhz_c, is_clock=1 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/top.v(24[15:24])
    wire seed_spare1_c /* synthesis is_clock=1, SET_AS_NETWORK=seed_spare1_c */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/top.v(46[12:24])
    wire clk_N_1433 /* synthesis is_inv_clock=1 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_control_interface.v(12[18:21])
    
    wire GND_net, VCC_net, rstn_c, system_reset_n_c_3, seed_mod_mosi_c, 
        seed_mod_sck_c, seed_mod_ss_c, seed_laser_en_led_n_c, seed_adc_sdo1_c, 
        seed_adc_sdo2_c, seed_adc_sck_c, seed_adc_convert_c, seed_compared_c_1, 
        seed_spare2_c, seed_spare3_c, seed_spare4_c, heartbeat_n_c_7, 
        mcu_gpio_c_15;
    wire [15:0]adc_voltage_data;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/top.v(74[13:29])
    wire [15:0]adc_current_data;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/top.v(75[13:29])
    wire [7:0]status;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/top.v(76[13:19])
    wire [15:0]dds_control;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/top.v(78[13:24])
    wire [15:0]dds_gain;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/top.v(79[13:21])
    wire [15:0]cw_gain;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/top.v(80[13:20])
    wire [15:0]dds_current_limit;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/top.v(81[13:30])
    wire [15:0]cw_current_limit;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/top.v(82[13:29])
    wire [15:0]static_control;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/top.v(84[13:27])
    wire [15:0]control;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/top.v(85[13:20])
    
    wire reset_n;
    wire [23:0]data;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(39[12:16])
    
    wire n5979;
    wire [23:0]data_23__N_925;
    
    wire sda_out;
    wire [3:0]state_adj_1819;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/adc_control.v(54[11:16])
    
    wire clk_10mhz_c_enable_89, n12010, n12948, n7927, n3233, scl_out, 
        n12011, n12007, clk_10mhz_c_enable_54, n12947, n12611;
    
    VHI i2 (.Z(VCC_net));
    OB seed_laser_disable_pad (.I(VCC_net), .O(seed_laser_disable));   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/top.v(30[12:30])
    OB seed_mod_ss_pad (.I(seed_mod_ss_c), .O(seed_mod_ss));   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/top.v(28[12:23])
    OB seed_mod_sck_pad (.I(seed_mod_sck_c), .O(seed_mod_sck));   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/top.v(27[12:24])
    OB seed_mod_mosi_pad (.I(seed_mod_mosi_c), .O(seed_mod_mosi));   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/top.v(26[12:25])
    BB sda_pad (.I(GND_net), .T(n7927), .B(sda), .O(sda_out));   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller_top.v(151[8:11])
    BB scl_pad (.I(GND_net), .T(VCC_net), .B(scl), .O(scl_out));   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller_top.v(149[8:11])
    OB seed_laser_en_led_n_pad (.I(seed_laser_en_led_n_c), .O(seed_laser_en_led_n));   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/top.v(31[12:31])
    OB seed_adc_sck_pad (.I(seed_adc_sck_c), .O(seed_adc_sck));   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/top.v(35[12:24])
    OB seed_adc_convert_pad (.I(seed_adc_convert_c), .O(seed_adc_convert));   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/top.v(36[12:28])
    OB over_current_shutdown_n_pad (.I(VCC_net), .O(over_current_shutdown_n));   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/top.v(42[12:35])
    OB seed_dac_mosi_pad (.I(seed_spare2_c), .O(seed_dac_mosi));   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/top.v(44[12:25])
    OB seed_dac_ss_pad (.I(seed_spare3_c), .O(seed_dac_ss));   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/top.v(45[12:23])
    OB seed_dac_sck_pad (.I(seed_spare1_c), .O(seed_dac_sck));   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/top.v(46[12:24])
    OB seed_ldac_n_pad (.I(seed_spare4_c), .O(seed_ldac_n));   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/top.v(47[12:23])
    OB seed_reset_n_pad (.I(VCC_net), .O(seed_reset_n));   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/top.v(48[12:24])
    OB heartbeat_n_pad (.I(heartbeat_n_c_7), .O(heartbeat_n));   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/top.v(50[15:26])
    OB mcu_gpio_pad (.I(mcu_gpio_c_15), .O(mcu_gpio));   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/top.v(51[12:20])
    OB seed_spare1_pad (.I(seed_spare1_c), .O(seed_spare1));   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/top.v(53[12:23])
    OB seed_spare2_pad (.I(seed_spare2_c), .O(seed_spare2));   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/top.v(54[12:23])
    OB seed_spare3_pad (.I(seed_spare3_c), .O(seed_spare3));   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/top.v(55[12:23])
    OB seed_spare4_pad (.I(seed_spare4_c), .O(seed_spare4));   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/top.v(56[12:23])
    OB seed_gpio1_pad (.I(GND_net), .O(seed_gpio1));   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/top.v(58[12:22])
    OB seed_gpio2_pad (.I(GND_net), .O(seed_gpio2));   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/top.v(59[12:22])
    OB seed_gpio3_pad (.I(GND_net), .O(seed_gpio3));   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/top.v(60[12:22])
    OB seed_gpio4_pad (.I(GND_net), .O(seed_gpio4));   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/top.v(61[12:22])
    OB spare_led1_n_pad (.I(GND_net), .O(spare_led1_n));   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/top.v(63[12:24])
    OB spare_led2_n_pad (.I(GND_net), .O(spare_led2_n));   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/top.v(64[12:24])
    IB rstn_pad (.I(rstn), .O(rstn_c));   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/top.v(21[15:19])
    IB system_reset_n_pad (.I(system_reset_n), .O(system_reset_n_c_3));   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/top.v(22[15:29])
    IB clk_10mhz_pad (.I(clk_10mhz), .O(clk_10mhz_c));   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/top.v(24[15:24])
    IB seed_adc_sdo1_pad (.I(seed_adc_sdo1), .O(seed_adc_sdo1_c));   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/top.v(33[12:25])
    IB seed_adc_sdo2_pad (.I(seed_adc_sdo2), .O(seed_adc_sdo2_c));   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/top.v(34[12:25])
    IB seed_compared_pad (.I(seed_compared), .O(seed_compared_c_1));   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/top.v(41[12:25])
    GSR GSR_INST (.GSR(reset_n));
    VLO i1 (.Z(GND_net));
    TSALL TSALL_INST (.TSALL(GND_net));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    LUT4 i9320_3_lut (.A(state_adj_1819[3]), .Z(n12010)) /* synthesis lut_function=(A) */ ;
    defparam i9320_3_lut.init = 16'haaaa;
    LUT4 i9321_3_lut (.A(state_adj_1819[2]), .Z(n12011)) /* synthesis lut_function=(A) */ ;
    defparam i9321_3_lut.init = 16'haaaa;
    LUT4 i9317_4_lut (.A(seed_adc_convert_c), .B(state_adj_1819[0]), .C(n12611), 
         .D(state_adj_1819[1]), .Z(n12007)) /* synthesis lut_function=(A ((C+(D))+!B)+!A !(B+(C+(D)))) */ ;
    defparam i9317_4_lut.init = 16'haaa3;
    LUT4 status_2__I_0_1_lut (.A(status[2]), .Z(seed_laser_en_led_n_c)) /* synthesis lut_function=(!(A)) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/top.v(131[31:44])
    defparam status_2__I_0_1_lut.init = 16'h5555;
    i2c_slave_top i2c_slave_top (.adc_voltage_data({adc_voltage_data}), .dds_gain({dds_gain}), 
            .dds_control({dds_control}), .\status[2] (status[2]), .clk_10mhz_c(clk_10mhz_c), 
            .cw_gain({cw_gain}), .cw_current_limit({cw_current_limit}), 
            .clk_N_1433(clk_N_1433), .dds_current_limit({dds_current_limit}), 
            .n12948(n12948), .GND_net(GND_net), .adc_current_data({adc_current_data}), 
            .n12947(n12947), .\control[3] (control[3]), .mcu_gpio_c_15(mcu_gpio_c_15), 
            .\static_control[7] (static_control[7]), .\data_23__N_925[19] (data_23__N_925[19]), 
            .n3233(n3233), .clk_10mhz_c_enable_89(clk_10mhz_c_enable_89), 
            .clk_10mhz_c_enable_54(clk_10mhz_c_enable_54), .system_reset_n_c_3(system_reset_n_c_3), 
            .\data[19] (data[19]), .n5979(n5979), .\data[16] (data[16]), 
            .\data_23__N_925[16] (data_23__N_925[16]), .seed_compared_c_1(seed_compared_c_1), 
            .\control[0] (control[0]), .reset_n(reset_n), .n7927(n7927), 
            .sda_out(sda_out), .scl_out(scl_out)) /* synthesis syn_module_defined=1 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/top.v(175[15] 196[2])
    dds_gain_control dds_gain_control (.seed_spare1_c(seed_spare1_c), .clk_10mhz_c(clk_10mhz_c), 
            .seed_spare3_c(seed_spare3_c), .GND_net(GND_net), .\control[3] (control[3]), 
            .dds_current_limit({dds_current_limit}), .seed_spare2_c(seed_spare2_c), 
            .seed_spare4_c(seed_spare4_c), .cw_current_limit({cw_current_limit}), 
            .clk_10mhz_c_enable_89(clk_10mhz_c_enable_89), .dds_gain({dds_gain}), 
            .clk_10mhz_c_enable_54(clk_10mhz_c_enable_54), .\data[16] (data[16]), 
            .\data[19] (data[19]), .cw_gain({cw_gain}), .n12948(n12948), 
            .n5979(n5979), .\data_23__N_925[16] (data_23__N_925[16]), .\data_23__N_925[19] (data_23__N_925[19]), 
            .reset_n(reset_n), .n3233(n3233)) /* synthesis syn_module_defined=1 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/top.v(198[18] 215[3])
    INV i9858 (.A(clk_10mhz_c), .Z(clk_N_1433));   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/top.v(24[15:24])
    LUT4 m1_lut (.Z(n12948)) /* synthesis lut_function=1, syn_instantiated=1 */ ;
    defparam m1_lut.init = 16'hffff;
    reset_generator reset_generator (.rstn_c(rstn_c), .clk_10mhz_c(clk_10mhz_c), 
            .reset_n(reset_n)) /* synthesis syn_module_defined=1 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/top.v(163[17] 167[2])
    LUT4 m0_lut (.Z(n12947)) /* synthesis lut_function=0, syn_instantiated=1 */ ;
    defparam m0_lut.init = 16'h0000;
    adc_control adc_control (.seed_adc_convert_c(seed_adc_convert_c), .clk_10mhz_c(clk_10mhz_c), 
            .n12007(n12007), .state({state_adj_1819}), .adc_voltage_data({adc_voltage_data}), 
            .adc_current_data({adc_current_data}), .seed_adc_sdo1_c(seed_adc_sdo1_c), 
            .seed_adc_sdo2_c(seed_adc_sdo2_c), .n12947(n12947), .n12611(n12611), 
            .n12010(n12010), .n12011(n12011), .GND_net(GND_net), .seed_adc_sck_c(seed_adc_sck_c)) /* synthesis syn_preserve=1, syn_module_defined=1 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/top.v(234[13] 254[2])
    dds_control_interface dds_control_interface (.clk_10mhz_c(clk_10mhz_c), 
            .seed_mod_ss_c(seed_mod_ss_c), .clk_N_1433(clk_N_1433), .seed_mod_sck_c(seed_mod_sck_c), 
            .seed_mod_mosi_c(seed_mod_mosi_c), .dds_control({dds_control}), 
            .reset_n(reset_n), .GND_net(GND_net), .\static_control[7] (static_control[7]), 
            .\control[0] (control[0]), .n12948(n12948)) /* synthesis syn_module_defined=1 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/top.v(218[23] 231[3])
    heart_beat heart_beat (.clk_10mhz_c(clk_10mhz_c), .GND_net(GND_net), 
            .heartbeat_n_c_7(heartbeat_n_c_7)) /* synthesis syn_module_defined=1 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/top.v(169[12] 173[2])
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module i2c_slave_top
//

module i2c_slave_top (adc_voltage_data, dds_gain, dds_control, \status[2] , 
            clk_10mhz_c, cw_gain, cw_current_limit, clk_N_1433, dds_current_limit, 
            n12948, GND_net, adc_current_data, n12947, \control[3] , 
            mcu_gpio_c_15, \static_control[7] , \data_23__N_925[19] , 
            n3233, clk_10mhz_c_enable_89, clk_10mhz_c_enable_54, system_reset_n_c_3, 
            \data[19] , n5979, \data[16] , \data_23__N_925[16] , seed_compared_c_1, 
            \control[0] , reset_n, n7927, sda_out, scl_out) /* synthesis syn_module_defined=1 */ ;
    input [15:0]adc_voltage_data;
    output [15:0]dds_gain;
    output [15:0]dds_control;
    output \status[2] ;
    input clk_10mhz_c;
    output [15:0]cw_gain;
    output [15:0]cw_current_limit;
    input clk_N_1433;
    output [15:0]dds_current_limit;
    input n12948;
    input GND_net;
    input [15:0]adc_current_data;
    input n12947;
    output \control[3] ;
    output mcu_gpio_c_15;
    output \static_control[7] ;
    output \data_23__N_925[19] ;
    input n3233;
    output clk_10mhz_c_enable_89;
    output clk_10mhz_c_enable_54;
    input system_reset_n_c_3;
    input \data[19] ;
    output n5979;
    input \data[16] ;
    output \data_23__N_925[16] ;
    input seed_compared_c_1;
    output \control[0] ;
    input reset_n;
    output n7927;
    input sda_out;
    input scl_out;
    
    wire clk_10mhz_c /* synthesis SET_AS_NETWORK=clk_10mhz_c, is_clock=1 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/top.v(24[15:24])
    wire clk_N_1433 /* synthesis is_inv_clock=1 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_control_interface.v(12[18:21])
    
    wire n12641, n12639, n11419, n12593, n11461, n11545, n11433, 
        n11531, n11475, n11489, n12594;
    wire [7:0]addr_start;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(39[11:21])
    
    wire n12573, addr_i_7__N_595, addr_i_7__N_625, addr_i_7__N_591, 
        addr_i_7__N_616, addr_i_7__N_592, addr_i_7__N_619, addr_i_7__N_593, 
        addr_i_7__N_622, addr_i_7__N_594;
    wire [1:0]state_1__N_839;
    
    wire n12607, n11503, n11391, n11601, n11587, n11559, n11573, 
        n12571, n12570, n12569, n12568, n12567, n12566, n12603;
    wire [7:0]data_out;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(34[16:24])
    
    wire addr_i_7__N_613, addr_i_7__N_590, addr_i_7__N_610, addr_i_7__N_587, 
        addr_i_7__N_597;
    wire [8:0]data_buffer_i;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(134[18:31])
    
    wire n11527, n11471, n11513, n11541, n11555, n11415, n11447, 
        n11443, n11569, addr_i_7__N_628, addr_i_7__N_596;
    wire [7:0]addr_i_7__N_857;
    
    wire n11517, n11405;
    
    registers registers (.n12641(n12641), .adc_voltage_data({adc_voltage_data}), 
            .dds_gain({dds_gain}), .n12639(n12639), .n11419(n11419), .n12593(n12593), 
            .n11461(n11461), .n11545(n11545), .n11433(n11433), .n11531(n11531), 
            .n11475(n11475), .n11489(n11489), .dds_control({dds_control}), 
            .\status[2] (\status[2] ), .clk_10mhz_c(clk_10mhz_c), .n12594(n12594), 
            .cw_gain({cw_gain}), .cw_current_limit({cw_current_limit}), 
            .addr_start({addr_start}), .clk_N_1433(clk_N_1433), .n12573(n12573), 
            .dds_current_limit({dds_current_limit}), .addr_i_7__N_595(addr_i_7__N_595), 
            .addr_i_7__N_625(addr_i_7__N_625), .n12948(n12948), .addr_i_7__N_591(addr_i_7__N_591), 
            .addr_i_7__N_616(addr_i_7__N_616), .addr_i_7__N_592(addr_i_7__N_592), 
            .addr_i_7__N_619(addr_i_7__N_619), .addr_i_7__N_593(addr_i_7__N_593), 
            .addr_i_7__N_622(addr_i_7__N_622), .addr_i_7__N_594(addr_i_7__N_594), 
            .GND_net(GND_net), .adc_current_data({adc_current_data}), .\state_1__N_839[0] (state_1__N_839[0]), 
            .n12607(n12607), .n11503(n11503), .n11391(n11391), .n11601(n11601), 
            .n11587(n11587), .n11559(n11559), .n11573(n11573), .n12947(n12947), 
            .n12571(n12571), .n12570(n12570), .n12569(n12569), .n12568(n12568), 
            .n12567(n12567), .n12566(n12566), .n12603(n12603), .\control[3] (\control[3] ), 
            .mcu_gpio_c_15(mcu_gpio_c_15), .\static_control[7] (\static_control[7] ), 
            .data_out({data_out}), .\data_23__N_925[19] (\data_23__N_925[19] ), 
            .addr_i_7__N_613(addr_i_7__N_613), .addr_i_7__N_590(addr_i_7__N_590), 
            .addr_i_7__N_610(addr_i_7__N_610), .addr_i_7__N_587(addr_i_7__N_587), 
            .addr_i_7__N_597(addr_i_7__N_597), .\data_buffer_i[8] (data_buffer_i[8]), 
            .n11527(n11527), .\data_buffer_i[5] (data_buffer_i[5]), .n11471(n11471), 
            .\data_buffer_i[7] (data_buffer_i[7]), .n11513(n11513), .\data_buffer_i[6] (data_buffer_i[6]), 
            .n11541(n11541), .\data_buffer_i[2] (data_buffer_i[2]), .n11555(n11555), 
            .\data_buffer_i[4] (data_buffer_i[4]), .n11415(n11415), .n3233(n3233), 
            .clk_10mhz_c_enable_89(clk_10mhz_c_enable_89), .n11447(n11447), 
            .\data_buffer_i[1] (data_buffer_i[1]), .n11443(n11443), .\data_buffer_i[3] (data_buffer_i[3]), 
            .n11569(n11569), .addr_i_7__N_628(addr_i_7__N_628), .addr_i_7__N_596(addr_i_7__N_596), 
            .clk_10mhz_c_enable_54(clk_10mhz_c_enable_54), .addr_i_7__N_857({addr_i_7__N_857}), 
            .system_reset_n_c_3(system_reset_n_c_3), .\data[19] (\data[19] ), 
            .n5979(n5979), .\data[16] (\data[16] ), .\data_23__N_925[16] (\data_23__N_925[16] ), 
            .seed_compared_c_1(seed_compared_c_1), .n11517(n11517), .\control[0] (\control[0] ), 
            .n11405(n11405)) /* synthesis syn_preserve=1, syn_module_defined=1 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2c_slave_top.v(68[11] 95[2])
    i2cslave_controller_top i2cslave_controller_top (.clk_10mhz_c(clk_10mhz_c), 
            .\state_1__N_839[0] (state_1__N_839[0]), .data_out({data_out}), 
            .addr_start({addr_start}), .addr_i_7__N_622(addr_i_7__N_622), 
            .addr_i_7__N_594(addr_i_7__N_594), .addr_i_7__N_613(addr_i_7__N_613), 
            .addr_i_7__N_590(addr_i_7__N_590), .addr_i_7__N_610(addr_i_7__N_610), 
            .addr_i_7__N_587(addr_i_7__N_587), .addr_i_7__N_597(addr_i_7__N_597), 
            .addr_i_7__N_628(addr_i_7__N_628), .addr_i_7__N_596(addr_i_7__N_596), 
            .\data_buffer_i[7] (data_buffer_i[7]), .addr_i_7__N_857({addr_i_7__N_857}), 
            .\data_buffer_i[6] (data_buffer_i[6]), .\data_buffer_i[5] (data_buffer_i[5]), 
            .\data_buffer_i[4] (data_buffer_i[4]), .\data_buffer_i[3] (data_buffer_i[3]), 
            .\data_buffer_i[2] (data_buffer_i[2]), .\data_buffer_i[8] (data_buffer_i[8]), 
            .reset_n(reset_n), .n12607(n12607), .\data_buffer_i[1] (data_buffer_i[1]), 
            .addr_i_7__N_625(addr_i_7__N_625), .n12573(n12573), .addr_i_7__N_595(addr_i_7__N_595), 
            .addr_i_7__N_591(addr_i_7__N_591), .addr_i_7__N_616(addr_i_7__N_616), 
            .addr_i_7__N_592(addr_i_7__N_592), .addr_i_7__N_619(addr_i_7__N_619), 
            .addr_i_7__N_593(addr_i_7__N_593), .n12948(n12948), .n12641(n12641), 
            .n11555(n11555), .n11559(n11559), .n11569(n11569), .n12639(n12639), 
            .n11489(n11489), .n11541(n11541), .n11405(n11405), .n12593(n12593), 
            .n11513(n11513), .n11433(n11433), .n11573(n11573), .n12594(n12594), 
            .n11443(n11443), .n11587(n11587), .n11517(n11517), .n11527(n11527), 
            .n11601(n11601), .n11415(n11415), .n11391(n11391), .n11503(n11503), 
            .n12570(n12570), .n12571(n12571), .n11545(n11545), .n12566(n12566), 
            .n11531(n11531), .n11471(n11471), .n11475(n11475), .n12603(n12603), 
            .n12567(n12567), .n11461(n11461), .n11419(n11419), .n12568(n12568), 
            .n12569(n12569), .n11447(n11447), .n7927(n7927), .sda_out(sda_out), 
            .scl_out(scl_out)) /* synthesis syn_module_defined=1 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2c_slave_top.v(53[25] 66[2])
    
endmodule
//
// Verilog Description of module registers
//

module registers (n12641, adc_voltage_data, dds_gain, n12639, n11419, 
            n12593, n11461, n11545, n11433, n11531, n11475, n11489, 
            dds_control, \status[2] , clk_10mhz_c, n12594, cw_gain, 
            cw_current_limit, addr_start, clk_N_1433, n12573, dds_current_limit, 
            addr_i_7__N_595, addr_i_7__N_625, n12948, addr_i_7__N_591, 
            addr_i_7__N_616, addr_i_7__N_592, addr_i_7__N_619, addr_i_7__N_593, 
            addr_i_7__N_622, addr_i_7__N_594, GND_net, adc_current_data, 
            \state_1__N_839[0] , n12607, n11503, n11391, n11601, n11587, 
            n11559, n11573, n12947, n12571, n12570, n12569, n12568, 
            n12567, n12566, n12603, \control[3] , mcu_gpio_c_15, \static_control[7] , 
            data_out, \data_23__N_925[19] , addr_i_7__N_613, addr_i_7__N_590, 
            addr_i_7__N_610, addr_i_7__N_587, addr_i_7__N_597, \data_buffer_i[8] , 
            n11527, \data_buffer_i[5] , n11471, \data_buffer_i[7] , 
            n11513, \data_buffer_i[6] , n11541, \data_buffer_i[2] , 
            n11555, \data_buffer_i[4] , n11415, n3233, clk_10mhz_c_enable_89, 
            n11447, \data_buffer_i[1] , n11443, \data_buffer_i[3] , 
            n11569, addr_i_7__N_628, addr_i_7__N_596, clk_10mhz_c_enable_54, 
            addr_i_7__N_857, system_reset_n_c_3, \data[19] , n5979, 
            \data[16] , \data_23__N_925[16] , seed_compared_c_1, n11517, 
            \control[0] , n11405) /* synthesis syn_preserve=1, syn_module_defined=1 */ ;
    output n12641;
    input [15:0]adc_voltage_data;
    output [15:0]dds_gain;
    output n12639;
    input n11419;
    input n12593;
    input n11461;
    input n11545;
    input n11433;
    input n11531;
    input n11475;
    input n11489;
    output [15:0]dds_control;
    output \status[2] ;
    input clk_10mhz_c;
    input n12594;
    output [15:0]cw_gain;
    output [15:0]cw_current_limit;
    output [7:0]addr_start;
    input clk_N_1433;
    input n12573;
    output [15:0]dds_current_limit;
    input addr_i_7__N_595;
    input addr_i_7__N_625;
    input n12948;
    input addr_i_7__N_591;
    input addr_i_7__N_616;
    input addr_i_7__N_592;
    input addr_i_7__N_619;
    input addr_i_7__N_593;
    input addr_i_7__N_622;
    input addr_i_7__N_594;
    input GND_net;
    input [15:0]adc_current_data;
    input \state_1__N_839[0] ;
    input n12607;
    input n11503;
    input n11391;
    input n11601;
    input n11587;
    input n11559;
    input n11573;
    input n12947;
    input n12571;
    input n12570;
    input n12569;
    input n12568;
    input n12567;
    input n12566;
    input n12603;
    output \control[3] ;
    output mcu_gpio_c_15;
    output \static_control[7] ;
    output [7:0]data_out;
    output \data_23__N_925[19] ;
    input addr_i_7__N_613;
    input addr_i_7__N_590;
    input addr_i_7__N_610;
    input addr_i_7__N_587;
    input addr_i_7__N_597;
    input \data_buffer_i[8] ;
    output n11527;
    input \data_buffer_i[5] ;
    output n11471;
    input \data_buffer_i[7] ;
    output n11513;
    input \data_buffer_i[6] ;
    output n11541;
    input \data_buffer_i[2] ;
    output n11555;
    input \data_buffer_i[4] ;
    output n11415;
    input n3233;
    output clk_10mhz_c_enable_89;
    input n11447;
    input \data_buffer_i[1] ;
    output n11443;
    input \data_buffer_i[3] ;
    output n11569;
    input addr_i_7__N_628;
    input addr_i_7__N_596;
    output clk_10mhz_c_enable_54;
    input [7:0]addr_i_7__N_857;
    input system_reset_n_c_3;
    input \data[19] ;
    output n5979;
    input \data[16] ;
    output \data_23__N_925[16] ;
    input seed_compared_c_1;
    input n11517;
    output \control[0] ;
    input n11405;
    
    wire clk_10mhz_c /* synthesis SET_AS_NETWORK=clk_10mhz_c, is_clock=1 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/top.v(24[15:24])
    wire clk_N_1433 /* synthesis is_inv_clock=1 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_control_interface.v(12[18:21])
    wire data_vld_dly /* synthesis is_clock=1, SET_AS_NETWORK=\i2c_slave_top/registers/data_vld_dly */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(53[17:29])
    wire [7:0]n2286;
    wire [7:0]n2213;
    
    wire n11923, n12637, n12461, n12578, n5;
    wire [15:0]control_15__N_539;
    
    wire n12591;
    wire [7:0]addr_i;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(38[12:18])
    
    wire n11673, n11920, n11917, n12001, n12002, n12003, n12588, 
        n11910, n12548, n10794, n6165, n12602, n5589, n12631, 
        n12004, n12005, n12006, n12464, n12565, n12552, n12546, 
        clk_10mhz_c_enable_205;
    wire [15:0]static_control_adj_1783;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2c_slave_top.v(40[19:33])
    
    wire n12554, n11685, clk_10mhz_c_enable_222, n11914, clk_10mhz_c_enable_96;
    wire [3:0]count;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(52[16:21])
    wire [3:0]n21;
    
    wire clk_10mhz_c_enable_111, n12468, clk_10mhz_c_enable_126, clk_10mhz_c_enable_141;
    wire [15:0]n1;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2c_slave_top.v(37[19:40])
    
    wire clk_10mhz_c_enable_156;
    wire [15:0]n2;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2c_slave_top.v(38[19:39])
    
    wire clk_10mhz_c_enable_171, clk_10mhz_c_enable_197, clk_N_1433_enable_8, 
        n12469;
    wire [1:0]state;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(42[11:16])
    
    wire data_vld_dly_enable_1;
    wire [1:0]state_1__N_633;
    
    wire data_vld_cnt, data_vld_cnt_N_871;
    wire [1:0]byte_cnt;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(41[11:19])
    
    wire n12009, clk_10mhz_c_enable_214, n6125, n11911, n11932, n6142, 
        n5826, n6139, n5822, n6138, n6135, n5818, n6134, n6131, 
        n5814, n11929, n11926, n6130;
    wire [31:0]addr_i_7__N_841;
    
    wire n12600;
    wire [7:0]addr_i_7__N_579;
    
    wire n9622, n12633, n9623, n12030;
    wire [7:0]n2200;
    
    wire n11912, n12628, n12590, n11287, n10458, n11727, clk_10mhz_c_enable_104;
    wire [15:0]static_control;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/top.v(84[13:27])
    
    wire n9621, n11966, n11915, n12470;
    wire [7:0]n2262;
    
    wire n2273;
    wire [7:0]n2369;
    
    wire n11965, n11918, n11963, n11962, n12553, n12544, clk_10mhz_c_enable_134, 
        n12466, n11960, n11201, n12562, n182, n11959, n12463, 
        n11980, n11981, n11982, n11957, n11956, n10, n12465, n11954, 
        n210, n9620, n11953, n11940, n12560, n17, n13, n2378, 
        n11951, n11913;
    wire [7:0]n2349;
    wire [7:0]n2379;
    
    wire n11950, data_vld_dly_enable_2, n98, n11983, n11984, n11985, 
        n11921, n11948, n11947, n566, n193, clk_10mhz_c_enable_190, 
        n11986, n11987, n11988, n11942, n11893, n11941, n11916, 
        n11939, n11938, n11906, n12462, n11905, n11936, n11989, 
        n11990, n11991, n11935, n11919, n11924, n6133, n11992, 
        n11993, n11994, n11922, n11927, n11925, n11928, n11931, 
        n11995, n11996, n11997;
    wire [15:0]control_adj_1784;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2c_slave_top.v(39[19:26])
    
    wire clk_10mhz_c_enable_259, n11999, n11934, n11930, n6143, n6141, 
        n12583, n12638, n11219, n6147, n6146, n6145, n11303, n214, 
        clk_10mhz_c_enable_119, clk_10mhz_c_enable_149, clk_10mhz_c_enable_164, 
        clk_10mhz_c_enable_179;
    wire [15:0]control;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/top.v(85[13:20])
    wire [7:0]n2389;
    
    wire data_vld_dly_enable_3, n6127, n6126, n6129, n6137, n6149, 
        n11641, n8140, n5810, count_3__N_643, n11349, n6151, n6150, 
        n11933, n6123, n5715, n11257, n6122, n11908, n11909, n11217, 
        n5834, n6121, n10394, n5830, n11998, n11907, n11970, n11955, 
        n11967, n11964, n11961, n12000, n11958, n11952, n11949, 
        n11943, n11937, n11969, n11968, n11797, n11801, n11791, 
        n11793;
    
    LUT4 i9394_3_lut (.A(n2286[4]), .B(n2213[4]), .C(n12641), .Z(n11923)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9394_3_lut.init = 16'hcaca;
    LUT4 adc_voltage_data_3__bdd_3_lut_9635 (.A(n12637), .B(adc_voltage_data[11]), 
         .C(dds_gain[11]), .Z(n12461)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam adc_voltage_data_3__bdd_3_lut_9635.init = 16'he4e4;
    LUT4 i1_4_lut (.A(n12578), .B(n5), .C(n12639), .D(n11419), .Z(control_15__N_539[11])) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_4_lut.init = 16'h0400;
    LUT4 i1_3_lut_4_lut (.A(n12641), .B(n12591), .C(addr_i[2]), .D(n12593), 
         .Z(n11673)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut.init = 16'h0800;
    LUT4 i1_4_lut_adj_301 (.A(n12578), .B(n5), .C(n12639), .D(n11461), 
         .Z(control_15__N_539[12])) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_4_lut_adj_301.init = 16'h0400;
    LUT4 i9397_3_lut (.A(n2286[3]), .B(n2213[3]), .C(n12641), .Z(n11920)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9397_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_adj_302 (.A(n12578), .B(n5), .C(n12639), .D(n11545), 
         .Z(control_15__N_539[13])) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_4_lut_adj_302.init = 16'h0400;
    LUT4 i9399_3_lut (.A(n2286[2]), .B(n2213[2]), .C(n12641), .Z(n11917)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9399_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_adj_303 (.A(n12578), .B(n5), .C(n12639), .D(n11433), 
         .Z(control_15__N_539[14])) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_4_lut_adj_303.init = 16'h0400;
    LUT4 i1_4_lut_adj_304 (.A(n12578), .B(n5), .C(n12639), .D(n11531), 
         .Z(control_15__N_539[15])) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_4_lut_adj_304.init = 16'h0400;
    PFUMX i9313 (.BLUT(n12001), .ALUT(n12002), .C0(n12637), .Z(n12003));
    LUT4 i9597_4_lut (.A(n12588), .B(n11910), .C(n12548), .D(n10794), 
         .Z(n6165)) /* synthesis lut_function=(!(A (B)+!A (B+(C+(D))))) */ ;
    defparam i9597_4_lut.init = 16'h2223;
    LUT4 i1_4_lut_adj_305 (.A(n12602), .B(n5589), .C(n12631), .D(addr_i[2]), 
         .Z(n10794)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_4_lut_adj_305.init = 16'h0100;
    PFUMX i9316 (.BLUT(n12004), .ALUT(n12005), .C0(n12637), .Z(n12006));
    LUT4 adc_voltage_data_2__bdd_3_lut_9638 (.A(n12637), .B(adc_voltage_data[10]), 
         .C(dds_gain[10]), .Z(n12464)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam adc_voltage_data_2__bdd_3_lut_9638.init = 16'he4e4;
    LUT4 i1_3_lut_4_lut_adj_306 (.A(n12593), .B(n12565), .C(n12552), .D(n12546), 
         .Z(clk_10mhz_c_enable_205)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_306.init = 16'h0800;
    LUT4 i1_4_lut_adj_307 (.A(n11475), .B(n5), .C(n12578), .D(n12641), 
         .Z(control_15__N_539[4])) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i1_4_lut_adj_307.init = 16'h0008;
    LUT4 i1_4_lut_adj_308 (.A(n11489), .B(n5), .C(n12578), .D(n12641), 
         .Z(control_15__N_539[2])) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i1_4_lut_adj_308.init = 16'h0008;
    LUT4 mux_954_i1_3_lut (.A(dds_control[8]), .B(static_control_adj_1783[8]), 
         .C(n12631), .Z(n2213[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(127[11] 150[12])
    defparam mux_954_i1_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_adj_309 (.A(n12602), .B(n12554), .C(n12593), .D(n11685), 
         .Z(clk_10mhz_c_enable_222)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i1_4_lut_adj_309.init = 16'h4000;
    LUT4 i1_4_lut_adj_310 (.A(n12631), .B(addr_i[2]), .C(n12641), .D(n12591), 
         .Z(n11685)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i1_4_lut_adj_310.init = 16'h4000;
    LUT4 i9408_3_lut (.A(n2286[1]), .B(n2213[1]), .C(n12641), .Z(n11914)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9408_3_lut.init = 16'hcaca;
    LUT4 mux_979_i1_3_lut (.A(dds_control[0]), .B(\status[2] ), .C(n12631), 
         .Z(n2286[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(127[11] 150[12])
    defparam mux_979_i1_3_lut.init = 16'hcaca;
    FD1P3AX dds_control_i0 (.D(n12594), .SP(clk_10mhz_c_enable_96), .CK(clk_10mhz_c), 
            .Q(dds_control[0])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(83[11] 113[7])
    defparam dds_control_i0.GSR = "ENABLED";
    LUT4 i7048_1_lut (.A(count[0]), .Z(n21[0])) /* synthesis lut_function=(!(A)) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(88[26:35])
    defparam i7048_1_lut.init = 16'h5555;
    FD1P3AX dds_gain_i0 (.D(n12594), .SP(clk_10mhz_c_enable_111), .CK(clk_10mhz_c), 
            .Q(dds_gain[0])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(83[11] 113[7])
    defparam dds_gain_i0.GSR = "ENABLED";
    LUT4 adc_voltage_data_1__bdd_3_lut_9641 (.A(n12637), .B(adc_voltage_data[9]), 
         .C(dds_gain[9]), .Z(n12468)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam adc_voltage_data_1__bdd_3_lut_9641.init = 16'he4e4;
    FD1P3AX cw_gain_i0 (.D(n12594), .SP(clk_10mhz_c_enable_126), .CK(clk_10mhz_c), 
            .Q(cw_gain[0])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(83[11] 113[7])
    defparam cw_gain_i0.GSR = "ENABLED";
    FD1P3AY cw_current_limit_i0 (.D(n12594), .SP(clk_10mhz_c_enable_141), 
            .CK(clk_10mhz_c), .Q(cw_current_limit[0])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(83[11] 113[7])
    defparam cw_current_limit_i0.GSR = "ENABLED";
    FD1P3AX dds_mon_current_limit_i0 (.D(n12594), .SP(clk_10mhz_c_enable_156), 
            .CK(clk_10mhz_c), .Q(n1[0])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(83[11] 113[7])
    defparam dds_mon_current_limit_i0.GSR = "ENABLED";
    FD1P3AX cw_mon_current_limit_i0 (.D(n12594), .SP(clk_10mhz_c_enable_171), 
            .CK(clk_10mhz_c), .Q(n2[0])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(83[11] 113[7])
    defparam cw_mon_current_limit_i0.GSR = "ENABLED";
    FD1P3AX static_control_i1 (.D(n12594), .SP(clk_10mhz_c_enable_197), 
            .CK(clk_10mhz_c), .Q(\status[2] )) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(83[11] 113[7])
    defparam static_control_i1.GSR = "ENABLED";
    FD1P3AX addr_start_i0 (.D(n12594), .SP(clk_N_1433_enable_8), .CK(clk_N_1433), 
            .Q(addr_start[0])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(165[3] 176[6])
    defparam addr_start_i0.GSR = "ENABLED";
    LUT4 adc_voltage_data_1__bdd_3_lut (.A(adc_voltage_data[1]), .B(n12637), 
         .C(dds_gain[1]), .Z(n12469)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C))) */ ;
    defparam adc_voltage_data_1__bdd_3_lut.init = 16'he2e2;
    FD1P3DX state_i0 (.D(state_1__N_633[0]), .SP(data_vld_dly_enable_1), 
            .CK(data_vld_dly), .CD(n12573), .Q(state[0])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(190[7] 221[9])
    defparam state_i0.GSR = "DISABLED";
    FD1S3AX data_vld_cnt_161 (.D(data_vld_cnt_N_871), .CK(clk_N_1433), .Q(data_vld_cnt)) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(165[3] 176[6])
    defparam data_vld_cnt_161.GSR = "ENABLED";
    FD1S3AX data_vld_dly_162 (.D(n12593), .CK(clk_N_1433), .Q(data_vld_dly)) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(165[3] 176[6])
    defparam data_vld_dly_162.GSR = "ENABLED";
    FD1P3DX byte_cnt_i0 (.D(n12009), .SP(state[0]), .CK(data_vld_dly), 
            .CD(n12573), .Q(byte_cnt[0])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(190[7] 221[9])
    defparam byte_cnt_i0.GSR = "DISABLED";
    FD1P3AY dds_current_limit_i0 (.D(n12594), .SP(clk_10mhz_c_enable_214), 
            .CK(clk_10mhz_c), .Q(dds_current_limit[0])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(83[11] 113[7])
    defparam dds_current_limit_i0.GSR = "ENABLED";
    FD1S1D i3482 (.D(n12948), .CK(addr_i_7__N_595), .CD(addr_i_7__N_625), 
           .Q(n6125));   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(190[7] 221[9])
    defparam i3482.GSR = "DISABLED";
    LUT4 i9410_3_lut (.A(n2286[0]), .B(n2213[0]), .C(n12641), .Z(n11911)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9410_3_lut.init = 16'hcaca;
    LUT4 i9412_3_lut (.A(n2286[7]), .B(n2213[7]), .C(n12641), .Z(n11932)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9412_3_lut.init = 16'hcaca;
    FD1S3BX addr_i_reg_i5_3499_3500_set (.D(n5826), .CK(data_vld_dly), .PD(addr_i_7__N_591), 
            .Q(n6142)) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(190[7] 221[9])
    defparam addr_i_reg_i5_3499_3500_set.GSR = "DISABLED";
    FD1S3DX addr_i_reg_i4_3495_3496_reset (.D(n5822), .CK(data_vld_dly), 
            .CD(addr_i_7__N_616), .Q(n6139)) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(190[7] 221[9])
    defparam addr_i_reg_i4_3495_3496_reset.GSR = "DISABLED";
    FD1S3BX addr_i_reg_i4_3495_3496_set (.D(n5822), .CK(data_vld_dly), .PD(addr_i_7__N_592), 
            .Q(n6138)) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(190[7] 221[9])
    defparam addr_i_reg_i4_3495_3496_set.GSR = "DISABLED";
    FD1S3DX addr_i_reg_i3_3491_3492_reset (.D(n5818), .CK(data_vld_dly), 
            .CD(addr_i_7__N_619), .Q(n6135)) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(190[7] 221[9])
    defparam addr_i_reg_i3_3491_3492_reset.GSR = "DISABLED";
    FD1S3BX addr_i_reg_i3_3491_3492_set (.D(n5818), .CK(data_vld_dly), .PD(addr_i_7__N_593), 
            .Q(n6134)) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(190[7] 221[9])
    defparam addr_i_reg_i3_3491_3492_set.GSR = "DISABLED";
    FD1S3DX addr_i_reg_i2_3487_3488_reset (.D(n5814), .CK(data_vld_dly), 
            .CD(addr_i_7__N_622), .Q(n6131)) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(190[7] 221[9])
    defparam addr_i_reg_i2_3487_3488_reset.GSR = "DISABLED";
    LUT4 i9414_3_lut (.A(n2286[6]), .B(n2213[6]), .C(n12641), .Z(n11929)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9414_3_lut.init = 16'hcaca;
    LUT4 i9416_3_lut (.A(n2286[5]), .B(n2213[5]), .C(n12641), .Z(n11926)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9416_3_lut.init = 16'hcaca;
    FD1S3BX addr_i_reg_i2_3487_3488_set (.D(n5814), .CK(data_vld_dly), .PD(addr_i_7__N_594), 
            .Q(n6130)) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(190[7] 221[9])
    defparam addr_i_reg_i2_3487_3488_set.GSR = "DISABLED";
    LUT4 state_1__I_0_230_Mux_2_i3_3_lut (.A(addr_i_7__N_841[2]), .B(addr_i[2]), 
         .C(n12600), .Z(addr_i_7__N_579[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(190[7] 221[9])
    defparam state_1__I_0_230_Mux_2_i3_3_lut.init = 16'hcaca;
    CCU2D add_237_7 (.A0(n12631), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n12633), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n9622), 
          .COUT(n9623), .S0(addr_i_7__N_841[5]), .S1(addr_i_7__N_841[6]));   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(212[20:34])
    defparam add_237_7.INIT0 = 16'h5aaa;
    defparam add_237_7.INIT1 = 16'h5aaa;
    defparam add_237_7.INJECT1_0 = "NO";
    defparam add_237_7.INJECT1_1 = "NO";
    LUT4 state_1__I_0_230_Mux_1_i3_3_lut (.A(addr_i_7__N_841[1]), .B(n12637), 
         .C(n12600), .Z(addr_i_7__N_579[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(190[7] 221[9])
    defparam state_1__I_0_230_Mux_1_i3_3_lut.init = 16'hcaca;
    LUT4 state_1__I_0_230_Mux_0_i3_3_lut (.A(addr_i_7__N_841[0]), .B(n12641), 
         .C(n12600), .Z(addr_i_7__N_579[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(190[7] 221[9])
    defparam state_1__I_0_230_Mux_0_i3_3_lut.init = 16'hcaca;
    LUT4 state_1__I_0_230_Mux_4_i3_3_lut (.A(addr_i_7__N_841[4]), .B(n12639), 
         .C(n12600), .Z(addr_i_7__N_579[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(190[7] 221[9])
    defparam state_1__I_0_230_Mux_4_i3_3_lut.init = 16'hcaca;
    LUT4 i9523_2_lut_4_lut_2_lut_4_lut (.A(state[0]), .B(state[1]), .Z(n12030)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i9523_2_lut_4_lut_2_lut_4_lut.init = 16'heeee;
    LUT4 i9222_3_lut (.A(cw_gain[0]), .B(n2200[0]), .C(n12641), .Z(n11912)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9222_3_lut.init = 16'hcaca;
    LUT4 mux_954_i2_3_lut (.A(dds_control[9]), .B(static_control_adj_1783[9]), 
         .C(n12631), .Z(n2213[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(127[11] 150[12])
    defparam mux_954_i2_3_lut.init = 16'hcaca;
    LUT4 state_1__I_0_230_Mux_3_i3_3_lut (.A(addr_i_7__N_841[3]), .B(n12628), 
         .C(n12600), .Z(addr_i_7__N_579[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(190[7] 221[9])
    defparam state_1__I_0_230_Mux_3_i3_3_lut.init = 16'hcaca;
    LUT4 i1_3_lut_4_lut_adj_311 (.A(n12639), .B(n12591), .C(n12590), .D(n12641), 
         .Z(n11287)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;
    defparam i1_3_lut_4_lut_adj_311.init = 16'hfffb;
    LUT4 i1_4_lut_adj_312 (.A(n12593), .B(n10458), .C(n11727), .D(addr_i[2]), 
         .Z(clk_10mhz_c_enable_104)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam i1_4_lut_adj_312.init = 16'h0020;
    LUT4 mux_979_i2_3_lut (.A(dds_control[1]), .B(static_control[1]), .C(n12631), 
         .Z(n2286[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(127[11] 150[12])
    defparam mux_979_i2_3_lut.init = 16'hcaca;
    CCU2D add_237_5 (.A0(n12628), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n12639), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n9621), 
          .COUT(n9622), .S0(addr_i_7__N_841[3]), .S1(addr_i_7__N_841[4]));   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(212[20:34])
    defparam add_237_5.INIT0 = 16'h5aaa;
    defparam add_237_5.INIT1 = 16'h5aaa;
    defparam add_237_5.INJECT1_0 = "NO";
    defparam add_237_5.INJECT1_1 = "NO";
    LUT4 i9276_3_lut (.A(n2[14]), .B(adc_current_data[14]), .C(n12637), 
         .Z(n11966)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9276_3_lut.init = 16'hcaca;
    LUT4 i9225_3_lut (.A(cw_gain[1]), .B(n2200[1]), .C(n12641), .Z(n11915)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9225_3_lut.init = 16'hcaca;
    LUT4 i9433_3_lut (.A(n12470), .B(n2262[1]), .C(n2273), .Z(n2369[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(127[11] 150[12])
    defparam i9433_3_lut.init = 16'hcaca;
    LUT4 mux_954_i3_3_lut (.A(dds_control[10]), .B(static_control_adj_1783[10]), 
         .C(n12631), .Z(n2213[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(127[11] 150[12])
    defparam mux_954_i3_3_lut.init = 16'hcaca;
    LUT4 i9275_3_lut (.A(cw_current_limit[14]), .B(n1[14]), .C(n12637), 
         .Z(n11965)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9275_3_lut.init = 16'hcaca;
    LUT4 mux_949_i8_3_lut (.A(cw_gain[15]), .B(dds_current_limit[15]), .C(n12637), 
         .Z(n2200[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(127[11] 150[12])
    defparam mux_949_i8_3_lut.init = 16'hcaca;
    LUT4 mux_979_i3_3_lut (.A(dds_control[2]), .B(static_control_adj_1783[2]), 
         .C(n12631), .Z(n2286[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(127[11] 150[12])
    defparam mux_979_i3_3_lut.init = 16'hcaca;
    LUT4 i9228_3_lut (.A(cw_gain[2]), .B(n2200[2]), .C(n12641), .Z(n11918)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9228_3_lut.init = 16'hcaca;
    LUT4 mux_954_i4_3_lut (.A(dds_control[11]), .B(static_control_adj_1783[11]), 
         .C(n12631), .Z(n2213[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(127[11] 150[12])
    defparam mux_954_i4_3_lut.init = 16'hcaca;
    LUT4 mux_979_i4_3_lut (.A(dds_control[3]), .B(static_control_adj_1783[3]), 
         .C(n12631), .Z(n2286[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(127[11] 150[12])
    defparam mux_979_i4_3_lut.init = 16'hcaca;
    LUT4 i9273_3_lut (.A(n2[13]), .B(adc_current_data[13]), .C(n12637), 
         .Z(n11963)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9273_3_lut.init = 16'hcaca;
    LUT4 i9272_3_lut (.A(cw_current_limit[13]), .B(n1[13]), .C(n12637), 
         .Z(n11962)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9272_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_3_lut_4_lut (.A(addr_i[2]), .B(n12553), .C(n12544), 
         .D(n12552), .Z(clk_10mhz_c_enable_134)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'h0020;
    LUT4 i6912_3_lut_4_lut (.A(n12593), .B(\state_1__N_839[0] ), .C(data_vld_cnt), 
         .D(n12607), .Z(data_vld_cnt_N_871)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A !(C+(D)))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(65[19:39])
    defparam i6912_3_lut_4_lut.init = 16'h7f70;
    LUT4 i1_4_lut_adj_313 (.A(n11503), .B(n5), .C(n12578), .D(n12641), 
         .Z(control_15__N_539[1])) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i1_4_lut_adj_313.init = 16'h0008;
    LUT4 i9435_3_lut (.A(n12466), .B(n2262[2]), .C(n2273), .Z(n2369[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(127[11] 150[12])
    defparam i9435_3_lut.init = 16'hcaca;
    LUT4 i9270_3_lut (.A(n2[12]), .B(adc_current_data[12]), .C(n12637), 
         .Z(n11960)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9270_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_adj_314 (.A(n11201), .B(n12562), .C(n12588), .D(n12628), 
         .Z(n182)) /* synthesis lut_function=(!(A (B (C+(D)))+!A (B))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(38[12:18])
    defparam i1_4_lut_adj_314.init = 16'h333b;
    LUT4 i9269_3_lut (.A(cw_current_limit[12]), .B(n1[12]), .C(n12637), 
         .Z(n11959)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9269_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_3_lut (.A(n12593), .B(\state_1__N_839[0] ), .C(data_vld_cnt), 
         .Z(clk_N_1433_enable_8)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(65[19:39])
    defparam i1_2_lut_3_lut.init = 16'h8080;
    LUT4 i9437_3_lut (.A(n12463), .B(n2262[3]), .C(n2273), .Z(n2369[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(127[11] 150[12])
    defparam i9437_3_lut.init = 16'hcaca;
    PFUMX i9292 (.BLUT(n11980), .ALUT(n11981), .C0(n12637), .Z(n11982));
    LUT4 i9267_3_lut (.A(n2[11]), .B(adc_current_data[11]), .C(n12637), 
         .Z(n11957)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9267_3_lut.init = 16'hcaca;
    LUT4 i9266_3_lut (.A(cw_current_limit[11]), .B(n1[11]), .C(n12637), 
         .Z(n11956)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9266_3_lut.init = 16'hcaca;
    LUT4 state_1__I_0_230_Mux_6_i3_3_lut (.A(addr_i_7__N_841[6]), .B(n12633), 
         .C(n12600), .Z(addr_i_7__N_579[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(190[7] 221[9])
    defparam state_1__I_0_230_Mux_6_i3_3_lut.init = 16'hcaca;
    LUT4 mux_949_i7_3_lut (.A(cw_gain[14]), .B(dds_current_limit[14]), .C(n12637), 
         .Z(n2200[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(127[11] 150[12])
    defparam mux_949_i7_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_adj_315 (.A(n12590), .B(n5589), .C(n12588), .D(n10), 
         .Z(n2273)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_4_lut_adj_315.init = 16'h0400;
    LUT4 i9319_3_lut_3_lut (.A(state[1]), .B(byte_cnt[1]), .C(byte_cnt[0]), 
         .Z(n12009)) /* synthesis lut_function=(A (C)+!A ((C)+!B)) */ ;
    defparam i9319_3_lut_3_lut.init = 16'hf1f1;
    LUT4 adc_voltage_data_2__bdd_3_lut (.A(adc_voltage_data[2]), .B(n12637), 
         .C(dds_gain[2]), .Z(n12465)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C))) */ ;
    defparam adc_voltage_data_2__bdd_3_lut.init = 16'he2e2;
    LUT4 i1_4_lut_adj_316 (.A(n11391), .B(n5), .C(n12578), .D(n12641), 
         .Z(control_15__N_539[3])) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i1_4_lut_adj_316.init = 16'h0008;
    LUT4 state_1__I_0_230_Mux_5_i3_3_lut (.A(addr_i_7__N_841[5]), .B(n12631), 
         .C(n12600), .Z(addr_i_7__N_579[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(190[7] 221[9])
    defparam state_1__I_0_230_Mux_5_i3_3_lut.init = 16'hcaca;
    LUT4 i9552_3_lut_rep_282_4_lut (.A(state[1]), .B(byte_cnt[1]), .C(byte_cnt[0]), 
         .D(state[0]), .Z(n12600)) /* synthesis lut_function=(A (D)+!A (B (D)+!B !(C+!(D)))) */ ;
    defparam i9552_3_lut_rep_282_4_lut.init = 16'hef00;
    LUT4 i9264_3_lut (.A(n1[6]), .B(adc_current_data[6]), .C(addr_i[2]), 
         .Z(n11954)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9264_3_lut.init = 16'hcaca;
    LUT4 i3948_3_lut_4_lut (.A(n12590), .B(n12588), .C(n12637), .D(n182), 
         .Z(n210)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam i3948_3_lut_4_lut.init = 16'h1f10;
    CCU2D add_237_3 (.A0(n12637), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(addr_i[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n9620), .COUT(n9621), .S0(addr_i_7__N_841[1]), .S1(addr_i_7__N_841[2]));   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(212[20:34])
    defparam add_237_3.INIT0 = 16'h5aaa;
    defparam add_237_3.INIT1 = 16'h5aaa;
    defparam add_237_3.INJECT1_0 = "NO";
    defparam add_237_3.INJECT1_1 = "NO";
    LUT4 i9263_3_lut (.A(cw_current_limit[6]), .B(n2[6]), .C(addr_i[2]), 
         .Z(n11953)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9263_3_lut.init = 16'hcaca;
    LUT4 mux_998_i1_4_lut (.A(n11940), .B(dds_current_limit[0]), .C(n2273), 
         .D(addr_i[2]), .Z(n2369[0])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(127[11] 150[12])
    defparam mux_998_i1_4_lut.init = 16'hca0a;
    LUT4 i1_4_lut_adj_317 (.A(n12560), .B(n12641), .C(n17), .D(n13), 
         .Z(n2378)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))) */ ;
    defparam i1_4_lut_adj_317.init = 16'ha2a0;
    LUT4 i9261_3_lut (.A(n2[10]), .B(adc_current_data[10]), .C(n12637), 
         .Z(n11951)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9261_3_lut.init = 16'hcaca;
    LUT4 i1_3_lut (.A(addr_i[2]), .B(n12639), .C(n12637), .Z(n17)) /* synthesis lut_function=(!(A+(B (C)+!B !(C)))) */ ;
    defparam i1_3_lut.init = 16'h1414;
    LUT4 mux_1000_i1_3_lut (.A(n11913), .B(n2349[0]), .C(n12628), .Z(n2379[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(127[11] 150[12])
    defparam mux_1000_i1_3_lut.init = 16'hcaca;
    CCU2D add_237_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n12641), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n9620), 
          .S1(addr_i_7__N_841[0]));   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(212[20:34])
    defparam add_237_1.INIT0 = 16'hF000;
    defparam add_237_1.INIT1 = 16'h5555;
    defparam add_237_1.INJECT1_0 = "NO";
    defparam add_237_1.INJECT1_1 = "NO";
    LUT4 i9260_3_lut (.A(cw_current_limit[10]), .B(n1[10]), .C(n12637), 
         .Z(n11950)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9260_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_adj_318 (.A(n11601), .B(n5), .C(n12578), .D(n12641), 
         .Z(control_15__N_539[7])) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i1_4_lut_adj_318.init = 16'h0008;
    LUT4 i9555_2_lut_3_lut_4_lut (.A(state[1]), .B(byte_cnt[1]), .C(byte_cnt[0]), 
         .D(state[0]), .Z(data_vld_dly_enable_2)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i9555_2_lut_3_lut_4_lut.init = 16'h0100;
    LUT4 i5520_2_lut_4_lut (.A(n12602), .B(n12588), .C(addr_i[2]), .D(n12637), 
         .Z(n98)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i5520_2_lut_4_lut.init = 16'h0001;
    PFUMX i9295 (.BLUT(n11983), .ALUT(n11984), .C0(n12637), .Z(n11985));
    LUT4 i1_2_lut_rep_256_3_lut (.A(state[1]), .B(byte_cnt[1]), .C(state[0]), 
         .Z(data_vld_dly_enable_1)) /* synthesis lut_function=(A+(B+!(C))) */ ;
    defparam i1_2_lut_rep_256_3_lut.init = 16'hefef;
    LUT4 i9231_3_lut (.A(cw_gain[3]), .B(n2200[3]), .C(n12641), .Z(n11921)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9231_3_lut.init = 16'hcaca;
    LUT4 i9258_3_lut (.A(n2[9]), .B(adc_current_data[9]), .C(n12637), 
         .Z(n11948)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9258_3_lut.init = 16'hcaca;
    LUT4 i9257_3_lut (.A(cw_current_limit[9]), .B(n1[9]), .C(n12637), 
         .Z(n11947)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9257_3_lut.init = 16'hcaca;
    LUT4 i1_3_lut_adj_319 (.A(n566), .B(n12641), .C(n193), .Z(clk_10mhz_c_enable_190)) /* synthesis lut_function=(A+(B (C))) */ ;
    defparam i1_3_lut_adj_319.init = 16'heaea;
    LUT4 i9341_3_lut (.A(n12637), .B(addr_i[2]), .C(n12639), .Z(n13)) /* synthesis lut_function=(!(A (B (C))+!A (B+!(C)))) */ ;
    defparam i9341_3_lut.init = 16'h3a3a;
    LUT4 i1_4_lut_adj_320 (.A(n12578), .B(n5), .C(n12639), .D(n11587), 
         .Z(control_15__N_539[8])) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_4_lut_adj_320.init = 16'h0400;
    PFUMX i9298 (.BLUT(n11986), .ALUT(n11987), .C0(n12637), .Z(n11988));
    LUT4 i9252_3_lut (.A(n1[0]), .B(adc_current_data[0]), .C(addr_i[2]), 
         .Z(n11942)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9252_3_lut.init = 16'hcaca;
    LUT4 mux_949_i6_3_lut (.A(cw_gain[13]), .B(dds_current_limit[13]), .C(n12637), 
         .Z(n2200[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(127[11] 150[12])
    defparam mux_949_i6_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_adj_321 (.A(n12578), .B(n5), .C(n12639), .D(n11559), 
         .Z(control_15__N_539[9])) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_4_lut_adj_321.init = 16'h0400;
    LUT4 mux_954_i5_3_lut (.A(dds_control[12]), .B(static_control_adj_1783[12]), 
         .C(n12631), .Z(n2213[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(127[11] 150[12])
    defparam mux_954_i5_3_lut.init = 16'hcaca;
    LUT4 mux_949_i5_3_lut (.A(cw_gain[12]), .B(dds_current_limit[12]), .C(n12637), 
         .Z(n2200[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(127[11] 150[12])
    defparam mux_949_i5_3_lut.init = 16'hcaca;
    LUT4 i3953_3_lut (.A(addr_i[2]), .B(n12631), .C(n12637), .Z(n11893)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(38[12:18])
    defparam i3953_3_lut.init = 16'hcaca;
    LUT4 mux_949_i4_3_lut (.A(cw_gain[11]), .B(dds_current_limit[11]), .C(n12637), 
         .Z(n2200[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(127[11] 150[12])
    defparam mux_949_i4_3_lut.init = 16'hcaca;
    LUT4 i9251_3_lut (.A(cw_current_limit[0]), .B(n2[0]), .C(addr_i[2]), 
         .Z(n11941)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9251_3_lut.init = 16'hcaca;
    LUT4 mux_949_i3_3_lut (.A(cw_gain[10]), .B(dds_current_limit[10]), .C(n12637), 
         .Z(n2200[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(127[11] 150[12])
    defparam mux_949_i3_3_lut.init = 16'hcaca;
    LUT4 mux_1000_i2_3_lut (.A(n11916), .B(n2349[1]), .C(n12628), .Z(n2379[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(127[11] 150[12])
    defparam mux_1000_i2_3_lut.init = 16'hcaca;
    LUT4 i9249_3_lut (.A(dds_gain[0]), .B(dds_gain[8]), .C(n12641), .Z(n11939)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9249_3_lut.init = 16'hcaca;
    LUT4 i9248_3_lut (.A(adc_voltage_data[0]), .B(adc_voltage_data[8]), 
         .C(n12641), .Z(n11938)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9248_3_lut.init = 16'hcaca;
    LUT4 mux_949_i2_3_lut (.A(cw_gain[9]), .B(dds_current_limit[9]), .C(n12637), 
         .Z(n2200[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(127[11] 150[12])
    defparam mux_949_i2_3_lut.init = 16'hcaca;
    LUT4 i9216_3_lut (.A(n1[7]), .B(adc_current_data[7]), .C(addr_i[2]), 
         .Z(n11906)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9216_3_lut.init = 16'hcaca;
    LUT4 adc_voltage_data_3__bdd_3_lut (.A(adc_voltage_data[3]), .B(n12637), 
         .C(dds_gain[3]), .Z(n12462)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C))) */ ;
    defparam adc_voltage_data_3__bdd_3_lut.init = 16'he2e2;
    LUT4 i1_4_lut_adj_322 (.A(n12578), .B(n5), .C(n12639), .D(n11573), 
         .Z(control_15__N_539[10])) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_4_lut_adj_322.init = 16'h0400;
    LUT4 mux_979_i5_3_lut (.A(dds_control[4]), .B(static_control_adj_1783[4]), 
         .C(n12631), .Z(n2286[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(127[11] 150[12])
    defparam mux_979_i5_3_lut.init = 16'hcaca;
    LUT4 i7050_2_lut (.A(count[1]), .B(count[0]), .Z(n21[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(88[26:35])
    defparam i7050_2_lut.init = 16'h6666;
    LUT4 i9215_3_lut (.A(cw_current_limit[7]), .B(n2[7]), .C(addr_i[2]), 
         .Z(n11905)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9215_3_lut.init = 16'hcaca;
    LUT4 i9246_3_lut (.A(n2[8]), .B(adc_current_data[8]), .C(n12637), 
         .Z(n11936)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9246_3_lut.init = 16'hcaca;
    PFUMX i9301 (.BLUT(n11989), .ALUT(n11990), .C0(n12637), .Z(n11991));
    LUT4 i9245_3_lut (.A(cw_current_limit[8]), .B(n1[8]), .C(n12637), 
         .Z(n11935)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9245_3_lut.init = 16'hcaca;
    LUT4 mux_949_i1_3_lut (.A(cw_gain[8]), .B(dds_current_limit[8]), .C(n12637), 
         .Z(n2200[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(127[11] 150[12])
    defparam mux_949_i1_3_lut.init = 16'hcaca;
    LUT4 mux_1000_i3_3_lut (.A(n11919), .B(n2349[2]), .C(n12628), .Z(n2379[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(127[11] 150[12])
    defparam mux_1000_i3_3_lut.init = 16'hcaca;
    LUT4 i9234_3_lut (.A(cw_gain[4]), .B(n2200[4]), .C(n12641), .Z(n11924)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9234_3_lut.init = 16'hcaca;
    LUT4 i3493_3_lut_rep_310 (.A(n6135), .B(n6134), .C(n6133), .Z(n12628)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(190[7] 221[9])
    defparam i3493_3_lut_rep_310.init = 16'hcaca;
    PFUMX i9304 (.BLUT(n11992), .ALUT(n11993), .C0(n12637), .Z(n11994));
    LUT4 mux_954_i6_3_lut (.A(dds_control[13]), .B(static_control_adj_1783[13]), 
         .C(n12631), .Z(n2213[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(127[11] 150[12])
    defparam mux_954_i6_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_rep_284_4_lut (.A(n6135), .B(n6134), .C(n6133), .D(n12639), 
         .Z(n12602)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C+(D))+!B (D))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(190[7] 221[9])
    defparam i1_2_lut_rep_284_4_lut.init = 16'hffca;
    LUT4 i1_2_lut_rep_272_4_lut (.A(n6135), .B(n6134), .C(n6133), .D(n12631), 
         .Z(n12590)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C+(D))+!B (D))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(190[7] 221[9])
    defparam i1_2_lut_rep_272_4_lut.init = 16'hffca;
    LUT4 mux_979_i6_3_lut (.A(dds_control[5]), .B(static_control_adj_1783[5]), 
         .C(n12631), .Z(n2286[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(127[11] 150[12])
    defparam mux_979_i6_3_lut.init = 16'hcaca;
    LUT4 mux_1000_i4_3_lut (.A(n11922), .B(n2349[3]), .C(n12628), .Z(n2379[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(127[11] 150[12])
    defparam mux_1000_i4_3_lut.init = 16'hcaca;
    LUT4 mux_998_i5_4_lut (.A(n11982), .B(dds_current_limit[4]), .C(n2273), 
         .D(addr_i[2]), .Z(n2369[4])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(127[11] 150[12])
    defparam mux_998_i5_4_lut.init = 16'hca0a;
    LUT4 i9237_3_lut (.A(cw_gain[5]), .B(n2200[5]), .C(n12641), .Z(n11927)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9237_3_lut.init = 16'hcaca;
    LUT4 i9181_2_lut_rep_260_4_lut (.A(n6135), .B(n6134), .C(n6133), .D(addr_i[2]), 
         .Z(n12578)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C+(D))+!B (D))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(190[7] 221[9])
    defparam i9181_2_lut_rep_260_4_lut.init = 16'hffca;
    LUT4 mux_1000_i5_3_lut (.A(n11925), .B(n2349[4]), .C(n12628), .Z(n2379[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(127[11] 150[12])
    defparam mux_1000_i5_3_lut.init = 16'hcaca;
    LUT4 mux_954_i7_3_lut (.A(dds_control[14]), .B(static_control_adj_1783[14]), 
         .C(n12631), .Z(n2213[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(127[11] 150[12])
    defparam mux_954_i7_3_lut.init = 16'hcaca;
    LUT4 mux_998_i6_4_lut (.A(n11985), .B(dds_current_limit[5]), .C(n2273), 
         .D(addr_i[2]), .Z(n2369[5])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(127[11] 150[12])
    defparam mux_998_i6_4_lut.init = 16'hca0a;
    LUT4 mux_1000_i6_3_lut (.A(n11928), .B(n2349[5]), .C(n12628), .Z(n2379[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(127[11] 150[12])
    defparam mux_1000_i6_3_lut.init = 16'hcaca;
    LUT4 mux_979_i7_3_lut (.A(dds_control[6]), .B(static_control_adj_1783[6]), 
         .C(n12631), .Z(n2286[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(127[11] 150[12])
    defparam mux_979_i7_3_lut.init = 16'hcaca;
    FD1P3DX byte_cnt_i1 (.D(n12947), .SP(data_vld_dly_enable_2), .CK(data_vld_dly), 
            .CD(n12573), .Q(byte_cnt[1])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(190[7] 221[9])
    defparam byte_cnt_i1.GSR = "DISABLED";
    LUT4 mux_998_i7_4_lut (.A(n11988), .B(dds_current_limit[6]), .C(n2273), 
         .D(addr_i[2]), .Z(n2369[6])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(127[11] 150[12])
    defparam mux_998_i7_4_lut.init = 16'hca0a;
    LUT4 mux_1000_i7_3_lut (.A(n11931), .B(n2349[6]), .C(n12628), .Z(n2379[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(127[11] 150[12])
    defparam mux_1000_i7_3_lut.init = 16'hcaca;
    PFUMX i9307 (.BLUT(n11995), .ALUT(n11996), .C0(n12637), .Z(n11997));
    FD1P3AX control_i6 (.D(control_15__N_539[6]), .SP(clk_10mhz_c_enable_259), 
            .CK(clk_10mhz_c), .Q(control_adj_1784[6])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(83[11] 113[7])
    defparam control_i6.GSR = "ENABLED";
    LUT4 mux_998_i8_4_lut (.A(n11991), .B(dds_current_limit[7]), .C(n2273), 
         .D(addr_i[2]), .Z(n2369[7])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(127[11] 150[12])
    defparam mux_998_i8_4_lut.init = 16'hca0a;
    LUT4 i9309_3_lut (.A(n1[3]), .B(adc_current_data[3]), .C(addr_i[2]), 
         .Z(n11999)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9309_3_lut.init = 16'hcaca;
    FD1P3AX control_i5 (.D(control_15__N_539[5]), .SP(clk_10mhz_c_enable_259), 
            .CK(clk_10mhz_c), .Q(control_adj_1784[5])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(83[11] 113[7])
    defparam control_i5.GSR = "ENABLED";
    FD1P3AX dds_control_i1 (.D(n12571), .SP(clk_10mhz_c_enable_96), .CK(clk_10mhz_c), 
            .Q(dds_control[1])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(83[11] 113[7])
    defparam dds_control_i1.GSR = "ENABLED";
    LUT4 mux_1000_i8_3_lut (.A(n11934), .B(n2349[7]), .C(n12628), .Z(n2379[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(127[11] 150[12])
    defparam mux_1000_i8_3_lut.init = 16'hcaca;
    LUT4 i9240_3_lut (.A(cw_gain[6]), .B(n2200[6]), .C(n12641), .Z(n11930)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9240_3_lut.init = 16'hcaca;
    LUT4 i3501_3_lut_rep_313 (.A(n6143), .B(n6142), .C(n6141), .Z(n12631)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(190[7] 221[9])
    defparam i3501_3_lut_rep_313.init = 16'hcaca;
    LUT4 i9170_2_lut_rep_265_4_lut (.A(n6143), .B(n6142), .C(n6141), .D(n12639), 
         .Z(n12583)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C+(D))+!B (D))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(190[7] 221[9])
    defparam i9170_2_lut_rep_265_4_lut.init = 16'hffca;
    LUT4 i1_2_lut_4_lut (.A(n6143), .B(n6142), .C(n6141), .D(n12638), 
         .Z(n11219)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(190[7] 221[9])
    defparam i1_2_lut_4_lut.init = 16'hca00;
    LUT4 i1_2_lut_4_lut_adj_323 (.A(n6143), .B(n6142), .C(n6141), .D(n12639), 
         .Z(n11201)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A (B (C+!(D))+!B !(D)))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(190[7] 221[9])
    defparam i1_2_lut_4_lut_adj_323.init = 16'h3500;
    LUT4 i3505_3_lut_rep_315 (.A(n6147), .B(n6146), .C(n6145), .Z(n12633)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(190[7] 221[9])
    defparam i3505_3_lut_rep_315.init = 16'hcaca;
    LUT4 i5316_2_lut_rep_270_4_lut (.A(n6147), .B(n6146), .C(n6145), .D(addr_i[7]), 
         .Z(n12588)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C+(D))+!B (D))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(190[7] 221[9])
    defparam i5316_2_lut_rep_270_4_lut.init = 16'hffca;
    LUT4 i3955_4_lut (.A(n182), .B(n11303), .C(n12637), .D(n12588), 
         .Z(n214)) /* synthesis lut_function=(!(A (B (C)+!B (C (D)))+!A (B+((D)+!C)))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(38[12:18])
    defparam i3955_4_lut.init = 16'h0a3a;
    FD1P3AX dds_control_i2 (.D(n12570), .SP(clk_10mhz_c_enable_96), .CK(clk_10mhz_c), 
            .Q(dds_control[2])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(83[11] 113[7])
    defparam dds_control_i2.GSR = "ENABLED";
    FD1P3AX dds_control_i3 (.D(n12569), .SP(clk_10mhz_c_enable_96), .CK(clk_10mhz_c), 
            .Q(dds_control[3])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(83[11] 113[7])
    defparam dds_control_i3.GSR = "ENABLED";
    FD1P3AX dds_control_i4 (.D(n12568), .SP(clk_10mhz_c_enable_96), .CK(clk_10mhz_c), 
            .Q(dds_control[4])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(83[11] 113[7])
    defparam dds_control_i4.GSR = "ENABLED";
    FD1P3AX dds_control_i5 (.D(n12567), .SP(clk_10mhz_c_enable_96), .CK(clk_10mhz_c), 
            .Q(dds_control[5])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(83[11] 113[7])
    defparam dds_control_i5.GSR = "ENABLED";
    FD1P3AX dds_control_i6 (.D(n12566), .SP(clk_10mhz_c_enable_96), .CK(clk_10mhz_c), 
            .Q(dds_control[6])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(83[11] 113[7])
    defparam dds_control_i6.GSR = "ENABLED";
    FD1P3AX dds_control_i7 (.D(n12603), .SP(clk_10mhz_c_enable_96), .CK(clk_10mhz_c), 
            .Q(dds_control[7])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(83[11] 113[7])
    defparam dds_control_i7.GSR = "ENABLED";
    FD1P3AX dds_control_i8 (.D(n12594), .SP(clk_10mhz_c_enable_104), .CK(clk_10mhz_c), 
            .Q(dds_control[8])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(83[11] 113[7])
    defparam dds_control_i8.GSR = "ENABLED";
    FD1P3AX dds_control_i9 (.D(n12571), .SP(clk_10mhz_c_enable_104), .CK(clk_10mhz_c), 
            .Q(dds_control[9])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(83[11] 113[7])
    defparam dds_control_i9.GSR = "ENABLED";
    FD1P3AX dds_control_i10 (.D(n12570), .SP(clk_10mhz_c_enable_104), .CK(clk_10mhz_c), 
            .Q(dds_control[10])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(83[11] 113[7])
    defparam dds_control_i10.GSR = "ENABLED";
    FD1P3AX dds_control_i11 (.D(n12569), .SP(clk_10mhz_c_enable_104), .CK(clk_10mhz_c), 
            .Q(dds_control[11])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(83[11] 113[7])
    defparam dds_control_i11.GSR = "ENABLED";
    FD1P3AX dds_control_i12 (.D(n12568), .SP(clk_10mhz_c_enable_104), .CK(clk_10mhz_c), 
            .Q(dds_control[12])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(83[11] 113[7])
    defparam dds_control_i12.GSR = "ENABLED";
    FD1P3AX dds_control_i13 (.D(n12567), .SP(clk_10mhz_c_enable_104), .CK(clk_10mhz_c), 
            .Q(dds_control[13])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(83[11] 113[7])
    defparam dds_control_i13.GSR = "ENABLED";
    FD1P3AX dds_control_i14 (.D(n12566), .SP(clk_10mhz_c_enable_104), .CK(clk_10mhz_c), 
            .Q(dds_control[14])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(83[11] 113[7])
    defparam dds_control_i14.GSR = "ENABLED";
    FD1P3AX dds_control_i15 (.D(n12603), .SP(clk_10mhz_c_enable_104), .CK(clk_10mhz_c), 
            .Q(dds_control[15])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(83[11] 113[7])
    defparam dds_control_i15.GSR = "ENABLED";
    FD1P3AX dds_gain_i1 (.D(n12571), .SP(clk_10mhz_c_enable_111), .CK(clk_10mhz_c), 
            .Q(dds_gain[1])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(83[11] 113[7])
    defparam dds_gain_i1.GSR = "ENABLED";
    FD1P3AX dds_gain_i2 (.D(n12570), .SP(clk_10mhz_c_enable_111), .CK(clk_10mhz_c), 
            .Q(dds_gain[2])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(83[11] 113[7])
    defparam dds_gain_i2.GSR = "ENABLED";
    FD1P3AX dds_gain_i3 (.D(n12569), .SP(clk_10mhz_c_enable_111), .CK(clk_10mhz_c), 
            .Q(dds_gain[3])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(83[11] 113[7])
    defparam dds_gain_i3.GSR = "ENABLED";
    FD1P3AX dds_gain_i4 (.D(n12568), .SP(clk_10mhz_c_enable_111), .CK(clk_10mhz_c), 
            .Q(dds_gain[4])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(83[11] 113[7])
    defparam dds_gain_i4.GSR = "ENABLED";
    FD1P3AX dds_gain_i5 (.D(n12567), .SP(clk_10mhz_c_enable_111), .CK(clk_10mhz_c), 
            .Q(dds_gain[5])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(83[11] 113[7])
    defparam dds_gain_i5.GSR = "ENABLED";
    FD1P3AX dds_gain_i6 (.D(n12566), .SP(clk_10mhz_c_enable_111), .CK(clk_10mhz_c), 
            .Q(dds_gain[6])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(83[11] 113[7])
    defparam dds_gain_i6.GSR = "ENABLED";
    FD1P3AX dds_gain_i7 (.D(n12603), .SP(clk_10mhz_c_enable_111), .CK(clk_10mhz_c), 
            .Q(dds_gain[7])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(83[11] 113[7])
    defparam dds_gain_i7.GSR = "ENABLED";
    FD1P3AX dds_gain_i8 (.D(n12594), .SP(clk_10mhz_c_enable_119), .CK(clk_10mhz_c), 
            .Q(dds_gain[8])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(83[11] 113[7])
    defparam dds_gain_i8.GSR = "ENABLED";
    FD1P3AX dds_gain_i9 (.D(n12571), .SP(clk_10mhz_c_enable_119), .CK(clk_10mhz_c), 
            .Q(dds_gain[9])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(83[11] 113[7])
    defparam dds_gain_i9.GSR = "ENABLED";
    FD1P3AX dds_gain_i10 (.D(n12570), .SP(clk_10mhz_c_enable_119), .CK(clk_10mhz_c), 
            .Q(dds_gain[10])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(83[11] 113[7])
    defparam dds_gain_i10.GSR = "ENABLED";
    FD1P3AX dds_gain_i11 (.D(n12569), .SP(clk_10mhz_c_enable_119), .CK(clk_10mhz_c), 
            .Q(dds_gain[11])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(83[11] 113[7])
    defparam dds_gain_i11.GSR = "ENABLED";
    FD1P3AX dds_gain_i12 (.D(n12568), .SP(clk_10mhz_c_enable_119), .CK(clk_10mhz_c), 
            .Q(dds_gain[12])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(83[11] 113[7])
    defparam dds_gain_i12.GSR = "ENABLED";
    FD1P3AX dds_gain_i13 (.D(n12567), .SP(clk_10mhz_c_enable_119), .CK(clk_10mhz_c), 
            .Q(dds_gain[13])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(83[11] 113[7])
    defparam dds_gain_i13.GSR = "ENABLED";
    FD1P3AX dds_gain_i14 (.D(n12566), .SP(clk_10mhz_c_enable_119), .CK(clk_10mhz_c), 
            .Q(dds_gain[14])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(83[11] 113[7])
    defparam dds_gain_i14.GSR = "ENABLED";
    FD1P3AX dds_gain_i15 (.D(n12603), .SP(clk_10mhz_c_enable_119), .CK(clk_10mhz_c), 
            .Q(dds_gain[15])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(83[11] 113[7])
    defparam dds_gain_i15.GSR = "ENABLED";
    FD1P3AX cw_gain_i1 (.D(n12571), .SP(clk_10mhz_c_enable_126), .CK(clk_10mhz_c), 
            .Q(cw_gain[1])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(83[11] 113[7])
    defparam cw_gain_i1.GSR = "ENABLED";
    FD1P3AX cw_gain_i2 (.D(n12570), .SP(clk_10mhz_c_enable_126), .CK(clk_10mhz_c), 
            .Q(cw_gain[2])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(83[11] 113[7])
    defparam cw_gain_i2.GSR = "ENABLED";
    FD1P3AX cw_gain_i3 (.D(n12569), .SP(clk_10mhz_c_enable_126), .CK(clk_10mhz_c), 
            .Q(cw_gain[3])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(83[11] 113[7])
    defparam cw_gain_i3.GSR = "ENABLED";
    FD1P3AX cw_gain_i4 (.D(n12568), .SP(clk_10mhz_c_enable_126), .CK(clk_10mhz_c), 
            .Q(cw_gain[4])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(83[11] 113[7])
    defparam cw_gain_i4.GSR = "ENABLED";
    FD1P3AX cw_gain_i5 (.D(n12567), .SP(clk_10mhz_c_enable_126), .CK(clk_10mhz_c), 
            .Q(cw_gain[5])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(83[11] 113[7])
    defparam cw_gain_i5.GSR = "ENABLED";
    FD1P3AX cw_gain_i6 (.D(n12566), .SP(clk_10mhz_c_enable_126), .CK(clk_10mhz_c), 
            .Q(cw_gain[6])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(83[11] 113[7])
    defparam cw_gain_i6.GSR = "ENABLED";
    FD1P3AX cw_gain_i7 (.D(n12603), .SP(clk_10mhz_c_enable_126), .CK(clk_10mhz_c), 
            .Q(cw_gain[7])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(83[11] 113[7])
    defparam cw_gain_i7.GSR = "ENABLED";
    FD1P3AX cw_gain_i8 (.D(n12594), .SP(clk_10mhz_c_enable_134), .CK(clk_10mhz_c), 
            .Q(cw_gain[8])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(83[11] 113[7])
    defparam cw_gain_i8.GSR = "ENABLED";
    FD1P3AX cw_gain_i9 (.D(n12571), .SP(clk_10mhz_c_enable_134), .CK(clk_10mhz_c), 
            .Q(cw_gain[9])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(83[11] 113[7])
    defparam cw_gain_i9.GSR = "ENABLED";
    FD1P3AX cw_gain_i10 (.D(n12570), .SP(clk_10mhz_c_enable_134), .CK(clk_10mhz_c), 
            .Q(cw_gain[10])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(83[11] 113[7])
    defparam cw_gain_i10.GSR = "ENABLED";
    FD1P3AX cw_gain_i11 (.D(n12569), .SP(clk_10mhz_c_enable_134), .CK(clk_10mhz_c), 
            .Q(cw_gain[11])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(83[11] 113[7])
    defparam cw_gain_i11.GSR = "ENABLED";
    FD1P3AX cw_gain_i12 (.D(n12568), .SP(clk_10mhz_c_enable_134), .CK(clk_10mhz_c), 
            .Q(cw_gain[12])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(83[11] 113[7])
    defparam cw_gain_i12.GSR = "ENABLED";
    FD1P3AX cw_gain_i13 (.D(n12567), .SP(clk_10mhz_c_enable_134), .CK(clk_10mhz_c), 
            .Q(cw_gain[13])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(83[11] 113[7])
    defparam cw_gain_i13.GSR = "ENABLED";
    FD1P3AX cw_gain_i14 (.D(n12566), .SP(clk_10mhz_c_enable_134), .CK(clk_10mhz_c), 
            .Q(cw_gain[14])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(83[11] 113[7])
    defparam cw_gain_i14.GSR = "ENABLED";
    FD1P3AX cw_gain_i15 (.D(n12603), .SP(clk_10mhz_c_enable_134), .CK(clk_10mhz_c), 
            .Q(cw_gain[15])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(83[11] 113[7])
    defparam cw_gain_i15.GSR = "ENABLED";
    FD1P3AY cw_current_limit_i1 (.D(n12571), .SP(clk_10mhz_c_enable_141), 
            .CK(clk_10mhz_c), .Q(cw_current_limit[1])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(83[11] 113[7])
    defparam cw_current_limit_i1.GSR = "ENABLED";
    FD1P3AY cw_current_limit_i2 (.D(n12570), .SP(clk_10mhz_c_enable_141), 
            .CK(clk_10mhz_c), .Q(cw_current_limit[2])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(83[11] 113[7])
    defparam cw_current_limit_i2.GSR = "ENABLED";
    FD1P3AY cw_current_limit_i3 (.D(n12569), .SP(clk_10mhz_c_enable_141), 
            .CK(clk_10mhz_c), .Q(cw_current_limit[3])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(83[11] 113[7])
    defparam cw_current_limit_i3.GSR = "ENABLED";
    FD1P3AY cw_current_limit_i4 (.D(n12568), .SP(clk_10mhz_c_enable_141), 
            .CK(clk_10mhz_c), .Q(cw_current_limit[4])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(83[11] 113[7])
    defparam cw_current_limit_i4.GSR = "ENABLED";
    FD1P3AY cw_current_limit_i5 (.D(n12567), .SP(clk_10mhz_c_enable_141), 
            .CK(clk_10mhz_c), .Q(cw_current_limit[5])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(83[11] 113[7])
    defparam cw_current_limit_i5.GSR = "ENABLED";
    FD1P3AY cw_current_limit_i6 (.D(n12566), .SP(clk_10mhz_c_enable_141), 
            .CK(clk_10mhz_c), .Q(cw_current_limit[6])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(83[11] 113[7])
    defparam cw_current_limit_i6.GSR = "ENABLED";
    FD1P3AY cw_current_limit_i7 (.D(n12603), .SP(clk_10mhz_c_enable_141), 
            .CK(clk_10mhz_c), .Q(cw_current_limit[7])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(83[11] 113[7])
    defparam cw_current_limit_i7.GSR = "ENABLED";
    FD1P3AY cw_current_limit_i8 (.D(n12594), .SP(clk_10mhz_c_enable_149), 
            .CK(clk_10mhz_c), .Q(cw_current_limit[8])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(83[11] 113[7])
    defparam cw_current_limit_i8.GSR = "ENABLED";
    FD1P3AY cw_current_limit_i9 (.D(n12571), .SP(clk_10mhz_c_enable_149), 
            .CK(clk_10mhz_c), .Q(cw_current_limit[9])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(83[11] 113[7])
    defparam cw_current_limit_i9.GSR = "ENABLED";
    FD1P3AY cw_current_limit_i10 (.D(n12570), .SP(clk_10mhz_c_enable_149), 
            .CK(clk_10mhz_c), .Q(cw_current_limit[10])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(83[11] 113[7])
    defparam cw_current_limit_i10.GSR = "ENABLED";
    FD1P3AY cw_current_limit_i11 (.D(n12569), .SP(clk_10mhz_c_enable_149), 
            .CK(clk_10mhz_c), .Q(cw_current_limit[11])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(83[11] 113[7])
    defparam cw_current_limit_i11.GSR = "ENABLED";
    FD1P3AY cw_current_limit_i12 (.D(n12568), .SP(clk_10mhz_c_enable_149), 
            .CK(clk_10mhz_c), .Q(cw_current_limit[12])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(83[11] 113[7])
    defparam cw_current_limit_i12.GSR = "ENABLED";
    FD1P3AY cw_current_limit_i13 (.D(n12567), .SP(clk_10mhz_c_enable_149), 
            .CK(clk_10mhz_c), .Q(cw_current_limit[13])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(83[11] 113[7])
    defparam cw_current_limit_i13.GSR = "ENABLED";
    FD1P3AY cw_current_limit_i14 (.D(n12566), .SP(clk_10mhz_c_enable_149), 
            .CK(clk_10mhz_c), .Q(cw_current_limit[14])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(83[11] 113[7])
    defparam cw_current_limit_i14.GSR = "ENABLED";
    FD1P3AY cw_current_limit_i15 (.D(n12603), .SP(clk_10mhz_c_enable_149), 
            .CK(clk_10mhz_c), .Q(cw_current_limit[15])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(83[11] 113[7])
    defparam cw_current_limit_i15.GSR = "ENABLED";
    FD1P3AX dds_mon_current_limit_i1 (.D(n12571), .SP(clk_10mhz_c_enable_156), 
            .CK(clk_10mhz_c), .Q(n1[1])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(83[11] 113[7])
    defparam dds_mon_current_limit_i1.GSR = "ENABLED";
    FD1P3AX dds_mon_current_limit_i2 (.D(n12570), .SP(clk_10mhz_c_enable_156), 
            .CK(clk_10mhz_c), .Q(n1[2])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(83[11] 113[7])
    defparam dds_mon_current_limit_i2.GSR = "ENABLED";
    FD1P3AX dds_mon_current_limit_i3 (.D(n12569), .SP(clk_10mhz_c_enable_156), 
            .CK(clk_10mhz_c), .Q(n1[3])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(83[11] 113[7])
    defparam dds_mon_current_limit_i3.GSR = "ENABLED";
    FD1P3AX dds_mon_current_limit_i4 (.D(n12568), .SP(clk_10mhz_c_enable_156), 
            .CK(clk_10mhz_c), .Q(n1[4])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(83[11] 113[7])
    defparam dds_mon_current_limit_i4.GSR = "ENABLED";
    FD1P3AX dds_mon_current_limit_i5 (.D(n12567), .SP(clk_10mhz_c_enable_156), 
            .CK(clk_10mhz_c), .Q(n1[5])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(83[11] 113[7])
    defparam dds_mon_current_limit_i5.GSR = "ENABLED";
    FD1P3AX dds_mon_current_limit_i6 (.D(n12566), .SP(clk_10mhz_c_enable_156), 
            .CK(clk_10mhz_c), .Q(n1[6])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(83[11] 113[7])
    defparam dds_mon_current_limit_i6.GSR = "ENABLED";
    FD1P3AX dds_mon_current_limit_i7 (.D(n12603), .SP(clk_10mhz_c_enable_156), 
            .CK(clk_10mhz_c), .Q(n1[7])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(83[11] 113[7])
    defparam dds_mon_current_limit_i7.GSR = "ENABLED";
    FD1P3AX dds_mon_current_limit_i8 (.D(n12594), .SP(clk_10mhz_c_enable_164), 
            .CK(clk_10mhz_c), .Q(n1[8])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(83[11] 113[7])
    defparam dds_mon_current_limit_i8.GSR = "ENABLED";
    FD1P3AX dds_mon_current_limit_i9 (.D(n12571), .SP(clk_10mhz_c_enable_164), 
            .CK(clk_10mhz_c), .Q(n1[9])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(83[11] 113[7])
    defparam dds_mon_current_limit_i9.GSR = "ENABLED";
    FD1P3AX dds_mon_current_limit_i10 (.D(n12570), .SP(clk_10mhz_c_enable_164), 
            .CK(clk_10mhz_c), .Q(n1[10])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(83[11] 113[7])
    defparam dds_mon_current_limit_i10.GSR = "ENABLED";
    FD1P3AX dds_mon_current_limit_i11 (.D(n12569), .SP(clk_10mhz_c_enable_164), 
            .CK(clk_10mhz_c), .Q(n1[11])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(83[11] 113[7])
    defparam dds_mon_current_limit_i11.GSR = "ENABLED";
    FD1P3AX dds_mon_current_limit_i12 (.D(n12568), .SP(clk_10mhz_c_enable_164), 
            .CK(clk_10mhz_c), .Q(n1[12])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(83[11] 113[7])
    defparam dds_mon_current_limit_i12.GSR = "ENABLED";
    FD1P3AX dds_mon_current_limit_i13 (.D(n12567), .SP(clk_10mhz_c_enable_164), 
            .CK(clk_10mhz_c), .Q(n1[13])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(83[11] 113[7])
    defparam dds_mon_current_limit_i13.GSR = "ENABLED";
    FD1P3AX dds_mon_current_limit_i14 (.D(n12566), .SP(clk_10mhz_c_enable_164), 
            .CK(clk_10mhz_c), .Q(n1[14])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(83[11] 113[7])
    defparam dds_mon_current_limit_i14.GSR = "ENABLED";
    FD1P3AX dds_mon_current_limit_i15 (.D(n12603), .SP(clk_10mhz_c_enable_164), 
            .CK(clk_10mhz_c), .Q(n1[15])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(83[11] 113[7])
    defparam dds_mon_current_limit_i15.GSR = "ENABLED";
    FD1P3AX cw_mon_current_limit_i1 (.D(n12571), .SP(clk_10mhz_c_enable_171), 
            .CK(clk_10mhz_c), .Q(n2[1])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(83[11] 113[7])
    defparam cw_mon_current_limit_i1.GSR = "ENABLED";
    FD1P3AX cw_mon_current_limit_i2 (.D(n12570), .SP(clk_10mhz_c_enable_171), 
            .CK(clk_10mhz_c), .Q(n2[2])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(83[11] 113[7])
    defparam cw_mon_current_limit_i2.GSR = "ENABLED";
    FD1P3AX cw_mon_current_limit_i3 (.D(n12569), .SP(clk_10mhz_c_enable_171), 
            .CK(clk_10mhz_c), .Q(n2[3])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(83[11] 113[7])
    defparam cw_mon_current_limit_i3.GSR = "ENABLED";
    FD1P3AX cw_mon_current_limit_i4 (.D(n12568), .SP(clk_10mhz_c_enable_171), 
            .CK(clk_10mhz_c), .Q(n2[4])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(83[11] 113[7])
    defparam cw_mon_current_limit_i4.GSR = "ENABLED";
    FD1P3AX cw_mon_current_limit_i5 (.D(n12567), .SP(clk_10mhz_c_enable_171), 
            .CK(clk_10mhz_c), .Q(n2[5])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(83[11] 113[7])
    defparam cw_mon_current_limit_i5.GSR = "ENABLED";
    FD1P3AX cw_mon_current_limit_i6 (.D(n12566), .SP(clk_10mhz_c_enable_171), 
            .CK(clk_10mhz_c), .Q(n2[6])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(83[11] 113[7])
    defparam cw_mon_current_limit_i6.GSR = "ENABLED";
    FD1P3AX cw_mon_current_limit_i7 (.D(n12603), .SP(clk_10mhz_c_enable_171), 
            .CK(clk_10mhz_c), .Q(n2[7])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(83[11] 113[7])
    defparam cw_mon_current_limit_i7.GSR = "ENABLED";
    FD1P3AX cw_mon_current_limit_i8 (.D(n12594), .SP(clk_10mhz_c_enable_179), 
            .CK(clk_10mhz_c), .Q(n2[8])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(83[11] 113[7])
    defparam cw_mon_current_limit_i8.GSR = "ENABLED";
    FD1P3AX cw_mon_current_limit_i9 (.D(n12571), .SP(clk_10mhz_c_enable_179), 
            .CK(clk_10mhz_c), .Q(n2[9])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(83[11] 113[7])
    defparam cw_mon_current_limit_i9.GSR = "ENABLED";
    FD1P3AX cw_mon_current_limit_i10 (.D(n12570), .SP(clk_10mhz_c_enable_179), 
            .CK(clk_10mhz_c), .Q(n2[10])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(83[11] 113[7])
    defparam cw_mon_current_limit_i10.GSR = "ENABLED";
    FD1P3AX cw_mon_current_limit_i11 (.D(n12569), .SP(clk_10mhz_c_enable_179), 
            .CK(clk_10mhz_c), .Q(n2[11])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(83[11] 113[7])
    defparam cw_mon_current_limit_i11.GSR = "ENABLED";
    FD1P3AX cw_mon_current_limit_i12 (.D(n12568), .SP(clk_10mhz_c_enable_179), 
            .CK(clk_10mhz_c), .Q(n2[12])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(83[11] 113[7])
    defparam cw_mon_current_limit_i12.GSR = "ENABLED";
    FD1P3AX cw_mon_current_limit_i13 (.D(n12567), .SP(clk_10mhz_c_enable_179), 
            .CK(clk_10mhz_c), .Q(n2[13])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(83[11] 113[7])
    defparam cw_mon_current_limit_i13.GSR = "ENABLED";
    FD1P3AX cw_mon_current_limit_i14 (.D(n12566), .SP(clk_10mhz_c_enable_179), 
            .CK(clk_10mhz_c), .Q(n2[14])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(83[11] 113[7])
    defparam cw_mon_current_limit_i14.GSR = "ENABLED";
    FD1P3AX cw_mon_current_limit_i15 (.D(n12603), .SP(clk_10mhz_c_enable_179), 
            .CK(clk_10mhz_c), .Q(n2[15])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(83[11] 113[7])
    defparam cw_mon_current_limit_i15.GSR = "ENABLED";
    FD1P3AX control_i1 (.D(control_15__N_539[1]), .SP(clk_10mhz_c_enable_259), 
            .CK(clk_10mhz_c), .Q(control[1])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(83[11] 113[7])
    defparam control_i1.GSR = "ENABLED";
    FD1P3AX control_i3 (.D(control_15__N_539[3]), .SP(clk_10mhz_c_enable_259), 
            .CK(clk_10mhz_c), .Q(\control[3] )) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(83[11] 113[7])
    defparam control_i3.GSR = "ENABLED";
    LUT4 mux_954_i8_3_lut (.A(dds_control[15]), .B(static_control_adj_1783[15]), 
         .C(n12631), .Z(n2213[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(127[11] 150[12])
    defparam mux_954_i8_3_lut.init = 16'hcaca;
    FD1P3AX control_i7 (.D(control_15__N_539[7]), .SP(clk_10mhz_c_enable_259), 
            .CK(clk_10mhz_c), .Q(control_adj_1784[7])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(83[11] 113[7])
    defparam control_i7.GSR = "ENABLED";
    FD1P3AX control_i8 (.D(control_15__N_539[8]), .SP(clk_10mhz_c_enable_190), 
            .CK(clk_10mhz_c), .Q(control_adj_1784[8])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(83[11] 113[7])
    defparam control_i8.GSR = "ENABLED";
    FD1P3AX control_i9 (.D(control_15__N_539[9]), .SP(clk_10mhz_c_enable_190), 
            .CK(clk_10mhz_c), .Q(control_adj_1784[9])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(83[11] 113[7])
    defparam control_i9.GSR = "ENABLED";
    FD1P3AX control_i10 (.D(control_15__N_539[10]), .SP(clk_10mhz_c_enable_190), 
            .CK(clk_10mhz_c), .Q(control_adj_1784[10])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(83[11] 113[7])
    defparam control_i10.GSR = "ENABLED";
    FD1P3AX control_i11 (.D(control_15__N_539[11]), .SP(clk_10mhz_c_enable_190), 
            .CK(clk_10mhz_c), .Q(control_adj_1784[11])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(83[11] 113[7])
    defparam control_i11.GSR = "ENABLED";
    FD1P3AX control_i12 (.D(control_15__N_539[12]), .SP(clk_10mhz_c_enable_190), 
            .CK(clk_10mhz_c), .Q(control_adj_1784[12])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(83[11] 113[7])
    defparam control_i12.GSR = "ENABLED";
    FD1P3AX control_i13 (.D(control_15__N_539[13]), .SP(clk_10mhz_c_enable_190), 
            .CK(clk_10mhz_c), .Q(control_adj_1784[13])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(83[11] 113[7])
    defparam control_i13.GSR = "ENABLED";
    FD1P3AX control_i14 (.D(control_15__N_539[14]), .SP(clk_10mhz_c_enable_190), 
            .CK(clk_10mhz_c), .Q(control_adj_1784[14])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(83[11] 113[7])
    defparam control_i14.GSR = "ENABLED";
    FD1P3AX control_i15 (.D(control_15__N_539[15]), .SP(clk_10mhz_c_enable_190), 
            .CK(clk_10mhz_c), .Q(mcu_gpio_c_15)) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(83[11] 113[7])
    defparam control_i15.GSR = "ENABLED";
    FD1P3AX static_control_i2 (.D(n12571), .SP(clk_10mhz_c_enable_197), 
            .CK(clk_10mhz_c), .Q(static_control[1])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(83[11] 113[7])
    defparam static_control_i2.GSR = "ENABLED";
    FD1P3AX static_control_i3 (.D(n12570), .SP(clk_10mhz_c_enable_197), 
            .CK(clk_10mhz_c), .Q(static_control_adj_1783[2])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(83[11] 113[7])
    defparam static_control_i3.GSR = "ENABLED";
    FD1P3AX static_control_i4 (.D(n12569), .SP(clk_10mhz_c_enable_197), 
            .CK(clk_10mhz_c), .Q(static_control_adj_1783[3])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(83[11] 113[7])
    defparam static_control_i4.GSR = "ENABLED";
    FD1P3AX static_control_i5 (.D(n12568), .SP(clk_10mhz_c_enable_197), 
            .CK(clk_10mhz_c), .Q(static_control_adj_1783[4])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(83[11] 113[7])
    defparam static_control_i5.GSR = "ENABLED";
    FD1P3AX static_control_i6 (.D(n12567), .SP(clk_10mhz_c_enable_197), 
            .CK(clk_10mhz_c), .Q(static_control_adj_1783[5])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(83[11] 113[7])
    defparam static_control_i6.GSR = "ENABLED";
    FD1P3AX static_control_i7 (.D(n12566), .SP(clk_10mhz_c_enable_197), 
            .CK(clk_10mhz_c), .Q(static_control_adj_1783[6])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(83[11] 113[7])
    defparam static_control_i7.GSR = "ENABLED";
    FD1P3AX static_control_i8 (.D(n12603), .SP(clk_10mhz_c_enable_197), 
            .CK(clk_10mhz_c), .Q(\static_control[7] )) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(83[11] 113[7])
    defparam static_control_i8.GSR = "ENABLED";
    FD1P3AX static_control_i9 (.D(n12594), .SP(clk_10mhz_c_enable_205), 
            .CK(clk_10mhz_c), .Q(static_control_adj_1783[8])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(83[11] 113[7])
    defparam static_control_i9.GSR = "ENABLED";
    FD1P3AX static_control_i10 (.D(n12571), .SP(clk_10mhz_c_enable_205), 
            .CK(clk_10mhz_c), .Q(static_control_adj_1783[9])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(83[11] 113[7])
    defparam static_control_i10.GSR = "ENABLED";
    FD1P3AX static_control_i11 (.D(n12570), .SP(clk_10mhz_c_enable_205), 
            .CK(clk_10mhz_c), .Q(static_control_adj_1783[10])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(83[11] 113[7])
    defparam static_control_i11.GSR = "ENABLED";
    FD1P3AX static_control_i12 (.D(n12569), .SP(clk_10mhz_c_enable_205), 
            .CK(clk_10mhz_c), .Q(static_control_adj_1783[11])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(83[11] 113[7])
    defparam static_control_i12.GSR = "ENABLED";
    FD1P3AX static_control_i13 (.D(n12568), .SP(clk_10mhz_c_enable_205), 
            .CK(clk_10mhz_c), .Q(static_control_adj_1783[12])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(83[11] 113[7])
    defparam static_control_i13.GSR = "ENABLED";
    FD1P3AX static_control_i14 (.D(n12567), .SP(clk_10mhz_c_enable_205), 
            .CK(clk_10mhz_c), .Q(static_control_adj_1783[13])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(83[11] 113[7])
    defparam static_control_i14.GSR = "ENABLED";
    FD1P3AX static_control_i15 (.D(n12566), .SP(clk_10mhz_c_enable_205), 
            .CK(clk_10mhz_c), .Q(static_control_adj_1783[14])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(83[11] 113[7])
    defparam static_control_i15.GSR = "ENABLED";
    FD1P3AX static_control_i16 (.D(n12603), .SP(clk_10mhz_c_enable_205), 
            .CK(clk_10mhz_c), .Q(static_control_adj_1783[15])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(83[11] 113[7])
    defparam static_control_i16.GSR = "ENABLED";
    FD1S3IX data_out_i1 (.D(n2389[1]), .CK(clk_10mhz_c), .CD(n6165), .Q(data_out[1])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(126[3] 151[6])
    defparam data_out_i1.GSR = "ENABLED";
    FD1S3IX data_out_i2 (.D(n2389[2]), .CK(clk_10mhz_c), .CD(n6165), .Q(data_out[2])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(126[3] 151[6])
    defparam data_out_i2.GSR = "ENABLED";
    FD1S3IX data_out_i3 (.D(n2389[3]), .CK(clk_10mhz_c), .CD(n6165), .Q(data_out[3])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(126[3] 151[6])
    defparam data_out_i3.GSR = "ENABLED";
    FD1S3IX data_out_i4 (.D(n2389[4]), .CK(clk_10mhz_c), .CD(n6165), .Q(data_out[4])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(126[3] 151[6])
    defparam data_out_i4.GSR = "ENABLED";
    FD1S3IX data_out_i5 (.D(n2389[5]), .CK(clk_10mhz_c), .CD(n6165), .Q(data_out[5])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(126[3] 151[6])
    defparam data_out_i5.GSR = "ENABLED";
    FD1S3IX data_out_i6 (.D(n2389[6]), .CK(clk_10mhz_c), .CD(n6165), .Q(data_out[6])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(126[3] 151[6])
    defparam data_out_i6.GSR = "ENABLED";
    FD1S3IX data_out_i7 (.D(n2389[7]), .CK(clk_10mhz_c), .CD(n6165), .Q(data_out[7])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(126[3] 151[6])
    defparam data_out_i7.GSR = "ENABLED";
    FD1P3AX addr_start_i1 (.D(n12571), .SP(clk_N_1433_enable_8), .CK(clk_N_1433), 
            .Q(addr_start[1])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(165[3] 176[6])
    defparam addr_start_i1.GSR = "ENABLED";
    FD1P3AX addr_start_i2 (.D(n12570), .SP(clk_N_1433_enable_8), .CK(clk_N_1433), 
            .Q(addr_start[2])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(165[3] 176[6])
    defparam addr_start_i2.GSR = "ENABLED";
    FD1P3AX addr_start_i3 (.D(n12569), .SP(clk_N_1433_enable_8), .CK(clk_N_1433), 
            .Q(addr_start[3])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(165[3] 176[6])
    defparam addr_start_i3.GSR = "ENABLED";
    FD1P3AX addr_start_i4 (.D(n12568), .SP(clk_N_1433_enable_8), .CK(clk_N_1433), 
            .Q(addr_start[4])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(165[3] 176[6])
    defparam addr_start_i4.GSR = "ENABLED";
    FD1P3AX addr_start_i5 (.D(n12567), .SP(clk_N_1433_enable_8), .CK(clk_N_1433), 
            .Q(addr_start[5])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(165[3] 176[6])
    defparam addr_start_i5.GSR = "ENABLED";
    FD1P3AX addr_start_i6 (.D(n12566), .SP(clk_N_1433_enable_8), .CK(clk_N_1433), 
            .Q(addr_start[6])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(165[3] 176[6])
    defparam addr_start_i6.GSR = "ENABLED";
    FD1P3AX addr_start_i7 (.D(n12603), .SP(clk_N_1433_enable_8), .CK(clk_N_1433), 
            .Q(addr_start[7])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(165[3] 176[6])
    defparam addr_start_i7.GSR = "ENABLED";
    FD1P3DX state_i1 (.D(state_1__N_633[1]), .SP(data_vld_dly_enable_3), 
            .CK(data_vld_dly), .CD(n12573), .Q(state[1])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(190[7] 221[9])
    defparam state_i1.GSR = "DISABLED";
    LUT4 state_0__bdd_3_lut (.A(state[0]), .B(byte_cnt[1]), .C(state[1]), 
         .Z(data_vld_dly_enable_3)) /* synthesis lut_function=(A (B+(C))+!A !(C)) */ ;
    defparam state_0__bdd_3_lut.init = 16'hadad;
    FD1P3AX control_i4 (.D(control_15__N_539[4]), .SP(clk_10mhz_c_enable_259), 
            .CK(clk_10mhz_c), .Q(control_adj_1784[4])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(83[11] 113[7])
    defparam control_i4.GSR = "ENABLED";
    FD1P3AX control_i2 (.D(control_15__N_539[2]), .SP(clk_10mhz_c_enable_259), 
            .CK(clk_10mhz_c), .Q(\data_23__N_925[19] )) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(83[11] 113[7])
    defparam control_i2.GSR = "ENABLED";
    LUT4 i1_2_lut_4_lut_adj_324 (.A(n6127), .B(n6126), .C(n6125), .D(n12641), 
         .Z(n5589)) /* synthesis lut_function=(!(A (B (D)+!B (C+(D)))+!A (((D)+!C)+!B))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(190[7] 221[9])
    defparam i1_2_lut_4_lut_adj_324.init = 16'h00ca;
    LUT4 i1_2_lut_rep_320 (.A(byte_cnt[0]), .B(byte_cnt[1]), .Z(n12638)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_rep_320.init = 16'h2222;
    FD1P3AY dds_current_limit_i1 (.D(n12571), .SP(clk_10mhz_c_enable_214), 
            .CK(clk_10mhz_c), .Q(dds_current_limit[1])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(83[11] 113[7])
    defparam dds_current_limit_i1.GSR = "ENABLED";
    FD1P3AY dds_current_limit_i2 (.D(n12570), .SP(clk_10mhz_c_enable_214), 
            .CK(clk_10mhz_c), .Q(dds_current_limit[2])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(83[11] 113[7])
    defparam dds_current_limit_i2.GSR = "ENABLED";
    FD1P3AY dds_current_limit_i3 (.D(n12569), .SP(clk_10mhz_c_enable_214), 
            .CK(clk_10mhz_c), .Q(dds_current_limit[3])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(83[11] 113[7])
    defparam dds_current_limit_i3.GSR = "ENABLED";
    FD1P3AY dds_current_limit_i4 (.D(n12568), .SP(clk_10mhz_c_enable_214), 
            .CK(clk_10mhz_c), .Q(dds_current_limit[4])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(83[11] 113[7])
    defparam dds_current_limit_i4.GSR = "ENABLED";
    FD1P3AY dds_current_limit_i5 (.D(n12567), .SP(clk_10mhz_c_enable_214), 
            .CK(clk_10mhz_c), .Q(dds_current_limit[5])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(83[11] 113[7])
    defparam dds_current_limit_i5.GSR = "ENABLED";
    FD1P3AY dds_current_limit_i6 (.D(n12566), .SP(clk_10mhz_c_enable_214), 
            .CK(clk_10mhz_c), .Q(dds_current_limit[6])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(83[11] 113[7])
    defparam dds_current_limit_i6.GSR = "ENABLED";
    FD1P3AY dds_current_limit_i7 (.D(n12603), .SP(clk_10mhz_c_enable_214), 
            .CK(clk_10mhz_c), .Q(dds_current_limit[7])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(83[11] 113[7])
    defparam dds_current_limit_i7.GSR = "ENABLED";
    FD1P3AY dds_current_limit_i8 (.D(n12594), .SP(clk_10mhz_c_enable_222), 
            .CK(clk_10mhz_c), .Q(dds_current_limit[8])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(83[11] 113[7])
    defparam dds_current_limit_i8.GSR = "ENABLED";
    FD1P3AY dds_current_limit_i9 (.D(n12571), .SP(clk_10mhz_c_enable_222), 
            .CK(clk_10mhz_c), .Q(dds_current_limit[9])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(83[11] 113[7])
    defparam dds_current_limit_i9.GSR = "ENABLED";
    FD1P3AY dds_current_limit_i10 (.D(n12570), .SP(clk_10mhz_c_enable_222), 
            .CK(clk_10mhz_c), .Q(dds_current_limit[10])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(83[11] 113[7])
    defparam dds_current_limit_i10.GSR = "ENABLED";
    FD1P3AY dds_current_limit_i11 (.D(n12569), .SP(clk_10mhz_c_enable_222), 
            .CK(clk_10mhz_c), .Q(dds_current_limit[11])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(83[11] 113[7])
    defparam dds_current_limit_i11.GSR = "ENABLED";
    FD1P3AY dds_current_limit_i12 (.D(n12568), .SP(clk_10mhz_c_enable_222), 
            .CK(clk_10mhz_c), .Q(dds_current_limit[12])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(83[11] 113[7])
    defparam dds_current_limit_i12.GSR = "ENABLED";
    FD1P3AY dds_current_limit_i13 (.D(n12567), .SP(clk_10mhz_c_enable_222), 
            .CK(clk_10mhz_c), .Q(dds_current_limit[13])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(83[11] 113[7])
    defparam dds_current_limit_i13.GSR = "ENABLED";
    FD1P3AY dds_current_limit_i14 (.D(n12566), .SP(clk_10mhz_c_enable_222), 
            .CK(clk_10mhz_c), .Q(dds_current_limit[14])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(83[11] 113[7])
    defparam dds_current_limit_i14.GSR = "ENABLED";
    FD1P3AY dds_current_limit_i15 (.D(n12603), .SP(clk_10mhz_c_enable_222), 
            .CK(clk_10mhz_c), .Q(dds_current_limit[15])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(83[11] 113[7])
    defparam dds_current_limit_i15.GSR = "ENABLED";
    FD1S1D i3486 (.D(n12948), .CK(addr_i_7__N_594), .CD(addr_i_7__N_622), 
           .Q(n6129));   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(190[7] 221[9])
    defparam i3486.GSR = "DISABLED";
    FD1S1D i3490 (.D(n12948), .CK(addr_i_7__N_593), .CD(addr_i_7__N_619), 
           .Q(n6133));   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(190[7] 221[9])
    defparam i3490.GSR = "DISABLED";
    FD1S1D i3494 (.D(n12948), .CK(addr_i_7__N_592), .CD(addr_i_7__N_616), 
           .Q(n6137));   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(190[7] 221[9])
    defparam i3494.GSR = "DISABLED";
    FD1S1D i3498 (.D(n12948), .CK(addr_i_7__N_591), .CD(addr_i_7__N_613), 
           .Q(n6141));   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(190[7] 221[9])
    defparam i3498.GSR = "DISABLED";
    FD1S1D i3502 (.D(n12948), .CK(addr_i_7__N_590), .CD(addr_i_7__N_610), 
           .Q(n6145));   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(190[7] 221[9])
    defparam i3502.GSR = "DISABLED";
    FD1S1D i3506 (.D(n12948), .CK(addr_i_7__N_587), .CD(addr_i_7__N_597), 
           .Q(n6149));   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(190[7] 221[9])
    defparam i3506.GSR = "DISABLED";
    LUT4 i1_3_lut_4_lut_adj_325 (.A(byte_cnt[0]), .B(byte_cnt[1]), .C(\data_buffer_i[8] ), 
         .D(n12631), .Z(n11527)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_325.init = 16'h2000;
    LUT4 i9178_2_lut_rep_273_3_lut (.A(byte_cnt[0]), .B(byte_cnt[1]), .C(\state_1__N_839[0] ), 
         .Z(n12591)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i9178_2_lut_rep_273_3_lut.init = 16'h2020;
    LUT4 i1_3_lut_4_lut_adj_326 (.A(byte_cnt[0]), .B(byte_cnt[1]), .C(\data_buffer_i[5] ), 
         .D(n12631), .Z(n11471)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_326.init = 16'h2000;
    LUT4 i1_3_lut_rep_244_4_lut (.A(addr_i[7]), .B(n12633), .C(addr_i[2]), 
         .D(n12602), .Z(n12562)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_3_lut_rep_244_4_lut.init = 16'hfffe;
    LUT4 i9521_4_lut (.A(n10458), .B(n12593), .C(n11641), .D(n12641), 
         .Z(clk_10mhz_c_enable_96)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(91[7] 112[8])
    defparam i9521_4_lut.init = 16'h0004;
    LUT4 state_1__I_0_230_Mux_7_i3_3_lut (.A(addr_i_7__N_841[7]), .B(addr_i[7]), 
         .C(n12600), .Z(addr_i_7__N_579[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(190[7] 221[9])
    defparam state_1__I_0_230_Mux_7_i3_3_lut.init = 16'hcaca;
    LUT4 i5512_3_lut_4_lut (.A(addr_i[7]), .B(n12633), .C(n11893), .D(n12602), 
         .Z(n8140)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i5512_3_lut_4_lut.init = 16'h0001;
    LUT4 i1_3_lut_4_lut_adj_327 (.A(byte_cnt[0]), .B(byte_cnt[1]), .C(\data_buffer_i[7] ), 
         .D(n12631), .Z(n11513)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_327.init = 16'h2000;
    LUT4 i1_3_lut_4_lut_adj_328 (.A(byte_cnt[0]), .B(byte_cnt[1]), .C(\data_buffer_i[6] ), 
         .D(n12631), .Z(n11541)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_328.init = 16'h2000;
    LUT4 i1_3_lut_4_lut_adj_329 (.A(byte_cnt[0]), .B(byte_cnt[1]), .C(\data_buffer_i[2] ), 
         .D(n12631), .Z(n11555)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_329.init = 16'h2000;
    LUT4 mux_979_i8_3_lut (.A(dds_control[7]), .B(\static_control[7] ), 
         .C(n12631), .Z(n2286[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(127[11] 150[12])
    defparam mux_979_i8_3_lut.init = 16'hcaca;
    LUT4 i1_3_lut_rep_228_4_lut (.A(addr_i[2]), .B(n12628), .C(n12631), 
         .D(n12639), .Z(n12546)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1_3_lut_rep_228_4_lut.init = 16'h0010;
    LUT4 i1_3_lut_4_lut_adj_330 (.A(byte_cnt[0]), .B(byte_cnt[1]), .C(\data_buffer_i[4] ), 
         .D(n12631), .Z(n11415)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_330.init = 16'h2000;
    LUT4 i3489_rep_60_3_lut (.A(n6131), .B(n6130), .C(n6129), .Z(addr_i[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(190[7] 221[9])
    defparam i3489_rep_60_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut (.A(control[1]), .B(n3233), .Z(clk_10mhz_c_enable_89)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(83[11] 113[7])
    defparam i1_2_lut.init = 16'h2222;
    LUT4 i1_4_lut_adj_331 (.A(n11447), .B(n5), .C(n12578), .D(n12641), 
         .Z(control_15__N_539[0])) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i1_4_lut_adj_331.init = 16'h0008;
    LUT4 i1_2_lut_rep_247_3_lut_4_lut (.A(byte_cnt[0]), .B(byte_cnt[1]), 
         .C(n12641), .D(\state_1__N_839[0] ), .Z(n12565)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_rep_247_3_lut_4_lut.init = 16'h2000;
    FD1S3DX addr_i_reg_i1_3483_3484_reset (.D(n5810), .CK(data_vld_dly), 
            .CD(addr_i_7__N_625), .Q(n6127)) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(190[7] 221[9])
    defparam addr_i_reg_i1_3483_3484_reset.GSR = "DISABLED";
    FD1P3IX count_1541__i0 (.D(n21[0]), .SP(count_3__N_643), .CD(n566), 
            .CK(clk_10mhz_c), .Q(count[0])) /* synthesis syn_preserve=1 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(88[26:35])
    defparam count_1541__i0.GSR = "ENABLED";
    FD1S3BX addr_i_reg_i1_3483_3484_set (.D(n5810), .CK(data_vld_dly), .PD(addr_i_7__N_595), 
            .Q(n6126)) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(190[7] 221[9])
    defparam addr_i_reg_i1_3483_3484_set.GSR = "DISABLED";
    LUT4 i1_2_lut_3_lut_4_lut_adj_332 (.A(byte_cnt[0]), .B(byte_cnt[1]), 
         .C(addr_i[2]), .D(\state_1__N_839[0] ), .Z(n11349)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_332.init = 16'h0200;
    LUT4 i3509_3_lut (.A(n6151), .B(n6150), .C(n6149), .Z(addr_i[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(190[7] 221[9])
    defparam i3509_3_lut.init = 16'hcaca;
    LUT4 i9243_3_lut (.A(cw_gain[7]), .B(n2200[7]), .C(n12641), .Z(n11933)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9243_3_lut.init = 16'hcaca;
    LUT4 i1_3_lut_4_lut_adj_333 (.A(byte_cnt[0]), .B(byte_cnt[1]), .C(\data_buffer_i[1] ), 
         .D(n12631), .Z(n11443)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_333.init = 16'h2000;
    LUT4 i1_3_lut_4_lut_adj_334 (.A(byte_cnt[0]), .B(byte_cnt[1]), .C(\data_buffer_i[3] ), 
         .D(n12631), .Z(n11569)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_334.init = 16'h2000;
    LUT4 i3497_3_lut_rep_321 (.A(n6139), .B(n6138), .C(n6137), .Z(n12639)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(190[7] 221[9])
    defparam i3497_3_lut_rep_321.init = 16'hcaca;
    LUT4 i29_2_lut_4_lut (.A(n6139), .B(n6138), .C(n6137), .D(addr_i[2]), 
         .Z(n10)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(190[7] 221[9])
    defparam i29_2_lut_4_lut.init = 16'h35ca;
    FD1S3DX addr_i_reg_i0_3479_3480_reset (.D(n5715), .CK(data_vld_dly), 
            .CD(addr_i_7__N_628), .Q(n6123)) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(190[7] 221[9])
    defparam addr_i_reg_i0_3479_3480_reset.GSR = "DISABLED";
    LUT4 i1_4_lut_adj_335 (.A(n12593), .B(addr_i[2]), .C(n12641), .D(n12591), 
         .Z(n11257)) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;
    defparam i1_4_lut_adj_335.init = 16'hfdff;
    FD1S3BX addr_i_reg_i0_3479_3480_set (.D(n5715), .CK(data_vld_dly), .PD(addr_i_7__N_596), 
            .Q(n6122)) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(190[7] 221[9])
    defparam addr_i_reg_i0_3479_3480_set.GSR = "DISABLED";
    LUT4 i9306_3_lut (.A(n1[2]), .B(adc_current_data[2]), .C(addr_i[2]), 
         .Z(n11996)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9306_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_adj_336 (.A(\data_23__N_925[19] ), .B(control[1]), .Z(clk_10mhz_c_enable_54)) /* synthesis lut_function=(A+(B)) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(83[11] 113[7])
    defparam i1_2_lut_adj_336.init = 16'heeee;
    L6MUX21 i9220 (.D0(n11908), .D1(n11909), .SD(n12641), .Z(n11910));
    LUT4 i9455_2_lut_4_lut (.A(n12578), .B(n12639), .C(n12631), .D(n11217), 
         .Z(clk_10mhz_c_enable_197)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i9455_2_lut_4_lut.init = 16'h0010;
    PFUMX i3191 (.BLUT(addr_i_7__N_857[7]), .ALUT(addr_i_7__N_579[7]), .C0(n12030), 
          .Z(n5834));
    LUT4 i1_4_lut_adj_337 (.A(n12593), .B(n12552), .C(n12641), .D(n12591), 
         .Z(n11217)) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;
    defparam i1_4_lut_adj_337.init = 16'hfdff;
    LUT4 i3481_3_lut_rep_323 (.A(n6123), .B(n6122), .C(n6121), .Z(n12641)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(190[7] 221[9])
    defparam i3481_3_lut_rep_323.init = 16'hcaca;
    LUT4 i1_2_lut_4_lut_adj_338 (.A(n6123), .B(n6122), .C(n6121), .D(n10394), 
         .Z(clk_10mhz_c_enable_149)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(190[7] 221[9])
    defparam i1_2_lut_4_lut_adj_338.init = 16'hca00;
    LUT4 i1_2_lut_4_lut_adj_339 (.A(n6123), .B(n6122), .C(n6121), .D(n10394), 
         .Z(clk_10mhz_c_enable_141)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A (B (C+!(D))+!B !(D)))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(190[7] 221[9])
    defparam i1_2_lut_4_lut_adj_339.init = 16'h3500;
    LUT4 i1_2_lut_rep_230_3_lut (.A(n12631), .B(n12639), .C(n12628), .Z(n12548)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_rep_230_3_lut.init = 16'h1010;
    PFUMX i9219 (.BLUT(n214), .ALUT(n98), .C0(addr_i[2]), .Z(n11909));
    LUT4 i9305_3_lut (.A(cw_current_limit[2]), .B(n2[2]), .C(addr_i[2]), 
         .Z(n11995)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9305_3_lut.init = 16'hcaca;
    LUT4 i9303_3_lut (.A(n1[1]), .B(adc_current_data[1]), .C(addr_i[2]), 
         .Z(n11993)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9303_3_lut.init = 16'hcaca;
    PFUMX mux_1002_i8 (.BLUT(n2379[7]), .ALUT(n2369[7]), .C0(n2378), .Z(n2389[7]));
    PFUMX mux_1002_i7 (.BLUT(n2379[6]), .ALUT(n2369[6]), .C0(n2378), .Z(n2389[6]));
    PFUMX mux_1002_i6 (.BLUT(n2379[5]), .ALUT(n2369[5]), .C0(n2378), .Z(n2389[5]));
    LUT4 i7064_3_lut_4_lut (.A(count[1]), .B(count[0]), .C(count[2]), 
         .D(count[3]), .Z(n21[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(88[26:35])
    defparam i7064_3_lut_4_lut.init = 16'h7f80;
    LUT4 i7057_2_lut_3_lut (.A(count[1]), .B(count[0]), .C(count[2]), 
         .Z(n21[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(88[26:35])
    defparam i7057_2_lut_3_lut.init = 16'h7878;
    PFUMX mux_1002_i5 (.BLUT(n2379[4]), .ALUT(n2369[4]), .C0(n2378), .Z(n2389[4]));
    PFUMX mux_1002_i4 (.BLUT(n2379[3]), .ALUT(n2369[3]), .C0(n2378), .Z(n2389[3]));
    LUT4 i9172_2_lut_rep_235_3_lut (.A(n12631), .B(n12639), .C(n12628), 
         .Z(n12553)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i9172_2_lut_rep_235_3_lut.init = 16'hfefe;
    LUT4 i9302_3_lut (.A(cw_current_limit[1]), .B(n2[1]), .C(addr_i[2]), 
         .Z(n11992)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9302_3_lut.init = 16'hcaca;
    LUT4 i9300_3_lut (.A(dds_gain[7]), .B(dds_gain[15]), .C(n12641), .Z(n11990)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9300_3_lut.init = 16'hcaca;
    CCU2D add_237_9 (.A0(addr_i[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n9623), 
          .S0(addr_i_7__N_841[7]));   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(212[20:34])
    defparam add_237_9.INIT0 = 16'h5aaa;
    defparam add_237_9.INIT1 = 16'h0000;
    defparam add_237_9.INJECT1_0 = "NO";
    defparam add_237_9.INJECT1_1 = "NO";
    LUT4 i9506_2_lut_3_lut (.A(state[0]), .B(state[1]), .C(\state_1__N_839[0] ), 
         .Z(state_1__N_633[1])) /* synthesis lut_function=(!(A+(B+(C)))) */ ;
    defparam i9506_2_lut_3_lut.init = 16'h0101;
    PFUMX mux_1002_i3 (.BLUT(n2379[2]), .ALUT(n2369[2]), .C0(n2378), .Z(n2389[2]));
    PFUMX mux_1002_i2 (.BLUT(n2379[1]), .ALUT(n2369[1]), .C0(n2378), .Z(n2389[1]));
    PFUMX i9218 (.BLUT(n210), .ALUT(n8140), .C0(addr_i[2]), .Z(n11908));
    LUT4 i9299_3_lut (.A(adc_voltage_data[7]), .B(adc_voltage_data[15]), 
         .C(n12641), .Z(n11989)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9299_3_lut.init = 16'hcaca;
    PFUMX mux_1002_i1 (.BLUT(n2379[0]), .ALUT(n2369[0]), .C0(n2378), .Z(n2389[0]));
    LUT4 i9297_3_lut (.A(dds_gain[6]), .B(dds_gain[14]), .C(n12641), .Z(n11987)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9297_3_lut.init = 16'hcaca;
    LUT4 i9296_3_lut (.A(adc_voltage_data[6]), .B(adc_voltage_data[14]), 
         .C(n12641), .Z(n11986)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9296_3_lut.init = 16'hcaca;
    PFUMX i3183 (.BLUT(addr_i_7__N_857[5]), .ALUT(addr_i_7__N_579[5]), .C0(n12030), 
          .Z(n5826));
    PFUMX i3187 (.BLUT(addr_i_7__N_857[6]), .ALUT(addr_i_7__N_579[6]), .C0(n12030), 
          .Z(n5830));
    LUT4 i9308_3_lut (.A(cw_current_limit[3]), .B(n2[3]), .C(addr_i[2]), 
         .Z(n11998)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9308_3_lut.init = 16'hcaca;
    LUT4 i9294_3_lut (.A(dds_gain[5]), .B(dds_gain[13]), .C(n12641), .Z(n11984)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9294_3_lut.init = 16'hcaca;
    LUT4 i9293_3_lut (.A(adc_voltage_data[5]), .B(adc_voltage_data[13]), 
         .C(n12641), .Z(n11983)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9293_3_lut.init = 16'hcaca;
    LUT4 i9469_2_lut_3_lut_4_lut (.A(n12628), .B(n12583), .C(n11217), 
         .D(addr_i[2]), .Z(clk_10mhz_c_enable_171)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam i9469_2_lut_3_lut_4_lut.init = 16'h0200;
    LUT4 i9291_3_lut (.A(dds_gain[4]), .B(dds_gain[12]), .C(n12641), .Z(n11981)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9291_3_lut.init = 16'hcaca;
    LUT4 i9290_3_lut (.A(adc_voltage_data[4]), .B(adc_voltage_data[12]), 
         .C(n12641), .Z(n11980)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9290_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_adj_340 (.A(n12552), .B(n12548), .C(n12593), .D(n11349), 
         .Z(n10394)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i1_4_lut_adj_340.init = 16'h4000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_341 (.A(addr_i[2]), .B(n12548), .C(n12544), 
         .D(n12552), .Z(clk_10mhz_c_enable_179)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_341.init = 16'h0080;
    PFUMX i3175 (.BLUT(addr_i_7__N_857[3]), .ALUT(addr_i_7__N_579[3]), .C0(n12030), 
          .Z(n5818));
    LUT4 i9500_3_lut_4_lut (.A(n12628), .B(n12583), .C(n11257), .D(n12554), 
         .Z(clk_10mhz_c_enable_156)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam i9500_3_lut_4_lut.init = 16'h0200;
    LUT4 mux_971_i4_3_lut (.A(system_reset_n_c_3), .B(dds_current_limit[3]), 
         .C(addr_i[2]), .Z(n2262[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(127[11] 150[12])
    defparam mux_971_i4_3_lut.init = 16'hcaca;
    FD1P3IX count_1541__i3 (.D(n21[3]), .SP(count_3__N_643), .CD(n566), 
            .CK(clk_10mhz_c), .Q(count[3])) /* synthesis syn_preserve=1 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(88[26:35])
    defparam count_1541__i3.GSR = "ENABLED";
    FD1P3IX count_1541__i2 (.D(n21[2]), .SP(count_3__N_643), .CD(n566), 
            .CK(clk_10mhz_c), .Q(count[2])) /* synthesis syn_preserve=1 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(88[26:35])
    defparam count_1541__i2.GSR = "ENABLED";
    FD1P3IX count_1541__i1 (.D(n21[1]), .SP(count_3__N_643), .CD(n566), 
            .CK(clk_10mhz_c), .Q(count[1])) /* synthesis syn_preserve=1 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(88[26:35])
    defparam count_1541__i1.GSR = "ENABLED";
    LUT4 i3485_rep_57_3_lut (.A(n6127), .B(n6126), .C(n6125), .Z(n12637)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(190[7] 221[9])
    defparam i3485_rep_57_3_lut.init = 16'hcaca;
    PFUMX i3179 (.BLUT(addr_i_7__N_857[4]), .ALUT(addr_i_7__N_579[4]), .C0(n12030), 
          .Z(n5822));
    LUT4 i1_3_lut_4_lut_adj_342 (.A(n12628), .B(n12583), .C(n11673), .D(n12554), 
         .Z(clk_10mhz_c_enable_164)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_342.init = 16'h2000;
    LUT4 i1_3_lut_4_lut_adj_343 (.A(addr_i[7]), .B(n12633), .C(n12637), 
         .D(n12590), .Z(n10458)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_3_lut_4_lut_adj_343.init = 16'hfffe;
    LUT4 i5432_2_lut_rep_234_3_lut (.A(addr_i[7]), .B(n12633), .C(n12637), 
         .Z(n12552)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i5432_2_lut_rep_234_3_lut.init = 16'hfefe;
    PFUMX i3072 (.BLUT(addr_i_7__N_857[0]), .ALUT(addr_i_7__N_579[0]), .C0(n12030), 
          .Z(n5715));
    LUT4 i1_2_lut_rep_236_3_lut (.A(addr_i[7]), .B(n12633), .C(n12637), 
         .Z(n12554)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_rep_236_3_lut.init = 16'h1010;
    PFUMX i3167 (.BLUT(addr_i_7__N_857[1]), .ALUT(addr_i_7__N_579[1]), .C0(n12030), 
          .Z(n5810));
    FD1S1D i3478 (.D(n12948), .CK(addr_i_7__N_596), .CD(addr_i_7__N_628), 
           .Q(n6121));   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(190[7] 221[9])
    defparam i3478.GSR = "DISABLED";
    PFUMX i3171 (.BLUT(addr_i_7__N_857[2]), .ALUT(addr_i_7__N_579[2]), .C0(n12030), 
          .Z(n5814));
    PFUMX i9238 (.BLUT(n11926), .ALUT(n11927), .C0(addr_i[2]), .Z(n11928));
    LUT4 i1_2_lut_3_lut_adj_344 (.A(n12628), .B(n12639), .C(n12631), .Z(n11303)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_3_lut_adj_344.init = 16'hfefe;
    PFUMX i9241 (.BLUT(n11929), .ALUT(n11930), .C0(addr_i[2]), .Z(n11931));
    PFUMX i9244 (.BLUT(n11932), .ALUT(n11933), .C0(addr_i[2]), .Z(n11934));
    LUT4 i9503_2_lut_rep_242_3_lut_4_lut (.A(n12631), .B(n12628), .C(n12633), 
         .D(addr_i[7]), .Z(n12560)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i9503_2_lut_rep_242_3_lut_4_lut.init = 16'h0001;
    PFUMX i9223 (.BLUT(n11911), .ALUT(n11912), .C0(addr_i[2]), .Z(n11913));
    PFUMX i9642 (.BLUT(n12469), .ALUT(n12468), .C0(n12641), .Z(n12470));
    PFUMX i9226 (.BLUT(n11914), .ALUT(n11915), .C0(addr_i[2]), .Z(n11916));
    LUT4 i1_2_lut_3_lut_4_lut_adj_345 (.A(\state_1__N_839[0] ), .B(n12638), 
         .C(addr_i[2]), .D(n12639), .Z(n11641)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_345.init = 16'hfff7;
    LUT4 i1_2_lut_3_lut_4_lut_adj_346 (.A(\state_1__N_839[0] ), .B(n12638), 
         .C(n12639), .D(n12641), .Z(n11727)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_346.init = 16'h0800;
    L6MUX21 mux_994_i8 (.D0(n11907), .D1(n11970), .SD(n12641), .Z(n2349[7]));
    L6MUX21 mux_994_i7 (.D0(n11955), .D1(n11967), .SD(n12641), .Z(n2349[6]));
    L6MUX21 mux_994_i6 (.D0(n12006), .D1(n11964), .SD(n12641), .Z(n2349[5]));
    PFUMX i9639 (.BLUT(n12465), .ALUT(n12464), .C0(n12641), .Z(n12466));
    LUT4 i1_3_lut_adj_347 (.A(\data_23__N_925[19] ), .B(control[1]), .C(\data[19] ), 
         .Z(n5979)) /* synthesis lut_function=(A+!(B+!(C))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(83[11] 113[7])
    defparam i1_3_lut_adj_347.init = 16'hbaba;
    LUT4 i1_3_lut_adj_348 (.A(\data_23__N_925[19] ), .B(control[1]), .C(\data[16] ), 
         .Z(\data_23__N_925[16] )) /* synthesis lut_function=(!(A+!(B+(C)))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(83[11] 113[7])
    defparam i1_3_lut_adj_348.init = 16'h5454;
    L6MUX21 mux_994_i5 (.D0(n12003), .D1(n11961), .SD(n12641), .Z(n2349[4]));
    LUT4 i1_2_lut_rep_226_3_lut_4_lut (.A(\state_1__N_839[0] ), .B(n12638), 
         .C(n12593), .D(n12641), .Z(n12544)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_2_lut_rep_226_3_lut_4_lut.init = 16'h8000;
    L6MUX21 mux_994_i4 (.D0(n12000), .D1(n11958), .SD(n12641), .Z(n2349[3]));
    L6MUX21 mux_994_i3 (.D0(n11997), .D1(n11952), .SD(n12641), .Z(n2349[2]));
    L6MUX21 mux_994_i2 (.D0(n11994), .D1(n11949), .SD(n12641), .Z(n2349[1]));
    PFUMX i9636 (.BLUT(n12462), .ALUT(n12461), .C0(n12641), .Z(n12463));
    PFUMX i9229 (.BLUT(n11917), .ALUT(n11918), .C0(addr_i[2]), .Z(n11919));
    LUT4 mux_971_i3_3_lut (.A(\status[2] ), .B(dds_current_limit[2]), .C(addr_i[2]), 
         .Z(n2262[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(127[11] 150[12])
    defparam mux_971_i3_3_lut.init = 16'hcaca;
    PFUMX i9232 (.BLUT(n11920), .ALUT(n11921), .C0(addr_i[2]), .Z(n11922));
    LUT4 i9315_3_lut (.A(n1[5]), .B(adc_current_data[5]), .C(addr_i[2]), 
         .Z(n12005)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9315_3_lut.init = 16'hcaca;
    LUT4 i5309_3_lut (.A(\state_1__N_839[0] ), .B(state[1]), .C(state[0]), 
         .Z(state_1__N_633[0])) /* synthesis lut_function=(!(A (B)+!A (B+!(C)))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(190[7] 221[9])
    defparam i5309_3_lut.init = 16'h3232;
    LUT4 i1_3_lut_adj_349 (.A(n566), .B(n12641), .C(n193), .Z(clk_10mhz_c_enable_259)) /* synthesis lut_function=(A+!(B+!(C))) */ ;
    defparam i1_3_lut_adj_349.init = 16'hbaba;
    L6MUX21 mux_994_i1 (.D0(n11943), .D1(n11937), .SD(n12641), .Z(n2349[0]));
    PFUMX i9235 (.BLUT(n11923), .ALUT(n11924), .C0(addr_i[2]), .Z(n11925));
    PFUMX i9247 (.BLUT(n11935), .ALUT(n11936), .C0(addr_i[2]), .Z(n11937));
    LUT4 mux_971_i2_3_lut (.A(seed_compared_c_1), .B(dds_current_limit[1]), 
         .C(addr_i[2]), .Z(n2262[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(127[11] 150[12])
    defparam mux_971_i2_3_lut.init = 16'hcaca;
    PFUMX i9217 (.BLUT(n11905), .ALUT(n11906), .C0(n12637), .Z(n11907));
    LUT4 i9279_3_lut (.A(n2[15]), .B(adc_current_data[15]), .C(n12637), 
         .Z(n11969)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9279_3_lut.init = 16'hcaca;
    PFUMX i9250 (.BLUT(n11938), .ALUT(n11939), .C0(n12637), .Z(n11940));
    PFUMX i9253 (.BLUT(n11941), .ALUT(n11942), .C0(n12637), .Z(n11943));
    LUT4 i9278_3_lut (.A(cw_current_limit[15]), .B(n1[15]), .C(n12637), 
         .Z(n11968)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9278_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_adj_350 (.A(n11517), .B(n5), .C(n12578), .D(n12641), 
         .Z(control_15__N_539[6])) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i1_4_lut_adj_350.init = 16'h0008;
    PFUMX i9310 (.BLUT(n11998), .ALUT(n11999), .C0(n12637), .Z(n12000));
    LUT4 i3644_4_lut (.A(count_3__N_643), .B(count[2]), .C(count[1]), 
         .D(count[3]), .Z(n566)) /* synthesis lut_function=(A (B+(C+(D)))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(88[26:35])
    defparam i3644_4_lut.init = 16'haaa8;
    LUT4 i9517_2_lut_3_lut_4_lut (.A(n12583), .B(n12628), .C(n11217), 
         .D(addr_i[2]), .Z(clk_10mhz_c_enable_126)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i9517_2_lut_3_lut_4_lut.init = 16'h0100;
    LUT4 i9610_4_lut (.A(n12593), .B(n12554), .C(addr_i[2]), .D(n11287), 
         .Z(clk_10mhz_c_enable_214)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(91[7] 112[8])
    defparam i9610_4_lut.init = 16'h0080;
    LUT4 i9314_3_lut (.A(cw_current_limit[5]), .B(n2[5]), .C(addr_i[2]), 
         .Z(n12004)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9314_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_adj_351 (.A(n12578), .B(n5), .C(n12639), .D(n11219), 
         .Z(n193)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_4_lut_adj_351.init = 16'h0400;
    LUT4 i1_2_lut_3_lut_4_lut_adj_352 (.A(n12583), .B(n12628), .C(n11673), 
         .D(n12554), .Z(clk_10mhz_c_enable_119)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_352.init = 16'h1000;
    FD1S3IX data_out_i0 (.D(n2389[0]), .CK(clk_10mhz_c), .CD(n6165), .Q(data_out[0])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(126[3] 151[6])
    defparam data_out_i0.GSR = "ENABLED";
    FD1P3AX control_i0 (.D(control_15__N_539[0]), .SP(clk_10mhz_c_enable_259), 
            .CK(clk_10mhz_c), .Q(\control[0] )) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(83[11] 113[7])
    defparam control_i0.GSR = "ENABLED";
    LUT4 i9519_2_lut_3_lut_4_lut (.A(n12583), .B(n12628), .C(n11257), 
         .D(n12554), .Z(clk_10mhz_c_enable_111)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i9519_2_lut_3_lut_4_lut.init = 16'h0100;
    LUT4 i1_4_lut_adj_353 (.A(n11797), .B(n11801), .C(n11791), .D(n11793), 
         .Z(count_3__N_643)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_353.init = 16'hfffe;
    LUT4 i1_4_lut_adj_354 (.A(control_adj_1784[10]), .B(\data_23__N_925[19] ), 
         .C(\control[0] ), .D(control_adj_1784[14]), .Z(n11797)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_354.init = 16'hfffe;
    PFUMX i9259 (.BLUT(n11947), .ALUT(n11948), .C0(addr_i[2]), .Z(n11949));
    LUT4 i1_4_lut_adj_355 (.A(mcu_gpio_c_15), .B(\control[3] ), .C(control[1]), 
         .D(control_adj_1784[11]), .Z(n11801)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_355.init = 16'hfffe;
    FD1S3DX addr_i_reg_i7_3507_3508_reset (.D(n5834), .CK(data_vld_dly), 
            .CD(addr_i_7__N_597), .Q(n6151)) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(190[7] 221[9])
    defparam addr_i_reg_i7_3507_3508_reset.GSR = "DISABLED";
    PFUMX i9262 (.BLUT(n11950), .ALUT(n11951), .C0(addr_i[2]), .Z(n11952));
    LUT4 i1_4_lut_adj_356 (.A(control_adj_1784[7]), .B(control_adj_1784[13]), 
         .C(control_adj_1784[4]), .D(control_adj_1784[9]), .Z(n11791)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_356.init = 16'hfffe;
    PFUMX i9265 (.BLUT(n11953), .ALUT(n11954), .C0(n12637), .Z(n11955));
    LUT4 i9312_3_lut (.A(n1[4]), .B(adc_current_data[4]), .C(addr_i[2]), 
         .Z(n12002)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9312_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_adj_357 (.A(control_adj_1784[6]), .B(control_adj_1784[8]), 
         .C(control_adj_1784[12]), .D(control_adj_1784[5]), .Z(n11793)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_357.init = 16'hfffe;
    LUT4 i9311_3_lut (.A(cw_current_limit[4]), .B(n2[4]), .C(addr_i[2]), 
         .Z(n12001)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9311_3_lut.init = 16'hcaca;
    PFUMX i9268 (.BLUT(n11956), .ALUT(n11957), .C0(addr_i[2]), .Z(n11958));
    FD1S3DX addr_i_reg_i5_3499_3500_reset (.D(n5826), .CK(data_vld_dly), 
            .CD(addr_i_7__N_613), .Q(n6143)) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(190[7] 221[9])
    defparam addr_i_reg_i5_3499_3500_reset.GSR = "DISABLED";
    PFUMX i9271 (.BLUT(n11959), .ALUT(n11960), .C0(addr_i[2]), .Z(n11961));
    FD1S3BX addr_i_reg_i7_3507_3508_set (.D(n5834), .CK(data_vld_dly), .PD(addr_i_7__N_587), 
            .Q(n6150)) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(190[7] 221[9])
    defparam addr_i_reg_i7_3507_3508_set.GSR = "DISABLED";
    LUT4 i1_2_lut_3_lut_4_lut_adj_358 (.A(n12637), .B(n12588), .C(\state_1__N_839[0] ), 
         .D(n12593), .Z(n5)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_358.init = 16'h2000;
    FD1S3DX addr_i_reg_i6_3503_3504_reset (.D(n5830), .CK(data_vld_dly), 
            .CD(addr_i_7__N_610), .Q(n6147)) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(190[7] 221[9])
    defparam addr_i_reg_i6_3503_3504_reset.GSR = "DISABLED";
    PFUMX i9274 (.BLUT(n11962), .ALUT(n11963), .C0(addr_i[2]), .Z(n11964));
    FD1S3BX addr_i_reg_i6_3503_3504_set (.D(n5830), .CK(data_vld_dly), .PD(addr_i_7__N_590), 
            .Q(n6146)) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=95 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/registers.v(190[7] 221[9])
    defparam addr_i_reg_i6_3503_3504_set.GSR = "DISABLED";
    PFUMX i9277 (.BLUT(n11965), .ALUT(n11966), .C0(addr_i[2]), .Z(n11967));
    LUT4 i1_4_lut_adj_359 (.A(n11405), .B(n5), .C(n12578), .D(n12641), 
         .Z(control_15__N_539[5])) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i1_4_lut_adj_359.init = 16'h0008;
    PFUMX i9280 (.BLUT(n11968), .ALUT(n11969), .C0(addr_i[2]), .Z(n11970));
    
endmodule
//
// Verilog Description of module i2cslave_controller_top
//

module i2cslave_controller_top (clk_10mhz_c, \state_1__N_839[0] , data_out, 
            addr_start, addr_i_7__N_622, addr_i_7__N_594, addr_i_7__N_613, 
            addr_i_7__N_590, addr_i_7__N_610, addr_i_7__N_587, addr_i_7__N_597, 
            addr_i_7__N_628, addr_i_7__N_596, \data_buffer_i[7] , addr_i_7__N_857, 
            \data_buffer_i[6] , \data_buffer_i[5] , \data_buffer_i[4] , 
            \data_buffer_i[3] , \data_buffer_i[2] , \data_buffer_i[8] , 
            reset_n, n12607, \data_buffer_i[1] , addr_i_7__N_625, n12573, 
            addr_i_7__N_595, addr_i_7__N_591, addr_i_7__N_616, addr_i_7__N_592, 
            addr_i_7__N_619, addr_i_7__N_593, n12948, n12641, n11555, 
            n11559, n11569, n12639, n11489, n11541, n11405, n12593, 
            n11513, n11433, n11573, n12594, n11443, n11587, n11517, 
            n11527, n11601, n11415, n11391, n11503, n12570, n12571, 
            n11545, n12566, n11531, n11471, n11475, n12603, n12567, 
            n11461, n11419, n12568, n12569, n11447, n7927, sda_out, 
            scl_out) /* synthesis syn_module_defined=1 */ ;
    input clk_10mhz_c;
    output \state_1__N_839[0] ;
    input [7:0]data_out;
    input [7:0]addr_start;
    output addr_i_7__N_622;
    output addr_i_7__N_594;
    output addr_i_7__N_613;
    output addr_i_7__N_590;
    output addr_i_7__N_610;
    output addr_i_7__N_587;
    output addr_i_7__N_597;
    output addr_i_7__N_628;
    output addr_i_7__N_596;
    output \data_buffer_i[7] ;
    output [7:0]addr_i_7__N_857;
    output \data_buffer_i[6] ;
    output \data_buffer_i[5] ;
    output \data_buffer_i[4] ;
    output \data_buffer_i[3] ;
    output \data_buffer_i[2] ;
    output \data_buffer_i[8] ;
    input reset_n;
    output n12607;
    output \data_buffer_i[1] ;
    output addr_i_7__N_625;
    output n12573;
    output addr_i_7__N_595;
    output addr_i_7__N_591;
    output addr_i_7__N_616;
    output addr_i_7__N_592;
    output addr_i_7__N_619;
    output addr_i_7__N_593;
    input n12948;
    input n12641;
    input n11555;
    output n11559;
    input n11569;
    input n12639;
    output n11489;
    input n11541;
    output n11405;
    output n12593;
    input n11513;
    output n11433;
    output n11573;
    output n12594;
    input n11443;
    output n11587;
    output n11517;
    input n11527;
    output n11601;
    input n11415;
    output n11391;
    output n11503;
    output n12570;
    output n12571;
    output n11545;
    output n12566;
    output n11531;
    input n11471;
    output n11475;
    output n12603;
    output n12567;
    output n11461;
    output n11419;
    output n12568;
    output n12569;
    output n11447;
    output n7927;
    input sda_out;
    input scl_out;
    
    wire clk_10mhz_c /* synthesis SET_AS_NETWORK=clk_10mhz_c, is_clock=1 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/top.v(24[15:24])
    wire out_n__inv /* synthesis is_inv_clock=1 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/filter.v(51[9:14])
    wire out_n /* synthesis is_clock=1, SET_AS_NETWORK=\i2c_slave_top/i2cslave_controller_top/filter_scl_inst/out_n */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/filter.v(51[9:14])
    
    wire i_sda;
    
    i2cslave_controller i2cslave_controller_u1 (.clk_10mhz_c(clk_10mhz_c), 
            .\state_1__N_839[0] (\state_1__N_839[0] ), .data_out({data_out}), 
            .addr_start({addr_start}), .addr_i_7__N_622(addr_i_7__N_622), 
            .addr_i_7__N_594(addr_i_7__N_594), .addr_i_7__N_613(addr_i_7__N_613), 
            .addr_i_7__N_590(addr_i_7__N_590), .addr_i_7__N_610(addr_i_7__N_610), 
            .addr_i_7__N_587(addr_i_7__N_587), .addr_i_7__N_597(addr_i_7__N_597), 
            .addr_i_7__N_628(addr_i_7__N_628), .addr_i_7__N_596(addr_i_7__N_596), 
            .\data_buffer_i[7] (\data_buffer_i[7] ), .addr_i_7__N_857({addr_i_7__N_857}), 
            .\data_buffer_i[6] (\data_buffer_i[6] ), .\data_buffer_i[5] (\data_buffer_i[5] ), 
            .\data_buffer_i[4] (\data_buffer_i[4] ), .\data_buffer_i[3] (\data_buffer_i[3] ), 
            .\data_buffer_i[2] (\data_buffer_i[2] ), .out_n__inv(out_n__inv), 
            .out_n(out_n), .i_sda(i_sda), .\data_buffer_i[8] (\data_buffer_i[8] ), 
            .reset_n(reset_n), .n12607(n12607), .\data_buffer_i[1] (\data_buffer_i[1] ), 
            .addr_i_7__N_625(addr_i_7__N_625), .n12573(n12573), .addr_i_7__N_595(addr_i_7__N_595), 
            .addr_i_7__N_591(addr_i_7__N_591), .addr_i_7__N_616(addr_i_7__N_616), 
            .addr_i_7__N_592(addr_i_7__N_592), .addr_i_7__N_619(addr_i_7__N_619), 
            .addr_i_7__N_593(addr_i_7__N_593), .n12948(n12948), .n12641(n12641), 
            .n11555(n11555), .n11559(n11559), .n11569(n11569), .n12639(n12639), 
            .n11489(n11489), .n11541(n11541), .n11405(n11405), .n12593(n12593), 
            .n11513(n11513), .n11433(n11433), .n11573(n11573), .n12594(n12594), 
            .n11443(n11443), .n11587(n11587), .n11517(n11517), .n11527(n11527), 
            .n11601(n11601), .n11415(n11415), .n11391(n11391), .n11503(n11503), 
            .n12570(n12570), .n12571(n12571), .n11545(n11545), .n12566(n12566), 
            .n11531(n11531), .n11471(n11471), .n11475(n11475), .n12603(n12603), 
            .n12567(n12567), .n11461(n11461), .n11419(n11419), .n12568(n12568), 
            .n12569(n12569), .n11447(n11447), .n7927(n7927)) /* synthesis syn_module_defined=1 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller_top.v(124[2] 143[2])
    filter filter_sda_inst (.clk_10mhz_c(clk_10mhz_c), .i_sda(i_sda), .sda_out(sda_out)) /* synthesis syn_module_defined=1 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller_top.v(113[8] 118[2])
    filter_U0 filter_scl_inst (.out_n__inv(out_n__inv), .out_n(out_n), .clk_10mhz_c(clk_10mhz_c), 
            .scl_out(scl_out)) /* synthesis syn_module_defined=1 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller_top.v(106[8] 111[2])
    
endmodule
//
// Verilog Description of module i2cslave_controller
//

module i2cslave_controller (clk_10mhz_c, \state_1__N_839[0] , data_out, 
            addr_start, addr_i_7__N_622, addr_i_7__N_594, addr_i_7__N_613, 
            addr_i_7__N_590, addr_i_7__N_610, addr_i_7__N_587, addr_i_7__N_597, 
            addr_i_7__N_628, addr_i_7__N_596, \data_buffer_i[7] , addr_i_7__N_857, 
            \data_buffer_i[6] , \data_buffer_i[5] , \data_buffer_i[4] , 
            \data_buffer_i[3] , \data_buffer_i[2] , out_n__inv, out_n, 
            i_sda, \data_buffer_i[8] , reset_n, n12607, \data_buffer_i[1] , 
            addr_i_7__N_625, n12573, addr_i_7__N_595, addr_i_7__N_591, 
            addr_i_7__N_616, addr_i_7__N_592, addr_i_7__N_619, addr_i_7__N_593, 
            n12948, n12641, n11555, n11559, n11569, n12639, n11489, 
            n11541, n11405, n12593, n11513, n11433, n11573, n12594, 
            n11443, n11587, n11517, n11527, n11601, n11415, n11391, 
            n11503, n12570, n12571, n11545, n12566, n11531, n11471, 
            n11475, n12603, n12567, n11461, n11419, n12568, n12569, 
            n11447, n7927) /* synthesis syn_module_defined=1 */ ;
    input clk_10mhz_c;
    output \state_1__N_839[0] ;
    input [7:0]data_out;
    input [7:0]addr_start;
    output addr_i_7__N_622;
    output addr_i_7__N_594;
    output addr_i_7__N_613;
    output addr_i_7__N_590;
    output addr_i_7__N_610;
    output addr_i_7__N_587;
    output addr_i_7__N_597;
    output addr_i_7__N_628;
    output addr_i_7__N_596;
    output \data_buffer_i[7] ;
    output [7:0]addr_i_7__N_857;
    output \data_buffer_i[6] ;
    output \data_buffer_i[5] ;
    output \data_buffer_i[4] ;
    output \data_buffer_i[3] ;
    output \data_buffer_i[2] ;
    input out_n__inv;
    input out_n;
    input i_sda;
    output \data_buffer_i[8] ;
    input reset_n;
    output n12607;
    output \data_buffer_i[1] ;
    output addr_i_7__N_625;
    output n12573;
    output addr_i_7__N_595;
    output addr_i_7__N_591;
    output addr_i_7__N_616;
    output addr_i_7__N_592;
    output addr_i_7__N_619;
    output addr_i_7__N_593;
    input n12948;
    input n12641;
    input n11555;
    output n11559;
    input n11569;
    input n12639;
    output n11489;
    input n11541;
    output n11405;
    output n12593;
    input n11513;
    output n11433;
    output n11573;
    output n12594;
    input n11443;
    output n11587;
    output n11517;
    input n11527;
    output n11601;
    input n11415;
    output n11391;
    output n11503;
    output n12570;
    output n12571;
    output n11545;
    output n12566;
    output n11531;
    input n11471;
    output n11475;
    output n12603;
    output n12567;
    output n11461;
    output n11419;
    output n12568;
    output n12569;
    output n11447;
    output n7927;
    
    wire clk_10mhz_c /* synthesis SET_AS_NETWORK=clk_10mhz_c, is_clock=1 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/top.v(24[15:24])
    wire sda_reg /* synthesis is_clock=1, SET_AS_NETWORK=\i2c_slave_top/i2cslave_controller_top/i2cslave_controller_u1/sda_reg */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(159[9:16])
    wire out_n__inv /* synthesis is_inv_clock=1 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/filter.v(51[9:14])
    wire out_n /* synthesis is_clock=1, SET_AS_NETWORK=\i2c_slave_top/i2cslave_controller_top/filter_scl_inst/out_n */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/filter.v(51[9:14])
    wire sda_reg__inv /* synthesis is_inv_clock=1 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(159[9:16])
    wire [7:0]data_i;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(188[18:24])
    
    wire start_detect2_i, start_detect3_i, next_state_i_3__N_78, n10356, 
        n9701, n12576, n5125, n5939;
    wire [3:0]count_i;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(199[20:27])
    
    wire n10312, n12597, n12640;
    wire [6:0]n3299;
    
    wire addr_ack1_i, n12609, rw_mode_i, n10948, not_write_ack_i, 
        n12589, write_ack_i, n12587, n12471, n10995, n11903, n10578, 
        out_n_enable_4;
    wire [3:0]next_state_i_3__N_169;
    
    wire stop_detect_i, start_detect_i_N_340, d_ff, n12636, n12635, 
        n11047, sda_wr_data_i, sda_wr_data_i_N_285, n12535, n12532, 
        sda_wr_data_i_N_309, n12534, n12533, reset_bus_i, reset_bus_i_N_353, 
        read_ack1_i, read_ack_i, read_ack2_i, read_ack3_i, addr_ack1_i_N_343, 
        n12472, wr_done_i_N_418, first_read_done, n4762, wr_done_reg1_i, 
        wr_done_i, wr_done_reg2_i, n10007, n12612, n3569, n11865, 
        n11751, n4758, n12531, n11883, n12622, n10903, n389, n9829, 
        n12615, n10604, n12586, n10602, n11305, n12549, n12614, 
        n595, n12643, n5905, n10664, n12580, n12550, out_n_enable_2;
    wire [3:0]n3431;
    
    wire n12616, n11899;
    wire [3:0]n3419;
    wire [3:0]n3407;
    
    wire n3913, n12621, n10353, n12623, n10398, out_n_enable_3, 
        n10669, write_ack_i_N_350, sda_data_i, n4256, n1, n10666, 
        n12629, n12012, n12575, n12551, n12630, n12582, n12599, 
        n10532, out_n_enable_5, n12598, out_n_enable_6, n12557, out_n_enable_7, 
        n12632, n12634, n11870, n12596, n9759, out_n_enable_8, n12555, 
        n12595, out_n_enable_9, n12579, n6119, n12564, n12592, out_n_enable_10, 
        n5972, n10971, sda_wr_data_i_N_306, sda_wr_data_i_N_305, n12556, 
        out_n_enable_12, n11129, n10574, n10576, n12642, n11887, 
        n11711, n11713, n7232, n1_adj_1781, n10436, n11157, out_n_enable_11, 
        n10620, n1_adj_1782, n11091, n10668, n10670, n10667, n10671, 
        n10665;
    
    FD1S3IX data_i__i7 (.D(data_out[7]), .CK(clk_10mhz_c), .CD(\state_1__N_839[0] ), 
            .Q(data_i[7])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=2, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=143 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(651[13:30])
    defparam data_i__i7.GSR = "ENABLED";
    LUT4 addr_i_7__N_588_I_0_206_2_lut_3_lut_4_lut (.A(start_detect2_i), .B(start_detect3_i), 
         .C(addr_start[2]), .D(next_state_i_3__N_78), .Z(addr_i_7__N_622)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C)+!B (C+!(D))))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(259[8] 262[7])
    defparam addr_i_7__N_588_I_0_206_2_lut_3_lut_4_lut.init = 16'h0f04;
    FD1S3IX data_i__i6 (.D(data_out[6]), .CK(clk_10mhz_c), .CD(\state_1__N_839[0] ), 
            .Q(data_i[6])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=2, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=143 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(651[13:30])
    defparam data_i__i6.GSR = "ENABLED";
    FD1S3IX data_i__i5 (.D(data_out[5]), .CK(clk_10mhz_c), .CD(\state_1__N_839[0] ), 
            .Q(data_i[5])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=2, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=143 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(651[13:30])
    defparam data_i__i5.GSR = "ENABLED";
    FD1S3IX data_i__i4 (.D(data_out[4]), .CK(clk_10mhz_c), .CD(\state_1__N_839[0] ), 
            .Q(data_i[4])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=2, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=143 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(651[13:30])
    defparam data_i__i4.GSR = "ENABLED";
    LUT4 addr_i_7__N_588_I_0_198_2_lut_3_lut_4_lut (.A(start_detect2_i), .B(start_detect3_i), 
         .C(addr_start[2]), .D(next_state_i_3__N_78), .Z(addr_i_7__N_594)) /* synthesis lut_function=(A (C (D))+!A (B (C)+!B (C (D)))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(259[8] 262[7])
    defparam addr_i_7__N_588_I_0_198_2_lut_3_lut_4_lut.init = 16'hf040;
    FD1S3IX data_i__i3 (.D(data_out[3]), .CK(clk_10mhz_c), .CD(\state_1__N_839[0] ), 
            .Q(data_i[3])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=2, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=143 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(651[13:30])
    defparam data_i__i3.GSR = "ENABLED";
    FD1S3IX data_i__i2 (.D(data_out[2]), .CK(clk_10mhz_c), .CD(\state_1__N_839[0] ), 
            .Q(data_i[2])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=2, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=143 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(651[13:30])
    defparam data_i__i2.GSR = "ENABLED";
    FD1S3IX data_i__i1 (.D(data_out[1]), .CK(clk_10mhz_c), .CD(\state_1__N_839[0] ), 
            .Q(data_i[1])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=2, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=143 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(651[13:30])
    defparam data_i__i1.GSR = "ENABLED";
    LUT4 addr_i_7__N_588_I_0_203_2_lut_3_lut_4_lut (.A(start_detect2_i), .B(start_detect3_i), 
         .C(addr_start[5]), .D(next_state_i_3__N_78), .Z(addr_i_7__N_613)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C)+!B (C+!(D))))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(259[8] 262[7])
    defparam addr_i_7__N_588_I_0_203_2_lut_3_lut_4_lut.init = 16'h0f04;
    LUT4 addr_i_7__N_588_I_0_194_2_lut_3_lut_4_lut (.A(start_detect2_i), .B(start_detect3_i), 
         .C(addr_start[6]), .D(next_state_i_3__N_78), .Z(addr_i_7__N_590)) /* synthesis lut_function=(A (C (D))+!A (B (C)+!B (C (D)))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(259[8] 262[7])
    defparam addr_i_7__N_588_I_0_194_2_lut_3_lut_4_lut.init = 16'hf040;
    LUT4 addr_i_7__N_588_I_0_202_2_lut_3_lut_4_lut (.A(start_detect2_i), .B(start_detect3_i), 
         .C(addr_start[6]), .D(next_state_i_3__N_78), .Z(addr_i_7__N_610)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C)+!B (C+!(D))))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(259[8] 262[7])
    defparam addr_i_7__N_588_I_0_202_2_lut_3_lut_4_lut.init = 16'h0f04;
    LUT4 addr_i_7__I_0_208_2_lut_3_lut_4_lut (.A(start_detect2_i), .B(start_detect3_i), 
         .C(addr_start[7]), .D(next_state_i_3__N_78), .Z(addr_i_7__N_587)) /* synthesis lut_function=(A (C (D))+!A (B (C)+!B (C (D)))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(259[8] 262[7])
    defparam addr_i_7__I_0_208_2_lut_3_lut_4_lut.init = 16'hf040;
    LUT4 addr_i_7__N_588_I_0_201_2_lut_3_lut_4_lut (.A(start_detect2_i), .B(start_detect3_i), 
         .C(addr_start[7]), .D(next_state_i_3__N_78), .Z(addr_i_7__N_597)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C)+!B (C+!(D))))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(259[8] 262[7])
    defparam addr_i_7__N_588_I_0_201_2_lut_3_lut_4_lut.init = 16'h0f04;
    LUT4 addr_i_7__N_588_I_0_2_lut_3_lut_4_lut (.A(start_detect2_i), .B(start_detect3_i), 
         .C(addr_start[0]), .D(next_state_i_3__N_78), .Z(addr_i_7__N_628)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C)+!B (C+!(D))))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(259[8] 262[7])
    defparam addr_i_7__N_588_I_0_2_lut_3_lut_4_lut.init = 16'h0f04;
    LUT4 n10356_bdd_4_lut (.A(n10356), .B(n9701), .C(n12576), .D(n5125), 
         .Z(n5939)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam n10356_bdd_4_lut.init = 16'h0100;
    LUT4 addr_i_7__N_588_I_0_200_2_lut_3_lut_4_lut (.A(start_detect2_i), .B(start_detect3_i), 
         .C(addr_start[0]), .D(next_state_i_3__N_78), .Z(addr_i_7__N_596)) /* synthesis lut_function=(A (C (D))+!A (B (C)+!B (C (D)))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(259[8] 262[7])
    defparam addr_i_7__N_588_I_0_200_2_lut_3_lut_4_lut.init = 16'hf040;
    LUT4 i1_3_lut_3_lut (.A(count_i[1]), .B(count_i[0]), .C(count_i[2]), 
         .Z(n10312)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(343[25:47])
    defparam i1_3_lut_3_lut.init = 16'h0404;
    LUT4 i1_2_lut_rep_279_2_lut (.A(count_i[1]), .B(count_i[0]), .Z(n12597)) /* synthesis lut_function=((B)+!A) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(343[25:47])
    defparam i1_2_lut_rep_279_2_lut.init = 16'hdddd;
    LUT4 mux_104_i7_3_lut_4_lut (.A(\data_buffer_i[7] ), .B(n12640), .C(\state_1__N_839[0] ), 
         .D(addr_start[6]), .Z(addr_i_7__N_857[6])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(657[21:61])
    defparam mux_104_i7_3_lut_4_lut.init = 16'h8f80;
    LUT4 i1_2_lut_rep_291 (.A(n3299[5]), .B(addr_ack1_i), .Z(n12609)) /* synthesis lut_function=(A (B)) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(336[14] 619[12])
    defparam i1_2_lut_rep_291.init = 16'h8888;
    LUT4 i1_2_lut_3_lut (.A(n3299[5]), .B(addr_ack1_i), .C(rw_mode_i), 
         .Z(n10948)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(336[14] 619[12])
    defparam i1_2_lut_3_lut.init = 16'h0808;
    LUT4 mux_104_i6_3_lut_4_lut (.A(\data_buffer_i[6] ), .B(n12640), .C(\state_1__N_839[0] ), 
         .D(addr_start[5]), .Z(addr_i_7__N_857[5])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(657[21:61])
    defparam mux_104_i6_3_lut_4_lut.init = 16'h8f80;
    LUT4 mux_104_i5_3_lut_4_lut (.A(\data_buffer_i[5] ), .B(n12640), .C(\state_1__N_839[0] ), 
         .D(addr_start[4]), .Z(addr_i_7__N_857[4])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(657[21:61])
    defparam mux_104_i5_3_lut_4_lut.init = 16'h8f80;
    LUT4 mux_104_i4_3_lut_4_lut (.A(n12640), .B(\data_buffer_i[4] ), .C(\state_1__N_839[0] ), 
         .D(addr_start[3]), .Z(addr_i_7__N_857[3])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(681[27:57])
    defparam mux_104_i4_3_lut_4_lut.init = 16'h8f80;
    FD1S3IX data_i__i0 (.D(data_out[0]), .CK(clk_10mhz_c), .CD(\state_1__N_839[0] ), 
            .Q(data_i[0])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=2, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=143 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(651[13:30])
    defparam data_i__i0.GSR = "ENABLED";
    LUT4 mux_104_i3_3_lut_4_lut (.A(n12640), .B(\data_buffer_i[3] ), .C(\state_1__N_839[0] ), 
         .D(addr_start[2]), .Z(addr_i_7__N_857[2])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(681[27:57])
    defparam mux_104_i3_3_lut_4_lut.init = 16'h8f80;
    LUT4 not_write_ack_i_bdd_4_lut (.A(not_write_ack_i), .B(n12589), .C(write_ack_i), 
         .D(n12587), .Z(n12471)) /* synthesis lut_function=(A+!((C+(D))+!B)) */ ;
    defparam not_write_ack_i_bdd_4_lut.init = 16'haaae;
    LUT4 i29_4_lut (.A(n10995), .B(n11903), .C(n12587), .D(n10578), 
         .Z(out_n_enable_4)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C)+!B !((D)+!C))) */ ;
    defparam i29_4_lut.init = 16'hcafa;
    LUT4 mux_104_i2_3_lut_4_lut (.A(n12640), .B(\data_buffer_i[2] ), .C(\state_1__N_839[0] ), 
         .D(addr_start[1]), .Z(addr_i_7__N_857[1])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(681[27:57])
    defparam mux_104_i2_3_lut_4_lut.init = 16'h8f80;
    FD1S3AX start_detect2_i_750 (.D(next_state_i_3__N_169[0]), .CK(clk_10mhz_c), 
            .Q(start_detect2_i)) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=2, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=143 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(259[8] 262[7])
    defparam start_detect2_i_750.GSR = "ENABLED";
    FD1S3AX start_detect3_i_751 (.D(start_detect2_i), .CK(clk_10mhz_c), 
            .Q(start_detect3_i)) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=2, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=143 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(259[8] 262[7])
    defparam start_detect3_i_751.GSR = "ENABLED";
    FD1S3DX stop_detect_i_752 (.D(out_n__inv), .CK(sda_reg), .CD(start_detect_i_N_340), 
            .Q(stop_detect_i)) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=2, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=143 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(273[14] 278[5])
    defparam stop_detect_i_752.GSR = "DISABLED";
    FD1S3AX d_ff_753 (.D(stop_detect_i), .CK(clk_10mhz_c), .Q(d_ff)) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=2, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=143 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(301[4:26])
    defparam d_ff_753.GSR = "ENABLED";
    LUT4 i1_3_lut_4_lut (.A(n12636), .B(n12635), .C(n10356), .D(n12576), 
         .Z(n11047)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(408[56:67])
    defparam i1_3_lut_4_lut.init = 16'h0100;
    FD1S3BX sda_wr_data_i_756 (.D(sda_wr_data_i_N_285), .CK(out_n), .PD(next_state_i_3__N_78), 
            .Q(sda_wr_data_i)) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=2, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=143 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(336[14] 619[12])
    defparam sda_wr_data_i_756.GSR = "DISABLED";
    L6MUX21 i9679 (.D0(n12535), .D1(n12532), .SD(count_i[1]), .Z(sda_wr_data_i_N_309));
    PFUMX i9677 (.BLUT(n12534), .ALUT(n12533), .C0(count_i[2]), .Z(n12535));
    FD1S3DX reset_bus_i_758 (.D(reset_bus_i_N_353), .CK(out_n), .CD(next_state_i_3__N_78), 
            .Q(reset_bus_i)) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=2, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=143 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(336[14] 619[12])
    defparam reset_bus_i_758.GSR = "DISABLED";
    FD1S3AX read_ack1_i_765 (.D(read_ack_i), .CK(out_n__inv), .Q(read_ack1_i)) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=2, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=143 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(667[13:39])
    defparam read_ack1_i_765.GSR = "ENABLED";
    FD1S3AX read_ack2_i_766 (.D(read_ack1_i), .CK(clk_10mhz_c), .Q(read_ack2_i)) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=2, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=143 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(673[13:40])
    defparam read_ack2_i_766.GSR = "ENABLED";
    FD1S3AX read_ack3_i_767 (.D(read_ack2_i), .CK(clk_10mhz_c), .Q(read_ack3_i)) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=2, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=143 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(679[13:40])
    defparam read_ack3_i_767.GSR = "ENABLED";
    FD1S3AX addr_ack1_i_768 (.D(addr_ack1_i_N_343), .CK(out_n__inv), .Q(addr_ack1_i)) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=2, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=143 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(693[14] 735[12])
    defparam addr_ack1_i_768.GSR = "ENABLED";
    LUT4 spare_led2_n_c_bdd_2_lut_9691 (.A(n12471), .B(n3299[0]), .Z(n12472)) /* synthesis lut_function=(A (B)) */ ;
    defparam spare_led2_n_c_bdd_2_lut_9691.init = 16'h8888;
    FD1S3AX o_tx_status_780 (.D(n3299[1]), .CK(out_n__inv), .Q(\state_1__N_839[0] )) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=2, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=143 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(826[13] 845[20])
    defparam o_tx_status_780.GSR = "ENABLED";
    LUT4 i9485_4_lut (.A(write_ack_i), .B(wr_done_i_N_418), .C(first_read_done), 
         .D(n3299[0]), .Z(n4762)) /* synthesis lut_function=(!(A (B+(C (D)))+!A (B))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(929[10] 936[24])
    defparam i9485_4_lut.init = 16'h1333;
    FD1S3AX wr_done_reg1_i_789 (.D(wr_done_i), .CK(clk_10mhz_c), .Q(wr_done_reg1_i)) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=2, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=143 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(944[14] 946[50])
    defparam wr_done_reg1_i_789.GSR = "ENABLED";
    FD1S3AX wr_done_reg2_i_790 (.D(wr_done_reg1_i), .CK(clk_10mhz_c), .Q(wr_done_reg2_i)) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=2, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=143 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(944[14] 946[50])
    defparam wr_done_reg2_i_790.GSR = "ENABLED";
    FD1S3DX next_state_i_FSM_i1 (.D(n10007), .CK(out_n), .CD(next_state_i_3__N_78), 
            .Q(n3299[0]));   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(338[13] 618[20])
    defparam next_state_i_FSM_i1.GSR = "DISABLED";
    FD1S3DX start_detect_i_747 (.D(out_n__inv), .CK(sda_reg__inv), .CD(start_detect_i_N_340), 
            .Q(next_state_i_3__N_169[0])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=2, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=143 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(241[14] 246[5])
    defparam start_detect_i_747.GSR = "DISABLED";
    FD1S3AY sda_reg_749 (.D(i_sda), .CK(clk_10mhz_c), .Q(sda_reg)) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=2, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=143 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(252[4:21])
    defparam sda_reg_749.GSR = "ENABLED";
    LUT4 i2008_3_lut_rep_294 (.A(not_write_ack_i), .B(stop_detect_i), .C(n3299[1]), 
         .Z(n12612)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(338[13] 618[20])
    defparam i2008_3_lut_rep_294.init = 16'hcaca;
    LUT4 i9183_2_lut_4_lut (.A(not_write_ack_i), .B(stop_detect_i), .C(n3299[1]), 
         .D(n3569), .Z(n11865)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C+(D))+!B (D))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(338[13] 618[20])
    defparam i9183_2_lut_4_lut.init = 16'hffca;
    LUT4 i2149_4_lut (.A(n11751), .B(n10948), .C(read_ack_i), .D(n12587), 
         .Z(n4758)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B)) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(338[13] 618[20])
    defparam i2149_4_lut.init = 16'heeec;
    LUT4 data_i_4__bdd_3_lut (.A(data_i[4]), .B(data_i[5]), .C(count_i[0]), 
         .Z(n12531)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam data_i_4__bdd_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut (.A(next_state_i_3__N_169[0]), .B(n12587), .C(n11883), 
         .D(n12622), .Z(n10903)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(338[13] 618[20])
    defparam i1_4_lut.init = 16'heca0;
    LUT4 i1_4_lut_adj_247 (.A(n389), .B(n12472), .C(n9829), .D(n12615), 
         .Z(n10604)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(338[13] 618[20])
    defparam i1_4_lut_adj_247.init = 16'hfffe;
    LUT4 mux_104_i8_3_lut_4_lut (.A(n12640), .B(\data_buffer_i[8] ), .C(\state_1__N_839[0] ), 
         .D(addr_start[7]), .Z(addr_i_7__N_857[7])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(681[27:57])
    defparam mux_104_i8_3_lut_4_lut.init = 16'h8f80;
    LUT4 i1_4_lut_4_lut (.A(n10312), .B(n12586), .C(n12587), .D(n12589), 
         .Z(n10602)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_4_lut_4_lut.init = 16'h2000;
    LUT4 i160_4_lut (.A(n11305), .B(n3299[1]), .C(stop_detect_i), .D(n12549), 
         .Z(n389)) /* synthesis lut_function=(A (B (C))+!A (B (C+!(D)))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(338[13] 618[20])
    defparam i160_4_lut.init = 16'hc0c4;
    LUT4 i1337_2_lut_rep_296 (.A(n3299[1]), .B(stop_detect_i), .Z(n12614)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(338[13] 618[20])
    defparam i1337_2_lut_rep_296.init = 16'h2222;
    LUT4 i1_3_lut_4_lut_adj_248 (.A(n3299[1]), .B(stop_detect_i), .C(next_state_i_3__N_78), 
         .D(n595), .Z(n10356)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(338[13] 618[20])
    defparam i1_3_lut_4_lut_adj_248.init = 16'h0200;
    LUT4 i1_2_lut_3_lut_adj_249 (.A(n3299[1]), .B(stop_detect_i), .C(n3299[6]), 
         .Z(n11883)) /* synthesis lut_function=(A ((C)+!B)+!A (C)) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(338[13] 618[20])
    defparam i1_2_lut_3_lut_adj_249.init = 16'hf2f2;
    LUT4 i1_3_lut_4_lut_adj_250 (.A(n12643), .B(n12597), .C(sda_reg), 
         .D(n5905), .Z(n10664)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(343[25:47])
    defparam i1_3_lut_4_lut_adj_250.init = 16'h1000;
    LUT4 i1356_3_lut_rep_262_3_lut (.A(n3299[6]), .B(addr_ack1_i), .C(next_state_i_3__N_169[0]), 
         .Z(n12580)) /* synthesis lut_function=(A (C)+!A (B)) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(338[13] 618[20])
    defparam i1356_3_lut_rep_262_3_lut.init = 16'he4e4;
    LUT4 i1_3_lut_3_lut_adj_251 (.A(n3299[6]), .B(addr_ack1_i), .C(n3299[5]), 
         .Z(n10995)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(338[13] 618[20])
    defparam i1_3_lut_3_lut_adj_251.init = 16'hefef;
    LUT4 i2157_2_lut_rep_297 (.A(next_state_i_3__N_169[0]), .B(n3299[6]), 
         .Z(n12615)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(338[13] 618[20])
    defparam i2157_2_lut_rep_297.init = 16'h4444;
    LUT4 i9534_2_lut_rep_232_4_lut_4_lut_2_lut (.A(n3299[6]), .B(addr_ack1_i), 
         .Z(n12550)) /* synthesis lut_function=(!(A+(B))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(338[13] 618[20])
    defparam i9534_2_lut_rep_232_4_lut_4_lut_2_lut.init = 16'h1111;
    FD1P3DX count_i_i0_i2 (.D(n3431[2]), .SP(out_n_enable_2), .CK(out_n), 
            .CD(next_state_i_3__N_78), .Q(count_i[2])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=2, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=143 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(336[14] 619[12])
    defparam count_i_i0_i2.GSR = "DISABLED";
    FD1P3DX count_i_i0_i1 (.D(n3431[1]), .SP(out_n_enable_2), .CK(out_n), 
            .CD(next_state_i_3__N_78), .Q(count_i[1])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=2, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=143 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(336[14] 619[12])
    defparam count_i_i0_i1.GSR = "DISABLED";
    LUT4 i1220_2_lut_rep_298 (.A(n3299[5]), .B(n3299[6]), .Z(n12616)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1220_2_lut_rep_298.init = 16'heeee;
    LUT4 i9209_2_lut_3_lut_4_lut (.A(n3299[5]), .B(n3299[6]), .C(stop_detect_i), 
         .D(n3299[1]), .Z(n11899)) /* synthesis lut_function=(A+(B+!(C+!(D)))) */ ;
    defparam i9209_2_lut_3_lut_4_lut.init = 16'hefee;
    LUT4 i9612_3_lut_4_lut (.A(n3299[5]), .B(n3299[6]), .C(n3419[3]), 
         .D(n3407[3]), .Z(n3431[3])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam i9612_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i1_2_lut_2_lut (.A(sda_reg), .B(reset_n), .Z(n3913)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(707[72:89])
    defparam i1_2_lut_2_lut.init = 16'h4444;
    LUT4 i1_2_lut_rep_303 (.A(next_state_i_3__N_169[0]), .B(stop_detect_i), 
         .Z(n12621)) /* synthesis lut_function=(A+(B)) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(338[13] 618[20])
    defparam i1_2_lut_rep_303.init = 16'heeee;
    LUT4 i1_2_lut_3_lut_4_lut (.A(next_state_i_3__N_169[0]), .B(stop_detect_i), 
         .C(n12635), .D(n12636), .Z(n11305)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(338[13] 618[20])
    defparam i1_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_3_lut_4_lut_adj_252 (.A(n12587), .B(n12576), .C(n10356), .D(n9701), 
         .Z(n5905)) /* synthesis lut_function=(A (B+(C+(D)))+!A (C+(D))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(336[14] 619[12])
    defparam i1_3_lut_4_lut_adj_252.init = 16'hfff8;
    LUT4 i1_2_lut_3_lut_adj_253 (.A(next_state_i_3__N_169[0]), .B(stop_detect_i), 
         .C(n3299[1]), .Z(n11751)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(338[13] 618[20])
    defparam i1_2_lut_3_lut_adj_253.init = 16'h1010;
    LUT4 i1_2_lut_rep_304 (.A(n3299[5]), .B(addr_ack1_i), .Z(n12622)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_rep_304.init = 16'h2222;
    LUT4 i1_2_lut_3_lut_adj_254 (.A(n3299[5]), .B(addr_ack1_i), .C(reset_bus_i), 
         .Z(n10353)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_254.init = 16'h2020;
    LUT4 i1_2_lut_2_lut_3_lut_4_lut (.A(n3299[5]), .B(addr_ack1_i), .C(n12635), 
         .D(n12636), .Z(n9829)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i1_2_lut_2_lut_3_lut_4_lut.init = 16'h0002;
    LUT4 i1_2_lut_rep_305 (.A(n3299[0]), .B(not_write_ack_i), .Z(n12623)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(338[13] 618[20])
    defparam i1_2_lut_rep_305.init = 16'h2222;
    LUT4 i1_2_lut_3_lut_adj_255 (.A(n3299[0]), .B(not_write_ack_i), .C(reset_bus_i), 
         .Z(n10398)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(338[13] 618[20])
    defparam i1_2_lut_3_lut_adj_255.init = 16'h2020;
    INV i9859 (.A(sda_reg), .Z(sda_reg__inv));
    LUT4 i1_2_lut_rep_289 (.A(start_detect2_i), .B(start_detect3_i), .Z(n12607)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(259[8] 262[7])
    defparam i1_2_lut_rep_289.init = 16'h4444;
    FD1P3AX data_buffer_i_i0_i1 (.D(n10669), .SP(out_n_enable_3), .CK(out_n), 
            .Q(\data_buffer_i[1] )) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=2, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=143 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(336[14] 619[12])
    defparam data_buffer_i_i0_i1.GSR = "DISABLED";
    FD1P3IX not_write_ack_i_772 (.D(write_ack_i_N_350), .SP(reset_n), .CD(n3913), 
            .CK(out_n__inv), .Q(not_write_ack_i)) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=2, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=143 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(693[14] 735[12])
    defparam not_write_ack_i_772.GSR = "DISABLED";
    LUT4 addr_i_7__N_588_I_0_207_2_lut_3_lut_4_lut (.A(start_detect2_i), .B(start_detect3_i), 
         .C(addr_start[1]), .D(next_state_i_3__N_78), .Z(addr_i_7__N_625)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C)+!B (C+!(D))))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(259[8] 262[7])
    defparam addr_i_7__N_588_I_0_207_2_lut_3_lut_4_lut.init = 16'h0f04;
    LUT4 i1_2_lut_rep_255_3_lut (.A(start_detect2_i), .B(start_detect3_i), 
         .C(next_state_i_3__N_78), .Z(n12573)) /* synthesis lut_function=(A (C)+!A (B+(C))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(259[8] 262[7])
    defparam i1_2_lut_rep_255_3_lut.init = 16'hf4f4;
    LUT4 i5443_3_lut_4_lut_4_lut (.A(n12587), .B(count_i[0]), .C(n12580), 
         .D(n12615), .Z(n3419[0])) /* synthesis lut_function=(!(A (B+(C+(D)))+!A ((C+(D))+!B))) */ ;
    defparam i5443_3_lut_4_lut_4_lut.init = 16'h0006;
    LUT4 addr_i_7__N_588_I_0_199_2_lut_3_lut_4_lut (.A(start_detect2_i), .B(start_detect3_i), 
         .C(addr_start[1]), .D(next_state_i_3__N_78), .Z(addr_i_7__N_595)) /* synthesis lut_function=(A (C (D))+!A (B (C)+!B (C (D)))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(259[8] 262[7])
    defparam addr_i_7__N_588_I_0_199_2_lut_3_lut_4_lut.init = 16'hf040;
    FD1S3IX read_ack_i_769 (.D(n3299[1]), .CK(out_n__inv), .CD(n12587), 
            .Q(read_ack_i)) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=2, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=143 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(693[14] 735[12])
    defparam read_ack_i_769.GSR = "ENABLED";
    LUT4 addr_i_7__N_588_I_0_195_2_lut_3_lut_4_lut (.A(start_detect2_i), .B(start_detect3_i), 
         .C(addr_start[5]), .D(next_state_i_3__N_78), .Z(addr_i_7__N_591)) /* synthesis lut_function=(A (C (D))+!A (B (C)+!B (C (D)))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(259[8] 262[7])
    defparam addr_i_7__N_588_I_0_195_2_lut_3_lut_4_lut.init = 16'hf040;
    LUT4 addr_i_7__N_588_I_0_204_2_lut_3_lut_4_lut (.A(start_detect2_i), .B(start_detect3_i), 
         .C(addr_start[4]), .D(next_state_i_3__N_78), .Z(addr_i_7__N_616)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C)+!B (C+!(D))))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(259[8] 262[7])
    defparam addr_i_7__N_588_I_0_204_2_lut_3_lut_4_lut.init = 16'h0f04;
    FD1S3IX write_ack_i_770 (.D(write_ack_i_N_350), .CK(out_n__inv), .CD(sda_reg), 
            .Q(write_ack_i)) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=2, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=143 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(693[14] 735[12])
    defparam write_ack_i_770.GSR = "ENABLED";
    LUT4 addr_i_7__N_588_I_0_196_2_lut_3_lut_4_lut (.A(start_detect2_i), .B(start_detect3_i), 
         .C(addr_start[4]), .D(next_state_i_3__N_78), .Z(addr_i_7__N_592)) /* synthesis lut_function=(A (C (D))+!A (B (C)+!B (C (D)))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(259[8] 262[7])
    defparam addr_i_7__N_588_I_0_196_2_lut_3_lut_4_lut.init = 16'hf040;
    FD1S3AY sda_data_i_777 (.D(n4256), .CK(out_n), .Q(sda_data_i)) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=2, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=143 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(755[13] 791[36])
    defparam sda_data_i_777.GSR = "ENABLED";
    LUT4 addr_i_7__N_588_I_0_205_2_lut_3_lut_4_lut (.A(start_detect2_i), .B(start_detect3_i), 
         .C(addr_start[3]), .D(next_state_i_3__N_78), .Z(addr_i_7__N_619)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C)+!B (C+!(D))))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(259[8] 262[7])
    defparam addr_i_7__N_588_I_0_205_2_lut_3_lut_4_lut.init = 16'h0f04;
    LUT4 addr_i_7__N_588_I_0_197_2_lut_3_lut_4_lut (.A(start_detect2_i), .B(start_detect3_i), 
         .C(addr_start[3]), .D(next_state_i_3__N_78), .Z(addr_i_7__N_593)) /* synthesis lut_function=(A (C (D))+!A (B (C)+!B (C (D)))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(259[8] 262[7])
    defparam addr_i_7__N_588_I_0_197_2_lut_3_lut_4_lut.init = 16'hf040;
    PFUMX i9675 (.BLUT(n1), .ALUT(n12531), .C0(count_i[2]), .Z(n12532));
    LUT4 i1_3_lut_4_lut_adj_256 (.A(n12635), .B(n12597), .C(sda_reg), 
         .D(n5905), .Z(n10666)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(343[25:47])
    defparam i1_3_lut_4_lut_adj_256.init = 16'h1000;
    FD1P3AX first_read_done_788 (.D(n12948), .SP(wr_done_i_N_418), .CK(clk_10mhz_c), 
            .Q(first_read_done)) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=2, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=143 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(924[4] 937[7])
    defparam first_read_done_788.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_311 (.A(count_i[1]), .B(count_i[0]), .Z(n12629)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(568[30:45])
    defparam i1_2_lut_rep_311.init = 16'hbbbb;
    FD1P3AX rw_mode_i_771 (.D(n12012), .SP(n3299[5]), .CK(out_n__inv), 
            .Q(rw_mode_i)) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=2, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=143 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(693[14] 735[12])
    defparam rw_mode_i_771.GSR = "ENABLED";
    LUT4 i1_3_lut_rep_257 (.A(next_state_i_3__N_78), .B(n3299[6]), .C(next_state_i_3__N_169[0]), 
         .Z(n12575)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i1_3_lut_rep_257.init = 16'h4040;
    LUT4 i2_3_lut_4_lut (.A(next_state_i_3__N_78), .B(n3299[6]), .C(next_state_i_3__N_169[0]), 
         .D(n12622), .Z(n9701)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;
    defparam i2_3_lut_4_lut.init = 16'h0040;
    LUT4 i1_2_lut_rep_233_3_lut_4_lut (.A(count_i[1]), .B(count_i[0]), .C(write_ack_i), 
         .D(n12635), .Z(n12551)) /* synthesis lut_function=(!(A (C)+!A (B (C+!(D))+!B (C)))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(568[30:45])
    defparam i1_2_lut_rep_233_3_lut_4_lut.init = 16'h0f0b;
    LUT4 i1_2_lut_rep_312 (.A(addr_ack1_i), .B(rw_mode_i), .Z(n12630)) /* synthesis lut_function=(A (B)) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(338[13] 618[20])
    defparam i1_2_lut_rep_312.init = 16'h8888;
    LUT4 i1_2_lut_rep_264_3_lut (.A(addr_ack1_i), .B(rw_mode_i), .C(n3299[5]), 
         .Z(n12582)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(338[13] 618[20])
    defparam i1_2_lut_rep_264_3_lut.init = 16'h8080;
    LUT4 i9579_4_lut (.A(n12599), .B(n10532), .C(n5939), .D(n5905), 
         .Z(out_n_enable_5)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B+(C)))) */ ;
    defparam i9579_4_lut.init = 16'h0103;
    LUT4 i1_2_lut_3_lut_3_lut_4_lut (.A(addr_ack1_i), .B(rw_mode_i), .C(n3299[5]), 
         .D(out_n), .Z(wr_done_i_N_418)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(338[13] 618[20])
    defparam i1_2_lut_3_lut_3_lut_4_lut.init = 16'h0080;
    LUT4 i9576_4_lut (.A(n12598), .B(n10532), .C(n5939), .D(n5905), 
         .Z(out_n_enable_6)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B+(C)))) */ ;
    defparam i9576_4_lut.init = 16'h0103;
    LUT4 i9573_4_lut (.A(n12557), .B(n10532), .C(n5939), .D(n5905), 
         .Z(out_n_enable_7)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B+(C)))) */ ;
    defparam i9573_4_lut.init = 16'h0103;
    LUT4 i1_2_lut_rep_314 (.A(n3299[1]), .B(n3299[6]), .Z(n12632)) /* synthesis lut_function=(A+(B)) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(338[13] 618[20])
    defparam i1_2_lut_rep_314.init = 16'heeee;
    LUT4 i9213_3_lut_4_lut (.A(n3299[1]), .B(n3299[6]), .C(n3299[5]), 
         .D(not_write_ack_i), .Z(n11903)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(338[13] 618[20])
    defparam i9213_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_3_lut_rep_316 (.A(count_i[1]), .B(count_i[0]), .C(count_i[2]), 
         .Z(n12634)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(408[56:67])
    defparam i1_3_lut_rep_316.init = 16'hfefe;
    LUT4 i25_2_lut_rep_268_4_lut (.A(count_i[1]), .B(count_i[0]), .C(count_i[2]), 
         .D(count_i[3]), .Z(n12586)) /* synthesis lut_function=(!(A (D)+!A (B (D)+!B (C (D)+!C !(D))))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(408[56:67])
    defparam i25_2_lut_rep_268_4_lut.init = 16'h01fe;
    LUT4 i1_3_lut_rep_258 (.A(n3299[5]), .B(addr_ack1_i), .C(next_state_i_3__N_78), 
         .Z(n12576)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;
    defparam i1_3_lut_rep_258.init = 16'h0202;
    LUT4 i2_2_lut_rep_281_4_lut (.A(count_i[1]), .B(count_i[0]), .C(count_i[2]), 
         .D(count_i[3]), .Z(n12599)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(408[56:67])
    defparam i2_2_lut_rep_281_4_lut.init = 16'hfeff;
    LUT4 equal_52_i6_2_lut_rep_317 (.A(count_i[2]), .B(count_i[3]), .Z(n12635)) /* synthesis lut_function=(A+(B)) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(343[25:47])
    defparam equal_52_i6_2_lut_rep_317.init = 16'heeee;
    LUT4 i1_2_lut_rep_271_3_lut_4_lut (.A(count_i[2]), .B(count_i[3]), .C(count_i[0]), 
         .D(count_i[1]), .Z(n12589)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(343[25:47])
    defparam i1_2_lut_rep_271_3_lut_4_lut.init = 16'hffef;
    LUT4 i1_2_lut_rep_231_3_lut_4_lut (.A(count_i[2]), .B(count_i[3]), .C(read_ack_i), 
         .D(n12636), .Z(n12549)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(343[25:47])
    defparam i1_2_lut_rep_231_3_lut_4_lut.init = 16'h0010;
    LUT4 i9186_2_lut_3_lut (.A(count_i[2]), .B(count_i[3]), .C(count_i[1]), 
         .Z(n11870)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(343[25:47])
    defparam i9186_2_lut_3_lut.init = 16'hfefe;
    LUT4 count_i_3__N_134_I_0_859_2_lut_3_lut_4_lut (.A(count_i[2]), .B(count_i[3]), 
         .C(n3299[0]), .D(n12636), .Z(write_ack_i_N_350)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(343[25:47])
    defparam count_i_3__N_134_I_0_859_2_lut_3_lut_4_lut.init = 16'h0010;
    LUT4 i9570_4_lut (.A(n12596), .B(n10532), .C(n9759), .D(n5905), 
         .Z(out_n_enable_8)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A (B+!(C)))) */ ;
    defparam i9570_4_lut.init = 16'h1030;
    LUT4 i1_2_lut_rep_237_3_lut_3_lut_4_lut (.A(count_i[2]), .B(count_i[3]), 
         .C(count_i[0]), .D(count_i[1]), .Z(n12555)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(343[25:47])
    defparam i1_2_lut_rep_237_3_lut_3_lut_4_lut.init = 16'hfeff;
    LUT4 i1_2_lut_rep_318 (.A(count_i[0]), .B(count_i[1]), .Z(n12636)) /* synthesis lut_function=(A+(B)) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(408[56:67])
    defparam i1_2_lut_rep_318.init = 16'heeee;
    LUT4 i9567_4_lut (.A(n12595), .B(n10532), .C(n9759), .D(n5905), 
         .Z(out_n_enable_9)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A (B+!(C)))) */ ;
    defparam i9567_4_lut.init = 16'h1030;
    LUT4 i1_2_lut_rep_269_3_lut_4_lut (.A(count_i[0]), .B(count_i[1]), .C(count_i[3]), 
         .D(count_i[2]), .Z(n12587)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(408[56:67])
    defparam i1_2_lut_rep_269_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_261_3_lut (.A(count_i[0]), .B(count_i[1]), .C(read_ack_i), 
         .Z(n12579)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(408[56:67])
    defparam i1_2_lut_rep_261_3_lut.init = 16'h1010;
    LUT4 i5416_3_lut_4_lut (.A(count_i[0]), .B(count_i[1]), .C(n6119), 
         .D(count_i[2]), .Z(n3431[2])) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B !((D)+!C))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(408[56:67])
    defparam i5416_3_lut_4_lut.init = 16'he010;
    LUT4 i9202_1_lut_rep_246_2_lut_3_lut_4_lut (.A(count_i[0]), .B(count_i[1]), 
         .C(count_i[3]), .D(count_i[2]), .Z(n12564)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(408[56:67])
    defparam i9202_1_lut_rep_246_2_lut_3_lut_4_lut.init = 16'h0001;
    LUT4 i9564_4_lut (.A(n12592), .B(n10532), .C(n9759), .D(n5905), 
         .Z(out_n_enable_10)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A (B+!(C)))) */ ;
    defparam i9564_4_lut.init = 16'h1030;
    LUT4 i1_4_lut_adj_257 (.A(n3569), .B(n5972), .C(n12612), .D(count_i[0]), 
         .Z(n10971)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i1_4_lut_adj_257.init = 16'h0004;
    FD1P3DX count_i_i0_i3 (.D(n3431[3]), .SP(out_n_enable_4), .CK(out_n), 
            .CD(next_state_i_3__N_78), .Q(count_i[3])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=2, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=143 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(336[14] 619[12])
    defparam count_i_i0_i3.GSR = "DISABLED";
    FD1S3IX wr_done_i_787 (.D(n12564), .CK(clk_10mhz_c), .CD(n4762), .Q(wr_done_i)) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=2, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=143 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(924[4] 937[7])
    defparam wr_done_i_787.GSR = "ENABLED";
    LUT4 sda_wr_data_i_I_28_4_lut (.A(sda_wr_data_i_N_306), .B(data_i[7]), 
         .C(n10602), .D(write_ack_i), .Z(sda_wr_data_i_N_305)) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B (C+(D)))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(568[26] 589[65])
    defparam sda_wr_data_i_I_28_4_lut.init = 16'hccca;
    LUT4 i1_4_lut_adj_258 (.A(sda_wr_data_i_N_309), .B(n12589), .C(n12556), 
         .D(n12587), .Z(sda_wr_data_i_N_306)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;
    defparam i1_4_lut_adj_258.init = 16'hfbff;
    LUT4 i1_3_lut_4_lut_adj_259 (.A(n12636), .B(read_ack_i), .C(n12575), 
         .D(n12635), .Z(n5125)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i1_3_lut_4_lut_adj_259.init = 16'h0004;
    FD1S3DX next_state_i_FSM_i2 (.D(n4758), .CK(out_n), .CD(next_state_i_3__N_78), 
            .Q(n3299[1]));   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(338[13] 618[20])
    defparam next_state_i_FSM_i2.GSR = "DISABLED";
    FD1S3DX next_state_i_FSM_i5 (.D(n10903), .CK(out_n), .CD(next_state_i_3__N_78), 
            .Q(n3299[5]));   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(338[13] 618[20])
    defparam next_state_i_FSM_i5.GSR = "DISABLED";
    FD1S3BX next_state_i_FSM_i6 (.D(n10604), .CK(out_n), .PD(next_state_i_3__N_78), 
            .Q(n3299[6]));   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(338[13] 618[20])
    defparam next_state_i_FSM_i6.GSR = "DISABLED";
    LUT4 i9561_4_lut (.A(n12555), .B(n10532), .C(n9759), .D(n5905), 
         .Z(out_n_enable_12)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A (B+!(C)))) */ ;
    defparam i9561_4_lut.init = 16'h1030;
    LUT4 o_data_valid_I_0_2_lut_rep_322 (.A(read_ack3_i), .B(read_ack2_i), 
         .Z(n12640)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(681[27:57])
    defparam o_data_valid_I_0_2_lut_rep_322.init = 16'h4444;
    LUT4 i1_3_lut_4_lut_adj_260 (.A(read_ack3_i), .B(read_ack2_i), .C(n12641), 
         .D(n11555), .Z(n11559)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(681[27:57])
    defparam i1_3_lut_4_lut_adj_260.init = 16'h4000;
    LUT4 i1_3_lut_4_lut_adj_261 (.A(read_ack3_i), .B(read_ack2_i), .C(n11569), 
         .D(n12639), .Z(n11489)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(681[27:57])
    defparam i1_3_lut_4_lut_adj_261.init = 16'h0040;
    LUT4 i1_3_lut_4_lut_adj_262 (.A(read_ack3_i), .B(read_ack2_i), .C(n11541), 
         .D(n12639), .Z(n11405)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(681[27:57])
    defparam i1_3_lut_4_lut_adj_262.init = 16'h0040;
    LUT4 i1_3_lut_rep_275_4_lut (.A(read_ack3_i), .B(read_ack2_i), .C(wr_done_reg1_i), 
         .D(wr_done_reg2_i), .Z(n12593)) /* synthesis lut_function=(!(A ((D)+!C)+!A !(B+!((D)+!C)))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(681[27:57])
    defparam i1_3_lut_rep_275_4_lut.init = 16'h44f4;
    LUT4 i1_3_lut_4_lut_adj_263 (.A(read_ack3_i), .B(read_ack2_i), .C(n12641), 
         .D(n11513), .Z(n11433)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(681[27:57])
    defparam i1_3_lut_4_lut_adj_263.init = 16'h4000;
    LUT4 i1_3_lut_4_lut_adj_264 (.A(read_ack3_i), .B(read_ack2_i), .C(n12641), 
         .D(n11569), .Z(n11573)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(681[27:57])
    defparam i1_3_lut_4_lut_adj_264.init = 16'h4000;
    LUT4 i1_2_lut_rep_276_3_lut (.A(read_ack3_i), .B(read_ack2_i), .C(\data_buffer_i[1] ), 
         .Z(n12594)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(681[27:57])
    defparam i1_2_lut_rep_276_3_lut.init = 16'h4040;
    LUT4 i1_3_lut_4_lut_adj_265 (.A(read_ack3_i), .B(read_ack2_i), .C(n12641), 
         .D(n11443), .Z(n11587)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(681[27:57])
    defparam i1_3_lut_4_lut_adj_265.init = 16'h4000;
    PFUMX mux_1222_i1 (.BLUT(n10971), .ALUT(n3419[0]), .C0(n12616), .Z(n3431[0]));
    LUT4 i1_3_lut_4_lut_adj_266 (.A(read_ack3_i), .B(read_ack2_i), .C(n11513), 
         .D(n12639), .Z(n11517)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(681[27:57])
    defparam i1_3_lut_4_lut_adj_266.init = 16'h0040;
    LUT4 i1_3_lut_4_lut_adj_267 (.A(read_ack3_i), .B(read_ack2_i), .C(n11527), 
         .D(n12639), .Z(n11601)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(681[27:57])
    defparam i1_3_lut_4_lut_adj_267.init = 16'h0040;
    LUT4 i1_3_lut_4_lut_adj_268 (.A(read_ack3_i), .B(read_ack2_i), .C(n11415), 
         .D(n12639), .Z(n11391)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(681[27:57])
    defparam i1_3_lut_4_lut_adj_268.init = 16'h0040;
    LUT4 i1_3_lut_4_lut_adj_269 (.A(read_ack3_i), .B(read_ack2_i), .C(n11555), 
         .D(n12639), .Z(n11503)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(681[27:57])
    defparam i1_3_lut_4_lut_adj_269.init = 16'h0040;
    LUT4 i1_2_lut_rep_252_3_lut (.A(read_ack3_i), .B(read_ack2_i), .C(\data_buffer_i[3] ), 
         .Z(n12570)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(681[27:57])
    defparam i1_2_lut_rep_252_3_lut.init = 16'h4040;
    LUT4 i1_2_lut_rep_253_3_lut (.A(read_ack3_i), .B(read_ack2_i), .C(\data_buffer_i[2] ), 
         .Z(n12571)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(681[27:57])
    defparam i1_2_lut_rep_253_3_lut.init = 16'h4040;
    LUT4 i1_3_lut_4_lut_adj_270 (.A(read_ack3_i), .B(read_ack2_i), .C(n12641), 
         .D(n11541), .Z(n11545)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(681[27:57])
    defparam i1_3_lut_4_lut_adj_270.init = 16'h4000;
    LUT4 i5406_2_lut_rep_248_3_lut (.A(read_ack3_i), .B(read_ack2_i), .C(\data_buffer_i[7] ), 
         .Z(n12566)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(681[27:57])
    defparam i5406_2_lut_rep_248_3_lut.init = 16'h4040;
    LUT4 i1_3_lut_4_lut_adj_271 (.A(read_ack3_i), .B(read_ack2_i), .C(n12641), 
         .D(n11527), .Z(n11531)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(681[27:57])
    defparam i1_3_lut_4_lut_adj_271.init = 16'h4000;
    LUT4 i1_3_lut_4_lut_adj_272 (.A(read_ack3_i), .B(read_ack2_i), .C(n11471), 
         .D(n12639), .Z(n11475)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(681[27:57])
    defparam i1_3_lut_4_lut_adj_272.init = 16'h0040;
    LUT4 i1_4_lut_adj_273 (.A(n10398), .B(n12587), .C(n11129), .D(n10574), 
         .Z(reset_bus_i_N_353)) /* synthesis lut_function=(A+(B (C)+!B (C+(D)))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(338[13] 618[20])
    defparam i1_4_lut_adj_273.init = 16'hfbfa;
    LUT4 i1_2_lut_rep_285_3_lut (.A(read_ack3_i), .B(read_ack2_i), .C(\data_buffer_i[8] ), 
         .Z(n12603)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(681[27:57])
    defparam i1_2_lut_rep_285_3_lut.init = 16'h4040;
    LUT4 i5405_2_lut_rep_249_3_lut (.A(read_ack3_i), .B(read_ack2_i), .C(\data_buffer_i[6] ), 
         .Z(n12567)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(681[27:57])
    defparam i5405_2_lut_rep_249_3_lut.init = 16'h4040;
    LUT4 i1_3_lut_4_lut_adj_274 (.A(read_ack3_i), .B(read_ack2_i), .C(n12641), 
         .D(n11471), .Z(n11461)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(681[27:57])
    defparam i1_3_lut_4_lut_adj_274.init = 16'h4000;
    LUT4 i1_3_lut_4_lut_adj_275 (.A(read_ack3_i), .B(read_ack2_i), .C(n12641), 
         .D(n11415), .Z(n11419)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(681[27:57])
    defparam i1_3_lut_4_lut_adj_275.init = 16'h4000;
    LUT4 i5404_2_lut_rep_250_3_lut (.A(read_ack3_i), .B(read_ack2_i), .C(\data_buffer_i[5] ), 
         .Z(n12568)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(681[27:57])
    defparam i5404_2_lut_rep_250_3_lut.init = 16'h4040;
    LUT4 i1_4_lut_adj_276 (.A(n3299[1]), .B(n3299[6]), .C(reset_bus_i), 
         .D(n12621), .Z(n11129)) /* synthesis lut_function=(A (C+(D))+!A (B (D))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(338[13] 618[20])
    defparam i1_4_lut_adj_276.init = 16'heea0;
    LUT4 i1_2_lut_rep_251_3_lut (.A(read_ack3_i), .B(read_ack2_i), .C(\data_buffer_i[4] ), 
         .Z(n12569)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(681[27:57])
    defparam i1_2_lut_rep_251_3_lut.init = 16'h4040;
    LUT4 i1_4_lut_adj_277 (.A(n10353), .B(n10576), .C(n3299[1]), .D(read_ack_i), 
         .Z(n10574)) /* synthesis lut_function=(A+(B+!((D)+!C))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(338[13] 618[20])
    defparam i1_4_lut_adj_277.init = 16'heefe;
    LUT4 i1_3_lut_4_lut_adj_278 (.A(read_ack3_i), .B(read_ack2_i), .C(n11443), 
         .D(n12639), .Z(n11447)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(681[27:57])
    defparam i1_3_lut_4_lut_adj_278.init = 16'h0040;
    LUT4 i5451_2_lut_rep_324 (.A(count_i[0]), .B(count_i[1]), .Z(n12642)) /* synthesis lut_function=(A (B)) */ ;
    defparam i5451_2_lut_rep_324.init = 16'h8888;
    LUT4 i1_2_lut_rep_274_3_lut_4_lut (.A(count_i[0]), .B(count_i[1]), .C(count_i[3]), 
         .D(count_i[2]), .Z(n12592)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;
    defparam i1_2_lut_rep_274_3_lut_4_lut.init = 16'hfff7;
    LUT4 equal_50_i6_2_lut_rep_325 (.A(count_i[2]), .B(count_i[3]), .Z(n12643)) /* synthesis lut_function=((B)+!A) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(343[25:47])
    defparam equal_50_i6_2_lut_rep_325.init = 16'hdddd;
    LUT4 i1_2_lut_rep_278_3_lut_4_lut (.A(count_i[2]), .B(count_i[3]), .C(count_i[0]), 
         .D(count_i[1]), .Z(n12596)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(343[25:47])
    defparam i1_2_lut_rep_278_3_lut_4_lut.init = 16'hffdf;
    LUT4 i1_2_lut_rep_280_3_lut_4_lut (.A(count_i[2]), .B(count_i[3]), .C(count_i[1]), 
         .D(count_i[0]), .Z(n12598)) /* synthesis lut_function=((B+!(C (D)))+!A) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(343[25:47])
    defparam i1_2_lut_rep_280_3_lut_4_lut.init = 16'hdfff;
    LUT4 equal_50_i7_2_lut_rep_277_3_lut_4_lut (.A(count_i[2]), .B(count_i[3]), 
         .C(count_i[1]), .D(count_i[0]), .Z(n12595)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(343[25:47])
    defparam equal_50_i7_2_lut_rep_277_3_lut_4_lut.init = 16'hfffd;
    LUT4 i1_2_lut_rep_239_3_lut_3_lut_4_lut (.A(count_i[2]), .B(count_i[3]), 
         .C(count_i[0]), .D(count_i[1]), .Z(n12557)) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(343[25:47])
    defparam i1_2_lut_rep_239_3_lut_3_lut_4_lut.init = 16'hfdff;
    LUT4 i1_4_lut_adj_279 (.A(n11887), .B(n11711), .C(n11713), .D(\data_buffer_i[7] ), 
         .Z(n7232)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;
    defparam i1_4_lut_adj_279.init = 16'hfffd;
    LUT4 i9199_2_lut (.A(\data_buffer_i[2] ), .B(\data_buffer_i[8] ), .Z(n11887)) /* synthesis lut_function=(A (B)) */ ;
    defparam i9199_2_lut.init = 16'h8888;
    LUT4 i1_2_lut (.A(\data_buffer_i[6] ), .B(\data_buffer_i[3] ), .Z(n11711)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut.init = 16'heeee;
    LUT4 i1_2_lut_adj_280 (.A(\data_buffer_i[5] ), .B(\data_buffer_i[4] ), 
         .Z(n11713)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_280.init = 16'heeee;
    LUT4 i1_4_lut_adj_281 (.A(n12582), .B(n3299[0]), .C(n1_adj_1781), 
         .D(n10436), .Z(n10007)) /* synthesis lut_function=(A+(B (C+(D)))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(338[13] 618[20])
    defparam i1_4_lut_adj_281.init = 16'heeea;
    LUT4 i1_2_lut_adj_282 (.A(write_ack_i), .B(not_write_ack_i), .Z(n1_adj_1781)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(338[13] 618[20])
    defparam i1_2_lut_adj_282.init = 16'h2222;
    LUT4 i7812_4_lut (.A(n12589), .B(write_ack_i), .C(n12587), .D(not_write_ack_i), 
         .Z(n10436)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A (B+(D)))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(338[13] 618[20])
    defparam i7812_4_lut.init = 16'h0031;
    LUT4 i5301_2_lut (.A(sda_data_i), .B(sda_wr_data_i), .Z(n7927)) /* synthesis lut_function=(A (B)) */ ;
    defparam i5301_2_lut.init = 16'h8888;
    LUT4 i1_4_lut_adj_283 (.A(n3299[5]), .B(n12632), .C(data_i[7]), .D(n12630), 
         .Z(n11157)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B)) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(338[13] 618[20])
    defparam i1_4_lut_adj_283.init = 16'hecee;
    LUT4 i9548_4_lut (.A(out_n_enable_11), .B(n12587), .C(n12550), .D(n12616), 
         .Z(out_n_enable_2)) /* synthesis lut_function=(A (B+!(C (D)))) */ ;
    defparam i9548_4_lut.init = 16'h8aaa;
    LUT4 i9459_4_lut (.A(n12612), .B(n10578), .C(n11899), .D(n12587), 
         .Z(out_n_enable_11)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(336[14] 619[12])
    defparam i9459_4_lut.init = 16'hfbff;
    LUT4 i1_rep_238_3_lut (.A(n12634), .B(count_i[3]), .C(n10312), .Z(n12556)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (C)))) */ ;
    defparam i1_rep_238_3_lut.init = 16'h6060;
    LUT4 i5408_3_lut_4_lut (.A(n12634), .B(count_i[3]), .C(n12615), .D(n12580), 
         .Z(n3419[3])) /* synthesis lut_function=(A (B ((D)+!C)+!B (D))+!A (B (D)+!B ((D)+!C))) */ ;
    defparam i5408_3_lut_4_lut.init = 16'hff09;
    LUT4 i3476_4_lut (.A(n11865), .B(n12550), .C(n12616), .D(n5972), 
         .Z(n6119)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(338[13] 618[20])
    defparam i3476_4_lut.init = 16'hc5c0;
    LUT4 i3329_4_lut (.A(n11870), .B(n12587), .C(n10620), .D(n12556), 
         .Z(n5972)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(338[13] 618[20])
    defparam i3329_4_lut.init = 16'hc0ca;
    LUT4 i2007_4_lut (.A(write_ack_i), .B(n12549), .C(n12614), .D(next_state_i_3__N_169[0]), 
         .Z(n3569)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C)+!B (C (D)))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(338[13] 618[20])
    defparam i2007_4_lut.init = 16'hfaca;
    LUT4 i9322_3_lut_4_lut (.A(n12636), .B(n12635), .C(\data_buffer_i[1] ), 
         .D(rw_mode_i), .Z(n12012)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(408[56:67])
    defparam i9322_3_lut_4_lut.init = 16'hfe10;
    LUT4 i5415_3_lut (.A(count_i[1]), .B(n6119), .C(count_i[0]), .Z(n3431[1])) /* synthesis lut_function=(A (B (C))+!A !((C)+!B)) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(338[13] 618[20])
    defparam i5415_3_lut.init = 16'h8484;
    LUT4 i1_3_lut_4_lut_adj_284 (.A(n12636), .B(n12635), .C(n3299[5]), 
         .D(n7232), .Z(addr_ack1_i_N_343)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(408[56:67])
    defparam i1_3_lut_4_lut_adj_284.init = 16'h0010;
    LUT4 count_i_2__bdd_3_lut (.A(data_i[3]), .B(data_i[2]), .C(count_i[0]), 
         .Z(n12533)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam count_i_2__bdd_3_lut.init = 16'hacac;
    LUT4 i1_3_lut_4_lut_adj_285 (.A(n12579), .B(n12635), .C(next_state_i_3__N_169[0]), 
         .D(n12614), .Z(n10620)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A (C+!(D)))) */ ;
    defparam i1_3_lut_4_lut_adj_285.init = 16'h0d00;
    LUT4 i1_3_lut_4_lut_adj_286 (.A(n12635), .B(n12629), .C(sda_reg), 
         .D(n5905), .Z(n10669)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(568[30:45])
    defparam i1_3_lut_4_lut_adj_286.init = 16'h1000;
    LUT4 i9558_4_lut (.A(n12589), .B(n10532), .C(n9759), .D(n5905), 
         .Z(out_n_enable_3)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A (B+!(C)))) */ ;
    defparam i9558_4_lut.init = 16'h1030;
    LUT4 i1_4_lut_adj_287 (.A(n11047), .B(n1_adj_1782), .C(n9701), .D(n11091), 
         .Z(n10532)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B+(D))) */ ;
    defparam i1_4_lut_adj_287.init = 16'hffce;
    LUT4 i1_4_lut_adj_288 (.A(n3299[1]), .B(n595), .C(stop_detect_i), 
         .D(read_ack_i), .Z(n1_adj_1782)) /* synthesis lut_function=(A (B (C)+!B (C+!(D)))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(336[14] 619[12])
    defparam i1_4_lut_adj_288.init = 16'ha0a2;
    LUT4 i1_4_lut_adj_289 (.A(n12609), .B(n12615), .C(n3299[0]), .D(next_state_i_3__N_78), 
         .Z(n11091)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_289.init = 16'hfffe;
    LUT4 i1_4_lut_adj_290 (.A(n5125), .B(n9701), .C(n12576), .D(n10356), 
         .Z(n9759)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;
    defparam i1_4_lut_adj_290.init = 16'hfffd;
    LUT4 count_i_2__bdd_2_lut (.A(data_i[6]), .B(count_i[0]), .Z(n12534)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam count_i_2__bdd_2_lut.init = 16'h2222;
    LUT4 i1_4_lut_adj_291 (.A(count_i[1]), .B(n12635), .C(count_i[0]), 
         .D(next_state_i_3__N_169[0]), .Z(n595)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(408[56:67])
    defparam i1_4_lut_adj_291.init = 16'hfffe;
    LUT4 i1_4_lut_adj_292 (.A(n12589), .B(n3299[5]), .C(n3299[1]), .D(n7232), 
         .Z(n4256)) /* synthesis lut_function=(A+!(B (C+!(D))+!B (C))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(199[20:27])
    defparam i1_4_lut_adj_292.init = 16'hafab;
    FD1P3AX data_buffer_i_i0_i8 (.D(n10668), .SP(out_n_enable_5), .CK(out_n), 
            .Q(\data_buffer_i[8] )) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=2, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=143 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(336[14] 619[12])
    defparam data_buffer_i_i0_i8.GSR = "DISABLED";
    FD1P3AX data_buffer_i_i0_i7 (.D(n10670), .SP(out_n_enable_6), .CK(out_n), 
            .Q(\data_buffer_i[7] )) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=2, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=143 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(336[14] 619[12])
    defparam data_buffer_i_i0_i7.GSR = "DISABLED";
    FD1P3AX data_buffer_i_i0_i6 (.D(n10664), .SP(out_n_enable_7), .CK(out_n), 
            .Q(\data_buffer_i[6] )) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=2, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=143 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(336[14] 619[12])
    defparam data_buffer_i_i0_i6.GSR = "DISABLED";
    FD1P3AX data_buffer_i_i0_i5 (.D(n10667), .SP(out_n_enable_8), .CK(out_n), 
            .Q(\data_buffer_i[5] )) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=2, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=143 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(336[14] 619[12])
    defparam data_buffer_i_i0_i5.GSR = "DISABLED";
    FD1P3AX data_buffer_i_i0_i4 (.D(n10671), .SP(out_n_enable_9), .CK(out_n), 
            .Q(\data_buffer_i[4] )) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=2, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=143 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(336[14] 619[12])
    defparam data_buffer_i_i0_i4.GSR = "DISABLED";
    FD1P3AX data_buffer_i_i0_i3 (.D(n10665), .SP(out_n_enable_10), .CK(out_n), 
            .Q(\data_buffer_i[3] )) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=2, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=143 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(336[14] 619[12])
    defparam data_buffer_i_i0_i3.GSR = "DISABLED";
    LUT4 i1_2_lut_3_lut_4_lut_adj_293 (.A(n12589), .B(write_ack_i), .C(n12587), 
         .D(n12556), .Z(n10578)) /* synthesis lut_function=(!((B+!((D)+!C))+!A)) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(336[14] 619[12])
    defparam i1_2_lut_3_lut_4_lut_adj_293.init = 16'h2202;
    LUT4 i1_3_lut_4_lut_adj_294 (.A(n12635), .B(n12642), .C(sda_reg), 
         .D(n5905), .Z(n10665)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(343[25:47])
    defparam i1_3_lut_4_lut_adj_294.init = 16'h4000;
    LUT4 mux_104_i1_3_lut_4_lut (.A(n12640), .B(\data_buffer_i[1] ), .C(\state_1__N_839[0] ), 
         .D(addr_start[0]), .Z(addr_i_7__N_857[0])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(681[27:57])
    defparam mux_104_i1_3_lut_4_lut.init = 16'h8f80;
    LUT4 i1_3_lut_4_lut_adj_295 (.A(n12636), .B(n12643), .C(sda_reg), 
         .D(n5905), .Z(n10671)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(343[25:47])
    defparam i1_3_lut_4_lut_adj_295.init = 16'h1000;
    LUT4 i1_3_lut_4_lut_adj_296 (.A(n12643), .B(n12629), .C(sda_reg), 
         .D(n5905), .Z(n10667)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(568[30:45])
    defparam i1_3_lut_4_lut_adj_296.init = 16'h1000;
    LUT4 sda_wr_data_i_I_32_i1_3_lut (.A(data_i[0]), .B(data_i[1]), .C(count_i[0]), 
         .Z(n1)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(583[63:73])
    defparam sda_wr_data_i_I_32_i1_3_lut.init = 16'hcaca;
    LUT4 i9591_3_lut (.A(stop_detect_i), .B(reset_n), .C(d_ff), .Z(next_state_i_3__N_78)) /* synthesis lut_function=(!(A (B (C))+!A (B))) */ ;
    defparam i9591_3_lut.init = 16'h3b3b;
    LUT4 i1_3_lut_4_lut_adj_297 (.A(n12556), .B(n12587), .C(n12623), .D(n12551), 
         .Z(n10576)) /* synthesis lut_function=(A (C (D))+!A !(B+!(C (D)))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(408[56:67])
    defparam i1_3_lut_4_lut_adj_297.init = 16'hb000;
    LUT4 i1_3_lut_4_lut_adj_298 (.A(n12643), .B(n12642), .C(sda_reg), 
         .D(n5905), .Z(n10670)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(343[25:47])
    defparam i1_3_lut_4_lut_adj_298.init = 16'h4000;
    FD1P3DX count_i_i0_i0 (.D(n3431[0]), .SP(out_n_enable_11), .CK(out_n), 
            .CD(next_state_i_3__N_78), .Q(count_i[0])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=2, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=143 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(336[14] 619[12])
    defparam count_i_i0_i0.GSR = "DISABLED";
    LUT4 i1_3_lut_4_lut_adj_299 (.A(count_i[3]), .B(n12634), .C(sda_reg), 
         .D(n5905), .Z(n10668)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(343[25:47])
    defparam i1_3_lut_4_lut_adj_299.init = 16'h2000;
    LUT4 i_rst_I_0_2_lut (.A(reset_n), .B(reset_bus_i), .Z(start_detect_i_N_340)) /* synthesis lut_function=((B)+!A) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(271[13:37])
    defparam i_rst_I_0_2_lut.init = 16'hdddd;
    FD1P3AX data_buffer_i_i0_i2 (.D(n10666), .SP(out_n_enable_12), .CK(out_n), 
            .Q(\data_buffer_i[2] )) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=2, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=143 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(336[14] 619[12])
    defparam data_buffer_i_i0_i2.GSR = "DISABLED";
    LUT4 i5407_4_lut_4_lut (.A(n12612), .B(n5972), .C(n3569), .D(n12586), 
         .Z(n3407[3])) /* synthesis lut_function=(!(A+!(B (C+!(D))+!B (C)))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(338[13] 618[20])
    defparam i5407_4_lut_4_lut.init = 16'h5054;
    LUT4 i1_4_lut_adj_300 (.A(n11157), .B(sda_wr_data_i_N_305), .C(n3299[0]), 
         .D(not_write_ack_i), .Z(sda_wr_data_i_N_285)) /* synthesis lut_function=(A+(B (C)+!B (C (D)))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/i2cslave_controller.v(338[13] 618[20])
    defparam i1_4_lut_adj_300.init = 16'hfaea;
    
endmodule
//
// Verilog Description of module filter
//

module filter (clk_10mhz_c, i_sda, sda_out) /* synthesis syn_module_defined=1 */ ;
    input clk_10mhz_c;
    output i_sda;
    input sda_out;
    
    wire clk_10mhz_c /* synthesis SET_AS_NETWORK=clk_10mhz_c, is_clock=1 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/top.v(24[15:24])
    
    wire in_d2, in_d3, out_n_N_71, in_d1, in_N_73, out_n;
    
    LUT4 in_d2_I_0_2_lut (.A(in_d2), .B(in_d3), .Z(out_n_N_71)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/filter.v(71[20:34])
    defparam in_d2_I_0_2_lut.init = 16'h9999;
    FD1S3AX in_d2_14 (.D(in_d1), .CK(clk_10mhz_c), .Q(in_d2)) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=118 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/filter.v(58[16] 62[10])
    defparam in_d2_14.GSR = "ENABLED";
    FD1S3AX in_d3_15 (.D(in_d2), .CK(clk_10mhz_c), .Q(in_d3)) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=118 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/filter.v(58[16] 62[10])
    defparam in_d3_15.GSR = "ENABLED";
    FD1S3AX in_d1_13 (.D(in_N_73), .CK(clk_10mhz_c), .Q(in_d1)) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=118 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/filter.v(58[16] 62[10])
    defparam in_d1_13.GSR = "ENABLED";
    FD1P3AX out_n_16 (.D(in_d3), .SP(out_n_N_71), .CK(clk_10mhz_c), .Q(out_n)) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=118 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/filter.v(71[16] 73[10])
    defparam out_n_16.GSR = "ENABLED";
    LUT4 out_n_I_0_1_lut (.A(out_n), .Z(i_sda)) /* synthesis lut_function=(!(A)) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/filter.v(67[17:23])
    defparam out_n_I_0_1_lut.init = 16'h5555;
    LUT4 in_I_0_1_lut (.A(sda_out), .Z(in_N_73)) /* synthesis lut_function=(!(A)) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/filter.v(59[19:22])
    defparam in_I_0_1_lut.init = 16'h5555;
    
endmodule
//
// Verilog Description of module filter_U0
//

module filter_U0 (out_n__inv, out_n, clk_10mhz_c, scl_out) /* synthesis syn_module_defined=1 */ ;
    output out_n__inv;
    output out_n;
    input clk_10mhz_c;
    input scl_out;
    
    wire out_n__inv /* synthesis is_inv_clock=1 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/filter.v(51[9:14])
    wire out_n /* synthesis is_clock=1, SET_AS_NETWORK=\i2c_slave_top/i2cslave_controller_top/filter_scl_inst/out_n */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/filter.v(51[9:14])
    wire clk_10mhz_c /* synthesis SET_AS_NETWORK=clk_10mhz_c, is_clock=1 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/top.v(24[15:24])
    
    wire in_d2, in_d3, out_n_N_71, in_d1, in_N_73;
    
    INV i9860 (.A(out_n), .Z(out_n__inv));
    LUT4 in_d2_I_0_2_lut (.A(in_d2), .B(in_d3), .Z(out_n_N_71)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/filter.v(71[20:34])
    defparam in_d2_I_0_2_lut.init = 16'h9999;
    FD1S3AX in_d2_14 (.D(in_d1), .CK(clk_10mhz_c), .Q(in_d2)) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=106, LSE_RLINE=111 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/filter.v(58[16] 62[10])
    defparam in_d2_14.GSR = "ENABLED";
    FD1S3AX in_d3_15 (.D(in_d2), .CK(clk_10mhz_c), .Q(in_d3)) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=106, LSE_RLINE=111 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/filter.v(58[16] 62[10])
    defparam in_d3_15.GSR = "ENABLED";
    FD1S3AX in_d1_13 (.D(in_N_73), .CK(clk_10mhz_c), .Q(in_d1)) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=106, LSE_RLINE=111 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/filter.v(58[16] 62[10])
    defparam in_d1_13.GSR = "ENABLED";
    FD1P3AX out_n_16 (.D(in_d3), .SP(out_n_N_71), .CK(clk_10mhz_c), .Q(out_n)) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=106, LSE_RLINE=111 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/filter.v(71[16] 73[10])
    defparam out_n_16.GSR = "ENABLED";
    LUT4 in_I_0_1_lut (.A(scl_out), .Z(in_N_73)) /* synthesis lut_function=(!(A)) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/filter.v(59[19:22])
    defparam in_I_0_1_lut.init = 16'h5555;
    
endmodule
//
// Verilog Description of module dds_gain_control
//

module dds_gain_control (seed_spare1_c, clk_10mhz_c, seed_spare3_c, GND_net, 
            \control[3] , dds_current_limit, seed_spare2_c, seed_spare4_c, 
            cw_current_limit, clk_10mhz_c_enable_89, dds_gain, clk_10mhz_c_enable_54, 
            \data[16] , \data[19] , cw_gain, n12948, n5979, \data_23__N_925[16] , 
            \data_23__N_925[19] , reset_n, n3233) /* synthesis syn_module_defined=1 */ ;
    output seed_spare1_c;
    input clk_10mhz_c;
    output seed_spare3_c;
    input GND_net;
    input \control[3] ;
    input [15:0]dds_current_limit;
    output seed_spare2_c;
    output seed_spare4_c;
    input [15:0]cw_current_limit;
    input clk_10mhz_c_enable_89;
    input [15:0]dds_gain;
    input clk_10mhz_c_enable_54;
    output \data[16] ;
    output \data[19] ;
    input [15:0]cw_gain;
    input n12948;
    input n5979;
    input \data_23__N_925[16] ;
    input \data_23__N_925[19] ;
    input reset_n;
    output n3233;
    
    wire seed_spare1_c /* synthesis is_clock=1, SET_AS_NETWORK=seed_spare1_c */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/top.v(46[12:24])
    wire clk_10mhz_c /* synthesis SET_AS_NETWORK=clk_10mhz_c, is_clock=1 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/top.v(24[15:24])
    wire [23:0]data_temp;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(38[12:21])
    
    wire seed_spare1_c_enable_34, state_3__N_882, n10247;
    wire [7:0]count;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(37[12:17])
    
    wire seed_spare1_c_enable_20;
    wire [7:0]count_7__N_1141;
    wire [15:0]total_count;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(66[12:23])
    wire [15:0]total_count_15__N_1013;
    
    wire n10233, clk_10mhz_c_enable_2;
    wire [3:0]cstate;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(36[20:26])
    
    wire spi_ready, n9636;
    wire [15:0]dac_count;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(66[24:33])
    wire [15:0]n69;
    
    wire n9637;
    wire [15:0]dds_current_limit_reg;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(54[12:33])
    
    wire mosi_N_1226, clk_10mhz_c_enable_3, n4801;
    wire [15:0]cw_current_limit_reg;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(55[12:32])
    
    wire data_ready_d;
    wire [15:0]dds_gain_reg;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(52[12:24])
    wire [23:0]data;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(39[12:16])
    wire [23:0]data_23__N_925;
    
    wire n10231, n2, n4;
    wire [3:0]state;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(36[12:17])
    
    wire n9666, n9667;
    wire [3:0]dac_state;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(36[29:38])
    
    wire n12946, n10966, n4_adj_1749;
    wire [15:0]total_count_15__N_1081;
    
    wire n12645, n17, n4_adj_1750, n4_adj_1751, n4_adj_1752, n4_adj_1753, 
        n4_adj_1754, n4_adj_1755, n10245, n4_adj_1756, n4_adj_1757, 
        n9665, n4_adj_1758, n10229, n4_adj_1759, n4_adj_1760, n4_adj_1761, 
        n4_adj_1762, n2_adj_1763, n2_adj_1764, n2_adj_1765, n9664, 
        n2_adj_1766, n2_adj_1767, n10243, n4_adj_1768, n9663, n2_adj_1769, 
        n10227, clk_10mhz_c_enable_265, n4_adj_1770, n2_adj_1771, n10217, 
        n10225, n2_adj_1772, n10913, n10223, n2_adj_1773, clk_10mhz_c_enable_232, 
        n3915, n12620, n2_adj_1774, n10219, n9662, n2_adj_1775, 
        n9634, n2_adj_1776, n9633, n9661, n10221, n2_adj_1777, n2_adj_1778, 
        n2_adj_1779, n2_adj_1780;
    wire [23:0]data_temp_23__N_1109;
    
    wire clk_10mhz_c_enable_229, n8, n5540, n12652, n12651, n9264;
    wire [7:0]n205;
    
    wire n9628, n9629, n11771, n11769, n12654, n6197, n12658, 
        n9627, n6859, n9632, n9660, n12657, n9659, n3252, n9658, 
        n9631, n4618, n50, n12543, n9657, n9656, n12655, n12561, 
        n3609, n10235, n10376, n11383, n11367, n11375, n11373, 
        n10237, n10239, n10241;
    wire [15:0]cw_gain_reg;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(53[12:23])
    
    wire clk_10mhz_c_enable_251, n10249, n6840, n12542, clk_10mhz_c_enable_264, 
        n11018, n9655, n9654, n9653, n6870, n12, n11010, n11659, 
        n11657, n11649, n11651, n9630, seed_spare1_c_enable_29, n6252, 
        n6250, clk_10mhz_c_enable_263, n9687, n9652, n9686, n9685, 
        n9684, n10380, n6271, n12558, n10379, data_valid_reset, 
        n9643, n9642, n9641, n9640, n9639, n9638;
    
    FD1P3DX data_temp__i15 (.D(n10247), .SP(seed_spare1_c_enable_34), .CK(seed_spare1_c), 
            .CD(state_3__N_882), .Q(data_temp[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=3, LSE_LLINE=198, LSE_RLINE=215 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(147[18] 170[14])
    defparam data_temp__i15.GSR = "DISABLED";
    FD1P3DX count_i0_i0 (.D(count_7__N_1141[0]), .SP(seed_spare1_c_enable_20), 
            .CK(seed_spare1_c), .CD(state_3__N_882), .Q(count[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=3, LSE_LLINE=198, LSE_RLINE=215 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(147[18] 170[14])
    defparam count_i0_i0.GSR = "DISABLED";
    FD1S3AX total_count_i0 (.D(total_count_15__N_1013[0]), .CK(clk_10mhz_c), 
            .Q(total_count[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=3, LSE_LLINE=198, LSE_RLINE=215 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(104[18] 138[6])
    defparam total_count_i0.GSR = "ENABLED";
    FD1P3DX data_temp__i8 (.D(n10233), .SP(seed_spare1_c_enable_34), .CK(seed_spare1_c), 
            .CD(state_3__N_882), .Q(data_temp[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=3, LSE_LLINE=198, LSE_RLINE=215 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(147[18] 170[14])
    defparam data_temp__i8.GSR = "DISABLED";
    FD1P3AY ss1_temp_125 (.D(cstate[2]), .SP(clk_10mhz_c_enable_2), .CK(clk_10mhz_c), 
            .Q(seed_spare3_c)) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=3, LSE_LLINE=198, LSE_RLINE=215 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(104[18] 138[6])
    defparam ss1_temp_125.GSR = "ENABLED";
    FD1P3AY data_ready_128 (.D(cstate[2]), .SP(clk_10mhz_c_enable_2), .CK(clk_10mhz_c), 
            .Q(spi_ready)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=3, LSE_LLINE=198, LSE_RLINE=215 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(104[18] 138[6])
    defparam data_ready_128.GSR = "ENABLED";
    FD1S3AX total_count_i12 (.D(total_count_15__N_1013[12]), .CK(clk_10mhz_c), 
            .Q(total_count[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=3, LSE_LLINE=198, LSE_RLINE=215 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(104[18] 138[6])
    defparam total_count_i12.GSR = "ENABLED";
    CCU2D dac_count_1536_add_4_3 (.A0(dac_count[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(dac_count[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n9636), .COUT(n9637), .S0(n69[1]), .S1(n69[2]));   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(190[62:75])
    defparam dac_count_1536_add_4_3.INIT0 = 16'hfaaa;
    defparam dac_count_1536_add_4_3.INIT1 = 16'hfaaa;
    defparam dac_count_1536_add_4_3.INJECT1_0 = "NO";
    defparam dac_count_1536_add_4_3.INJECT1_1 = "NO";
    FD1P3AY dds_current_limit_reg_i0_i0 (.D(dds_current_limit[0]), .SP(\control[3] ), 
            .CK(clk_10mhz_c), .Q(dds_current_limit_reg[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=3, LSE_LLINE=198, LSE_RLINE=215 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(209[14] 214[17])
    defparam dds_current_limit_reg_i0_i0.GSR = "ENABLED";
    FD1P3DX mosi_temp_132 (.D(mosi_N_1226), .SP(seed_spare1_c_enable_34), 
            .CK(seed_spare1_c), .CD(state_3__N_882), .Q(seed_spare2_c)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=3, LSE_LLINE=198, LSE_RLINE=215 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(147[18] 170[14])
    defparam mosi_temp_132.GSR = "DISABLED";
    FD1P3AY ldac_temp_135 (.D(n4801), .SP(clk_10mhz_c_enable_3), .CK(clk_10mhz_c), 
            .Q(seed_spare4_c)) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=3, LSE_LLINE=198, LSE_RLINE=215 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(179[14] 202[11])
    defparam ldac_temp_135.GSR = "ENABLED";
    FD1P3AY cw_current_limit_reg_i0_i0 (.D(cw_current_limit[0]), .SP(\control[3] ), 
            .CK(clk_10mhz_c), .Q(cw_current_limit_reg[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=3, LSE_LLINE=198, LSE_RLINE=215 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(209[14] 214[17])
    defparam cw_current_limit_reg_i0_i0.GSR = "ENABLED";
    FD1S3AX total_count_i11 (.D(total_count_15__N_1013[11]), .CK(clk_10mhz_c), 
            .Q(total_count[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=3, LSE_LLINE=198, LSE_RLINE=215 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(104[18] 138[6])
    defparam total_count_i11.GSR = "ENABLED";
    FD1S3AX data_ready_d_136 (.D(spi_ready), .CK(clk_10mhz_c), .Q(data_ready_d)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=3, LSE_LLINE=198, LSE_RLINE=215 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(179[14] 202[11])
    defparam data_ready_d_136.GSR = "ENABLED";
    FD1P3AX dds_gain_reg_i0_i0 (.D(dds_gain[0]), .SP(clk_10mhz_c_enable_89), 
            .CK(clk_10mhz_c), .Q(dds_gain_reg[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=3, LSE_LLINE=198, LSE_RLINE=215 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(76[20] 87[24])
    defparam dds_gain_reg_i0_i0.GSR = "ENABLED";
    FD1P3DX data_i0 (.D(data_23__N_925[0]), .SP(clk_10mhz_c_enable_54), 
            .CK(clk_10mhz_c), .CD(state_3__N_882), .Q(data[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=3, LSE_LLINE=198, LSE_RLINE=215 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(221[14] 231[17])
    defparam data_i0.GSR = "DISABLED";
    FD1P3DX data_temp__i7 (.D(n10231), .SP(seed_spare1_c_enable_34), .CK(seed_spare1_c), 
            .CD(state_3__N_882), .Q(data_temp[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=3, LSE_LLINE=198, LSE_RLINE=215 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(147[18] 170[14])
    defparam data_temp__i7.GSR = "DISABLED";
    CCU2D dac_count_1536_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(dac_count[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n9636), .S1(n69[0]));   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(190[62:75])
    defparam dac_count_1536_add_4_1.INIT0 = 16'hF000;
    defparam dac_count_1536_add_4_1.INIT1 = 16'h0555;
    defparam dac_count_1536_add_4_1.INJECT1_0 = "NO";
    defparam dac_count_1536_add_4_1.INJECT1_1 = "NO";
    PFUMX i12 (.BLUT(n2), .ALUT(n4), .C0(state[1]), .Z(n10231));
    CCU2D sub_1108_add_2_15 (.A0(dds_gain[13]), .B0(dds_current_limit_reg[13]), 
          .C0(GND_net), .D0(GND_net), .A1(dds_gain[14]), .B1(dds_current_limit_reg[14]), 
          .C1(GND_net), .D1(GND_net), .CIN(n9666), .COUT(n9667));
    defparam sub_1108_add_2_15.INIT0 = 16'h5999;
    defparam sub_1108_add_2_15.INIT1 = 16'h5999;
    defparam sub_1108_add_2_15.INJECT1_0 = "NO";
    defparam sub_1108_add_2_15.INJECT1_1 = "NO";
    LUT4 i1_3_lut_4_lut (.A(dac_state[1]), .B(n12946), .C(dac_state[0]), 
         .D(dac_state[2]), .Z(n10966)) /* synthesis lut_function=(((C+!(D))+!B)+!A) */ ;
    defparam i1_3_lut_4_lut.init = 16'hf7ff;
    LUT4 i1_2_lut_2_lut (.A(state[2]), .B(data_temp[10]), .Z(n4_adj_1749)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(147[18] 170[14])
    defparam i1_2_lut_2_lut.init = 16'h4444;
    LUT4 i1_4_lut (.A(total_count_15__N_1081[0]), .B(total_count[0]), .C(n12645), 
         .D(n17), .Z(total_count_15__N_1013[0])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(107[23] 137[28])
    defparam i1_4_lut.init = 16'heca0;
    LUT4 i1_2_lut_2_lut_adj_152 (.A(state[2]), .B(data_temp[11]), .Z(n4_adj_1750)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(147[18] 170[14])
    defparam i1_2_lut_2_lut_adj_152.init = 16'h4444;
    LUT4 i1_2_lut_2_lut_adj_153 (.A(state[2]), .B(data_temp[12]), .Z(n4_adj_1751)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(147[18] 170[14])
    defparam i1_2_lut_2_lut_adj_153.init = 16'h4444;
    LUT4 i1_2_lut_2_lut_adj_154 (.A(state[2]), .B(data_temp[14]), .Z(n4_adj_1752)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(147[18] 170[14])
    defparam i1_2_lut_2_lut_adj_154.init = 16'h4444;
    LUT4 i1_2_lut_2_lut_adj_155 (.A(state[2]), .B(data_temp[13]), .Z(n4_adj_1753)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(147[18] 170[14])
    defparam i1_2_lut_2_lut_adj_155.init = 16'h4444;
    LUT4 dac_state_0__bdd_4_lut (.A(dac_state[0]), .B(dac_state[2]), .C(dac_state[1]), 
         .D(n12946), .Z(clk_10mhz_c_enable_3)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B (C (D))))) */ ;
    defparam dac_state_0__bdd_4_lut.init = 16'h4808;
    LUT4 i1_2_lut_2_lut_adj_156 (.A(state[2]), .B(data_temp[15]), .Z(n4_adj_1754)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(147[18] 170[14])
    defparam i1_2_lut_2_lut_adj_156.init = 16'h4444;
    FD1S3AX total_count_i10 (.D(total_count_15__N_1013[10]), .CK(clk_10mhz_c), 
            .Q(total_count[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=3, LSE_LLINE=198, LSE_RLINE=215 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(104[18] 138[6])
    defparam total_count_i10.GSR = "ENABLED";
    LUT4 i1_2_lut_2_lut_adj_157 (.A(state[2]), .B(data_temp[9]), .Z(n4_adj_1755)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(147[18] 170[14])
    defparam i1_2_lut_2_lut_adj_157.init = 16'h4444;
    FD1P3DX data_temp__i14 (.D(n10245), .SP(seed_spare1_c_enable_34), .CK(seed_spare1_c), 
            .CD(state_3__N_882), .Q(data_temp[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=3, LSE_LLINE=198, LSE_RLINE=215 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(147[18] 170[14])
    defparam data_temp__i14.GSR = "DISABLED";
    LUT4 i1_2_lut_2_lut_adj_158 (.A(state[2]), .B(data_temp[8]), .Z(n4_adj_1756)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(147[18] 170[14])
    defparam i1_2_lut_2_lut_adj_158.init = 16'h4444;
    FD1S3AX total_count_i9 (.D(total_count_15__N_1013[9]), .CK(clk_10mhz_c), 
            .Q(total_count[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=3, LSE_LLINE=198, LSE_RLINE=215 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(104[18] 138[6])
    defparam total_count_i9.GSR = "ENABLED";
    FD1S3AX total_count_i8 (.D(total_count_15__N_1013[8]), .CK(clk_10mhz_c), 
            .Q(total_count[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=3, LSE_LLINE=198, LSE_RLINE=215 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(104[18] 138[6])
    defparam total_count_i8.GSR = "ENABLED";
    FD1S3AX total_count_i7 (.D(total_count_15__N_1013[7]), .CK(clk_10mhz_c), 
            .Q(total_count[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=3, LSE_LLINE=198, LSE_RLINE=215 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(104[18] 138[6])
    defparam total_count_i7.GSR = "ENABLED";
    LUT4 i1_2_lut_2_lut_adj_159 (.A(state[2]), .B(data_temp[7]), .Z(n4_adj_1757)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(147[18] 170[14])
    defparam i1_2_lut_2_lut_adj_159.init = 16'h4444;
    FD1S3AX total_count_i6 (.D(total_count_15__N_1013[6]), .CK(clk_10mhz_c), 
            .Q(total_count[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=3, LSE_LLINE=198, LSE_RLINE=215 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(104[18] 138[6])
    defparam total_count_i6.GSR = "ENABLED";
    FD1S3AX total_count_i5 (.D(total_count_15__N_1013[5]), .CK(clk_10mhz_c), 
            .Q(total_count[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=3, LSE_LLINE=198, LSE_RLINE=215 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(104[18] 138[6])
    defparam total_count_i5.GSR = "ENABLED";
    CCU2D sub_1108_add_2_13 (.A0(dds_gain[11]), .B0(dds_current_limit_reg[11]), 
          .C0(GND_net), .D0(GND_net), .A1(dds_gain[12]), .B1(dds_current_limit_reg[12]), 
          .C1(GND_net), .D1(GND_net), .CIN(n9665), .COUT(n9666));
    defparam sub_1108_add_2_13.INIT0 = 16'h5999;
    defparam sub_1108_add_2_13.INIT1 = 16'h5999;
    defparam sub_1108_add_2_13.INJECT1_0 = "NO";
    defparam sub_1108_add_2_13.INJECT1_1 = "NO";
    LUT4 i1_2_lut_2_lut_adj_160 (.A(state[2]), .B(data_temp[6]), .Z(n4)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(147[18] 170[14])
    defparam i1_2_lut_2_lut_adj_160.init = 16'h4444;
    LUT4 i1_2_lut_2_lut_adj_161 (.A(state[2]), .B(data_temp[5]), .Z(n4_adj_1758)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(147[18] 170[14])
    defparam i1_2_lut_2_lut_adj_161.init = 16'h4444;
    FD1P3DX data_temp__i6 (.D(n10229), .SP(seed_spare1_c_enable_34), .CK(seed_spare1_c), 
            .CD(state_3__N_882), .Q(data_temp[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=3, LSE_LLINE=198, LSE_RLINE=215 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(147[18] 170[14])
    defparam data_temp__i6.GSR = "DISABLED";
    LUT4 i1_2_lut_2_lut_adj_162 (.A(state[2]), .B(data_temp[4]), .Z(n4_adj_1759)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(147[18] 170[14])
    defparam i1_2_lut_2_lut_adj_162.init = 16'h4444;
    LUT4 i1_2_lut_2_lut_adj_163 (.A(state[2]), .B(data_temp[3]), .Z(n4_adj_1760)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(147[18] 170[14])
    defparam i1_2_lut_2_lut_adj_163.init = 16'h4444;
    LUT4 i1_2_lut_2_lut_adj_164 (.A(state[2]), .B(data_temp[2]), .Z(n4_adj_1761)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(147[18] 170[14])
    defparam i1_2_lut_2_lut_adj_164.init = 16'h4444;
    LUT4 i1_2_lut_2_lut_adj_165 (.A(state[2]), .B(data_temp[1]), .Z(n4_adj_1762)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(147[18] 170[14])
    defparam i1_2_lut_2_lut_adj_165.init = 16'h4444;
    LUT4 i1_2_lut_2_lut_adj_166 (.A(state[2]), .B(data_temp[19]), .Z(n2_adj_1763)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(147[18] 170[14])
    defparam i1_2_lut_2_lut_adj_166.init = 16'h4444;
    LUT4 i1_2_lut_2_lut_adj_167 (.A(state[2]), .B(data_temp[16]), .Z(n2_adj_1764)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(147[18] 170[14])
    defparam i1_2_lut_2_lut_adj_167.init = 16'h4444;
    LUT4 i1_2_lut_2_lut_adj_168 (.A(seed_spare3_c), .B(data[11]), .Z(n2_adj_1765)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(104[18] 138[6])
    defparam i1_2_lut_2_lut_adj_168.init = 16'h4444;
    CCU2D sub_1108_add_2_11 (.A0(dds_gain[9]), .B0(dds_current_limit_reg[9]), 
          .C0(GND_net), .D0(GND_net), .A1(dds_gain[10]), .B1(dds_current_limit_reg[10]), 
          .C1(GND_net), .D1(GND_net), .CIN(n9664), .COUT(n9665));
    defparam sub_1108_add_2_11.INIT0 = 16'h5999;
    defparam sub_1108_add_2_11.INIT1 = 16'h5999;
    defparam sub_1108_add_2_11.INJECT1_0 = "NO";
    defparam sub_1108_add_2_11.INJECT1_1 = "NO";
    LUT4 i1_2_lut_2_lut_adj_169 (.A(seed_spare3_c), .B(data[12]), .Z(n2_adj_1766)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(104[18] 138[6])
    defparam i1_2_lut_2_lut_adj_169.init = 16'h4444;
    LUT4 i1_2_lut_2_lut_adj_170 (.A(seed_spare3_c), .B(data[13]), .Z(n2_adj_1767)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(104[18] 138[6])
    defparam i1_2_lut_2_lut_adj_170.init = 16'h4444;
    FD1P3DX data_temp__i13 (.D(n10243), .SP(seed_spare1_c_enable_34), .CK(seed_spare1_c), 
            .CD(state_3__N_882), .Q(data_temp[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=3, LSE_LLINE=198, LSE_RLINE=215 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(147[18] 170[14])
    defparam data_temp__i13.GSR = "DISABLED";
    LUT4 i1_2_lut_2_lut_adj_171 (.A(seed_spare3_c), .B(\data[16] ), .Z(n4_adj_1768)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(104[18] 138[6])
    defparam i1_2_lut_2_lut_adj_171.init = 16'h4444;
    CCU2D sub_1108_add_2_9 (.A0(dds_gain[7]), .B0(dds_current_limit_reg[7]), 
          .C0(GND_net), .D0(GND_net), .A1(dds_gain[8]), .B1(dds_current_limit_reg[8]), 
          .C1(GND_net), .D1(GND_net), .CIN(n9663), .COUT(n9664));
    defparam sub_1108_add_2_9.INIT0 = 16'h5999;
    defparam sub_1108_add_2_9.INIT1 = 16'h5999;
    defparam sub_1108_add_2_9.INJECT1_0 = "NO";
    defparam sub_1108_add_2_9.INJECT1_1 = "NO";
    LUT4 i1_2_lut_2_lut_adj_172 (.A(seed_spare3_c), .B(data[14]), .Z(n2_adj_1769)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(104[18] 138[6])
    defparam i1_2_lut_2_lut_adj_172.init = 16'h4444;
    FD1P3DX data_temp__i5 (.D(n10227), .SP(seed_spare1_c_enable_34), .CK(seed_spare1_c), 
            .CD(state_3__N_882), .Q(data_temp[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=3, LSE_LLINE=198, LSE_RLINE=215 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(147[18] 170[14])
    defparam data_temp__i5.GSR = "DISABLED";
    LUT4 i2_3_lut (.A(cstate[2]), .B(cstate[1]), .C(cstate[0]), .Z(n17)) /* synthesis lut_function=(A ((C)+!B)+!A !(B+!(C))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(107[23] 137[28])
    defparam i2_3_lut.init = 16'hb2b2;
    FD1P3AX dac_state__i3 (.D(n10966), .SP(clk_10mhz_c_enable_265), .CK(clk_10mhz_c), 
            .Q(dac_state[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=3, LSE_LLINE=198, LSE_RLINE=215 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(179[14] 202[11])
    defparam dac_state__i3.GSR = "ENABLED";
    LUT4 i1_2_lut_2_lut_adj_173 (.A(seed_spare3_c), .B(\data[19] ), .Z(n4_adj_1770)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(104[18] 138[6])
    defparam i1_2_lut_2_lut_adj_173.init = 16'h4444;
    LUT4 i1_2_lut_2_lut_adj_174 (.A(seed_spare3_c), .B(data[1]), .Z(n2_adj_1771)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(104[18] 138[6])
    defparam i1_2_lut_2_lut_adj_174.init = 16'h4444;
    PFUMX i12_adj_175 (.BLUT(n4_adj_1768), .ALUT(n2_adj_1764), .C0(state[1]), 
          .Z(n10217));
    FD1P3DX data_temp__i4 (.D(n10225), .SP(seed_spare1_c_enable_34), .CK(seed_spare1_c), 
            .CD(state_3__N_882), .Q(data_temp[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=3, LSE_LLINE=198, LSE_RLINE=215 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(147[18] 170[14])
    defparam data_temp__i4.GSR = "DISABLED";
    LUT4 i1_2_lut_2_lut_adj_176 (.A(seed_spare3_c), .B(data[2]), .Z(n2_adj_1772)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(104[18] 138[6])
    defparam i1_2_lut_2_lut_adj_176.init = 16'h4444;
    LUT4 i1_3_lut_3_lut (.A(seed_spare3_c), .B(data[0]), .C(state[1]), 
         .Z(n10913)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(104[18] 138[6])
    defparam i1_3_lut_3_lut.init = 16'h0404;
    FD1S3AX total_count_i4 (.D(total_count_15__N_1013[4]), .CK(clk_10mhz_c), 
            .Q(total_count[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=3, LSE_LLINE=198, LSE_RLINE=215 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(104[18] 138[6])
    defparam total_count_i4.GSR = "ENABLED";
    FD1P3DX data_temp__i3 (.D(n10223), .SP(seed_spare1_c_enable_34), .CK(seed_spare1_c), 
            .CD(state_3__N_882), .Q(data_temp[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=3, LSE_LLINE=198, LSE_RLINE=215 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(147[18] 170[14])
    defparam data_temp__i3.GSR = "DISABLED";
    LUT4 i1_2_lut_2_lut_adj_177 (.A(seed_spare3_c), .B(data[3]), .Z(n2_adj_1773)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(104[18] 138[6])
    defparam i1_2_lut_2_lut_adj_177.init = 16'h4444;
    FD1P3IX cstate__i0 (.D(n12620), .SP(clk_10mhz_c_enable_232), .CD(n3915), 
            .CK(clk_10mhz_c), .Q(cstate[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=3, LSE_LLINE=198, LSE_RLINE=215 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(104[18] 138[6])
    defparam cstate__i0.GSR = "ENABLED";
    LUT4 i1_2_lut_2_lut_adj_178 (.A(seed_spare3_c), .B(data[4]), .Z(n2_adj_1774)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(104[18] 138[6])
    defparam i1_2_lut_2_lut_adj_178.init = 16'h4444;
    PFUMX i12_adj_179 (.BLUT(n4_adj_1770), .ALUT(n2_adj_1763), .C0(state[1]), 
          .Z(n10219));
    CCU2D sub_1108_add_2_7 (.A0(dds_gain[5]), .B0(dds_current_limit_reg[5]), 
          .C0(GND_net), .D0(GND_net), .A1(dds_gain[6]), .B1(dds_current_limit_reg[6]), 
          .C1(GND_net), .D1(GND_net), .CIN(n9662), .COUT(n9663));
    defparam sub_1108_add_2_7.INIT0 = 16'h5999;
    defparam sub_1108_add_2_7.INIT1 = 16'h5999;
    defparam sub_1108_add_2_7.INJECT1_0 = "NO";
    defparam sub_1108_add_2_7.INJECT1_1 = "NO";
    LUT4 i1_2_lut_2_lut_adj_180 (.A(seed_spare3_c), .B(data[5]), .Z(n2_adj_1775)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(104[18] 138[6])
    defparam i1_2_lut_2_lut_adj_180.init = 16'h4444;
    LUT4 i1_2_lut_2_lut_adj_181 (.A(seed_spare3_c), .B(data[6]), .Z(n2)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(104[18] 138[6])
    defparam i1_2_lut_2_lut_adj_181.init = 16'h4444;
    CCU2D add_602_17 (.A0(total_count[14]), .B0(cstate[0]), .C0(GND_net), 
          .D0(GND_net), .A1(total_count[15]), .B1(cstate[0]), .C1(GND_net), 
          .D1(GND_net), .CIN(n9634), .S0(total_count_15__N_1081[14]), 
          .S1(total_count_15__N_1081[15]));   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(122[48] 125[51])
    defparam add_602_17.INIT0 = 16'h5a5a;
    defparam add_602_17.INIT1 = 16'h5a5a;
    defparam add_602_17.INJECT1_0 = "NO";
    defparam add_602_17.INJECT1_1 = "NO";
    LUT4 i1_2_lut_2_lut_adj_182 (.A(seed_spare3_c), .B(data[7]), .Z(n2_adj_1776)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(104[18] 138[6])
    defparam i1_2_lut_2_lut_adj_182.init = 16'h4444;
    CCU2D add_602_15 (.A0(total_count[12]), .B0(cstate[0]), .C0(GND_net), 
          .D0(GND_net), .A1(total_count[13]), .B1(cstate[0]), .C1(GND_net), 
          .D1(GND_net), .CIN(n9633), .COUT(n9634), .S0(total_count_15__N_1081[12]), 
          .S1(total_count_15__N_1081[13]));   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(122[48] 125[51])
    defparam add_602_15.INIT0 = 16'h5a5a;
    defparam add_602_15.INIT1 = 16'h5a5a;
    defparam add_602_15.INJECT1_0 = "NO";
    defparam add_602_15.INJECT1_1 = "NO";
    FD1S3AX total_count_i15 (.D(total_count_15__N_1013[15]), .CK(clk_10mhz_c), 
            .Q(total_count[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=3, LSE_LLINE=198, LSE_RLINE=215 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(104[18] 138[6])
    defparam total_count_i15.GSR = "ENABLED";
    CCU2D sub_1108_add_2_5 (.A0(dds_gain[3]), .B0(dds_current_limit_reg[3]), 
          .C0(GND_net), .D0(GND_net), .A1(dds_gain[4]), .B1(dds_current_limit_reg[4]), 
          .C1(GND_net), .D1(GND_net), .CIN(n9661), .COUT(n9662));
    defparam sub_1108_add_2_5.INIT0 = 16'h5999;
    defparam sub_1108_add_2_5.INIT1 = 16'h5999;
    defparam sub_1108_add_2_5.INJECT1_0 = "NO";
    defparam sub_1108_add_2_5.INJECT1_1 = "NO";
    PFUMX i12_adj_183 (.BLUT(n2_adj_1771), .ALUT(n4_adj_1762), .C0(state[1]), 
          .Z(n10221));
    LUT4 i1_2_lut_2_lut_adj_184 (.A(seed_spare3_c), .B(data[8]), .Z(n2_adj_1777)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(104[18] 138[6])
    defparam i1_2_lut_2_lut_adj_184.init = 16'h4444;
    LUT4 i1_2_lut_2_lut_adj_185 (.A(seed_spare3_c), .B(data[9]), .Z(n2_adj_1778)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(104[18] 138[6])
    defparam i1_2_lut_2_lut_adj_185.init = 16'h4444;
    FD1P3DX data_temp__i2 (.D(n10221), .SP(seed_spare1_c_enable_34), .CK(seed_spare1_c), 
            .CD(state_3__N_882), .Q(data_temp[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=3, LSE_LLINE=198, LSE_RLINE=215 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(147[18] 170[14])
    defparam data_temp__i2.GSR = "DISABLED";
    LUT4 i1_2_lut_2_lut_adj_186 (.A(seed_spare3_c), .B(data[10]), .Z(n2_adj_1779)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(104[18] 138[6])
    defparam i1_2_lut_2_lut_adj_186.init = 16'h4444;
    LUT4 i1_2_lut_2_lut_adj_187 (.A(seed_spare3_c), .B(data[15]), .Z(n2_adj_1780)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(104[18] 138[6])
    defparam i1_2_lut_2_lut_adj_187.init = 16'h4444;
    PFUMX i12_adj_188 (.BLUT(n2_adj_1772), .ALUT(n4_adj_1761), .C0(state[1]), 
          .Z(n10223));
    LUT4 i5365_2_lut_2_lut (.A(seed_spare3_c), .B(data[20]), .Z(data_temp_23__N_1109[22])) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(104[18] 138[6])
    defparam i5365_2_lut_2_lut.init = 16'h4444;
    LUT4 i1_4_lut_adj_189 (.A(total_count_15__N_1081[12]), .B(total_count[12]), 
         .C(n12645), .D(n17), .Z(total_count_15__N_1013[12])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(107[23] 137[28])
    defparam i1_4_lut_adj_189.init = 16'heca0;
    FD1S3AX total_count_i14 (.D(total_count_15__N_1013[14]), .CK(clk_10mhz_c), 
            .Q(total_count[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=3, LSE_LLINE=198, LSE_RLINE=215 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(104[18] 138[6])
    defparam total_count_i14.GSR = "ENABLED";
    LUT4 i3531_4_lut_then_4_lut (.A(clk_10mhz_c_enable_229), .B(dac_state[0]), 
         .C(n8), .D(n5540), .Z(n12652)) /* synthesis lut_function=(A ((C+(D))+!B)) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(190[62:75])
    defparam i3531_4_lut_then_4_lut.init = 16'haaa2;
    LUT4 i3531_4_lut_else_4_lut (.A(clk_10mhz_c_enable_229), .B(dac_state[0]), 
         .C(n8), .D(n5540), .Z(n12651)) /* synthesis lut_function=(A (B (C+(D))+!B (D))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(190[62:75])
    defparam i3531_4_lut_else_4_lut.init = 16'haa80;
    FD1S3AX total_count_i13 (.D(total_count_15__N_1013[13]), .CK(clk_10mhz_c), 
            .Q(total_count[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=3, LSE_LLINE=198, LSE_RLINE=215 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(104[18] 138[6])
    defparam total_count_i13.GSR = "ENABLED";
    LUT4 i1_2_lut (.A(n9264), .B(n205[0]), .Z(count_7__N_1141[0])) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut.init = 16'h8888;
    CCU2D add_602_5 (.A0(total_count[2]), .B0(cstate[0]), .C0(GND_net), 
          .D0(GND_net), .A1(total_count[3]), .B1(cstate[0]), .C1(GND_net), 
          .D1(GND_net), .CIN(n9628), .COUT(n9629), .S0(total_count_15__N_1081[2]), 
          .S1(total_count_15__N_1081[3]));   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(122[48] 125[51])
    defparam add_602_5.INIT0 = 16'h5a5a;
    defparam add_602_5.INIT1 = 16'h5a5a;
    defparam add_602_5.INJECT1_0 = "NO";
    defparam add_602_5.INJECT1_1 = "NO";
    FD1S3AX total_count_i3 (.D(total_count_15__N_1013[3]), .CK(clk_10mhz_c), 
            .Q(total_count[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=3, LSE_LLINE=198, LSE_RLINE=215 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(104[18] 138[6])
    defparam total_count_i3.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_190 (.A(count[1]), .B(n11771), .C(n11769), .D(count[5]), 
         .Z(n9264)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_190.init = 16'hfffe;
    FD1S3AX total_count_i2 (.D(total_count_15__N_1013[2]), .CK(clk_10mhz_c), 
            .Q(total_count[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=3, LSE_LLINE=198, LSE_RLINE=215 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(104[18] 138[6])
    defparam total_count_i2.GSR = "ENABLED";
    FD1S3AX total_count_i1 (.D(total_count_15__N_1013[1]), .CK(clk_10mhz_c), 
            .Q(total_count[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=3, LSE_LLINE=198, LSE_RLINE=215 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(104[18] 138[6])
    defparam total_count_i1.GSR = "ENABLED";
    PFUMX i12_adj_191 (.BLUT(n2_adj_1773), .ALUT(n4_adj_1760), .C0(state[1]), 
          .Z(n10225));
    LUT4 i1_4_lut_adj_192 (.A(count[0]), .B(count[7]), .C(count[6]), .D(count[2]), 
         .Z(n11771)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_192.init = 16'hfffe;
    FD1P3DX data_temp__i1 (.D(n10913), .SP(seed_spare1_c_enable_34), .CK(seed_spare1_c), 
            .CD(state_3__N_882), .Q(data_temp[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=3, LSE_LLINE=198, LSE_RLINE=215 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(147[18] 170[14])
    defparam data_temp__i1.GSR = "DISABLED";
    LUT4 i1_4_lut_else_3_lut (.A(spi_ready), .B(dac_state[0]), .C(dac_state[2]), 
         .D(data_ready_d), .Z(n12654)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(179[14] 202[11])
    defparam i1_4_lut_else_3_lut.init = 16'h0020;
    FD1P3IX dac_count_1536__i15 (.D(n69[15]), .SP(clk_10mhz_c_enable_229), 
            .CD(n6197), .CK(clk_10mhz_c), .Q(dac_count[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(190[62:75])
    defparam dac_count_1536__i15.GSR = "ENABLED";
    LUT4 i1_4_lut_then_4_lut (.A(dac_state[1]), .B(n8), .C(n5540), .D(dac_state[0]), 
         .Z(n12658)) /* synthesis lut_function=(!(A+!(B (D)+!B (C (D))))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(179[14] 202[11])
    defparam i1_4_lut_then_4_lut.init = 16'h5400;
    CCU2D add_602_3 (.A0(total_count[0]), .B0(cstate[0]), .C0(n6859), 
          .D0(GND_net), .A1(total_count[1]), .B1(cstate[0]), .C1(GND_net), 
          .D1(GND_net), .CIN(n9627), .COUT(n9628), .S0(total_count_15__N_1081[0]), 
          .S1(total_count_15__N_1081[1]));   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(122[48] 125[51])
    defparam add_602_3.INIT0 = 16'h56a6;
    defparam add_602_3.INIT1 = 16'h5a5a;
    defparam add_602_3.INJECT1_0 = "NO";
    defparam add_602_3.INJECT1_1 = "NO";
    FD1P3DX count_i0_i7 (.D(count_7__N_1141[7]), .SP(seed_spare1_c_enable_20), 
            .CK(seed_spare1_c), .CD(state_3__N_882), .Q(count[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=3, LSE_LLINE=198, LSE_RLINE=215 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(147[18] 170[14])
    defparam count_i0_i7.GSR = "DISABLED";
    LUT4 i1_2_lut_adj_193 (.A(count[4]), .B(count[3]), .Z(n11769)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_193.init = 16'heeee;
    FD1P3DX count_i0_i6 (.D(count_7__N_1141[6]), .SP(seed_spare1_c_enable_20), 
            .CK(seed_spare1_c), .CD(state_3__N_882), .Q(count[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=3, LSE_LLINE=198, LSE_RLINE=215 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(147[18] 170[14])
    defparam count_i0_i6.GSR = "DISABLED";
    FD1P3DX count_i0_i5 (.D(count_7__N_1141[5]), .SP(seed_spare1_c_enable_20), 
            .CK(seed_spare1_c), .CD(state_3__N_882), .Q(count[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=3, LSE_LLINE=198, LSE_RLINE=215 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(147[18] 170[14])
    defparam count_i0_i5.GSR = "DISABLED";
    FD1P3BX count_i0_i4 (.D(count_7__N_1141[4]), .SP(seed_spare1_c_enable_20), 
            .CK(seed_spare1_c), .PD(state_3__N_882), .Q(count[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=3, LSE_LLINE=198, LSE_RLINE=215 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(147[18] 170[14])
    defparam count_i0_i4.GSR = "DISABLED";
    FD1P3DX count_i0_i3 (.D(count_7__N_1141[3]), .SP(seed_spare1_c_enable_20), 
            .CK(seed_spare1_c), .CD(state_3__N_882), .Q(count[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=3, LSE_LLINE=198, LSE_RLINE=215 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(147[18] 170[14])
    defparam count_i0_i3.GSR = "DISABLED";
    CCU2D add_602_13 (.A0(total_count[10]), .B0(cstate[0]), .C0(GND_net), 
          .D0(GND_net), .A1(total_count[11]), .B1(cstate[0]), .C1(GND_net), 
          .D1(GND_net), .CIN(n9632), .COUT(n9633), .S0(total_count_15__N_1081[10]), 
          .S1(total_count_15__N_1081[11]));   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(122[48] 125[51])
    defparam add_602_13.INIT0 = 16'h5a5a;
    defparam add_602_13.INIT1 = 16'h5a5a;
    defparam add_602_13.INJECT1_0 = "NO";
    defparam add_602_13.INJECT1_1 = "NO";
    CCU2D sub_1108_add_2_3 (.A0(dds_gain[1]), .B0(dds_current_limit_reg[1]), 
          .C0(GND_net), .D0(GND_net), .A1(dds_gain[2]), .B1(dds_current_limit_reg[2]), 
          .C1(GND_net), .D1(GND_net), .CIN(n9660), .COUT(n9661));
    defparam sub_1108_add_2_3.INIT0 = 16'h5999;
    defparam sub_1108_add_2_3.INIT1 = 16'h5999;
    defparam sub_1108_add_2_3.INJECT1_0 = "NO";
    defparam sub_1108_add_2_3.INJECT1_1 = "NO";
    LUT4 i1_4_lut_else_4_lut (.A(dac_state[1]), .B(data[20]), .C(dac_state[0]), 
         .Z(n12657)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(179[14] 202[11])
    defparam i1_4_lut_else_4_lut.init = 16'h0404;
    CCU2D sub_1108_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(dds_gain[0]), .B1(dds_current_limit_reg[0]), 
          .C1(GND_net), .D1(GND_net), .COUT(n9660));
    defparam sub_1108_add_2_1.INIT0 = 16'h0000;
    defparam sub_1108_add_2_1.INIT1 = 16'h5999;
    defparam sub_1108_add_2_1.INJECT1_0 = "NO";
    defparam sub_1108_add_2_1.INJECT1_1 = "NO";
    CCU2D sub_1110_add_2_17 (.A0(cw_gain[15]), .B0(cw_current_limit_reg[15]), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n9659), .S1(n3252));
    defparam sub_1110_add_2_17.INIT0 = 16'h5999;
    defparam sub_1110_add_2_17.INIT1 = 16'h0000;
    defparam sub_1110_add_2_17.INJECT1_0 = "NO";
    defparam sub_1110_add_2_17.INJECT1_1 = "NO";
    FD1P3IX dac_count_1536__i14 (.D(n69[14]), .SP(clk_10mhz_c_enable_229), 
            .CD(n6197), .CK(clk_10mhz_c), .Q(dac_count[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(190[62:75])
    defparam dac_count_1536__i14.GSR = "ENABLED";
    FD1P3IX dac_count_1536__i13 (.D(n69[13]), .SP(clk_10mhz_c_enable_229), 
            .CD(n6197), .CK(clk_10mhz_c), .Q(dac_count[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(190[62:75])
    defparam dac_count_1536__i13.GSR = "ENABLED";
    FD1P3BX count_i0_i2 (.D(count_7__N_1141[2]), .SP(seed_spare1_c_enable_20), 
            .CK(seed_spare1_c), .PD(state_3__N_882), .Q(count[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=3, LSE_LLINE=198, LSE_RLINE=215 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(147[18] 170[14])
    defparam count_i0_i2.GSR = "DISABLED";
    CCU2D sub_1110_add_2_15 (.A0(cw_gain[13]), .B0(cw_current_limit_reg[13]), 
          .C0(GND_net), .D0(GND_net), .A1(cw_gain[14]), .B1(cw_current_limit_reg[14]), 
          .C1(GND_net), .D1(GND_net), .CIN(n9658), .COUT(n9659));
    defparam sub_1110_add_2_15.INIT0 = 16'h5999;
    defparam sub_1110_add_2_15.INIT1 = 16'h5999;
    defparam sub_1110_add_2_15.INJECT1_0 = "NO";
    defparam sub_1110_add_2_15.INJECT1_1 = "NO";
    PFUMX i12_adj_194 (.BLUT(n2_adj_1774), .ALUT(n4_adj_1759), .C0(state[1]), 
          .Z(n10227));
    PFUMX i12_adj_195 (.BLUT(n2_adj_1775), .ALUT(n4_adj_1758), .C0(state[1]), 
          .Z(n10229));
    CCU2D add_602_11 (.A0(total_count[8]), .B0(cstate[0]), .C0(GND_net), 
          .D0(GND_net), .A1(total_count[9]), .B1(cstate[0]), .C1(GND_net), 
          .D1(GND_net), .CIN(n9631), .COUT(n9632), .S0(total_count_15__N_1081[8]), 
          .S1(total_count_15__N_1081[9]));   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(122[48] 125[51])
    defparam add_602_11.INIT0 = 16'h5a5a;
    defparam add_602_11.INIT1 = 16'h5a5a;
    defparam add_602_11.INJECT1_0 = "NO";
    defparam add_602_11.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_302 (.A(cstate[0]), .B(data[20]), .Z(n12620)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(104[18] 138[6])
    defparam i1_2_lut_rep_302.init = 16'h4444;
    LUT4 i1_2_lut_3_lut_3_lut (.A(cstate[0]), .B(data[20]), .C(n6859), 
         .Z(n4618)) /* synthesis lut_function=(A (C)+!A (B)) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(104[18] 138[6])
    defparam i1_2_lut_3_lut_3_lut.init = 16'he4e4;
    FD1P3BX count_i0_i1 (.D(count_7__N_1141[1]), .SP(seed_spare1_c_enable_20), 
            .CK(seed_spare1_c), .PD(state_3__N_882), .Q(count[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=3, LSE_LLINE=198, LSE_RLINE=215 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(147[18] 170[14])
    defparam count_i0_i1.GSR = "DISABLED";
    FD1P3IX dac_count_1536__i12 (.D(n69[12]), .SP(clk_10mhz_c_enable_229), 
            .CD(n6197), .CK(clk_10mhz_c), .Q(dac_count[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(190[62:75])
    defparam dac_count_1536__i12.GSR = "ENABLED";
    LUT4 i9514_2_lut_rep_225_3_lut (.A(n5540), .B(n50), .C(dac_state[1]), 
         .Z(n12543)) /* synthesis lut_function=(!(A (C)+!A (B (C)))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(190[62:75])
    defparam i9514_2_lut_rep_225_3_lut.init = 16'h1f1f;
    CCU2D sub_1110_add_2_13 (.A0(cw_gain[11]), .B0(cw_current_limit_reg[11]), 
          .C0(GND_net), .D0(GND_net), .A1(cw_gain[12]), .B1(cw_current_limit_reg[12]), 
          .C1(GND_net), .D1(GND_net), .CIN(n9657), .COUT(n9658));
    defparam sub_1110_add_2_13.INIT0 = 16'h5999;
    defparam sub_1110_add_2_13.INIT1 = 16'h5999;
    defparam sub_1110_add_2_13.INJECT1_0 = "NO";
    defparam sub_1110_add_2_13.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_330 (.A(n5540), .B(n50), .Z(n12946)) /* synthesis lut_function=(A+(B)) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(190[62:75])
    defparam i1_2_lut_rep_330.init = 16'heeee;
    CCU2D sub_1110_add_2_11 (.A0(cw_gain[9]), .B0(cw_current_limit_reg[9]), 
          .C0(GND_net), .D0(GND_net), .A1(cw_gain[10]), .B1(cw_current_limit_reg[10]), 
          .C1(GND_net), .D1(GND_net), .CIN(n9656), .COUT(n9657));
    defparam sub_1110_add_2_11.INIT0 = 16'h5999;
    defparam sub_1110_add_2_11.INIT1 = 16'h5999;
    defparam sub_1110_add_2_11.INJECT1_0 = "NO";
    defparam sub_1110_add_2_11.INJECT1_1 = "NO";
    LUT4 i1_4_lut_then_3_lut_4_lut (.A(n5540), .B(n50), .C(dac_state[2]), 
         .D(dac_state[0]), .Z(n12655)) /* synthesis lut_function=(!(A ((D)+!C)+!A (((D)+!C)+!B))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(190[62:75])
    defparam i1_4_lut_then_3_lut_4_lut.init = 16'h00e0;
    FD1P3IX dac_count_1536__i11 (.D(n69[11]), .SP(clk_10mhz_c_enable_229), 
            .CD(n6197), .CK(clk_10mhz_c), .Q(dac_count[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(190[62:75])
    defparam dac_count_1536__i11.GSR = "ENABLED";
    FD1P3IX dac_count_1536__i10 (.D(n69[10]), .SP(clk_10mhz_c_enable_229), 
            .CD(n6197), .CK(clk_10mhz_c), .Q(dac_count[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(190[62:75])
    defparam dac_count_1536__i10.GSR = "ENABLED";
    FD1P3IX dac_count_1536__i9 (.D(n69[9]), .SP(clk_10mhz_c_enable_229), 
            .CD(n6197), .CK(clk_10mhz_c), .Q(dac_count[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(190[62:75])
    defparam dac_count_1536__i9.GSR = "ENABLED";
    FD1P3IX dac_count_1536__i8 (.D(n69[8]), .SP(clk_10mhz_c_enable_229), 
            .CD(n6197), .CK(clk_10mhz_c), .Q(dac_count[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(190[62:75])
    defparam dac_count_1536__i8.GSR = "ENABLED";
    FD1P3IX dac_count_1536__i7 (.D(n69[7]), .SP(clk_10mhz_c_enable_229), 
            .CD(n6197), .CK(clk_10mhz_c), .Q(dac_count[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(190[62:75])
    defparam dac_count_1536__i7.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_243 (.A(n5540), .B(n8), .Z(n12561)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_243.init = 16'heeee;
    FD1P3IX dac_count_1536__i6 (.D(n69[6]), .SP(clk_10mhz_c_enable_229), 
            .CD(n6197), .CK(clk_10mhz_c), .Q(dac_count[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(190[62:75])
    defparam dac_count_1536__i6.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut (.A(n5540), .B(n8), .C(dac_state[0]), .Z(n3609)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam i1_2_lut_3_lut.init = 16'he0e0;
    PFUMX i12_adj_196 (.BLUT(n2_adj_1776), .ALUT(n4_adj_1757), .C0(state[1]), 
          .Z(n10233));
    PFUMX i12_adj_197 (.BLUT(n2_adj_1777), .ALUT(n4_adj_1756), .C0(state[1]), 
          .Z(n10235));
    FD1P3IX dac_count_1536__i5 (.D(n69[5]), .SP(clk_10mhz_c_enable_229), 
            .CD(n6197), .CK(clk_10mhz_c), .Q(dac_count[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(190[62:75])
    defparam dac_count_1536__i5.GSR = "ENABLED";
    FD1P3DX data_temp__i23 (.D(n10376), .SP(seed_spare1_c_enable_34), .CK(seed_spare1_c), 
            .CD(state_3__N_882), .Q(data_temp[23])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=3, LSE_LLINE=198, LSE_RLINE=215 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(147[18] 170[14])
    defparam data_temp__i23.GSR = "DISABLED";
    LUT4 i1_4_lut_adj_198 (.A(n11383), .B(n11367), .C(n11375), .D(n11373), 
         .Z(n5540)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_198.init = 16'hfffe;
    PFUMX i12_adj_199 (.BLUT(n2_adj_1778), .ALUT(n4_adj_1755), .C0(state[1]), 
          .Z(n10237));
    FD1P3IX dac_count_1536__i4 (.D(n69[4]), .SP(clk_10mhz_c_enable_229), 
            .CD(n6197), .CK(clk_10mhz_c), .Q(dac_count[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(190[62:75])
    defparam dac_count_1536__i4.GSR = "ENABLED";
    FD1P3DX data_i20 (.D(n12948), .SP(clk_10mhz_c_enable_54), .CK(clk_10mhz_c), 
            .CD(state_3__N_882), .Q(data[20])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=3, LSE_LLINE=198, LSE_RLINE=215 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(221[14] 231[17])
    defparam data_i20.GSR = "DISABLED";
    FD1S3DX data_i19 (.D(n5979), .CK(clk_10mhz_c), .CD(state_3__N_882), 
            .Q(\data[19] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=3, LSE_LLINE=198, LSE_RLINE=215 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(221[14] 231[17])
    defparam data_i19.GSR = "DISABLED";
    FD1S3DX data_i16 (.D(\data_23__N_925[16] ), .CK(clk_10mhz_c), .CD(state_3__N_882), 
            .Q(\data[16] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=3, LSE_LLINE=198, LSE_RLINE=215 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(221[14] 231[17])
    defparam data_i16.GSR = "DISABLED";
    PFUMX i12_adj_200 (.BLUT(n2_adj_1779), .ALUT(n4_adj_1749), .C0(state[1]), 
          .Z(n10239));
    FD1P3DX data_i15 (.D(data_23__N_925[15]), .SP(clk_10mhz_c_enable_54), 
            .CK(clk_10mhz_c), .CD(state_3__N_882), .Q(data[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=3, LSE_LLINE=198, LSE_RLINE=215 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(221[14] 231[17])
    defparam data_i15.GSR = "DISABLED";
    FD1P3DX data_i14 (.D(data_23__N_925[14]), .SP(clk_10mhz_c_enable_54), 
            .CK(clk_10mhz_c), .CD(state_3__N_882), .Q(data[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=3, LSE_LLINE=198, LSE_RLINE=215 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(221[14] 231[17])
    defparam data_i14.GSR = "DISABLED";
    FD1P3DX data_i13 (.D(data_23__N_925[13]), .SP(clk_10mhz_c_enable_54), 
            .CK(clk_10mhz_c), .CD(state_3__N_882), .Q(data[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=3, LSE_LLINE=198, LSE_RLINE=215 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(221[14] 231[17])
    defparam data_i13.GSR = "DISABLED";
    FD1P3DX data_i12 (.D(data_23__N_925[12]), .SP(clk_10mhz_c_enable_54), 
            .CK(clk_10mhz_c), .CD(state_3__N_882), .Q(data[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=3, LSE_LLINE=198, LSE_RLINE=215 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(221[14] 231[17])
    defparam data_i12.GSR = "DISABLED";
    FD1P3DX data_i11 (.D(data_23__N_925[11]), .SP(clk_10mhz_c_enable_54), 
            .CK(clk_10mhz_c), .CD(state_3__N_882), .Q(data[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=3, LSE_LLINE=198, LSE_RLINE=215 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(221[14] 231[17])
    defparam data_i11.GSR = "DISABLED";
    FD1P3DX data_i10 (.D(data_23__N_925[10]), .SP(clk_10mhz_c_enable_54), 
            .CK(clk_10mhz_c), .CD(state_3__N_882), .Q(data[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=3, LSE_LLINE=198, LSE_RLINE=215 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(221[14] 231[17])
    defparam data_i10.GSR = "DISABLED";
    LUT4 i1_4_lut_adj_201 (.A(dac_count[8]), .B(dac_count[9]), .C(dac_count[10]), 
         .D(dac_count[12]), .Z(n11383)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_201.init = 16'hfffe;
    FD1P3IX dac_count_1536__i3 (.D(n69[3]), .SP(clk_10mhz_c_enable_229), 
            .CD(n6197), .CK(clk_10mhz_c), .Q(dac_count[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(190[62:75])
    defparam dac_count_1536__i3.GSR = "ENABLED";
    FD1P3DX data_i9 (.D(data_23__N_925[9]), .SP(clk_10mhz_c_enable_54), 
            .CK(clk_10mhz_c), .CD(state_3__N_882), .Q(data[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=3, LSE_LLINE=198, LSE_RLINE=215 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(221[14] 231[17])
    defparam data_i9.GSR = "DISABLED";
    FD1P3IX dac_count_1536__i2 (.D(n69[2]), .SP(clk_10mhz_c_enable_229), 
            .CD(n6197), .CK(clk_10mhz_c), .Q(dac_count[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(190[62:75])
    defparam dac_count_1536__i2.GSR = "ENABLED";
    FD1P3DX data_i8 (.D(data_23__N_925[8]), .SP(clk_10mhz_c_enable_54), 
            .CK(clk_10mhz_c), .CD(state_3__N_882), .Q(data[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=3, LSE_LLINE=198, LSE_RLINE=215 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(221[14] 231[17])
    defparam data_i8.GSR = "DISABLED";
    FD1P3DX data_i7 (.D(data_23__N_925[7]), .SP(clk_10mhz_c_enable_54), 
            .CK(clk_10mhz_c), .CD(state_3__N_882), .Q(data[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=3, LSE_LLINE=198, LSE_RLINE=215 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(221[14] 231[17])
    defparam data_i7.GSR = "DISABLED";
    FD1P3DX data_i6 (.D(data_23__N_925[6]), .SP(clk_10mhz_c_enable_54), 
            .CK(clk_10mhz_c), .CD(state_3__N_882), .Q(data[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=3, LSE_LLINE=198, LSE_RLINE=215 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(221[14] 231[17])
    defparam data_i6.GSR = "DISABLED";
    FD1P3DX data_i5 (.D(data_23__N_925[5]), .SP(clk_10mhz_c_enable_54), 
            .CK(clk_10mhz_c), .CD(state_3__N_882), .Q(data[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=3, LSE_LLINE=198, LSE_RLINE=215 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(221[14] 231[17])
    defparam data_i5.GSR = "DISABLED";
    FD1P3DX data_i4 (.D(data_23__N_925[4]), .SP(clk_10mhz_c_enable_54), 
            .CK(clk_10mhz_c), .CD(state_3__N_882), .Q(data[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=3, LSE_LLINE=198, LSE_RLINE=215 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(221[14] 231[17])
    defparam data_i4.GSR = "DISABLED";
    FD1P3DX data_i3 (.D(data_23__N_925[3]), .SP(clk_10mhz_c_enable_54), 
            .CK(clk_10mhz_c), .CD(state_3__N_882), .Q(data[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=3, LSE_LLINE=198, LSE_RLINE=215 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(221[14] 231[17])
    defparam data_i3.GSR = "DISABLED";
    FD1P3DX data_i2 (.D(data_23__N_925[2]), .SP(clk_10mhz_c_enable_54), 
            .CK(clk_10mhz_c), .CD(state_3__N_882), .Q(data[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=3, LSE_LLINE=198, LSE_RLINE=215 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(221[14] 231[17])
    defparam data_i2.GSR = "DISABLED";
    FD1P3DX data_i1 (.D(data_23__N_925[1]), .SP(clk_10mhz_c_enable_54), 
            .CK(clk_10mhz_c), .CD(state_3__N_882), .Q(data[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=3, LSE_LLINE=198, LSE_RLINE=215 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(221[14] 231[17])
    defparam data_i1.GSR = "DISABLED";
    FD1P3IX dac_count_1536__i1 (.D(n69[1]), .SP(clk_10mhz_c_enable_229), 
            .CD(n6197), .CK(clk_10mhz_c), .Q(dac_count[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(190[62:75])
    defparam dac_count_1536__i1.GSR = "ENABLED";
    PFUMX i12_adj_202 (.BLUT(n2_adj_1765), .ALUT(n4_adj_1750), .C0(state[1]), 
          .Z(n10241));
    LUT4 i1_2_lut_adj_203 (.A(dac_count[5]), .B(dac_count[4]), .Z(n11367)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_203.init = 16'heeee;
    FD1P3AX cw_gain_reg_i0_i0 (.D(cw_gain[0]), .SP(clk_10mhz_c_enable_251), 
            .CK(clk_10mhz_c), .Q(cw_gain_reg[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=3, LSE_LLINE=198, LSE_RLINE=215 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(76[20] 87[24])
    defparam cw_gain_reg_i0_i0.GSR = "ENABLED";
    PFUMX i12_adj_204 (.BLUT(n2_adj_1780), .ALUT(n4_adj_1754), .C0(state[1]), 
          .Z(n10249));
    FD1P3AX dds_gain_reg_i0_i15 (.D(dds_gain[15]), .SP(clk_10mhz_c_enable_89), 
            .CK(clk_10mhz_c), .Q(dds_gain_reg[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=3, LSE_LLINE=198, LSE_RLINE=215 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(76[20] 87[24])
    defparam dds_gain_reg_i0_i15.GSR = "ENABLED";
    FD1P3AY dds_gain_reg_i0_i14 (.D(dds_gain[14]), .SP(clk_10mhz_c_enable_89), 
            .CK(clk_10mhz_c), .Q(dds_gain_reg[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=3, LSE_LLINE=198, LSE_RLINE=215 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(76[20] 87[24])
    defparam dds_gain_reg_i0_i14.GSR = "ENABLED";
    FD1P3AY dds_gain_reg_i0_i13 (.D(dds_gain[13]), .SP(clk_10mhz_c_enable_89), 
            .CK(clk_10mhz_c), .Q(dds_gain_reg[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=3, LSE_LLINE=198, LSE_RLINE=215 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(76[20] 87[24])
    defparam dds_gain_reg_i0_i13.GSR = "ENABLED";
    FD1P3AX dds_gain_reg_i0_i12 (.D(dds_gain[12]), .SP(clk_10mhz_c_enable_89), 
            .CK(clk_10mhz_c), .Q(dds_gain_reg[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=3, LSE_LLINE=198, LSE_RLINE=215 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(76[20] 87[24])
    defparam dds_gain_reg_i0_i12.GSR = "ENABLED";
    FD1P3AX dds_gain_reg_i0_i11 (.D(dds_gain[11]), .SP(clk_10mhz_c_enable_89), 
            .CK(clk_10mhz_c), .Q(dds_gain_reg[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=3, LSE_LLINE=198, LSE_RLINE=215 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(76[20] 87[24])
    defparam dds_gain_reg_i0_i11.GSR = "ENABLED";
    FD1P3AX dds_gain_reg_i0_i10 (.D(dds_gain[10]), .SP(clk_10mhz_c_enable_89), 
            .CK(clk_10mhz_c), .Q(dds_gain_reg[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=3, LSE_LLINE=198, LSE_RLINE=215 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(76[20] 87[24])
    defparam dds_gain_reg_i0_i10.GSR = "ENABLED";
    FD1P3AX dds_gain_reg_i0_i9 (.D(dds_gain[9]), .SP(clk_10mhz_c_enable_89), 
            .CK(clk_10mhz_c), .Q(dds_gain_reg[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=3, LSE_LLINE=198, LSE_RLINE=215 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(76[20] 87[24])
    defparam dds_gain_reg_i0_i9.GSR = "ENABLED";
    FD1P3AX dds_gain_reg_i0_i8 (.D(dds_gain[8]), .SP(clk_10mhz_c_enable_89), 
            .CK(clk_10mhz_c), .Q(dds_gain_reg[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=3, LSE_LLINE=198, LSE_RLINE=215 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(76[20] 87[24])
    defparam dds_gain_reg_i0_i8.GSR = "ENABLED";
    FD1P3AX dds_gain_reg_i0_i7 (.D(dds_gain[7]), .SP(clk_10mhz_c_enable_89), 
            .CK(clk_10mhz_c), .Q(dds_gain_reg[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=3, LSE_LLINE=198, LSE_RLINE=215 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(76[20] 87[24])
    defparam dds_gain_reg_i0_i7.GSR = "ENABLED";
    FD1P3AY dds_gain_reg_i0_i6 (.D(dds_gain[6]), .SP(clk_10mhz_c_enable_89), 
            .CK(clk_10mhz_c), .Q(dds_gain_reg[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=3, LSE_LLINE=198, LSE_RLINE=215 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(76[20] 87[24])
    defparam dds_gain_reg_i0_i6.GSR = "ENABLED";
    FD1P3AX dds_gain_reg_i0_i5 (.D(dds_gain[5]), .SP(clk_10mhz_c_enable_89), 
            .CK(clk_10mhz_c), .Q(dds_gain_reg[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=3, LSE_LLINE=198, LSE_RLINE=215 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(76[20] 87[24])
    defparam dds_gain_reg_i0_i5.GSR = "ENABLED";
    FD1P3AY dds_gain_reg_i0_i4 (.D(dds_gain[4]), .SP(clk_10mhz_c_enable_89), 
            .CK(clk_10mhz_c), .Q(dds_gain_reg[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=3, LSE_LLINE=198, LSE_RLINE=215 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(76[20] 87[24])
    defparam dds_gain_reg_i0_i4.GSR = "ENABLED";
    FD1P3AX dds_gain_reg_i0_i3 (.D(dds_gain[3]), .SP(clk_10mhz_c_enable_89), 
            .CK(clk_10mhz_c), .Q(dds_gain_reg[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=3, LSE_LLINE=198, LSE_RLINE=215 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(76[20] 87[24])
    defparam dds_gain_reg_i0_i3.GSR = "ENABLED";
    FD1P3AX dds_gain_reg_i0_i2 (.D(dds_gain[2]), .SP(clk_10mhz_c_enable_89), 
            .CK(clk_10mhz_c), .Q(dds_gain_reg[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=3, LSE_LLINE=198, LSE_RLINE=215 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(76[20] 87[24])
    defparam dds_gain_reg_i0_i2.GSR = "ENABLED";
    FD1P3AX dds_gain_reg_i0_i1 (.D(dds_gain[1]), .SP(clk_10mhz_c_enable_89), 
            .CK(clk_10mhz_c), .Q(dds_gain_reg[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=3, LSE_LLINE=198, LSE_RLINE=215 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(76[20] 87[24])
    defparam dds_gain_reg_i0_i1.GSR = "ENABLED";
    FD1P3AY cw_current_limit_reg_i0_i15 (.D(cw_current_limit[15]), .SP(\control[3] ), 
            .CK(clk_10mhz_c), .Q(cw_current_limit_reg[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=3, LSE_LLINE=198, LSE_RLINE=215 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(209[14] 214[17])
    defparam cw_current_limit_reg_i0_i15.GSR = "ENABLED";
    FD1P3AY cw_current_limit_reg_i0_i14 (.D(cw_current_limit[14]), .SP(\control[3] ), 
            .CK(clk_10mhz_c), .Q(cw_current_limit_reg[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=3, LSE_LLINE=198, LSE_RLINE=215 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(209[14] 214[17])
    defparam cw_current_limit_reg_i0_i14.GSR = "ENABLED";
    FD1P3AY cw_current_limit_reg_i0_i13 (.D(cw_current_limit[13]), .SP(\control[3] ), 
            .CK(clk_10mhz_c), .Q(cw_current_limit_reg[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=3, LSE_LLINE=198, LSE_RLINE=215 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(209[14] 214[17])
    defparam cw_current_limit_reg_i0_i13.GSR = "ENABLED";
    FD1P3AY cw_current_limit_reg_i0_i12 (.D(cw_current_limit[12]), .SP(\control[3] ), 
            .CK(clk_10mhz_c), .Q(cw_current_limit_reg[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=3, LSE_LLINE=198, LSE_RLINE=215 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(209[14] 214[17])
    defparam cw_current_limit_reg_i0_i12.GSR = "ENABLED";
    FD1P3AY cw_current_limit_reg_i0_i11 (.D(cw_current_limit[11]), .SP(\control[3] ), 
            .CK(clk_10mhz_c), .Q(cw_current_limit_reg[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=3, LSE_LLINE=198, LSE_RLINE=215 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(209[14] 214[17])
    defparam cw_current_limit_reg_i0_i11.GSR = "ENABLED";
    FD1P3AY cw_current_limit_reg_i0_i10 (.D(cw_current_limit[10]), .SP(\control[3] ), 
            .CK(clk_10mhz_c), .Q(cw_current_limit_reg[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=3, LSE_LLINE=198, LSE_RLINE=215 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(209[14] 214[17])
    defparam cw_current_limit_reg_i0_i10.GSR = "ENABLED";
    FD1P3AY cw_current_limit_reg_i0_i9 (.D(cw_current_limit[9]), .SP(\control[3] ), 
            .CK(clk_10mhz_c), .Q(cw_current_limit_reg[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=3, LSE_LLINE=198, LSE_RLINE=215 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(209[14] 214[17])
    defparam cw_current_limit_reg_i0_i9.GSR = "ENABLED";
    FD1P3AY cw_current_limit_reg_i0_i8 (.D(cw_current_limit[8]), .SP(\control[3] ), 
            .CK(clk_10mhz_c), .Q(cw_current_limit_reg[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=3, LSE_LLINE=198, LSE_RLINE=215 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(209[14] 214[17])
    defparam cw_current_limit_reg_i0_i8.GSR = "ENABLED";
    FD1P3AY cw_current_limit_reg_i0_i7 (.D(cw_current_limit[7]), .SP(\control[3] ), 
            .CK(clk_10mhz_c), .Q(cw_current_limit_reg[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=3, LSE_LLINE=198, LSE_RLINE=215 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(209[14] 214[17])
    defparam cw_current_limit_reg_i0_i7.GSR = "ENABLED";
    FD1P3AY cw_current_limit_reg_i0_i6 (.D(cw_current_limit[6]), .SP(\control[3] ), 
            .CK(clk_10mhz_c), .Q(cw_current_limit_reg[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=3, LSE_LLINE=198, LSE_RLINE=215 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(209[14] 214[17])
    defparam cw_current_limit_reg_i0_i6.GSR = "ENABLED";
    FD1P3AY cw_current_limit_reg_i0_i5 (.D(cw_current_limit[5]), .SP(\control[3] ), 
            .CK(clk_10mhz_c), .Q(cw_current_limit_reg[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=3, LSE_LLINE=198, LSE_RLINE=215 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(209[14] 214[17])
    defparam cw_current_limit_reg_i0_i5.GSR = "ENABLED";
    FD1P3AY cw_current_limit_reg_i0_i4 (.D(cw_current_limit[4]), .SP(\control[3] ), 
            .CK(clk_10mhz_c), .Q(cw_current_limit_reg[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=3, LSE_LLINE=198, LSE_RLINE=215 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(209[14] 214[17])
    defparam cw_current_limit_reg_i0_i4.GSR = "ENABLED";
    FD1P3AY cw_current_limit_reg_i0_i3 (.D(cw_current_limit[3]), .SP(\control[3] ), 
            .CK(clk_10mhz_c), .Q(cw_current_limit_reg[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=3, LSE_LLINE=198, LSE_RLINE=215 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(209[14] 214[17])
    defparam cw_current_limit_reg_i0_i3.GSR = "ENABLED";
    FD1P3AY cw_current_limit_reg_i0_i2 (.D(cw_current_limit[2]), .SP(\control[3] ), 
            .CK(clk_10mhz_c), .Q(cw_current_limit_reg[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=3, LSE_LLINE=198, LSE_RLINE=215 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(209[14] 214[17])
    defparam cw_current_limit_reg_i0_i2.GSR = "ENABLED";
    FD1P3AY cw_current_limit_reg_i0_i1 (.D(cw_current_limit[1]), .SP(\control[3] ), 
            .CK(clk_10mhz_c), .Q(cw_current_limit_reg[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=3, LSE_LLINE=198, LSE_RLINE=215 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(209[14] 214[17])
    defparam cw_current_limit_reg_i0_i1.GSR = "ENABLED";
    FD1P3AY dds_current_limit_reg_i0_i15 (.D(dds_current_limit[15]), .SP(\control[3] ), 
            .CK(clk_10mhz_c), .Q(dds_current_limit_reg[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=3, LSE_LLINE=198, LSE_RLINE=215 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(209[14] 214[17])
    defparam dds_current_limit_reg_i0_i15.GSR = "ENABLED";
    FD1P3AY dds_current_limit_reg_i0_i14 (.D(dds_current_limit[14]), .SP(\control[3] ), 
            .CK(clk_10mhz_c), .Q(dds_current_limit_reg[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=3, LSE_LLINE=198, LSE_RLINE=215 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(209[14] 214[17])
    defparam dds_current_limit_reg_i0_i14.GSR = "ENABLED";
    FD1P3AY dds_current_limit_reg_i0_i13 (.D(dds_current_limit[13]), .SP(\control[3] ), 
            .CK(clk_10mhz_c), .Q(dds_current_limit_reg[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=3, LSE_LLINE=198, LSE_RLINE=215 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(209[14] 214[17])
    defparam dds_current_limit_reg_i0_i13.GSR = "ENABLED";
    FD1P3AY dds_current_limit_reg_i0_i12 (.D(dds_current_limit[12]), .SP(\control[3] ), 
            .CK(clk_10mhz_c), .Q(dds_current_limit_reg[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=3, LSE_LLINE=198, LSE_RLINE=215 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(209[14] 214[17])
    defparam dds_current_limit_reg_i0_i12.GSR = "ENABLED";
    FD1P3AY dds_current_limit_reg_i0_i11 (.D(dds_current_limit[11]), .SP(\control[3] ), 
            .CK(clk_10mhz_c), .Q(dds_current_limit_reg[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=3, LSE_LLINE=198, LSE_RLINE=215 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(209[14] 214[17])
    defparam dds_current_limit_reg_i0_i11.GSR = "ENABLED";
    FD1P3AY dds_current_limit_reg_i0_i10 (.D(dds_current_limit[10]), .SP(\control[3] ), 
            .CK(clk_10mhz_c), .Q(dds_current_limit_reg[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=3, LSE_LLINE=198, LSE_RLINE=215 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(209[14] 214[17])
    defparam dds_current_limit_reg_i0_i10.GSR = "ENABLED";
    FD1P3AY dds_current_limit_reg_i0_i9 (.D(dds_current_limit[9]), .SP(\control[3] ), 
            .CK(clk_10mhz_c), .Q(dds_current_limit_reg[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=3, LSE_LLINE=198, LSE_RLINE=215 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(209[14] 214[17])
    defparam dds_current_limit_reg_i0_i9.GSR = "ENABLED";
    FD1P3AY dds_current_limit_reg_i0_i8 (.D(dds_current_limit[8]), .SP(\control[3] ), 
            .CK(clk_10mhz_c), .Q(dds_current_limit_reg[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=3, LSE_LLINE=198, LSE_RLINE=215 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(209[14] 214[17])
    defparam dds_current_limit_reg_i0_i8.GSR = "ENABLED";
    FD1P3AY dds_current_limit_reg_i0_i7 (.D(dds_current_limit[7]), .SP(\control[3] ), 
            .CK(clk_10mhz_c), .Q(dds_current_limit_reg[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=3, LSE_LLINE=198, LSE_RLINE=215 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(209[14] 214[17])
    defparam dds_current_limit_reg_i0_i7.GSR = "ENABLED";
    FD1P3AY dds_current_limit_reg_i0_i6 (.D(dds_current_limit[6]), .SP(\control[3] ), 
            .CK(clk_10mhz_c), .Q(dds_current_limit_reg[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=3, LSE_LLINE=198, LSE_RLINE=215 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(209[14] 214[17])
    defparam dds_current_limit_reg_i0_i6.GSR = "ENABLED";
    FD1P3AY dds_current_limit_reg_i0_i5 (.D(dds_current_limit[5]), .SP(\control[3] ), 
            .CK(clk_10mhz_c), .Q(dds_current_limit_reg[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=3, LSE_LLINE=198, LSE_RLINE=215 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(209[14] 214[17])
    defparam dds_current_limit_reg_i0_i5.GSR = "ENABLED";
    FD1P3AY dds_current_limit_reg_i0_i4 (.D(dds_current_limit[4]), .SP(\control[3] ), 
            .CK(clk_10mhz_c), .Q(dds_current_limit_reg[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=3, LSE_LLINE=198, LSE_RLINE=215 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(209[14] 214[17])
    defparam dds_current_limit_reg_i0_i4.GSR = "ENABLED";
    FD1P3AY dds_current_limit_reg_i0_i3 (.D(dds_current_limit[3]), .SP(\control[3] ), 
            .CK(clk_10mhz_c), .Q(dds_current_limit_reg[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=3, LSE_LLINE=198, LSE_RLINE=215 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(209[14] 214[17])
    defparam dds_current_limit_reg_i0_i3.GSR = "ENABLED";
    FD1P3AY dds_current_limit_reg_i0_i2 (.D(dds_current_limit[2]), .SP(\control[3] ), 
            .CK(clk_10mhz_c), .Q(dds_current_limit_reg[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=3, LSE_LLINE=198, LSE_RLINE=215 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(209[14] 214[17])
    defparam dds_current_limit_reg_i0_i2.GSR = "ENABLED";
    FD1P3AY dds_current_limit_reg_i0_i1 (.D(dds_current_limit[1]), .SP(\control[3] ), 
            .CK(clk_10mhz_c), .Q(dds_current_limit_reg[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=3, LSE_LLINE=198, LSE_RLINE=215 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(209[14] 214[17])
    defparam dds_current_limit_reg_i0_i1.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_205 (.A(dac_count[11]), .B(dac_count[15]), .C(dac_count[7]), 
         .D(dac_count[13]), .Z(n11375)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_205.init = 16'hfffe;
    LUT4 i1_2_lut_adj_206 (.A(dac_count[6]), .B(dac_count[14]), .Z(n11373)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_206.init = 16'heeee;
    LUT4 i1_4_lut_adj_207 (.A(dac_count[3]), .B(dac_count[0]), .C(dac_count[2]), 
         .D(dac_count[1]), .Z(n50)) /* synthesis lut_function=(A+(B (C)+!B (C (D)))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(190[62:75])
    defparam i1_4_lut_adj_207.init = 16'hfaea;
    LUT4 i1799_4_lut (.A(dac_count[0]), .B(dac_count[3]), .C(dac_count[2]), 
         .D(dac_count[1]), .Z(n8)) /* synthesis lut_function=(A (B (C+(D)))+!A (B (C))) */ ;
    defparam i1799_4_lut.init = 16'hc8c0;
    LUT4 i1_4_lut_adj_208 (.A(total_count_15__N_1081[9]), .B(total_count[9]), 
         .C(n12645), .D(n17), .Z(total_count_15__N_1013[9])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(107[23] 137[28])
    defparam i1_4_lut_adj_208.init = 16'heca0;
    LUT4 i1_4_lut_adj_209 (.A(total_count_15__N_1081[8]), .B(total_count[8]), 
         .C(n12645), .D(n17), .Z(total_count_15__N_1013[8])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(107[23] 137[28])
    defparam i1_4_lut_adj_209.init = 16'heca0;
    LUT4 i1_4_lut_adj_210 (.A(total_count_15__N_1081[7]), .B(total_count[7]), 
         .C(n12645), .D(n17), .Z(total_count_15__N_1013[7])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(107[23] 137[28])
    defparam i1_4_lut_adj_210.init = 16'heca0;
    LUT4 i1_4_lut_adj_211 (.A(total_count_15__N_1081[6]), .B(total_count[6]), 
         .C(n12645), .D(n17), .Z(total_count_15__N_1013[6])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(107[23] 137[28])
    defparam i1_4_lut_adj_211.init = 16'heca0;
    LUT4 i1_4_lut_adj_212 (.A(total_count_15__N_1081[5]), .B(total_count[5]), 
         .C(n12645), .D(n17), .Z(total_count_15__N_1013[5])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(107[23] 137[28])
    defparam i1_4_lut_adj_212.init = 16'heca0;
    LUT4 i1_4_lut_adj_213 (.A(total_count_15__N_1081[11]), .B(total_count[11]), 
         .C(n12645), .D(n17), .Z(total_count_15__N_1013[11])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(107[23] 137[28])
    defparam i1_4_lut_adj_213.init = 16'heca0;
    FD1P3IX dac_state__i2 (.D(n3609), .SP(clk_10mhz_c_enable_265), .CD(n6840), 
            .CK(clk_10mhz_c), .Q(dac_state[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=3, LSE_LLINE=198, LSE_RLINE=215 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(179[14] 202[11])
    defparam dac_state__i2.GSR = "ENABLED";
    FD1P3IX dac_count_1536__i0 (.D(n69[0]), .SP(clk_10mhz_c_enable_229), 
            .CD(n6197), .CK(clk_10mhz_c), .Q(dac_count[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(190[62:75])
    defparam dac_count_1536__i0.GSR = "ENABLED";
    FD1P3IX cstate__i1 (.D(n4618), .SP(clk_10mhz_c_enable_232), .CD(n3915), 
            .CK(clk_10mhz_c), .Q(cstate[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=3, LSE_LLINE=198, LSE_RLINE=215 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(104[18] 138[6])
    defparam cstate__i1.GSR = "ENABLED";
    FD1P3IX cstate__i2 (.D(n12542), .SP(clk_10mhz_c_enable_232), .CD(n3915), 
            .CK(clk_10mhz_c), .Q(cstate[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=3, LSE_LLINE=198, LSE_RLINE=215 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(104[18] 138[6])
    defparam cstate__i2.GSR = "ENABLED";
    LUT4 i7815_3_lut (.A(cstate[1]), .B(cstate[2]), .C(cstate[0]), .Z(clk_10mhz_c_enable_264)) /* synthesis lut_function=(!((B (C)+!B !(C))+!A)) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(36[20:26])
    defparam i7815_3_lut.init = 16'h2828;
    LUT4 i1_4_lut_adj_214 (.A(cstate[2]), .B(n6859), .C(cstate[0]), .D(seed_spare1_c), 
         .Z(n11018)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1_4_lut_adj_214.init = 16'h0010;
    CCU2D sub_1110_add_2_9 (.A0(cw_gain[7]), .B0(cw_current_limit_reg[7]), 
          .C0(GND_net), .D0(GND_net), .A1(cw_gain[8]), .B1(cw_current_limit_reg[8]), 
          .C1(GND_net), .D1(GND_net), .CIN(n9655), .COUT(n9656));
    defparam sub_1110_add_2_9.INIT0 = 16'h5999;
    defparam sub_1110_add_2_9.INIT1 = 16'h5999;
    defparam sub_1110_add_2_9.INJECT1_0 = "NO";
    defparam sub_1110_add_2_9.INJECT1_1 = "NO";
    CCU2D sub_1110_add_2_7 (.A0(cw_gain[5]), .B0(cw_current_limit_reg[5]), 
          .C0(GND_net), .D0(GND_net), .A1(cw_gain[6]), .B1(cw_current_limit_reg[6]), 
          .C1(GND_net), .D1(GND_net), .CIN(n9654), .COUT(n9655));
    defparam sub_1110_add_2_7.INIT0 = 16'h5999;
    defparam sub_1110_add_2_7.INIT1 = 16'h5999;
    defparam sub_1110_add_2_7.INJECT1_0 = "NO";
    defparam sub_1110_add_2_7.INJECT1_1 = "NO";
    CCU2D sub_1110_add_2_5 (.A0(cw_gain[3]), .B0(cw_current_limit_reg[3]), 
          .C0(GND_net), .D0(GND_net), .A1(cw_gain[4]), .B1(cw_current_limit_reg[4]), 
          .C1(GND_net), .D1(GND_net), .CIN(n9653), .COUT(n9654));
    defparam sub_1110_add_2_5.INIT0 = 16'h5999;
    defparam sub_1110_add_2_5.INIT1 = 16'h5999;
    defparam sub_1110_add_2_5.INJECT1_0 = "NO";
    defparam sub_1110_add_2_5.INJECT1_1 = "NO";
    LUT4 i1_2_lut_adj_215 (.A(n6870), .B(n6840), .Z(clk_10mhz_c_enable_265)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_215.init = 16'heeee;
    LUT4 i1_4_lut_adj_216 (.A(total_count_15__N_1081[4]), .B(total_count[4]), 
         .C(n12645), .D(n17), .Z(total_count_15__N_1013[4])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(107[23] 137[28])
    defparam i1_4_lut_adj_216.init = 16'heca0;
    LUT4 data_23__I_0_i1_3_lut (.A(dds_gain_reg[0]), .B(cw_gain_reg[0]), 
         .C(\data_23__N_925[19] ), .Z(data_23__N_925[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(227[6] 230[9])
    defparam data_23__I_0_i1_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_adj_217 (.A(n12), .B(n11010), .C(n11659), .D(n11657), 
         .Z(n6859)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_217.init = 16'hfffe;
    LUT4 i1790_2_lut (.A(total_count[4]), .B(total_count[5]), .Z(n12)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1790_2_lut.init = 16'h8888;
    LUT4 i1_4_lut_adj_218 (.A(total_count[15]), .B(n11649), .C(n11651), 
         .D(total_count[11]), .Z(n11010)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_218.init = 16'hfffe;
    LUT4 i1_2_lut_adj_219 (.A(total_count[12]), .B(total_count[13]), .Z(n11659)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_219.init = 16'heeee;
    LUT4 i1_2_lut_adj_220 (.A(total_count[7]), .B(total_count[14]), .Z(n11657)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_220.init = 16'heeee;
    LUT4 i1_2_lut_adj_221 (.A(total_count[9]), .B(total_count[8]), .Z(n11649)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_221.init = 16'heeee;
    LUT4 i1_2_lut_adj_222 (.A(total_count[10]), .B(total_count[6]), .Z(n11651)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_222.init = 16'heeee;
    CCU2D add_602_9 (.A0(total_count[6]), .B0(cstate[0]), .C0(GND_net), 
          .D0(GND_net), .A1(total_count[7]), .B1(cstate[0]), .C1(GND_net), 
          .D1(GND_net), .CIN(n9630), .COUT(n9631), .S0(total_count_15__N_1081[6]), 
          .S1(total_count_15__N_1081[7]));   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(122[48] 125[51])
    defparam add_602_9.INIT0 = 16'h5a5a;
    defparam add_602_9.INIT1 = 16'h5a5a;
    defparam add_602_9.INJECT1_0 = "NO";
    defparam add_602_9.INJECT1_1 = "NO";
    LUT4 i1_2_lut_3_lut_adj_223 (.A(seed_spare3_c), .B(state[2]), .C(state[1]), 
         .Z(seed_spare1_c_enable_34)) /* synthesis lut_function=(A (C)+!A ((C)+!B)) */ ;
    defparam i1_2_lut_3_lut_adj_223.init = 16'hf1f1;
    LUT4 i6721_4_lut_4_lut (.A(seed_spare3_c), .B(state[2]), .C(n9264), 
         .D(state[1]), .Z(seed_spare1_c_enable_29)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (D)+!B !(C (D)))) */ ;
    defparam i6721_4_lut_4_lut.init = 16'hcf11;
    LUT4 i5394_4_lut_4_lut (.A(state[1]), .B(state[2]), .C(data_temp[21]), 
         .D(data_temp_23__N_1109[22]), .Z(n6252)) /* synthesis lut_function=(!(A (B+!(C))+!A !(D))) */ ;
    defparam i5394_4_lut_4_lut.init = 16'h7520;
    LUT4 i5393_4_lut_4_lut (.A(state[1]), .B(state[2]), .C(data_temp[20]), 
         .D(data_temp_23__N_1109[22]), .Z(n6250)) /* synthesis lut_function=(!(A (B+!(C))+!A !(D))) */ ;
    defparam i5393_4_lut_4_lut.init = 16'h7520;
    LUT4 i1_4_lut_4_lut (.A(dac_state[2]), .B(dac_state[0]), .C(n12561), 
         .D(dac_state[1]), .Z(n4801)) /* synthesis lut_function=(!(A (B (C)+!B !(D))+!A ((C)+!B))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(179[14] 202[11])
    defparam i1_4_lut_4_lut.init = 16'h2e0c;
    LUT4 i1_4_lut_adj_224 (.A(total_count_15__N_1081[15]), .B(total_count[15]), 
         .C(n12645), .D(n17), .Z(total_count_15__N_1013[15])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(107[23] 137[28])
    defparam i1_4_lut_adj_224.init = 16'heca0;
    LUT4 i1_4_lut_4_lut_adj_225 (.A(cstate[1]), .B(cstate[2]), .C(data[20]), 
         .D(cstate[0]), .Z(clk_10mhz_c_enable_2)) /* synthesis lut_function=(!(A ((D)+!B)+!A (B+((D)+!C)))) */ ;
    defparam i1_4_lut_4_lut_adj_225.init = 16'h0098;
    LUT4 i9600_2_lut_3_lut (.A(cstate[1]), .B(cstate[2]), .C(cstate[0]), 
         .Z(clk_10mhz_c_enable_263)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B+(C)))) */ ;
    defparam i9600_2_lut_3_lut.init = 16'h0909;
    LUT4 i1_2_lut_rep_327 (.A(cstate[2]), .B(cstate[1]), .Z(n12645)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(107[23] 137[28])
    defparam i1_2_lut_rep_327.init = 16'h4444;
    PFUMX i12_adj_226 (.BLUT(n2_adj_1766), .ALUT(n4_adj_1751), .C0(state[1]), 
          .Z(n10243));
    LUT4 i1_4_lut_4_lut_3_lut (.A(cstate[2]), .B(cstate[1]), .C(cstate[0]), 
         .Z(n3915)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(107[23] 137[28])
    defparam i1_4_lut_4_lut_3_lut.init = 16'h0808;
    CCU2D sub_10_add_2_9 (.A0(count[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n9687), 
          .S0(n205[7]));   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(162[54:63])
    defparam sub_10_add_2_9.INIT0 = 16'h5555;
    defparam sub_10_add_2_9.INIT1 = 16'h0000;
    defparam sub_10_add_2_9.INJECT1_0 = "NO";
    defparam sub_10_add_2_9.INJECT1_1 = "NO";
    CCU2D sub_1110_add_2_3 (.A0(cw_gain[1]), .B0(cw_current_limit_reg[1]), 
          .C0(GND_net), .D0(GND_net), .A1(cw_gain[2]), .B1(cw_current_limit_reg[2]), 
          .C1(GND_net), .D1(GND_net), .CIN(n9652), .COUT(n9653));
    defparam sub_1110_add_2_3.INIT0 = 16'h5999;
    defparam sub_1110_add_2_3.INIT1 = 16'h5999;
    defparam sub_1110_add_2_3.INJECT1_0 = "NO";
    defparam sub_1110_add_2_3.INJECT1_1 = "NO";
    CCU2D add_602_7 (.A0(total_count[4]), .B0(cstate[0]), .C0(GND_net), 
          .D0(GND_net), .A1(total_count[5]), .B1(cstate[0]), .C1(GND_net), 
          .D1(GND_net), .CIN(n9629), .COUT(n9630), .S0(total_count_15__N_1081[4]), 
          .S1(total_count_15__N_1081[5]));   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(122[48] 125[51])
    defparam add_602_7.INIT0 = 16'h5a5a;
    defparam add_602_7.INIT1 = 16'h5a5a;
    defparam add_602_7.INJECT1_0 = "NO";
    defparam add_602_7.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_227 (.A(total_count_15__N_1081[14]), .B(total_count[14]), 
         .C(n12645), .D(n17), .Z(total_count_15__N_1013[14])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(107[23] 137[28])
    defparam i1_4_lut_adj_227.init = 16'heca0;
    LUT4 i1_4_lut_adj_228 (.A(total_count_15__N_1081[13]), .B(total_count[13]), 
         .C(n12645), .D(n17), .Z(total_count_15__N_1013[13])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(107[23] 137[28])
    defparam i1_4_lut_adj_228.init = 16'heca0;
    CCU2D sub_10_add_2_7 (.A0(count[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n9686), 
          .COUT(n9687), .S0(n205[5]), .S1(n205[6]));   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(162[54:63])
    defparam sub_10_add_2_7.INIT0 = 16'h5555;
    defparam sub_10_add_2_7.INIT1 = 16'h5555;
    defparam sub_10_add_2_7.INJECT1_0 = "NO";
    defparam sub_10_add_2_7.INJECT1_1 = "NO";
    CCU2D sub_10_add_2_5 (.A0(count[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n9685), 
          .COUT(n9686), .S0(n205[3]), .S1(n205[4]));   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(162[54:63])
    defparam sub_10_add_2_5.INIT0 = 16'h5555;
    defparam sub_10_add_2_5.INIT1 = 16'h5555;
    defparam sub_10_add_2_5.INJECT1_0 = "NO";
    defparam sub_10_add_2_5.INJECT1_1 = "NO";
    CCU2D sub_10_add_2_3 (.A0(count[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n9684), 
          .COUT(n9685), .S0(n205[1]), .S1(n205[2]));   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(162[54:63])
    defparam sub_10_add_2_3.INIT0 = 16'h5555;
    defparam sub_10_add_2_3.INIT1 = 16'h5555;
    defparam sub_10_add_2_3.INJECT1_0 = "NO";
    defparam sub_10_add_2_3.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_329 (.A(state[1]), .B(state[2]), .Z(seed_spare1_c_enable_20)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(147[18] 170[14])
    defparam i1_2_lut_rep_329.init = 16'h2222;
    LUT4 i1_2_lut_3_lut_adj_229 (.A(state[1]), .B(state[2]), .C(data_temp[18]), 
         .Z(n10380)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(147[18] 170[14])
    defparam i1_2_lut_3_lut_adj_229.init = 16'h2020;
    LUT4 i1_4_lut_adj_230 (.A(total_count_15__N_1081[3]), .B(total_count[3]), 
         .C(n12645), .D(n17), .Z(total_count_15__N_1013[3])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(107[23] 137[28])
    defparam i1_4_lut_adj_230.init = 16'heca0;
    LUT4 i1_3_lut_4_lut_4_lut (.A(state[1]), .B(state[2]), .C(seed_spare3_c), 
         .D(n9264), .Z(n6271)) /* synthesis lut_function=(!(A (B+(D))+!A (C))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(147[18] 170[14])
    defparam i1_3_lut_4_lut_4_lut.init = 16'h0527;
    LUT4 i1_2_lut_rep_240_3_lut (.A(state[1]), .B(state[2]), .C(n9264), 
         .Z(n12558)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(147[18] 170[14])
    defparam i1_2_lut_rep_240_3_lut.init = 16'h0202;
    LUT4 i1_2_lut_3_lut_adj_231 (.A(state[1]), .B(state[2]), .C(data_temp[23]), 
         .Z(mosi_N_1226)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(147[18] 170[14])
    defparam i1_2_lut_3_lut_adj_231.init = 16'h2020;
    CCU2D sub_10_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n9684), 
          .S1(n205[0]));   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(162[54:63])
    defparam sub_10_add_2_1.INIT0 = 16'hF000;
    defparam sub_10_add_2_1.INIT1 = 16'h5555;
    defparam sub_10_add_2_1.INJECT1_0 = "NO";
    defparam sub_10_add_2_1.INJECT1_1 = "NO";
    LUT4 i1_2_lut_3_lut_adj_232 (.A(state[1]), .B(state[2]), .C(data_temp[22]), 
         .Z(n10376)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(147[18] 170[14])
    defparam i1_2_lut_3_lut_adj_232.init = 16'h2020;
    CCU2D sub_1110_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cw_gain[0]), .B1(cw_current_limit_reg[0]), 
          .C1(GND_net), .D1(GND_net), .COUT(n9652));
    defparam sub_1110_add_2_1.INIT0 = 16'h0000;
    defparam sub_1110_add_2_1.INIT1 = 16'h5999;
    defparam sub_1110_add_2_1.INJECT1_0 = "NO";
    defparam sub_1110_add_2_1.INJECT1_1 = "NO";
    LUT4 i1_2_lut_3_lut_adj_233 (.A(state[1]), .B(state[2]), .C(data_temp[17]), 
         .Z(n10379)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(147[18] 170[14])
    defparam i1_2_lut_3_lut_adj_233.init = 16'h2020;
    LUT4 i1_4_lut_adj_234 (.A(total_count_15__N_1081[2]), .B(total_count[2]), 
         .C(n12645), .D(n17), .Z(total_count_15__N_1013[2])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(107[23] 137[28])
    defparam i1_4_lut_adj_234.init = 16'heca0;
    LUT4 i1_4_lut_adj_235 (.A(total_count_15__N_1081[1]), .B(total_count[1]), 
         .C(n12645), .D(n17), .Z(total_count_15__N_1013[1])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(107[23] 137[28])
    defparam i1_4_lut_adj_235.init = 16'heca0;
    LUT4 i1_3_lut (.A(dac_state[2]), .B(dac_state[0]), .C(dac_state[1]), 
         .Z(clk_10mhz_c_enable_229)) /* synthesis lut_function=(!((B (C)+!B !(C))+!A)) */ ;
    defparam i1_3_lut.init = 16'h2828;
    LUT4 i1_2_lut_adj_236 (.A(n9264), .B(n205[7]), .Z(count_7__N_1141[7])) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_236.init = 16'h8888;
    LUT4 i1_2_lut_adj_237 (.A(n9264), .B(n205[6]), .Z(count_7__N_1141[6])) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_237.init = 16'h8888;
    LUT4 i1_2_lut_adj_238 (.A(n9264), .B(n205[5]), .Z(count_7__N_1141[5])) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_238.init = 16'h8888;
    CCU2D add_602_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cstate[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n9627));   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(122[48] 125[51])
    defparam add_602_1.INIT0 = 16'hF000;
    defparam add_602_1.INIT1 = 16'h0fff;
    defparam add_602_1.INJECT1_0 = "NO";
    defparam add_602_1.INJECT1_1 = "NO";
    LUT4 i1_2_lut_adj_239 (.A(n205[4]), .B(n9264), .Z(count_7__N_1141[4])) /* synthesis lut_function=(A+!(B)) */ ;
    defparam i1_2_lut_adj_239.init = 16'hbbbb;
    LUT4 i1_2_lut_adj_240 (.A(n9264), .B(n205[3]), .Z(count_7__N_1141[3])) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_240.init = 16'h8888;
    LUT4 i1_2_lut_rep_224 (.A(cstate[0]), .B(n6859), .Z(n12542)) /* synthesis lut_function=(A (B)) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(104[18] 138[6])
    defparam i1_2_lut_rep_224.init = 16'h8888;
    FD1P3AX cw_gain_reg_i0_i1 (.D(cw_gain[1]), .SP(clk_10mhz_c_enable_251), 
            .CK(clk_10mhz_c), .Q(cw_gain_reg[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=3, LSE_LLINE=198, LSE_RLINE=215 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(76[20] 87[24])
    defparam cw_gain_reg_i0_i1.GSR = "ENABLED";
    LUT4 i1_2_lut_adj_241 (.A(n205[2]), .B(n9264), .Z(count_7__N_1141[2])) /* synthesis lut_function=(A+!(B)) */ ;
    defparam i1_2_lut_adj_241.init = 16'hbbbb;
    LUT4 i1_2_lut_adj_242 (.A(n205[1]), .B(n9264), .Z(count_7__N_1141[1])) /* synthesis lut_function=(A+!(B)) */ ;
    defparam i1_2_lut_adj_242.init = 16'hbbbb;
    LUT4 state_3__I_0_146_2_lut (.A(reset_n), .B(data_valid_reset), .Z(state_3__N_882)) /* synthesis lut_function=((B)+!A) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(142[9:33])
    defparam state_3__I_0_146_2_lut.init = 16'hdddd;
    FD1P3AX cw_gain_reg_i0_i2 (.D(cw_gain[2]), .SP(clk_10mhz_c_enable_251), 
            .CK(clk_10mhz_c), .Q(cw_gain_reg[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=3, LSE_LLINE=198, LSE_RLINE=215 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(76[20] 87[24])
    defparam cw_gain_reg_i0_i2.GSR = "ENABLED";
    FD1P3AX cw_gain_reg_i0_i3 (.D(cw_gain[3]), .SP(clk_10mhz_c_enable_251), 
            .CK(clk_10mhz_c), .Q(cw_gain_reg[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=3, LSE_LLINE=198, LSE_RLINE=215 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(76[20] 87[24])
    defparam cw_gain_reg_i0_i3.GSR = "ENABLED";
    FD1P3AX cw_gain_reg_i0_i4 (.D(cw_gain[4]), .SP(clk_10mhz_c_enable_251), 
            .CK(clk_10mhz_c), .Q(cw_gain_reg[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=3, LSE_LLINE=198, LSE_RLINE=215 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(76[20] 87[24])
    defparam cw_gain_reg_i0_i4.GSR = "ENABLED";
    FD1P3AX cw_gain_reg_i0_i5 (.D(cw_gain[5]), .SP(clk_10mhz_c_enable_251), 
            .CK(clk_10mhz_c), .Q(cw_gain_reg[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=3, LSE_LLINE=198, LSE_RLINE=215 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(76[20] 87[24])
    defparam cw_gain_reg_i0_i5.GSR = "ENABLED";
    FD1P3AX cw_gain_reg_i0_i6 (.D(cw_gain[6]), .SP(clk_10mhz_c_enable_251), 
            .CK(clk_10mhz_c), .Q(cw_gain_reg[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=3, LSE_LLINE=198, LSE_RLINE=215 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(76[20] 87[24])
    defparam cw_gain_reg_i0_i6.GSR = "ENABLED";
    FD1P3AX cw_gain_reg_i0_i7 (.D(cw_gain[7]), .SP(clk_10mhz_c_enable_251), 
            .CK(clk_10mhz_c), .Q(cw_gain_reg[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=3, LSE_LLINE=198, LSE_RLINE=215 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(76[20] 87[24])
    defparam cw_gain_reg_i0_i7.GSR = "ENABLED";
    FD1P3AX cw_gain_reg_i0_i8 (.D(cw_gain[8]), .SP(clk_10mhz_c_enable_251), 
            .CK(clk_10mhz_c), .Q(cw_gain_reg[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=3, LSE_LLINE=198, LSE_RLINE=215 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(76[20] 87[24])
    defparam cw_gain_reg_i0_i8.GSR = "ENABLED";
    FD1P3AX cw_gain_reg_i0_i9 (.D(cw_gain[9]), .SP(clk_10mhz_c_enable_251), 
            .CK(clk_10mhz_c), .Q(cw_gain_reg[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=3, LSE_LLINE=198, LSE_RLINE=215 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(76[20] 87[24])
    defparam cw_gain_reg_i0_i9.GSR = "ENABLED";
    FD1P3AX cw_gain_reg_i0_i10 (.D(cw_gain[10]), .SP(clk_10mhz_c_enable_251), 
            .CK(clk_10mhz_c), .Q(cw_gain_reg[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=3, LSE_LLINE=198, LSE_RLINE=215 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(76[20] 87[24])
    defparam cw_gain_reg_i0_i10.GSR = "ENABLED";
    FD1P3AX cw_gain_reg_i0_i11 (.D(cw_gain[11]), .SP(clk_10mhz_c_enable_251), 
            .CK(clk_10mhz_c), .Q(cw_gain_reg[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=3, LSE_LLINE=198, LSE_RLINE=215 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(76[20] 87[24])
    defparam cw_gain_reg_i0_i11.GSR = "ENABLED";
    FD1P3AX cw_gain_reg_i0_i12 (.D(cw_gain[12]), .SP(clk_10mhz_c_enable_251), 
            .CK(clk_10mhz_c), .Q(cw_gain_reg[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=3, LSE_LLINE=198, LSE_RLINE=215 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(76[20] 87[24])
    defparam cw_gain_reg_i0_i12.GSR = "ENABLED";
    FD1P3AX cw_gain_reg_i0_i13 (.D(cw_gain[13]), .SP(clk_10mhz_c_enable_251), 
            .CK(clk_10mhz_c), .Q(cw_gain_reg[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=3, LSE_LLINE=198, LSE_RLINE=215 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(76[20] 87[24])
    defparam cw_gain_reg_i0_i13.GSR = "ENABLED";
    FD1P3AX cw_gain_reg_i0_i14 (.D(cw_gain[14]), .SP(clk_10mhz_c_enable_251), 
            .CK(clk_10mhz_c), .Q(cw_gain_reg[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=3, LSE_LLINE=198, LSE_RLINE=215 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(76[20] 87[24])
    defparam cw_gain_reg_i0_i14.GSR = "ENABLED";
    FD1P3AX cw_gain_reg_i0_i15 (.D(cw_gain[15]), .SP(clk_10mhz_c_enable_251), 
            .CK(clk_10mhz_c), .Q(cw_gain_reg[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=3, LSE_LLINE=198, LSE_RLINE=215 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(76[20] 87[24])
    defparam cw_gain_reg_i0_i15.GSR = "ENABLED";
    FD1P3DX data_temp__i12 (.D(n10241), .SP(seed_spare1_c_enable_34), .CK(seed_spare1_c), 
            .CD(state_3__N_882), .Q(data_temp[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=3, LSE_LLINE=198, LSE_RLINE=215 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(147[18] 170[14])
    defparam data_temp__i12.GSR = "DISABLED";
    FD1P3DX data_temp__i22 (.D(n6252), .SP(seed_spare1_c_enable_34), .CK(seed_spare1_c), 
            .CD(state_3__N_882), .Q(data_temp[22])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=3, LSE_LLINE=198, LSE_RLINE=215 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(147[18] 170[14])
    defparam data_temp__i22.GSR = "DISABLED";
    FD1P3DX data_temp__i11 (.D(n10239), .SP(seed_spare1_c_enable_34), .CK(seed_spare1_c), 
            .CD(state_3__N_882), .Q(data_temp[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=3, LSE_LLINE=198, LSE_RLINE=215 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(147[18] 170[14])
    defparam data_temp__i11.GSR = "DISABLED";
    FD1P3DX data_temp__i21 (.D(n6250), .SP(seed_spare1_c_enable_34), .CK(seed_spare1_c), 
            .CD(state_3__N_882), .Q(data_temp[21])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=3, LSE_LLINE=198, LSE_RLINE=215 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(147[18] 170[14])
    defparam data_temp__i21.GSR = "DISABLED";
    FD1P3DX data_temp__i20 (.D(n10219), .SP(seed_spare1_c_enable_34), .CK(seed_spare1_c), 
            .CD(state_3__N_882), .Q(data_temp[20])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=3, LSE_LLINE=198, LSE_RLINE=215 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(147[18] 170[14])
    defparam data_temp__i20.GSR = "DISABLED";
    FD1P3DX data_temp__i19 (.D(n10380), .SP(seed_spare1_c_enable_34), .CK(seed_spare1_c), 
            .CD(state_3__N_882), .Q(data_temp[19])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=3, LSE_LLINE=198, LSE_RLINE=215 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(147[18] 170[14])
    defparam data_temp__i19.GSR = "DISABLED";
    FD1P3DX state__i2 (.D(n12558), .SP(seed_spare1_c_enable_29), .CK(seed_spare1_c), 
            .CD(state_3__N_882), .Q(state[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=3, LSE_LLINE=198, LSE_RLINE=215 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(147[18] 170[14])
    defparam state__i2.GSR = "DISABLED";
    FD1P3DX state__i1 (.D(n6271), .SP(seed_spare1_c_enable_29), .CK(seed_spare1_c), 
            .CD(state_3__N_882), .Q(state[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=3, LSE_LLINE=198, LSE_RLINE=215 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(147[18] 170[14])
    defparam state__i1.GSR = "DISABLED";
    LUT4 data_23__I_0_i16_3_lut (.A(dds_gain_reg[15]), .B(cw_gain_reg[15]), 
         .C(\data_23__N_925[19] ), .Z(data_23__N_925[15])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(227[6] 230[9])
    defparam data_23__I_0_i16_3_lut.init = 16'hcaca;
    LUT4 data_23__I_0_i15_3_lut (.A(dds_gain_reg[14]), .B(cw_gain_reg[14]), 
         .C(\data_23__N_925[19] ), .Z(data_23__N_925[14])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(227[6] 230[9])
    defparam data_23__I_0_i15_3_lut.init = 16'hcaca;
    LUT4 data_23__I_0_i14_3_lut (.A(dds_gain_reg[13]), .B(cw_gain_reg[13]), 
         .C(\data_23__N_925[19] ), .Z(data_23__N_925[13])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(227[6] 230[9])
    defparam data_23__I_0_i14_3_lut.init = 16'hcaca;
    LUT4 data_23__I_0_i13_3_lut (.A(dds_gain_reg[12]), .B(cw_gain_reg[12]), 
         .C(\data_23__N_925[19] ), .Z(data_23__N_925[12])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(227[6] 230[9])
    defparam data_23__I_0_i13_3_lut.init = 16'hcaca;
    LUT4 data_23__I_0_i12_3_lut (.A(dds_gain_reg[11]), .B(cw_gain_reg[11]), 
         .C(\data_23__N_925[19] ), .Z(data_23__N_925[11])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(227[6] 230[9])
    defparam data_23__I_0_i12_3_lut.init = 16'hcaca;
    LUT4 data_23__I_0_i11_3_lut (.A(dds_gain_reg[10]), .B(cw_gain_reg[10]), 
         .C(\data_23__N_925[19] ), .Z(data_23__N_925[10])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(227[6] 230[9])
    defparam data_23__I_0_i11_3_lut.init = 16'hcaca;
    LUT4 data_23__I_0_i10_3_lut (.A(dds_gain_reg[9]), .B(cw_gain_reg[9]), 
         .C(\data_23__N_925[19] ), .Z(data_23__N_925[9])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(227[6] 230[9])
    defparam data_23__I_0_i10_3_lut.init = 16'hcaca;
    LUT4 data_23__I_0_i9_3_lut (.A(dds_gain_reg[8]), .B(cw_gain_reg[8]), 
         .C(\data_23__N_925[19] ), .Z(data_23__N_925[8])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(227[6] 230[9])
    defparam data_23__I_0_i9_3_lut.init = 16'hcaca;
    LUT4 data_23__I_0_i8_3_lut (.A(dds_gain_reg[7]), .B(cw_gain_reg[7]), 
         .C(\data_23__N_925[19] ), .Z(data_23__N_925[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(227[6] 230[9])
    defparam data_23__I_0_i8_3_lut.init = 16'hcaca;
    LUT4 data_23__I_0_i7_3_lut (.A(dds_gain_reg[6]), .B(cw_gain_reg[6]), 
         .C(\data_23__N_925[19] ), .Z(data_23__N_925[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(227[6] 230[9])
    defparam data_23__I_0_i7_3_lut.init = 16'hcaca;
    LUT4 data_23__I_0_i6_3_lut (.A(dds_gain_reg[5]), .B(cw_gain_reg[5]), 
         .C(\data_23__N_925[19] ), .Z(data_23__N_925[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(227[6] 230[9])
    defparam data_23__I_0_i6_3_lut.init = 16'hcaca;
    LUT4 data_23__I_0_i5_3_lut (.A(dds_gain_reg[4]), .B(cw_gain_reg[4]), 
         .C(\data_23__N_925[19] ), .Z(data_23__N_925[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(227[6] 230[9])
    defparam data_23__I_0_i5_3_lut.init = 16'hcaca;
    LUT4 data_23__I_0_i4_3_lut (.A(dds_gain_reg[3]), .B(cw_gain_reg[3]), 
         .C(\data_23__N_925[19] ), .Z(data_23__N_925[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(227[6] 230[9])
    defparam data_23__I_0_i4_3_lut.init = 16'hcaca;
    LUT4 data_23__I_0_i3_3_lut (.A(dds_gain_reg[2]), .B(cw_gain_reg[2]), 
         .C(\data_23__N_925[19] ), .Z(data_23__N_925[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(227[6] 230[9])
    defparam data_23__I_0_i3_3_lut.init = 16'hcaca;
    LUT4 data_23__I_0_i2_3_lut (.A(dds_gain_reg[1]), .B(cw_gain_reg[1]), 
         .C(\data_23__N_925[19] ), .Z(data_23__N_925[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(227[6] 230[9])
    defparam data_23__I_0_i2_3_lut.init = 16'hcaca;
    LUT4 i1_3_lut_4_lut_adj_243 (.A(cstate[0]), .B(n6859), .C(clk_10mhz_c_enable_2), 
         .D(n12645), .Z(clk_10mhz_c_enable_232)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (C)) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(104[18] 138[6])
    defparam i1_3_lut_4_lut_adj_243.init = 16'hf8f0;
    LUT4 i272_2_lut (.A(n3252), .B(\data_23__N_925[19] ), .Z(clk_10mhz_c_enable_251)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(82[26] 86[29])
    defparam i272_2_lut.init = 16'h4444;
    PFUMX i12_adj_244 (.BLUT(n2_adj_1767), .ALUT(n4_adj_1753), .C0(state[1]), 
          .Z(n10245));
    CCU2D dac_count_1536_add_4_17 (.A0(dac_count[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n9643), .S0(n69[15]));   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(190[62:75])
    defparam dac_count_1536_add_4_17.INIT0 = 16'hfaaa;
    defparam dac_count_1536_add_4_17.INIT1 = 16'h0000;
    defparam dac_count_1536_add_4_17.INJECT1_0 = "NO";
    defparam dac_count_1536_add_4_17.INJECT1_1 = "NO";
    CCU2D dac_count_1536_add_4_15 (.A0(dac_count[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(dac_count[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n9642), .COUT(n9643), .S0(n69[13]), .S1(n69[14]));   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(190[62:75])
    defparam dac_count_1536_add_4_15.INIT0 = 16'hfaaa;
    defparam dac_count_1536_add_4_15.INIT1 = 16'hfaaa;
    defparam dac_count_1536_add_4_15.INJECT1_0 = "NO";
    defparam dac_count_1536_add_4_15.INJECT1_1 = "NO";
    CCU2D dac_count_1536_add_4_13 (.A0(dac_count[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(dac_count[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n9641), .COUT(n9642), .S0(n69[11]), .S1(n69[12]));   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(190[62:75])
    defparam dac_count_1536_add_4_13.INIT0 = 16'hfaaa;
    defparam dac_count_1536_add_4_13.INIT1 = 16'hfaaa;
    defparam dac_count_1536_add_4_13.INJECT1_0 = "NO";
    defparam dac_count_1536_add_4_13.INJECT1_1 = "NO";
    CCU2D dac_count_1536_add_4_11 (.A0(dac_count[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(dac_count[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n9640), .COUT(n9641), .S0(n69[9]), .S1(n69[10]));   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(190[62:75])
    defparam dac_count_1536_add_4_11.INIT0 = 16'hfaaa;
    defparam dac_count_1536_add_4_11.INIT1 = 16'hfaaa;
    defparam dac_count_1536_add_4_11.INJECT1_0 = "NO";
    defparam dac_count_1536_add_4_11.INJECT1_1 = "NO";
    FD1P3DX data_temp__i10 (.D(n10237), .SP(seed_spare1_c_enable_34), .CK(seed_spare1_c), 
            .CD(state_3__N_882), .Q(data_temp[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=3, LSE_LLINE=198, LSE_RLINE=215 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(147[18] 170[14])
    defparam data_temp__i10.GSR = "DISABLED";
    FD1P3DX data_temp__i18 (.D(n10379), .SP(seed_spare1_c_enable_34), .CK(seed_spare1_c), 
            .CD(state_3__N_882), .Q(data_temp[18])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=3, LSE_LLINE=198, LSE_RLINE=215 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(147[18] 170[14])
    defparam data_temp__i18.GSR = "DISABLED";
    FD1P3DX data_temp__i17 (.D(n10217), .SP(seed_spare1_c_enable_34), .CK(seed_spare1_c), 
            .CD(state_3__N_882), .Q(data_temp[17])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=3, LSE_LLINE=198, LSE_RLINE=215 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(147[18] 170[14])
    defparam data_temp__i17.GSR = "DISABLED";
    PFUMX i12_adj_245 (.BLUT(n2_adj_1769), .ALUT(n4_adj_1752), .C0(state[1]), 
          .Z(n10247));
    FD1P3AX data_valid_reset_129 (.D(cstate[2]), .SP(clk_10mhz_c_enable_263), 
            .CK(clk_10mhz_c), .Q(data_valid_reset)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=3, LSE_LLINE=198, LSE_RLINE=215 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(104[18] 138[6])
    defparam data_valid_reset_129.GSR = "ENABLED";
    FD1P3AX sck_temp_126 (.D(n11018), .SP(clk_10mhz_c_enable_264), .CK(clk_10mhz_c), 
            .Q(seed_spare1_c)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=3, LSE_LLINE=198, LSE_RLINE=215 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(104[18] 138[6])
    defparam sck_temp_126.GSR = "ENABLED";
    FD1P3IX dac_state__i1 (.D(n12543), .SP(clk_10mhz_c_enable_265), .CD(n6870), 
            .CK(clk_10mhz_c), .Q(dac_state[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=3, LSE_LLINE=198, LSE_RLINE=215 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(179[14] 202[11])
    defparam dac_state__i1.GSR = "ENABLED";
    FD1P3DX data_temp__i16 (.D(n10249), .SP(seed_spare1_c_enable_34), .CK(seed_spare1_c), 
            .CD(state_3__N_882), .Q(data_temp[16])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=3, LSE_LLINE=198, LSE_RLINE=215 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(147[18] 170[14])
    defparam data_temp__i16.GSR = "DISABLED";
    FD1P3DX data_temp__i9 (.D(n10235), .SP(seed_spare1_c_enable_34), .CK(seed_spare1_c), 
            .CD(state_3__N_882), .Q(data_temp[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=3, LSE_LLINE=198, LSE_RLINE=215 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(147[18] 170[14])
    defparam data_temp__i9.GSR = "DISABLED";
    PFUMX i9687 (.BLUT(n12657), .ALUT(n12658), .C0(dac_state[2]), .Z(n6870));
    CCU2D dac_count_1536_add_4_9 (.A0(dac_count[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(dac_count[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n9639), .COUT(n9640), .S0(n69[7]), .S1(n69[8]));   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(190[62:75])
    defparam dac_count_1536_add_4_9.INIT0 = 16'hfaaa;
    defparam dac_count_1536_add_4_9.INIT1 = 16'hfaaa;
    defparam dac_count_1536_add_4_9.INJECT1_0 = "NO";
    defparam dac_count_1536_add_4_9.INJECT1_1 = "NO";
    PFUMX i9685 (.BLUT(n12654), .ALUT(n12655), .C0(dac_state[1]), .Z(n6840));
    PFUMX i9683 (.BLUT(n12651), .ALUT(n12652), .C0(n50), .Z(n6197));
    CCU2D dac_count_1536_add_4_7 (.A0(dac_count[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(dac_count[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n9638), .COUT(n9639), .S0(n69[5]), .S1(n69[6]));   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(190[62:75])
    defparam dac_count_1536_add_4_7.INIT0 = 16'hfaaa;
    defparam dac_count_1536_add_4_7.INIT1 = 16'hfaaa;
    defparam dac_count_1536_add_4_7.INJECT1_0 = "NO";
    defparam dac_count_1536_add_4_7.INJECT1_1 = "NO";
    CCU2D sub_1108_add_2_17 (.A0(dds_gain[15]), .B0(dds_current_limit_reg[15]), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n9667), .S1(n3233));
    defparam sub_1108_add_2_17.INIT0 = 16'h5999;
    defparam sub_1108_add_2_17.INIT1 = 16'h0000;
    defparam sub_1108_add_2_17.INJECT1_0 = "NO";
    defparam sub_1108_add_2_17.INJECT1_1 = "NO";
    CCU2D dac_count_1536_add_4_5 (.A0(dac_count[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(dac_count[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n9637), .COUT(n9638), .S0(n69[3]), .S1(n69[4]));   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(190[62:75])
    defparam dac_count_1536_add_4_5.INIT0 = 16'hfaaa;
    defparam dac_count_1536_add_4_5.INIT1 = 16'hfaaa;
    defparam dac_count_1536_add_4_5.INJECT1_0 = "NO";
    defparam dac_count_1536_add_4_5.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_246 (.A(total_count_15__N_1081[10]), .B(total_count[10]), 
         .C(n12645), .D(n17), .Z(total_count_15__N_1013[10])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_gain_control.v(107[23] 137[28])
    defparam i1_4_lut_adj_246.init = 16'heca0;
    
endmodule
//
// Verilog Description of module reset_generator
//

module reset_generator (rstn_c, clk_10mhz_c, reset_n) /* synthesis syn_module_defined=1 */ ;
    input rstn_c;
    input clk_10mhz_c;
    output reset_n;
    
    wire clk_d2 /* synthesis is_clock=1, SET_AS_NETWORK=\reset_generator/clk_d2 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/reset_generator.v(44[8:14])
    wire clk_10mhz_c /* synthesis SET_AS_NETWORK=clk_10mhz_c, is_clock=1 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/top.v(24[15:24])
    
    wire in_d1, rstn_N_6, in_d2, in_d3, clk_d2_N_8, reset_n_N_4;
    
    FD1S3DX in_d1_20 (.D(rstn_c), .CK(clk_d2), .CD(rstn_N_6), .Q(in_d1)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=2, LSE_LLINE=163, LSE_RLINE=167 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/reset_generator.v(60[16] 64[10])
    defparam in_d1_20.GSR = "DISABLED";
    FD1S3DX in_d2_21 (.D(in_d1), .CK(clk_d2), .CD(rstn_N_6), .Q(in_d2)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=2, LSE_LLINE=163, LSE_RLINE=167 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/reset_generator.v(60[16] 64[10])
    defparam in_d2_21.GSR = "DISABLED";
    FD1S3DX in_d3_22 (.D(in_d2), .CK(clk_d2), .CD(rstn_N_6), .Q(in_d3)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=2, LSE_LLINE=163, LSE_RLINE=167 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/reset_generator.v(60[16] 64[10])
    defparam in_d3_22.GSR = "DISABLED";
    FD1S3DX clk_d2_19 (.D(clk_d2_N_8), .CK(clk_10mhz_c), .CD(rstn_N_6), 
            .Q(clk_d2)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=2, LSE_LLINE=163, LSE_RLINE=167 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/reset_generator.v(49[16] 51[10])
    defparam clk_d2_19.GSR = "DISABLED";
    LUT4 in_d2_I_0_2_lut (.A(in_d2), .B(in_d3), .Z(reset_n_N_4)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/reset_generator.v(73[20:34])
    defparam in_d2_I_0_2_lut.init = 16'h9999;
    FD1P3DX out_n_23 (.D(in_d3), .SP(reset_n_N_4), .CK(clk_d2), .CD(rstn_N_6), 
            .Q(reset_n)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=2, LSE_LLINE=163, LSE_RLINE=167 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/reset_generator.v(73[16] 75[10])
    defparam out_n_23.GSR = "DISABLED";
    LUT4 rstn_I_0_1_lut (.A(rstn_c), .Z(rstn_N_6)) /* synthesis lut_function=(!(A)) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/reset_generator.v(71[10:15])
    defparam rstn_I_0_1_lut.init = 16'h5555;
    LUT4 clk_d2_I_0_1_lut (.A(clk_d2), .Z(clk_d2_N_8)) /* synthesis lut_function=(!(A)) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/reset_generator.v(50[20:27])
    defparam clk_d2_I_0_1_lut.init = 16'h5555;
    
endmodule
//
// Verilog Description of module adc_control
//

module adc_control (seed_adc_convert_c, clk_10mhz_c, n12007, state, 
            adc_voltage_data, adc_current_data, seed_adc_sdo1_c, seed_adc_sdo2_c, 
            n12947, n12611, n12010, n12011, GND_net, seed_adc_sck_c) /* synthesis syn_preserve=1, syn_module_defined=1 */ ;
    output seed_adc_convert_c;
    input clk_10mhz_c;
    input n12007;
    output [3:0]state;
    output [15:0]adc_voltage_data;
    output [15:0]adc_current_data;
    input seed_adc_sdo1_c;
    input seed_adc_sdo2_c;
    input n12947;
    output n12611;
    input n12010;
    input n12011;
    input GND_net;
    output seed_adc_sck_c;
    
    wire clk_10mhz_c /* synthesis SET_AS_NETWORK=clk_10mhz_c, is_clock=1 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/top.v(24[15:24])
    wire adc_sck_temp /* synthesis is_clock=1, SET_AS_NETWORK=\adc_control/adc_sck_temp */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/adc_control.v(66[5:17])
    wire [7:0]count;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/adc_control.v(56[11:16])
    
    wire adc_sck_temp_enable_72, n5, adc_sck_temp_enable_20, clk_10mhz_c_enable_10, 
        n5_adj_1747, adc_sck_temp_enable_21;
    wire [3:0]capture_state;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/adc_control.v(54[19:32])
    
    wire n12610, n12572, n12008;
    wire [3:0]state_3__N_1501;
    
    wire adc_sck_temp_enable_62;
    wire [13:0]voltage_data;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/adc_control.v(57[12:24])
    wire [13:0]current_data;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/adc_control.v(58[12:24])
    
    wire adc_sck_temp_enable_4, adc_sck_temp_enable_64;
    wire [3:0]sck_count;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/adc_control.v(61[11:20])
    wire [3:0]n21;
    
    wire adc_sck_temp_enable_22, adc_sck_temp_enable_23, adc_sck_temp_enable_24, 
        adc_sck_temp_enable_25, adc_sck_temp_enable_26, adc_sck_temp_enable_27, 
        adc_sck_temp_enable_28, adc_sck_temp_enable_29, adc_sck_temp_enable_30, 
        adc_sck_temp_enable_31, adc_sck_temp_enable_32, clk_10mhz_c_enable_258;
    wire [7:0]convert_count;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/adc_control.v(55[11:24])
    
    wire n12613, n11695, n15, n6163, clk_10mhz_c_enable_23, clk_10mhz_c_enable_24;
    wire [3:0]n2089;
    
    wire n5_adj_1748, n9695;
    wire [7:0]n223;
    
    wire n9694, n12617, clk_10mhz_c_enable_255, n12661, data_ready, 
        n12660, n9693, n9692, n7954, n12563, n9445, n6, n6279;
    wire [7:0]n37;
    
    wire n6276, n12581, clk_10mhz_c_enable_260;
    wire [0:0]n2039;
    
    wire n10, data_ready_N_1720, n4, n11745, n11743, n9671, n9670, 
        n9669, n9668;
    
    LUT4 i9467_2_lut_4_lut (.A(count[3]), .B(adc_sck_temp_enable_72), .C(count[2]), 
         .D(n5), .Z(adc_sck_temp_enable_20)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i9467_2_lut_4_lut.init = 16'h0080;
    FD1P3AX adc_convert_131 (.D(n12007), .SP(clk_10mhz_c_enable_10), .CK(clk_10mhz_c), 
            .Q(seed_adc_convert_c)) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=234, LSE_RLINE=254 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/adc_control.v(120[14] 151[12])
    defparam adc_convert_131.GSR = "ENABLED";
    LUT4 i9526_2_lut_4_lut (.A(count[3]), .B(adc_sck_temp_enable_72), .C(count[2]), 
         .D(n5_adj_1747), .Z(adc_sck_temp_enable_21)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i9526_2_lut_4_lut.init = 16'h0080;
    LUT4 i1_2_lut_rep_292 (.A(capture_state[0]), .B(capture_state[1]), .Z(n12610)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_292.init = 16'heeee;
    LUT4 i1_2_lut_rep_254_3_lut (.A(capture_state[0]), .B(capture_state[1]), 
         .C(capture_state[3]), .Z(n12572)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_rep_254_3_lut.init = 16'hfefe;
    FD1P3AX adc_sck_temp_134 (.D(n12008), .SP(state[1]), .CK(clk_10mhz_c), 
            .Q(adc_sck_temp)) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=234, LSE_RLINE=254 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/adc_control.v(120[14] 151[12])
    defparam adc_sck_temp_134.GSR = "ENABLED";
    FD1S3AX state_i0 (.D(state_3__N_1501[0]), .CK(clk_10mhz_c), .Q(state[0])) /* synthesis lse_init_val=0, syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=234, LSE_RLINE=254 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/adc_control.v(120[14] 151[12])
    defparam state_i0.GSR = "ENABLED";
    FD1P3AX adc_voltage_data_temp_i0 (.D(voltage_data[0]), .SP(adc_sck_temp_enable_62), 
            .CK(adc_sck_temp), .Q(adc_voltage_data[0])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=234, LSE_RLINE=254 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/adc_control.v(164[14] 188[16])
    defparam adc_voltage_data_temp_i0.GSR = "ENABLED";
    LUT4 i9476_2_lut_rep_227_3_lut_4_lut (.A(capture_state[0]), .B(capture_state[1]), 
         .C(capture_state[2]), .D(capture_state[3]), .Z(adc_sck_temp_enable_72)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i9476_2_lut_rep_227_3_lut_4_lut.init = 16'h0010;
    LUT4 i1_3_lut_rep_259_4_lut (.A(capture_state[0]), .B(capture_state[1]), 
         .C(capture_state[3]), .D(capture_state[2]), .Z(adc_sck_temp_enable_62)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1_3_lut_rep_259_4_lut.init = 16'h0010;
    FD1P3AX adc_current_data_temp_i0 (.D(current_data[0]), .SP(adc_sck_temp_enable_62), 
            .CK(adc_sck_temp), .Q(adc_current_data[0])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=234, LSE_RLINE=254 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/adc_control.v(164[14] 188[16])
    defparam adc_current_data_temp_i0.GSR = "ENABLED";
    FD1P3AX current_data_i0 (.D(seed_adc_sdo1_c), .SP(adc_sck_temp_enable_4), 
            .CK(adc_sck_temp), .Q(current_data[0])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=234, LSE_RLINE=254 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/adc_control.v(164[14] 188[16])
    defparam current_data_i0.GSR = "ENABLED";
    FD1P3AX voltage_data_i0 (.D(seed_adc_sdo2_c), .SP(adc_sck_temp_enable_4), 
            .CK(adc_sck_temp), .Q(voltage_data[0])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=234, LSE_RLINE=254 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/adc_control.v(164[14] 188[16])
    defparam voltage_data_i0.GSR = "ENABLED";
    FD1P3AX capture_state_i0 (.D(n12947), .SP(adc_sck_temp_enable_64), .CK(adc_sck_temp), 
            .Q(capture_state[0])) /* synthesis lse_init_val=0, syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=234, LSE_RLINE=254 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/adc_control.v(164[14] 188[16])
    defparam capture_state_i0.GSR = "ENABLED";
    LUT4 i7019_1_lut (.A(sck_count[0]), .Z(n21[0])) /* synthesis lut_function=(!(A)) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/adc_control.v(146[62:75])
    defparam i7019_1_lut.init = 16'h5555;
    FD1P3AX capture_state_i1 (.D(n12947), .SP(adc_sck_temp_enable_64), .CK(adc_sck_temp), 
            .Q(capture_state[1])) /* synthesis lse_init_val=0, syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=234, LSE_RLINE=254 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/adc_control.v(164[14] 188[16])
    defparam capture_state_i1.GSR = "ENABLED";
    FD1P3AX voltage_data_i13 (.D(seed_adc_sdo2_c), .SP(adc_sck_temp_enable_20), 
            .CK(adc_sck_temp), .Q(voltage_data[13])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=234, LSE_RLINE=254 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/adc_control.v(164[14] 188[16])
    defparam voltage_data_i13.GSR = "ENABLED";
    FD1P3AX voltage_data_i12 (.D(seed_adc_sdo2_c), .SP(adc_sck_temp_enable_21), 
            .CK(adc_sck_temp), .Q(voltage_data[12])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=234, LSE_RLINE=254 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/adc_control.v(164[14] 188[16])
    defparam voltage_data_i12.GSR = "ENABLED";
    FD1P3AX voltage_data_i11 (.D(seed_adc_sdo2_c), .SP(adc_sck_temp_enable_22), 
            .CK(adc_sck_temp), .Q(voltage_data[11])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=234, LSE_RLINE=254 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/adc_control.v(164[14] 188[16])
    defparam voltage_data_i11.GSR = "ENABLED";
    FD1P3AX voltage_data_i10 (.D(seed_adc_sdo2_c), .SP(adc_sck_temp_enable_23), 
            .CK(adc_sck_temp), .Q(voltage_data[10])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=234, LSE_RLINE=254 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/adc_control.v(164[14] 188[16])
    defparam voltage_data_i10.GSR = "ENABLED";
    FD1P3AX voltage_data_i9 (.D(seed_adc_sdo2_c), .SP(adc_sck_temp_enable_24), 
            .CK(adc_sck_temp), .Q(voltage_data[9])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=234, LSE_RLINE=254 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/adc_control.v(164[14] 188[16])
    defparam voltage_data_i9.GSR = "ENABLED";
    FD1P3AX voltage_data_i8 (.D(seed_adc_sdo2_c), .SP(adc_sck_temp_enable_25), 
            .CK(adc_sck_temp), .Q(voltage_data[8])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=234, LSE_RLINE=254 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/adc_control.v(164[14] 188[16])
    defparam voltage_data_i8.GSR = "ENABLED";
    FD1P3AX voltage_data_i7 (.D(seed_adc_sdo2_c), .SP(adc_sck_temp_enable_26), 
            .CK(adc_sck_temp), .Q(voltage_data[7])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=234, LSE_RLINE=254 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/adc_control.v(164[14] 188[16])
    defparam voltage_data_i7.GSR = "ENABLED";
    FD1P3AX voltage_data_i6 (.D(seed_adc_sdo2_c), .SP(adc_sck_temp_enable_27), 
            .CK(adc_sck_temp), .Q(voltage_data[6])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=234, LSE_RLINE=254 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/adc_control.v(164[14] 188[16])
    defparam voltage_data_i6.GSR = "ENABLED";
    FD1P3AX voltage_data_i5 (.D(seed_adc_sdo2_c), .SP(adc_sck_temp_enable_28), 
            .CK(adc_sck_temp), .Q(voltage_data[5])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=234, LSE_RLINE=254 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/adc_control.v(164[14] 188[16])
    defparam voltage_data_i5.GSR = "ENABLED";
    FD1P3AX voltage_data_i4 (.D(seed_adc_sdo2_c), .SP(adc_sck_temp_enable_29), 
            .CK(adc_sck_temp), .Q(voltage_data[4])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=234, LSE_RLINE=254 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/adc_control.v(164[14] 188[16])
    defparam voltage_data_i4.GSR = "ENABLED";
    FD1P3AX voltage_data_i3 (.D(seed_adc_sdo2_c), .SP(adc_sck_temp_enable_30), 
            .CK(adc_sck_temp), .Q(voltage_data[3])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=234, LSE_RLINE=254 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/adc_control.v(164[14] 188[16])
    defparam voltage_data_i3.GSR = "ENABLED";
    FD1P3AX voltage_data_i2 (.D(seed_adc_sdo2_c), .SP(adc_sck_temp_enable_31), 
            .CK(adc_sck_temp), .Q(voltage_data[2])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=234, LSE_RLINE=254 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/adc_control.v(164[14] 188[16])
    defparam voltage_data_i2.GSR = "ENABLED";
    FD1P3AX voltage_data_i1 (.D(seed_adc_sdo2_c), .SP(adc_sck_temp_enable_32), 
            .CK(adc_sck_temp), .Q(voltage_data[1])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=234, LSE_RLINE=254 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/adc_control.v(164[14] 188[16])
    defparam voltage_data_i1.GSR = "ENABLED";
    FD1P3AX current_data_i13 (.D(seed_adc_sdo1_c), .SP(adc_sck_temp_enable_20), 
            .CK(adc_sck_temp), .Q(current_data[13])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=234, LSE_RLINE=254 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/adc_control.v(164[14] 188[16])
    defparam current_data_i13.GSR = "ENABLED";
    FD1P3AX current_data_i12 (.D(seed_adc_sdo1_c), .SP(adc_sck_temp_enable_21), 
            .CK(adc_sck_temp), .Q(current_data[12])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=234, LSE_RLINE=254 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/adc_control.v(164[14] 188[16])
    defparam current_data_i12.GSR = "ENABLED";
    FD1P3AX current_data_i11 (.D(seed_adc_sdo1_c), .SP(adc_sck_temp_enable_22), 
            .CK(adc_sck_temp), .Q(current_data[11])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=234, LSE_RLINE=254 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/adc_control.v(164[14] 188[16])
    defparam current_data_i11.GSR = "ENABLED";
    FD1P3AX current_data_i10 (.D(seed_adc_sdo1_c), .SP(adc_sck_temp_enable_23), 
            .CK(adc_sck_temp), .Q(current_data[10])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=234, LSE_RLINE=254 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/adc_control.v(164[14] 188[16])
    defparam current_data_i10.GSR = "ENABLED";
    FD1P3AX current_data_i9 (.D(seed_adc_sdo1_c), .SP(adc_sck_temp_enable_24), 
            .CK(adc_sck_temp), .Q(current_data[9])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=234, LSE_RLINE=254 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/adc_control.v(164[14] 188[16])
    defparam current_data_i9.GSR = "ENABLED";
    FD1P3AX current_data_i8 (.D(seed_adc_sdo1_c), .SP(adc_sck_temp_enable_25), 
            .CK(adc_sck_temp), .Q(current_data[8])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=234, LSE_RLINE=254 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/adc_control.v(164[14] 188[16])
    defparam current_data_i8.GSR = "ENABLED";
    FD1P3AX current_data_i7 (.D(seed_adc_sdo1_c), .SP(adc_sck_temp_enable_26), 
            .CK(adc_sck_temp), .Q(current_data[7])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=234, LSE_RLINE=254 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/adc_control.v(164[14] 188[16])
    defparam current_data_i7.GSR = "ENABLED";
    FD1P3AX current_data_i6 (.D(seed_adc_sdo1_c), .SP(adc_sck_temp_enable_27), 
            .CK(adc_sck_temp), .Q(current_data[6])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=234, LSE_RLINE=254 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/adc_control.v(164[14] 188[16])
    defparam current_data_i6.GSR = "ENABLED";
    FD1P3AX current_data_i5 (.D(seed_adc_sdo1_c), .SP(adc_sck_temp_enable_28), 
            .CK(adc_sck_temp), .Q(current_data[5])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=234, LSE_RLINE=254 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/adc_control.v(164[14] 188[16])
    defparam current_data_i5.GSR = "ENABLED";
    FD1P3AX current_data_i4 (.D(seed_adc_sdo1_c), .SP(adc_sck_temp_enable_29), 
            .CK(adc_sck_temp), .Q(current_data[4])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=234, LSE_RLINE=254 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/adc_control.v(164[14] 188[16])
    defparam current_data_i4.GSR = "ENABLED";
    FD1P3AX current_data_i3 (.D(seed_adc_sdo1_c), .SP(adc_sck_temp_enable_30), 
            .CK(adc_sck_temp), .Q(current_data[3])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=234, LSE_RLINE=254 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/adc_control.v(164[14] 188[16])
    defparam current_data_i3.GSR = "ENABLED";
    FD1P3AX current_data_i2 (.D(seed_adc_sdo1_c), .SP(adc_sck_temp_enable_31), 
            .CK(adc_sck_temp), .Q(current_data[2])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=234, LSE_RLINE=254 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/adc_control.v(164[14] 188[16])
    defparam current_data_i2.GSR = "ENABLED";
    FD1P3AX current_data_i1 (.D(seed_adc_sdo1_c), .SP(adc_sck_temp_enable_32), 
            .CK(adc_sck_temp), .Q(current_data[1])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=234, LSE_RLINE=254 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/adc_control.v(164[14] 188[16])
    defparam current_data_i1.GSR = "ENABLED";
    FD1P3AX adc_current_data_temp_i15 (.D(n12947), .SP(adc_sck_temp_enable_62), 
            .CK(adc_sck_temp), .Q(adc_current_data[15])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=234, LSE_RLINE=254 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/adc_control.v(164[14] 188[16])
    defparam adc_current_data_temp_i15.GSR = "ENABLED";
    FD1P3AX adc_current_data_temp_i14 (.D(n12947), .SP(adc_sck_temp_enable_62), 
            .CK(adc_sck_temp), .Q(adc_current_data[14])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=234, LSE_RLINE=254 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/adc_control.v(164[14] 188[16])
    defparam adc_current_data_temp_i14.GSR = "ENABLED";
    FD1P3AX adc_current_data_temp_i13 (.D(current_data[13]), .SP(adc_sck_temp_enable_62), 
            .CK(adc_sck_temp), .Q(adc_current_data[13])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=234, LSE_RLINE=254 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/adc_control.v(164[14] 188[16])
    defparam adc_current_data_temp_i13.GSR = "ENABLED";
    FD1P3AX adc_current_data_temp_i12 (.D(current_data[12]), .SP(adc_sck_temp_enable_62), 
            .CK(adc_sck_temp), .Q(adc_current_data[12])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=234, LSE_RLINE=254 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/adc_control.v(164[14] 188[16])
    defparam adc_current_data_temp_i12.GSR = "ENABLED";
    FD1P3AX adc_current_data_temp_i11 (.D(current_data[11]), .SP(adc_sck_temp_enable_62), 
            .CK(adc_sck_temp), .Q(adc_current_data[11])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=234, LSE_RLINE=254 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/adc_control.v(164[14] 188[16])
    defparam adc_current_data_temp_i11.GSR = "ENABLED";
    FD1P3AX adc_current_data_temp_i10 (.D(current_data[10]), .SP(adc_sck_temp_enable_62), 
            .CK(adc_sck_temp), .Q(adc_current_data[10])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=234, LSE_RLINE=254 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/adc_control.v(164[14] 188[16])
    defparam adc_current_data_temp_i10.GSR = "ENABLED";
    FD1P3AX adc_current_data_temp_i9 (.D(current_data[9]), .SP(adc_sck_temp_enable_62), 
            .CK(adc_sck_temp), .Q(adc_current_data[9])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=234, LSE_RLINE=254 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/adc_control.v(164[14] 188[16])
    defparam adc_current_data_temp_i9.GSR = "ENABLED";
    FD1P3AX adc_current_data_temp_i8 (.D(current_data[8]), .SP(adc_sck_temp_enable_62), 
            .CK(adc_sck_temp), .Q(adc_current_data[8])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=234, LSE_RLINE=254 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/adc_control.v(164[14] 188[16])
    defparam adc_current_data_temp_i8.GSR = "ENABLED";
    FD1P3AX adc_current_data_temp_i7 (.D(current_data[7]), .SP(adc_sck_temp_enable_62), 
            .CK(adc_sck_temp), .Q(adc_current_data[7])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=234, LSE_RLINE=254 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/adc_control.v(164[14] 188[16])
    defparam adc_current_data_temp_i7.GSR = "ENABLED";
    FD1P3AX adc_current_data_temp_i6 (.D(current_data[6]), .SP(adc_sck_temp_enable_62), 
            .CK(adc_sck_temp), .Q(adc_current_data[6])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=234, LSE_RLINE=254 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/adc_control.v(164[14] 188[16])
    defparam adc_current_data_temp_i6.GSR = "ENABLED";
    FD1P3AX adc_current_data_temp_i5 (.D(current_data[5]), .SP(adc_sck_temp_enable_62), 
            .CK(adc_sck_temp), .Q(adc_current_data[5])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=234, LSE_RLINE=254 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/adc_control.v(164[14] 188[16])
    defparam adc_current_data_temp_i5.GSR = "ENABLED";
    FD1P3AX adc_current_data_temp_i4 (.D(current_data[4]), .SP(adc_sck_temp_enable_62), 
            .CK(adc_sck_temp), .Q(adc_current_data[4])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=234, LSE_RLINE=254 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/adc_control.v(164[14] 188[16])
    defparam adc_current_data_temp_i4.GSR = "ENABLED";
    FD1P3AX adc_current_data_temp_i3 (.D(current_data[3]), .SP(adc_sck_temp_enable_62), 
            .CK(adc_sck_temp), .Q(adc_current_data[3])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=234, LSE_RLINE=254 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/adc_control.v(164[14] 188[16])
    defparam adc_current_data_temp_i3.GSR = "ENABLED";
    FD1P3AX adc_current_data_temp_i2 (.D(current_data[2]), .SP(adc_sck_temp_enable_62), 
            .CK(adc_sck_temp), .Q(adc_current_data[2])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=234, LSE_RLINE=254 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/adc_control.v(164[14] 188[16])
    defparam adc_current_data_temp_i2.GSR = "ENABLED";
    FD1P3AX adc_current_data_temp_i1 (.D(current_data[1]), .SP(adc_sck_temp_enable_62), 
            .CK(adc_sck_temp), .Q(adc_current_data[1])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=234, LSE_RLINE=254 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/adc_control.v(164[14] 188[16])
    defparam adc_current_data_temp_i1.GSR = "ENABLED";
    FD1P3AX adc_voltage_data_temp_i15 (.D(n12947), .SP(adc_sck_temp_enable_62), 
            .CK(adc_sck_temp), .Q(adc_voltage_data[15])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=234, LSE_RLINE=254 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/adc_control.v(164[14] 188[16])
    defparam adc_voltage_data_temp_i15.GSR = "ENABLED";
    LUT4 state_3__I_0_159_i6_2_lut_rep_293 (.A(state[2]), .B(state[3]), 
         .Z(n12611)) /* synthesis lut_function=(A+(B)) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/adc_control.v(127[24:31])
    defparam state_3__I_0_159_i6_2_lut_rep_293.init = 16'heeee;
    FD1P3AX adc_voltage_data_temp_i14 (.D(n12947), .SP(adc_sck_temp_enable_62), 
            .CK(adc_sck_temp), .Q(adc_voltage_data[14])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=234, LSE_RLINE=254 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/adc_control.v(164[14] 188[16])
    defparam adc_voltage_data_temp_i14.GSR = "ENABLED";
    FD1P3AX adc_voltage_data_temp_i13 (.D(voltage_data[13]), .SP(adc_sck_temp_enable_62), 
            .CK(adc_sck_temp), .Q(adc_voltage_data[13])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=234, LSE_RLINE=254 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/adc_control.v(164[14] 188[16])
    defparam adc_voltage_data_temp_i13.GSR = "ENABLED";
    LUT4 i9318_3_lut_4_lut (.A(state[2]), .B(state[3]), .C(state[0]), 
         .D(adc_sck_temp), .Z(n12008)) /* synthesis lut_function=(A (D)+!A (B (D)+!B !(C))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/adc_control.v(127[24:31])
    defparam i9318_3_lut_4_lut.init = 16'hef01;
    FD1P3AX adc_voltage_data_temp_i12 (.D(voltage_data[12]), .SP(adc_sck_temp_enable_62), 
            .CK(adc_sck_temp), .Q(adc_voltage_data[12])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=234, LSE_RLINE=254 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/adc_control.v(164[14] 188[16])
    defparam adc_voltage_data_temp_i12.GSR = "ENABLED";
    FD1P3AX adc_voltage_data_temp_i11 (.D(voltage_data[11]), .SP(adc_sck_temp_enable_62), 
            .CK(adc_sck_temp), .Q(adc_voltage_data[11])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=234, LSE_RLINE=254 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/adc_control.v(164[14] 188[16])
    defparam adc_voltage_data_temp_i11.GSR = "ENABLED";
    LUT4 i9602_3_lut_rep_283_4_lut (.A(state[2]), .B(state[3]), .C(state[0]), 
         .D(state[1]), .Z(clk_10mhz_c_enable_258)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/adc_control.v(127[24:31])
    defparam i9602_3_lut_rep_283_4_lut.init = 16'h1000;
    FD1P3AX adc_voltage_data_temp_i10 (.D(voltage_data[10]), .SP(adc_sck_temp_enable_62), 
            .CK(adc_sck_temp), .Q(adc_voltage_data[10])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=234, LSE_RLINE=254 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/adc_control.v(164[14] 188[16])
    defparam adc_voltage_data_temp_i10.GSR = "ENABLED";
    FD1P3AX adc_voltage_data_temp_i9 (.D(voltage_data[9]), .SP(adc_sck_temp_enable_62), 
            .CK(adc_sck_temp), .Q(adc_voltage_data[9])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=234, LSE_RLINE=254 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/adc_control.v(164[14] 188[16])
    defparam adc_voltage_data_temp_i9.GSR = "ENABLED";
    FD1P3AX adc_voltage_data_temp_i8 (.D(voltage_data[8]), .SP(adc_sck_temp_enable_62), 
            .CK(adc_sck_temp), .Q(adc_voltage_data[8])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=234, LSE_RLINE=254 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/adc_control.v(164[14] 188[16])
    defparam adc_voltage_data_temp_i8.GSR = "ENABLED";
    LUT4 i2_2_lut_rep_295 (.A(convert_count[7]), .B(convert_count[5]), .Z(n12613)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2_2_lut_rep_295.init = 16'heeee;
    FD1P3AX adc_voltage_data_temp_i7 (.D(voltage_data[7]), .SP(adc_sck_temp_enable_62), 
            .CK(adc_sck_temp), .Q(adc_voltage_data[7])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=234, LSE_RLINE=254 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/adc_control.v(164[14] 188[16])
    defparam adc_voltage_data_temp_i7.GSR = "ENABLED";
    LUT4 i1_3_lut_4_lut (.A(convert_count[7]), .B(convert_count[5]), .C(convert_count[6]), 
         .D(state[1]), .Z(n11695)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_3_lut_4_lut.init = 16'hfffe;
    FD1P3AX adc_voltage_data_temp_i6 (.D(voltage_data[6]), .SP(adc_sck_temp_enable_62), 
            .CK(adc_sck_temp), .Q(adc_voltage_data[6])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=234, LSE_RLINE=254 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/adc_control.v(164[14] 188[16])
    defparam adc_voltage_data_temp_i6.GSR = "ENABLED";
    LUT4 i9464_2_lut_3_lut_4_lut (.A(capture_state[3]), .B(n12610), .C(n15), 
         .D(capture_state[2]), .Z(n6163)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i9464_2_lut_3_lut_4_lut.init = 16'h0100;
    FD1P3AX adc_voltage_data_temp_i5 (.D(voltage_data[5]), .SP(adc_sck_temp_enable_62), 
            .CK(adc_sck_temp), .Q(adc_voltage_data[5])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=234, LSE_RLINE=254 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/adc_control.v(164[14] 188[16])
    defparam adc_voltage_data_temp_i5.GSR = "ENABLED";
    FD1P3AX adc_voltage_data_temp_i4 (.D(voltage_data[4]), .SP(adc_sck_temp_enable_62), 
            .CK(adc_sck_temp), .Q(adc_voltage_data[4])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=234, LSE_RLINE=254 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/adc_control.v(164[14] 188[16])
    defparam adc_voltage_data_temp_i4.GSR = "ENABLED";
    FD1P3AX adc_voltage_data_temp_i3 (.D(voltage_data[3]), .SP(adc_sck_temp_enable_62), 
            .CK(adc_sck_temp), .Q(adc_voltage_data[3])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=234, LSE_RLINE=254 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/adc_control.v(164[14] 188[16])
    defparam adc_voltage_data_temp_i3.GSR = "ENABLED";
    FD1P3AX adc_voltage_data_temp_i2 (.D(voltage_data[2]), .SP(adc_sck_temp_enable_62), 
            .CK(adc_sck_temp), .Q(adc_voltage_data[2])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=234, LSE_RLINE=254 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/adc_control.v(164[14] 188[16])
    defparam adc_voltage_data_temp_i2.GSR = "ENABLED";
    FD1P3AX adc_voltage_data_temp_i1 (.D(voltage_data[1]), .SP(adc_sck_temp_enable_62), 
            .CK(adc_sck_temp), .Q(adc_voltage_data[1])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=234, LSE_RLINE=254 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/adc_control.v(164[14] 188[16])
    defparam adc_voltage_data_temp_i1.GSR = "ENABLED";
    FD1P3AX state_i3 (.D(n12010), .SP(clk_10mhz_c_enable_23), .CK(clk_10mhz_c), 
            .Q(state[3])) /* synthesis lse_init_val=0, syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=234, LSE_RLINE=254 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/adc_control.v(120[14] 151[12])
    defparam state_i3.GSR = "ENABLED";
    FD1P3AX state_i2 (.D(n12011), .SP(clk_10mhz_c_enable_23), .CK(clk_10mhz_c), 
            .Q(state[2])) /* synthesis lse_init_val=0, syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=234, LSE_RLINE=254 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/adc_control.v(120[14] 151[12])
    defparam state_i2.GSR = "ENABLED";
    FD1P3AX state_i1 (.D(n2089[1]), .SP(clk_10mhz_c_enable_24), .CK(clk_10mhz_c), 
            .Q(state[1])) /* synthesis lse_init_val=0, syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=234, LSE_RLINE=254 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/adc_control.v(120[14] 151[12])
    defparam state_i1.GSR = "ENABLED";
    LUT4 i9510_2_lut_4_lut (.A(count[2]), .B(adc_sck_temp_enable_72), .C(count[3]), 
         .D(n5_adj_1748), .Z(adc_sck_temp_enable_27)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/adc_control.v(171[37:56])
    defparam i9510_2_lut_4_lut.init = 16'h0008;
    LUT4 i9495_2_lut_4_lut (.A(count[2]), .B(adc_sck_temp_enable_72), .C(count[3]), 
         .D(n5), .Z(adc_sck_temp_enable_28)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/adc_control.v(171[37:56])
    defparam i9495_2_lut_4_lut.init = 16'h0008;
    LUT4 i9492_2_lut_4_lut (.A(count[2]), .B(adc_sck_temp_enable_72), .C(count[3]), 
         .D(n5_adj_1747), .Z(adc_sck_temp_enable_29)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/adc_control.v(171[37:56])
    defparam i9492_2_lut_4_lut.init = 16'h0008;
    CCU2D sub_12_add_2_9 (.A0(count[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n9695), 
          .S0(n223[7]));   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/adc_control.v(174[50:59])
    defparam sub_12_add_2_9.INIT0 = 16'h5555;
    defparam sub_12_add_2_9.INIT1 = 16'h0000;
    defparam sub_12_add_2_9.INJECT1_0 = "NO";
    defparam sub_12_add_2_9.INJECT1_1 = "NO";
    CCU2D sub_12_add_2_7 (.A0(count[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n9694), 
          .COUT(n9695), .S0(n223[5]), .S1(n223[6]));   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/adc_control.v(174[50:59])
    defparam sub_12_add_2_7.INIT0 = 16'h5555;
    defparam sub_12_add_2_7.INIT1 = 16'h5555;
    defparam sub_12_add_2_7.INJECT1_0 = "NO";
    defparam sub_12_add_2_7.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_299 (.A(state[1]), .B(state[0]), .Z(n12617)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/adc_control.v(121[21] 150[28])
    defparam i1_2_lut_rep_299.init = 16'hbbbb;
    LUT4 i9547_2_lut_3_lut_4_lut (.A(state[1]), .B(state[0]), .C(state[3]), 
         .D(state[2]), .Z(clk_10mhz_c_enable_255)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/adc_control.v(121[21] 150[28])
    defparam i9547_2_lut_3_lut_4_lut.init = 16'h0004;
    LUT4 i1_2_lut_4_lut_then_4_lut (.A(capture_state[3]), .B(capture_state[1]), 
         .C(n15), .D(capture_state[0]), .Z(n12661)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i1_2_lut_4_lut_then_4_lut.init = 16'h0001;
    LUT4 i1_2_lut_4_lut_else_4_lut (.A(capture_state[3]), .B(capture_state[1]), 
         .C(capture_state[0]), .D(data_ready), .Z(n12660)) /* synthesis lut_function=(!(A (B+(C))+!A (B+(C+!(D))))) */ ;
    defparam i1_2_lut_4_lut_else_4_lut.init = 16'h0302;
    CCU2D sub_12_add_2_5 (.A0(count[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n9693), 
          .COUT(n9694), .S0(n223[3]), .S1(n223[4]));   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/adc_control.v(174[50:59])
    defparam sub_12_add_2_5.INIT0 = 16'h5555;
    defparam sub_12_add_2_5.INIT1 = 16'h5555;
    defparam sub_12_add_2_5.INJECT1_0 = "NO";
    defparam sub_12_add_2_5.INJECT1_1 = "NO";
    CCU2D sub_12_add_2_3 (.A0(count[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n9692), 
          .COUT(n9693), .S0(n223[1]), .S1(n223[2]));   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/adc_control.v(174[50:59])
    defparam sub_12_add_2_3.INIT0 = 16'h5555;
    defparam sub_12_add_2_3.INIT1 = 16'h5555;
    defparam sub_12_add_2_3.INJECT1_0 = "NO";
    defparam sub_12_add_2_3.INJECT1_1 = "NO";
    CCU2D sub_12_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n9692), 
          .S1(n223[0]));   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/adc_control.v(174[50:59])
    defparam sub_12_add_2_1.INIT0 = 16'hF000;
    defparam sub_12_add_2_1.INIT1 = 16'h5555;
    defparam sub_12_add_2_1.INJECT1_0 = "NO";
    defparam sub_12_add_2_1.INJECT1_1 = "NO";
    LUT4 i9584_2_lut_4_lut (.A(count[3]), .B(adc_sck_temp_enable_72), .C(count[2]), 
         .D(n7954), .Z(adc_sck_temp_enable_22)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/adc_control.v(171[37:56])
    defparam i9584_2_lut_4_lut.init = 16'h0800;
    LUT4 i1_2_lut_rep_245 (.A(n15), .B(capture_state[2]), .Z(n12563)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_rep_245.init = 16'h4444;
    LUT4 i6892_1_lut_2_lut (.A(n15), .B(capture_state[2]), .Z(n9445)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam i6892_1_lut_2_lut.init = 16'hbbbb;
    LUT4 i9582_2_lut_4_lut (.A(count[3]), .B(adc_sck_temp_enable_72), .C(count[2]), 
         .D(n5_adj_1748), .Z(adc_sck_temp_enable_23)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/adc_control.v(171[37:56])
    defparam i9582_2_lut_4_lut.init = 16'h0008;
    LUT4 i9540_2_lut_4_lut (.A(count[3]), .B(adc_sck_temp_enable_72), .C(count[2]), 
         .D(n5), .Z(adc_sck_temp_enable_24)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/adc_control.v(171[37:56])
    defparam i9540_2_lut_4_lut.init = 16'h0008;
    LUT4 i9537_2_lut_4_lut (.A(count[3]), .B(adc_sck_temp_enable_72), .C(count[2]), 
         .D(n5_adj_1747), .Z(adc_sck_temp_enable_25)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/adc_control.v(171[37:56])
    defparam i9537_2_lut_4_lut.init = 16'h0008;
    LUT4 i7021_2_lut (.A(sck_count[1]), .B(sck_count[0]), .Z(n21[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/adc_control.v(146[62:75])
    defparam i7021_2_lut.init = 16'h6666;
    LUT4 i9487_2_lut_3_lut_4_lut (.A(capture_state[2]), .B(n12572), .C(n7954), 
         .D(n6), .Z(adc_sck_temp_enable_30)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/adc_control.v(170[22:29])
    defparam i9487_2_lut_3_lut_4_lut.init = 16'h0020;
    LUT4 i9498_2_lut_3_lut_4_lut (.A(capture_state[2]), .B(n12572), .C(n5_adj_1747), 
         .D(n6), .Z(adc_sck_temp_enable_4)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/adc_control.v(170[22:29])
    defparam i9498_2_lut_3_lut_4_lut.init = 16'h0002;
    LUT4 i9482_2_lut_3_lut_4_lut (.A(capture_state[2]), .B(n12572), .C(n5_adj_1748), 
         .D(n6), .Z(adc_sck_temp_enable_31)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/adc_control.v(170[22:29])
    defparam i9482_2_lut_3_lut_4_lut.init = 16'h0002;
    FD1P3IX convert_count_1540__i0 (.D(n37[0]), .SP(clk_10mhz_c_enable_255), 
            .CD(n6279), .CK(clk_10mhz_c), .Q(convert_count[0])) /* synthesis syn_preserve=1, syn_use_carry_chain=1 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/adc_control.v(133[63:80])
    defparam convert_count_1540__i0.GSR = "ENABLED";
    FD1P3IX sck_count_1539__i0 (.D(n21[0]), .SP(clk_10mhz_c_enable_258), 
            .CD(n6276), .CK(clk_10mhz_c), .Q(sck_count[0])) /* synthesis syn_preserve=1 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/adc_control.v(146[62:75])
    defparam sck_count_1539__i0.GSR = "ENABLED";
    FD1P3IX capture_state_i2 (.D(n9445), .SP(adc_sck_temp_enable_64), .CD(adc_sck_temp_enable_62), 
            .CK(adc_sck_temp), .Q(capture_state[2])) /* synthesis lse_init_val=0, syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=234, LSE_RLINE=254 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/adc_control.v(164[14] 188[16])
    defparam capture_state_i2.GSR = "ENABLED";
    FD1P3IX capture_state_i3 (.D(n12563), .SP(adc_sck_temp_enable_64), .CD(adc_sck_temp_enable_62), 
            .CK(adc_sck_temp), .Q(capture_state[3])) /* synthesis lse_init_val=0, syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=234, LSE_RLINE=254 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/adc_control.v(164[14] 188[16])
    defparam capture_state_i3.GSR = "ENABLED";
    FD1P3IX count_i1 (.D(n223[1]), .SP(adc_sck_temp_enable_72), .CD(n6163), 
            .CK(adc_sck_temp), .Q(count[1])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=234, LSE_RLINE=254 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/adc_control.v(164[14] 188[16])
    defparam count_i1.GSR = "ENABLED";
    LUT4 i9461_4_lut (.A(n12581), .B(clk_10mhz_c_enable_10), .C(n12611), 
         .D(state[1]), .Z(clk_10mhz_c_enable_260)) /* synthesis lut_function=(!(A (B (C)+!B (C+!(D)))+!A ((C+(D))+!B))) */ ;
    defparam i9461_4_lut.init = 16'h0a0c;
    LUT4 i5414_2_lut (.A(state[0]), .B(state[1]), .Z(n2039[0])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/adc_control.v(121[21] 150[28])
    defparam i5414_2_lut.init = 16'h2222;
    LUT4 i9594_2_lut_3_lut_4_lut (.A(n12613), .B(convert_count[6]), .C(n12617), 
         .D(n10), .Z(clk_10mhz_c_enable_23)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i9594_2_lut_3_lut_4_lut.init = 16'h0001;
    LUT4 i9479_2_lut_3_lut_4_lut (.A(capture_state[2]), .B(n12572), .C(n5), 
         .D(n6), .Z(adc_sck_temp_enable_32)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/adc_control.v(170[22:29])
    defparam i9479_2_lut_3_lut_4_lut.init = 16'h0002;
    LUT4 i3641_2_lut_3_lut_4_lut (.A(n12613), .B(convert_count[6]), .C(clk_10mhz_c_enable_255), 
         .D(n10), .Z(n6279)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)))) */ ;
    defparam i3641_2_lut_3_lut_4_lut.init = 16'hf0e0;
    LUT4 i1_3_lut_4_lut_adj_148 (.A(n12613), .B(convert_count[6]), .C(n10), 
         .D(state[0]), .Z(clk_10mhz_c_enable_10)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;
    defparam i1_3_lut_4_lut_adj_148.init = 16'hfeff;
    FD1P3JX count_i2 (.D(n223[2]), .SP(adc_sck_temp_enable_72), .PD(n6163), 
            .CK(adc_sck_temp), .Q(count[2])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=234, LSE_RLINE=254 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/adc_control.v(164[14] 188[16])
    defparam count_i2.GSR = "ENABLED";
    LUT4 equal_44_i5_2_lut (.A(count[0]), .B(count[1]), .Z(n5)) /* synthesis lut_function=((B)+!A) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/adc_control.v(171[37:56])
    defparam equal_44_i5_2_lut.init = 16'hdddd;
    LUT4 i5328_2_lut (.A(count[0]), .B(count[1]), .Z(n7954)) /* synthesis lut_function=(A (B)) */ ;
    defparam i5328_2_lut.init = 16'h8888;
    LUT4 equal_35_i5_2_lut (.A(count[0]), .B(count[1]), .Z(n5_adj_1748)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/adc_control.v(171[37:56])
    defparam equal_35_i5_2_lut.init = 16'hbbbb;
    LUT4 i1_4_lut_rep_229 (.A(state[0]), .B(n12611), .C(n10), .D(n11695), 
         .Z(clk_10mhz_c_enable_24)) /* synthesis lut_function=(!(A (B+!(C+(D)))+!A (B))) */ ;
    defparam i1_4_lut_rep_229.init = 16'h3331;
    LUT4 i5504_2_lut_rep_263 (.A(data_ready_N_1720), .B(state[0]), .Z(n12581)) /* synthesis lut_function=(A (B)) */ ;
    defparam i5504_2_lut_rep_263.init = 16'h8888;
    LUT4 mux_895_Mux_1_i3_3_lut_3_lut (.A(data_ready_N_1720), .B(state[0]), 
         .C(state[1]), .Z(n2089[1])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(B+(C)))) */ ;
    defparam mux_895_Mux_1_i3_3_lut_3_lut.init = 16'h7c7c;
    LUT4 i3457_2_lut_4_lut (.A(state[0]), .B(n12611), .C(n10), .D(n11695), 
         .Z(state_3__N_1501[0])) /* synthesis lut_function=(A (B+!(C+(D)))+!A !(B)) */ ;
    defparam i3457_2_lut_4_lut.init = 16'h999b;
    LUT4 i7035_3_lut_4_lut (.A(sck_count[1]), .B(sck_count[0]), .C(sck_count[2]), 
         .D(sck_count[3]), .Z(n21[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/adc_control.v(146[62:75])
    defparam i7035_3_lut_4_lut.init = 16'h7f80;
    LUT4 i7028_2_lut_3_lut (.A(sck_count[1]), .B(sck_count[0]), .C(sck_count[2]), 
         .Z(n21[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/adc_control.v(146[62:75])
    defparam i7028_2_lut_3_lut.init = 16'h7878;
    FD1P3JX count_i3 (.D(n223[3]), .SP(adc_sck_temp_enable_72), .PD(n6163), 
            .CK(adc_sck_temp), .Q(count[3])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=234, LSE_RLINE=254 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/adc_control.v(164[14] 188[16])
    defparam count_i3.GSR = "ENABLED";
    LUT4 i3634_2_lut_4_lut (.A(state[1]), .B(state[0]), .C(n12611), .D(data_ready_N_1720), 
         .Z(n6276)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/adc_control.v(139[24:31])
    defparam i3634_2_lut_4_lut.init = 16'h0800;
    LUT4 i1_2_lut (.A(adc_sck_temp), .B(data_ready), .Z(seed_adc_sck_c)) /* synthesis lut_function=(A (B)) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/adc_control.v(120[14] 151[12])
    defparam i1_2_lut.init = 16'h8888;
    LUT4 i1_4_lut (.A(sck_count[2]), .B(sck_count[0]), .C(sck_count[3]), 
         .D(sck_count[1]), .Z(data_ready_N_1720)) /* synthesis lut_function=(A (B (C)+!B (C (D)))) */ ;
    defparam i1_4_lut.init = 16'ha080;
    LUT4 i1785_4_lut (.A(n4), .B(convert_count[4]), .C(convert_count[3]), 
         .D(convert_count[2]), .Z(n10)) /* synthesis lut_function=(A (B (C+(D)))+!A (B (C))) */ ;
    defparam i1785_4_lut.init = 16'hc8c0;
    LUT4 i1729_2_lut (.A(convert_count[0]), .B(convert_count[1]), .Z(n4)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1729_2_lut.init = 16'heeee;
    FD1P3IX convert_count_1540__i7 (.D(n37[7]), .SP(clk_10mhz_c_enable_255), 
            .CD(n6279), .CK(clk_10mhz_c), .Q(convert_count[7])) /* synthesis syn_preserve=1, syn_use_carry_chain=1 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/adc_control.v(133[63:80])
    defparam convert_count_1540__i7.GSR = "ENABLED";
    FD1P3IX convert_count_1540__i6 (.D(n37[6]), .SP(clk_10mhz_c_enable_255), 
            .CD(n6279), .CK(clk_10mhz_c), .Q(convert_count[6])) /* synthesis syn_preserve=1, syn_use_carry_chain=1 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/adc_control.v(133[63:80])
    defparam convert_count_1540__i6.GSR = "ENABLED";
    FD1P3IX convert_count_1540__i5 (.D(n37[5]), .SP(clk_10mhz_c_enable_255), 
            .CD(n6279), .CK(clk_10mhz_c), .Q(convert_count[5])) /* synthesis syn_preserve=1, syn_use_carry_chain=1 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/adc_control.v(133[63:80])
    defparam convert_count_1540__i5.GSR = "ENABLED";
    FD1P3IX count_i4 (.D(n223[4]), .SP(adc_sck_temp_enable_72), .CD(n6163), 
            .CK(adc_sck_temp), .Q(count[4])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=234, LSE_RLINE=254 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/adc_control.v(164[14] 188[16])
    defparam count_i4.GSR = "ENABLED";
    FD1P3IX count_i5 (.D(n223[5]), .SP(adc_sck_temp_enable_72), .CD(n6163), 
            .CK(adc_sck_temp), .Q(count[5])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=234, LSE_RLINE=254 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/adc_control.v(164[14] 188[16])
    defparam count_i5.GSR = "ENABLED";
    FD1P3IX count_i6 (.D(n223[6]), .SP(adc_sck_temp_enable_72), .CD(n6163), 
            .CK(adc_sck_temp), .Q(count[6])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=234, LSE_RLINE=254 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/adc_control.v(164[14] 188[16])
    defparam count_i6.GSR = "ENABLED";
    LUT4 equal_45_i5_2_lut (.A(count[0]), .B(count[1]), .Z(n5_adj_1747)) /* synthesis lut_function=(A+(B)) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/adc_control.v(171[37:56])
    defparam equal_45_i5_2_lut.init = 16'heeee;
    LUT4 equal_45_i6_2_lut (.A(count[2]), .B(count[3]), .Z(n6)) /* synthesis lut_function=(A+(B)) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/adc_control.v(171[37:56])
    defparam equal_45_i6_2_lut.init = 16'heeee;
    FD1P3IX convert_count_1540__i4 (.D(n37[4]), .SP(clk_10mhz_c_enable_255), 
            .CD(n6279), .CK(clk_10mhz_c), .Q(convert_count[4])) /* synthesis syn_preserve=1, syn_use_carry_chain=1 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/adc_control.v(133[63:80])
    defparam convert_count_1540__i4.GSR = "ENABLED";
    FD1P3IX convert_count_1540__i3 (.D(n37[3]), .SP(clk_10mhz_c_enable_255), 
            .CD(n6279), .CK(clk_10mhz_c), .Q(convert_count[3])) /* synthesis syn_preserve=1, syn_use_carry_chain=1 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/adc_control.v(133[63:80])
    defparam convert_count_1540__i3.GSR = "ENABLED";
    FD1P3IX convert_count_1540__i2 (.D(n37[2]), .SP(clk_10mhz_c_enable_255), 
            .CD(n6279), .CK(clk_10mhz_c), .Q(convert_count[2])) /* synthesis syn_preserve=1, syn_use_carry_chain=1 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/adc_control.v(133[63:80])
    defparam convert_count_1540__i2.GSR = "ENABLED";
    FD1P3IX convert_count_1540__i1 (.D(n37[1]), .SP(clk_10mhz_c_enable_255), 
            .CD(n6279), .CK(clk_10mhz_c), .Q(convert_count[1])) /* synthesis syn_preserve=1, syn_use_carry_chain=1 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/adc_control.v(133[63:80])
    defparam convert_count_1540__i1.GSR = "ENABLED";
    FD1P3IX sck_count_1539__i3 (.D(n21[3]), .SP(clk_10mhz_c_enable_258), 
            .CD(n6276), .CK(clk_10mhz_c), .Q(sck_count[3])) /* synthesis syn_preserve=1 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/adc_control.v(146[62:75])
    defparam sck_count_1539__i3.GSR = "ENABLED";
    FD1P3IX sck_count_1539__i2 (.D(n21[2]), .SP(clk_10mhz_c_enable_258), 
            .CD(n6276), .CK(clk_10mhz_c), .Q(sck_count[2])) /* synthesis syn_preserve=1 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/adc_control.v(146[62:75])
    defparam sck_count_1539__i2.GSR = "ENABLED";
    FD1P3IX sck_count_1539__i1 (.D(n21[1]), .SP(clk_10mhz_c_enable_258), 
            .CD(n6276), .CK(clk_10mhz_c), .Q(sck_count[1])) /* synthesis syn_preserve=1 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/adc_control.v(146[62:75])
    defparam sck_count_1539__i1.GSR = "ENABLED";
    LUT4 i9530_2_lut_4_lut (.A(count[2]), .B(adc_sck_temp_enable_72), .C(count[3]), 
         .D(n7954), .Z(adc_sck_temp_enable_26)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/adc_control.v(171[37:56])
    defparam i9530_2_lut_4_lut.init = 16'h0800;
    FD1P3IX count_i7 (.D(n223[7]), .SP(adc_sck_temp_enable_72), .CD(n6163), 
            .CK(adc_sck_temp), .Q(count[7])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=234, LSE_RLINE=254 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/adc_control.v(164[14] 188[16])
    defparam count_i7.GSR = "ENABLED";
    FD1P3JX count_i0 (.D(n223[0]), .SP(adc_sck_temp_enable_72), .PD(n6163), 
            .CK(adc_sck_temp), .Q(count[0])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=234, LSE_RLINE=254 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/adc_control.v(164[14] 188[16])
    defparam count_i0.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_149 (.A(n6), .B(n5_adj_1747), .C(n11745), .D(n11743), 
         .Z(n15)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/adc_control.v(171[37:56])
    defparam i1_4_lut_adj_149.init = 16'hfffe;
    LUT4 i1_2_lut_adj_150 (.A(count[7]), .B(count[6]), .Z(n11745)) /* synthesis lut_function=(A+(B)) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/adc_control.v(171[37:56])
    defparam i1_2_lut_adj_150.init = 16'heeee;
    FD1P3AX data_ready_133 (.D(n2039[0]), .SP(clk_10mhz_c_enable_260), .CK(clk_10mhz_c), 
            .Q(data_ready)) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=234, LSE_RLINE=254 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/adc_control.v(120[14] 151[12])
    defparam data_ready_133.GSR = "ENABLED";
    CCU2D convert_count_1540_add_4_9 (.A0(convert_count[7]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n9671), .S0(n37[7]));   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/adc_control.v(133[63:80])
    defparam convert_count_1540_add_4_9.INIT0 = 16'hfaaa;
    defparam convert_count_1540_add_4_9.INIT1 = 16'h0000;
    defparam convert_count_1540_add_4_9.INJECT1_0 = "NO";
    defparam convert_count_1540_add_4_9.INJECT1_1 = "NO";
    LUT4 i1_2_lut_adj_151 (.A(count[4]), .B(count[5]), .Z(n11743)) /* synthesis lut_function=(A+(B)) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/adc_control.v(171[37:56])
    defparam i1_2_lut_adj_151.init = 16'heeee;
    PFUMX i9689 (.BLUT(n12660), .ALUT(n12661), .C0(capture_state[2]), 
          .Z(adc_sck_temp_enable_64));
    CCU2D convert_count_1540_add_4_7 (.A0(convert_count[5]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(convert_count[6]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n9670), .COUT(n9671), .S0(n37[5]), 
          .S1(n37[6]));   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/adc_control.v(133[63:80])
    defparam convert_count_1540_add_4_7.INIT0 = 16'hfaaa;
    defparam convert_count_1540_add_4_7.INIT1 = 16'hfaaa;
    defparam convert_count_1540_add_4_7.INJECT1_0 = "NO";
    defparam convert_count_1540_add_4_7.INJECT1_1 = "NO";
    CCU2D convert_count_1540_add_4_5 (.A0(convert_count[3]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(convert_count[4]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n9669), .COUT(n9670), .S0(n37[3]), 
          .S1(n37[4]));   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/adc_control.v(133[63:80])
    defparam convert_count_1540_add_4_5.INIT0 = 16'hfaaa;
    defparam convert_count_1540_add_4_5.INIT1 = 16'hfaaa;
    defparam convert_count_1540_add_4_5.INJECT1_0 = "NO";
    defparam convert_count_1540_add_4_5.INJECT1_1 = "NO";
    CCU2D convert_count_1540_add_4_3 (.A0(convert_count[1]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(convert_count[2]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n9668), .COUT(n9669), .S0(n37[1]), 
          .S1(n37[2]));   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/adc_control.v(133[63:80])
    defparam convert_count_1540_add_4_3.INIT0 = 16'hfaaa;
    defparam convert_count_1540_add_4_3.INIT1 = 16'hfaaa;
    defparam convert_count_1540_add_4_3.INJECT1_0 = "NO";
    defparam convert_count_1540_add_4_3.INJECT1_1 = "NO";
    CCU2D convert_count_1540_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(convert_count[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n9668), .S1(n37[0]));   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/adc_control.v(133[63:80])
    defparam convert_count_1540_add_4_1.INIT0 = 16'hF000;
    defparam convert_count_1540_add_4_1.INIT1 = 16'h0555;
    defparam convert_count_1540_add_4_1.INJECT1_0 = "NO";
    defparam convert_count_1540_add_4_1.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module dds_control_interface
//

module dds_control_interface (clk_10mhz_c, seed_mod_ss_c, clk_N_1433, 
            seed_mod_sck_c, seed_mod_mosi_c, dds_control, reset_n, GND_net, 
            \static_control[7] , \control[0] , n12948) /* synthesis syn_module_defined=1 */ ;
    input clk_10mhz_c;
    output seed_mod_ss_c;
    input clk_N_1433;
    output seed_mod_sck_c;
    output seed_mod_mosi_c;
    input [15:0]dds_control;
    input reset_n;
    input GND_net;
    input \static_control[7] ;
    input \control[0] ;
    input n12948;
    
    wire clk_10mhz_c /* synthesis SET_AS_NETWORK=clk_10mhz_c, is_clock=1 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/top.v(24[15:24])
    wire clk_N_1433 /* synthesis is_inv_clock=1 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_control_interface.v(12[18:21])
    wire [7:0]count;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_control_interface.v(26[12:17])
    
    wire count_7__N_1284, state_3__N_1254;
    wire [7:0]count_7__N_1276;
    wire [15:0]data;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_control_interface.v(28[12:16])
    
    wire clk_10mhz_c_enable_74, n12627, n532;
    wire [15:0]total_count;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_control_interface.v(38[12:23])
    wire [15:0]total_count_15__N_1319;
    
    wire ss0_temp2, sck_temp2, sck_temp, ss0_temp_dd, ss0_temp, clk_10mhz_c_enable_262, 
        n12619, ss0_temp_d, transfer_completed_temp, clk_10mhz_c_enable_8, 
        n3921, transfer_completed_temp_d, data_temp_15__N_1301, mosi_N_1431;
    wire [3:0]index;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_control_interface.v(46[12:17])
    
    wire n12608, data_valid, clk_10mhz_c_enable_9, data_valid_N_1436, 
        n11825, n11823, n11, n12624, n12626, n12625, n11755, clk_10mhz_c_enable_223;
    wire [3:0]state;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_control_interface.v(25[12:17])
    wire [8:0]count_7__N_1363;
    
    wire state_3__N_1257, n12605, n12646;
    wire [15:0]data_temp;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_control_interface.v(27[12:21])
    wire [15:0]data_temp_15__N_1285;
    
    wire mosi_reset, ss0_temp_N_1263, ss0_temp_d_N_1447, n12585, n547, 
        n546;
    wire [3:0]cstate;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_control_interface.v(25[20:26])
    
    wire n40, n542, n46, n7021, n541, n540, n536, n535, clk_10mhz_c_enable_230, 
        n9783, n534, n12050, n10303, n9734, n10433, n11319, n11321, 
        n533;
    wire [3:0]n1770;
    
    wire n9691, n9690, n9689;
    wire [2:0]n17;
    
    wire n12584, n9;
    wire [15:0]total_count_15__N_1339;
    
    wire n9_adj_1732, test_run, n4260, n543, n544, n545, transfer_done, 
        data_valid_dbg, clk_10mhz_c_enable_59, n10305, test_mode_d, 
        n539, n538, n10177, n9_adj_1733, clk_10mhz_c_enable_233, clk_10mhz_c_enable_261, 
        n11014, n12046, n9_adj_1734, n9_adj_1735, n9688, n9651, 
        n9650, n9649, n9648, n9647, n9646, n9_adj_1736, n9_adj_1737, 
        n9_adj_1738, n9_adj_1739, n9_adj_1740, n9_adj_1741, n9645, 
        n9_adj_1742, n9_adj_1743, n9644, n9_adj_1744, n9_adj_1745, 
        n9_adj_1746;
    
    FD1S1B count_7__I_84_i1 (.D(count_7__N_1276[0]), .CK(count_7__N_1284), 
           .PD(state_3__N_1254), .Q(count[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=3, LSE_LLINE=218, LSE_RLINE=231 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_control_interface.v(144[1] 175[4])
    defparam count_7__I_84_i1.GSR = "DISABLED";
    FD1P3DX data_i0_i0 (.D(n532), .SP(clk_10mhz_c_enable_74), .CK(clk_10mhz_c), 
            .CD(n12627), .Q(data[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=3, LSE_LLINE=218, LSE_RLINE=231 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_control_interface.v(183[14] 211[17])
    defparam data_i0_i0.GSR = "DISABLED";
    FD1S3AX total_count_i0 (.D(total_count_15__N_1319[0]), .CK(clk_10mhz_c), 
            .Q(total_count[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=3, LSE_LLINE=218, LSE_RLINE=231 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_control_interface.v(100[18] 141[6])
    defparam total_count_i0.GSR = "ENABLED";
    FD1S3AY ss0_277 (.D(ss0_temp2), .CK(clk_N_1433), .Q(seed_mod_ss_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=3, LSE_LLINE=218, LSE_RLINE=231 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_control_interface.v(69[18] 72[21])
    defparam ss0_277.GSR = "ENABLED";
    FD1S3AX sck_temp2_278 (.D(sck_temp), .CK(clk_N_1433), .Q(sck_temp2)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=3, LSE_LLINE=218, LSE_RLINE=231 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_control_interface.v(69[18] 72[21])
    defparam sck_temp2_278.GSR = "ENABLED";
    FD1S3JX ss0_temp2_279 (.D(ss0_temp), .CK(clk_10mhz_c), .PD(ss0_temp_dd), 
            .Q(ss0_temp2)) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=3, LSE_LLINE=218, LSE_RLINE=231 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_control_interface.v(79[18] 82[21])
    defparam ss0_temp2_279.GSR = "ENABLED";
    FD1S3AX sck_280 (.D(sck_temp2), .CK(clk_10mhz_c), .Q(seed_mod_sck_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=3, LSE_LLINE=218, LSE_RLINE=231 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_control_interface.v(79[18] 82[21])
    defparam sck_280.GSR = "ENABLED";
    FD1P3AY ss0_temp_284 (.D(n12619), .SP(clk_10mhz_c_enable_262), .CK(clk_10mhz_c), 
            .Q(ss0_temp)) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=3, LSE_LLINE=218, LSE_RLINE=231 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_control_interface.v(100[18] 141[6])
    defparam ss0_temp_284.GSR = "ENABLED";
    FD1S3AX ss0_temp_d_286 (.D(ss0_temp), .CK(clk_10mhz_c), .Q(ss0_temp_d)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=3, LSE_LLINE=218, LSE_RLINE=231 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_control_interface.v(100[18] 141[6])
    defparam ss0_temp_d_286.GSR = "ENABLED";
    FD1P3AX transfer_completed_temp_288 (.D(n3921), .SP(clk_10mhz_c_enable_8), 
            .CK(clk_10mhz_c), .Q(transfer_completed_temp)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=3, LSE_LLINE=218, LSE_RLINE=231 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_control_interface.v(100[18] 141[6])
    defparam transfer_completed_temp_288.GSR = "ENABLED";
    FD1S3AX transfer_completed_temp_d_289 (.D(transfer_completed_temp), .CK(clk_10mhz_c), 
            .Q(transfer_completed_temp_d)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=3, LSE_LLINE=218, LSE_RLINE=231 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_control_interface.v(100[18] 141[6])
    defparam transfer_completed_temp_d_289.GSR = "ENABLED";
    FD1S1D mosi_I_0 (.D(mosi_N_1431), .CK(data_temp_15__N_1301), .CD(state_3__N_1254), 
           .Q(seed_mod_mosi_c)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=3, LSE_LLINE=218, LSE_RLINE=231 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_control_interface.v(144[1] 175[4])
    defparam mosi_I_0.GSR = "DISABLED";
    LUT4 i1_2_lut_rep_290 (.A(index[0]), .B(index[2]), .Z(n12608)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_control_interface.v(195[8] 202[15])
    defparam i1_2_lut_rep_290.init = 16'h2222;
    FD1P3DX data_valid_324 (.D(data_valid_N_1436), .SP(clk_10mhz_c_enable_9), 
            .CK(clk_10mhz_c), .CD(n12627), .Q(data_valid)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=3, LSE_LLINE=218, LSE_RLINE=231 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_control_interface.v(183[14] 211[17])
    defparam data_valid_324.GSR = "DISABLED";
    FD1S3AY ss0_temp_dd_275 (.D(ss0_temp), .CK(clk_N_1433), .Q(ss0_temp_dd)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=3, LSE_LLINE=218, LSE_RLINE=231 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_control_interface.v(59[18] 62[21])
    defparam ss0_temp_dd_275.GSR = "ENABLED";
    LUT4 i1_4_lut (.A(count[6]), .B(n11825), .C(n11823), .D(count[2]), 
         .Z(n11)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut.init = 16'hfffe;
    LUT4 i1_4_lut_adj_91 (.A(count[5]), .B(count[0]), .C(count[3]), .D(count[7]), 
         .Z(n11825)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_91.init = 16'hfffe;
    LUT4 i1_2_lut (.A(count[4]), .B(count[1]), .Z(n11823)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut.init = 16'heeee;
    LUT4 i9544_4_lut (.A(n12624), .B(n12626), .C(n12625), .D(n11755), 
         .Z(clk_10mhz_c_enable_223)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i9544_4_lut.init = 16'h0080;
    LUT4 i9191_3_lut_4_lut (.A(n11), .B(state[1]), .C(count_7__N_1363[1]), 
         .D(state[2]), .Z(count_7__N_1276[1])) /* synthesis lut_function=(!(A ((D)+!C)+!A (B (D)+!B ((D)+!C)))) */ ;
    defparam i9191_3_lut_4_lut.init = 16'h00f4;
    FD1S1B count_7__I_84_i2 (.D(count_7__N_1276[1]), .CK(count_7__N_1284), 
           .PD(state_3__N_1254), .Q(count[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=3, LSE_LLINE=218, LSE_RLINE=231 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_control_interface.v(144[1] 175[4])
    defparam count_7__I_84_i2.GSR = "DISABLED";
    FD1S1B count_7__I_84_i3 (.D(count_7__N_1276[2]), .CK(count_7__N_1284), 
           .PD(state_3__N_1254), .Q(count[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=3, LSE_LLINE=218, LSE_RLINE=231 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_control_interface.v(144[1] 175[4])
    defparam count_7__I_84_i3.GSR = "DISABLED";
    FD1S1B count_7__I_84_i4 (.D(count_7__N_1276[3]), .CK(count_7__N_1284), 
           .PD(state_3__N_1254), .Q(count[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=3, LSE_LLINE=218, LSE_RLINE=231 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_control_interface.v(144[1] 175[4])
    defparam count_7__I_84_i4.GSR = "DISABLED";
    FD1S1D count_7__I_84_i5 (.D(count_7__N_1276[4]), .CK(count_7__N_1284), 
           .CD(state_3__N_1254), .Q(count[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=3, LSE_LLINE=218, LSE_RLINE=231 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_control_interface.v(144[1] 175[4])
    defparam count_7__I_84_i5.GSR = "DISABLED";
    FD1S1D count_7__I_84_i6 (.D(count_7__N_1276[5]), .CK(count_7__N_1284), 
           .CD(state_3__N_1254), .Q(count[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=3, LSE_LLINE=218, LSE_RLINE=231 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_control_interface.v(144[1] 175[4])
    defparam count_7__I_84_i6.GSR = "DISABLED";
    FD1S1D count_7__I_84_i7 (.D(count_7__N_1276[6]), .CK(count_7__N_1284), 
           .CD(state_3__N_1254), .Q(count[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=3, LSE_LLINE=218, LSE_RLINE=231 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_control_interface.v(144[1] 175[4])
    defparam count_7__I_84_i7.GSR = "DISABLED";
    FD1S1D count_7__I_84_i8 (.D(count_7__N_1276[7]), .CK(count_7__N_1284), 
           .CD(state_3__N_1254), .Q(count[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=3, LSE_LLINE=218, LSE_RLINE=231 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_control_interface.v(144[1] 175[4])
    defparam count_7__I_84_i8.GSR = "DISABLED";
    FD1S1D state_3__I_0_332_i2 (.D(n12605), .CK(state_3__N_1257), .CD(state_3__N_1254), 
           .Q(state[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=3, LSE_LLINE=218, LSE_RLINE=231 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_control_interface.v(144[1] 175[4])
    defparam state_3__I_0_332_i2.GSR = "DISABLED";
    FD1S1D state_3__I_0_332_i3 (.D(n12646), .CK(state_3__N_1257), .CD(state_3__N_1254), 
           .Q(state[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=3, LSE_LLINE=218, LSE_RLINE=231 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_control_interface.v(144[1] 175[4])
    defparam state_3__I_0_332_i3.GSR = "DISABLED";
    FD1S1D data_temp_15__I_0_i2 (.D(data_temp_15__N_1285[1]), .CK(data_temp_15__N_1301), 
           .CD(state_3__N_1254), .Q(data_temp[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=3, LSE_LLINE=218, LSE_RLINE=231 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_control_interface.v(144[1] 175[4])
    defparam data_temp_15__I_0_i2.GSR = "DISABLED";
    FD1S1D data_temp_15__I_0_i3 (.D(data_temp_15__N_1285[2]), .CK(data_temp_15__N_1301), 
           .CD(state_3__N_1254), .Q(data_temp[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=3, LSE_LLINE=218, LSE_RLINE=231 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_control_interface.v(144[1] 175[4])
    defparam data_temp_15__I_0_i3.GSR = "DISABLED";
    FD1S1D data_temp_15__I_0_i4 (.D(data_temp_15__N_1285[3]), .CK(data_temp_15__N_1301), 
           .CD(state_3__N_1254), .Q(data_temp[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=3, LSE_LLINE=218, LSE_RLINE=231 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_control_interface.v(144[1] 175[4])
    defparam data_temp_15__I_0_i4.GSR = "DISABLED";
    FD1S1D data_temp_15__I_0_i5 (.D(data_temp_15__N_1285[4]), .CK(data_temp_15__N_1301), 
           .CD(state_3__N_1254), .Q(data_temp[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=3, LSE_LLINE=218, LSE_RLINE=231 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_control_interface.v(144[1] 175[4])
    defparam data_temp_15__I_0_i5.GSR = "DISABLED";
    FD1S1D data_temp_15__I_0_i6 (.D(data_temp_15__N_1285[5]), .CK(data_temp_15__N_1301), 
           .CD(state_3__N_1254), .Q(data_temp[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=3, LSE_LLINE=218, LSE_RLINE=231 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_control_interface.v(144[1] 175[4])
    defparam data_temp_15__I_0_i6.GSR = "DISABLED";
    FD1S1D data_temp_15__I_0_i7 (.D(data_temp_15__N_1285[6]), .CK(data_temp_15__N_1301), 
           .CD(state_3__N_1254), .Q(data_temp[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=3, LSE_LLINE=218, LSE_RLINE=231 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_control_interface.v(144[1] 175[4])
    defparam data_temp_15__I_0_i7.GSR = "DISABLED";
    FD1S1D data_temp_15__I_0_i8 (.D(data_temp_15__N_1285[7]), .CK(data_temp_15__N_1301), 
           .CD(state_3__N_1254), .Q(data_temp[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=3, LSE_LLINE=218, LSE_RLINE=231 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_control_interface.v(144[1] 175[4])
    defparam data_temp_15__I_0_i8.GSR = "DISABLED";
    FD1S1D data_temp_15__I_0_i9 (.D(data_temp_15__N_1285[8]), .CK(data_temp_15__N_1301), 
           .CD(state_3__N_1254), .Q(data_temp[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=3, LSE_LLINE=218, LSE_RLINE=231 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_control_interface.v(144[1] 175[4])
    defparam data_temp_15__I_0_i9.GSR = "DISABLED";
    FD1S1D data_temp_15__I_0_i10 (.D(data_temp_15__N_1285[9]), .CK(data_temp_15__N_1301), 
           .CD(state_3__N_1254), .Q(data_temp[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=3, LSE_LLINE=218, LSE_RLINE=231 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_control_interface.v(144[1] 175[4])
    defparam data_temp_15__I_0_i10.GSR = "DISABLED";
    FD1S1D data_temp_15__I_0_i11 (.D(data_temp_15__N_1285[10]), .CK(data_temp_15__N_1301), 
           .CD(state_3__N_1254), .Q(data_temp[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=3, LSE_LLINE=218, LSE_RLINE=231 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_control_interface.v(144[1] 175[4])
    defparam data_temp_15__I_0_i11.GSR = "DISABLED";
    FD1S1D data_temp_15__I_0_i12 (.D(data_temp_15__N_1285[11]), .CK(data_temp_15__N_1301), 
           .CD(state_3__N_1254), .Q(data_temp[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=3, LSE_LLINE=218, LSE_RLINE=231 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_control_interface.v(144[1] 175[4])
    defparam data_temp_15__I_0_i12.GSR = "DISABLED";
    FD1S1D data_temp_15__I_0_i13 (.D(data_temp_15__N_1285[12]), .CK(data_temp_15__N_1301), 
           .CD(state_3__N_1254), .Q(data_temp[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=3, LSE_LLINE=218, LSE_RLINE=231 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_control_interface.v(144[1] 175[4])
    defparam data_temp_15__I_0_i13.GSR = "DISABLED";
    FD1S1D data_temp_15__I_0_i14 (.D(data_temp_15__N_1285[13]), .CK(data_temp_15__N_1301), 
           .CD(state_3__N_1254), .Q(data_temp[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=3, LSE_LLINE=218, LSE_RLINE=231 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_control_interface.v(144[1] 175[4])
    defparam data_temp_15__I_0_i14.GSR = "DISABLED";
    FD1S1D data_temp_15__I_0_i15 (.D(data_temp_15__N_1285[14]), .CK(data_temp_15__N_1301), 
           .CD(state_3__N_1254), .Q(data_temp[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=3, LSE_LLINE=218, LSE_RLINE=231 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_control_interface.v(144[1] 175[4])
    defparam data_temp_15__I_0_i15.GSR = "DISABLED";
    FD1S1D data_temp_15__I_0_i16 (.D(data_temp_15__N_1285[15]), .CK(data_temp_15__N_1301), 
           .CD(state_3__N_1254), .Q(data_temp[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=3, LSE_LLINE=218, LSE_RLINE=231 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_control_interface.v(144[1] 175[4])
    defparam data_temp_15__I_0_i16.GSR = "DISABLED";
    FD1S3IX mosi_reset_287 (.D(ss0_temp_d_N_1447), .CK(clk_10mhz_c), .CD(ss0_temp_N_1263), 
            .Q(mosi_reset)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=3, LSE_LLINE=218, LSE_RLINE=231 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_control_interface.v(100[18] 141[6])
    defparam mosi_reset_287.GSR = "ENABLED";
    LUT4 mux_289_i16_3_lut_4_lut (.A(index[1]), .B(n12608), .C(n12585), 
         .D(dds_control[15]), .Z(n547)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;
    defparam mux_289_i16_3_lut_4_lut.init = 16'h4f40;
    LUT4 mux_289_i15_3_lut_4_lut (.A(index[1]), .B(n12608), .C(n12585), 
         .D(dds_control[14]), .Z(n546)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;
    defparam mux_289_i15_3_lut_4_lut.init = 16'h4f40;
    LUT4 i1_2_lut_adj_92 (.A(cstate[0]), .B(data_valid), .Z(n40)) /* synthesis lut_function=(A+(B)) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_control_interface.v(25[20:26])
    defparam i1_2_lut_adj_92.init = 16'heeee;
    LUT4 mux_289_i11_3_lut_4_lut (.A(index[1]), .B(n12608), .C(n12585), 
         .D(dds_control[10]), .Z(n542)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;
    defparam mux_289_i11_3_lut_4_lut.init = 16'h4f40;
    LUT4 i4383_3_lut (.A(cstate[2]), .B(cstate[0]), .C(n46), .Z(n7021)) /* synthesis lut_function=(!(A (B)+!A !(B (C)))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_control_interface.v(25[20:26])
    defparam i4383_3_lut.init = 16'h6262;
    LUT4 mux_289_i10_3_lut_4_lut (.A(index[1]), .B(n12608), .C(n12585), 
         .D(dds_control[9]), .Z(n541)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;
    defparam mux_289_i10_3_lut_4_lut.init = 16'h4f40;
    LUT4 mux_289_i9_3_lut_4_lut (.A(index[1]), .B(n12608), .C(n12585), 
         .D(dds_control[8]), .Z(n540)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;
    defparam mux_289_i9_3_lut_4_lut.init = 16'h4f40;
    LUT4 mux_289_i5_3_lut_4_lut (.A(index[1]), .B(n12608), .C(n12585), 
         .D(dds_control[4]), .Z(n536)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;
    defparam mux_289_i5_3_lut_4_lut.init = 16'h4f40;
    LUT4 mux_289_i4_3_lut_4_lut (.A(index[1]), .B(n12608), .C(n12585), 
         .D(dds_control[3]), .Z(n535)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;
    defparam mux_289_i4_3_lut_4_lut.init = 16'h4f40;
    FD1P3AX index_1537_1538__i1 (.D(n9783), .SP(clk_10mhz_c_enable_230), 
            .CK(clk_10mhz_c), .Q(index[0]));   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_control_interface.v(190[18:27])
    defparam index_1537_1538__i1.GSR = "DISABLED";
    LUT4 mux_289_i3_3_lut_4_lut (.A(index[1]), .B(n12608), .C(n12585), 
         .D(dds_control[2]), .Z(n534)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;
    defparam mux_289_i3_3_lut_4_lut.init = 16'h4f40;
    LUT4 i9452_2_lut (.A(cstate[0]), .B(cstate[1]), .Z(n12050)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_control_interface.v(107[23] 140[28])
    defparam i9452_2_lut.init = 16'h9999;
    LUT4 i1_3_lut (.A(n10303), .B(n9734), .C(n10433), .Z(n46)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_3_lut.init = 16'hfefe;
    LUT4 i1_4_lut_adj_93 (.A(n11319), .B(total_count[6]), .C(total_count[11]), 
         .D(total_count[8]), .Z(n10303)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_93.init = 16'hfffe;
    LUT4 i1_4_lut_adj_94 (.A(total_count[7]), .B(total_count[12]), .C(total_count[13]), 
         .D(total_count[15]), .Z(n11319)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_94.init = 16'hfffe;
    LUT4 i1_4_lut_adj_95 (.A(total_count[4]), .B(n11321), .C(total_count[1]), 
         .D(total_count[0]), .Z(n9734)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_95.init = 16'h8000;
    LUT4 mux_289_i2_3_lut_4_lut (.A(index[1]), .B(n12608), .C(n12585), 
         .D(dds_control[1]), .Z(n533)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;
    defparam mux_289_i2_3_lut_4_lut.init = 16'h4f40;
    LUT4 i1_2_lut_adj_96 (.A(total_count[2]), .B(total_count[3]), .Z(n11321)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_96.init = 16'h8888;
    LUT4 i1_4_lut_adj_97 (.A(total_count[14]), .B(total_count[10]), .C(total_count[5]), 
         .D(total_count[9]), .Z(n10433)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_97.init = 16'hfffe;
    LUT4 i1_1_lut_rep_287 (.A(state[2]), .Z(n12605)) /* synthesis lut_function=(!(A)) */ ;
    defparam i1_1_lut_rep_287.init = 16'h5555;
    LUT4 i1_4_lut_4_lut (.A(state[2]), .B(state[1]), .C(data_temp[9]), 
         .D(data[9]), .Z(data_temp_15__N_1285[10])) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;
    defparam i1_4_lut_4_lut.init = 16'h5140;
    LUT4 i9193_3_lut_4_lut (.A(n11), .B(state[1]), .C(count_7__N_1363[2]), 
         .D(state[2]), .Z(count_7__N_1276[2])) /* synthesis lut_function=(!(A ((D)+!C)+!A (B (D)+!B ((D)+!C)))) */ ;
    defparam i9193_3_lut_4_lut.init = 16'h00f4;
    LUT4 i1_3_lut_3_lut (.A(state[2]), .B(data[0]), .C(state[1]), .Z(data_temp_15__N_1285[1])) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam i1_3_lut_3_lut.init = 16'h0404;
    LUT4 i1_4_lut_4_lut_adj_98 (.A(state[2]), .B(state[1]), .C(data_temp[4]), 
         .D(data[4]), .Z(data_temp_15__N_1285[5])) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;
    defparam i1_4_lut_4_lut_adj_98.init = 16'h5140;
    LUT4 i1_4_lut_4_lut_adj_99 (.A(state[2]), .B(state[1]), .C(data_temp[8]), 
         .D(data[8]), .Z(data_temp_15__N_1285[9])) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;
    defparam i1_4_lut_4_lut_adj_99.init = 16'h5140;
    LUT4 i1_4_lut_4_lut_adj_100 (.A(state[2]), .B(state[1]), .C(data_temp[7]), 
         .D(data[7]), .Z(data_temp_15__N_1285[8])) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;
    defparam i1_4_lut_4_lut_adj_100.init = 16'h5140;
    LUT4 i1_4_lut_4_lut_adj_101 (.A(state[2]), .B(state[1]), .C(data_temp[5]), 
         .D(data[5]), .Z(data_temp_15__N_1285[6])) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;
    defparam i1_4_lut_4_lut_adj_101.init = 16'h5140;
    LUT4 i1_4_lut_4_lut_adj_102 (.A(state[2]), .B(state[1]), .C(data_temp[6]), 
         .D(data[6]), .Z(data_temp_15__N_1285[7])) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;
    defparam i1_4_lut_4_lut_adj_102.init = 16'h5140;
    LUT4 i9192_3_lut_4_lut (.A(n11), .B(state[1]), .C(count_7__N_1363[3]), 
         .D(state[2]), .Z(count_7__N_1276[3])) /* synthesis lut_function=(!(A ((D)+!C)+!A (B (D)+!B ((D)+!C)))) */ ;
    defparam i9192_3_lut_4_lut.init = 16'h00f4;
    LUT4 i1_4_lut_4_lut_adj_103 (.A(state[2]), .B(state[1]), .C(data_temp[3]), 
         .D(data[3]), .Z(data_temp_15__N_1285[4])) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;
    defparam i1_4_lut_4_lut_adj_103.init = 16'h5140;
    LUT4 i1_4_lut_4_lut_adj_104 (.A(state[2]), .B(state[1]), .C(data_temp[10]), 
         .D(data[10]), .Z(data_temp_15__N_1285[11])) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;
    defparam i1_4_lut_4_lut_adj_104.init = 16'h5140;
    LUT4 i1_4_lut_4_lut_adj_105 (.A(state[2]), .B(state[1]), .C(data_temp[1]), 
         .D(data[1]), .Z(data_temp_15__N_1285[2])) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;
    defparam i1_4_lut_4_lut_adj_105.init = 16'h5140;
    LUT4 i1_4_lut_4_lut_adj_106 (.A(state[2]), .B(state[1]), .C(data_temp[2]), 
         .D(data[2]), .Z(data_temp_15__N_1285[3])) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;
    defparam i1_4_lut_4_lut_adj_106.init = 16'h5140;
    LUT4 i1_4_lut_4_lut_adj_107 (.A(state[2]), .B(state[1]), .C(data_temp[11]), 
         .D(data[11]), .Z(data_temp_15__N_1285[12])) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;
    defparam i1_4_lut_4_lut_adj_107.init = 16'h5140;
    LUT4 i1_4_lut_4_lut_adj_108 (.A(state[2]), .B(state[1]), .C(data_temp[12]), 
         .D(data[12]), .Z(data_temp_15__N_1285[13])) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;
    defparam i1_4_lut_4_lut_adj_108.init = 16'h5140;
    LUT4 i4425_1_lut_rep_301 (.A(cstate[1]), .Z(n12619)) /* synthesis lut_function=(!(A)) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_control_interface.v(100[18] 141[6])
    defparam i4425_1_lut_rep_301.init = 16'h5555;
    LUT4 i9489_3_lut_3_lut (.A(cstate[1]), .B(cstate[0]), .C(cstate[2]), 
         .Z(n3921)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_control_interface.v(100[18] 141[6])
    defparam i9489_3_lut_3_lut.init = 16'h2020;
    LUT4 i1_4_lut_4_lut_adj_109 (.A(state[2]), .B(state[1]), .C(data_temp[13]), 
         .D(data[13]), .Z(data_temp_15__N_1285[14])) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;
    defparam i1_4_lut_4_lut_adj_109.init = 16'h5140;
    LUT4 i1_4_lut_4_lut_adj_110 (.A(state[2]), .B(state[1]), .C(data_temp[14]), 
         .D(data[14]), .Z(data_temp_15__N_1285[15])) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;
    defparam i1_4_lut_4_lut_adj_110.init = 16'h5140;
    LUT4 i1_2_lut_2_lut (.A(cstate[1]), .B(cstate[0]), .Z(n1770[2])) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_control_interface.v(100[18] 141[6])
    defparam i1_2_lut_2_lut.init = 16'h4444;
    LUT4 state_3__I_81_2_lut (.A(reset_n), .B(mosi_reset), .Z(state_3__N_1254)) /* synthesis lut_function=((B)+!A) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_control_interface.v(145[7:25])
    defparam state_3__I_81_2_lut.init = 16'hdddd;
    CCU2D sub_11_add_2_9 (.A0(count[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n9691), 
          .S0(count_7__N_1363[7]));   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_control_interface.v(154[54:63])
    defparam sub_11_add_2_9.INIT0 = 16'h5555;
    defparam sub_11_add_2_9.INIT1 = 16'h0000;
    defparam sub_11_add_2_9.INJECT1_0 = "NO";
    defparam sub_11_add_2_9.INJECT1_1 = "NO";
    FD1S3AX total_count_i15 (.D(total_count_15__N_1319[15]), .CK(clk_10mhz_c), 
            .Q(total_count[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=3, LSE_LLINE=218, LSE_RLINE=231 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_control_interface.v(100[18] 141[6])
    defparam total_count_i15.GSR = "ENABLED";
    CCU2D sub_11_add_2_7 (.A0(count[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n9690), 
          .COUT(n9691), .S0(count_7__N_1363[5]), .S1(count_7__N_1363[6]));   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_control_interface.v(154[54:63])
    defparam sub_11_add_2_7.INIT0 = 16'h5555;
    defparam sub_11_add_2_7.INIT1 = 16'h5555;
    defparam sub_11_add_2_7.INJECT1_0 = "NO";
    defparam sub_11_add_2_7.INJECT1_1 = "NO";
    CCU2D sub_11_add_2_5 (.A0(count[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n9689), 
          .COUT(n9690), .S0(count_7__N_1363[3]), .S1(count_7__N_1363[4]));   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_control_interface.v(154[54:63])
    defparam sub_11_add_2_5.INIT0 = 16'h5555;
    defparam sub_11_add_2_5.INIT1 = 16'h5555;
    defparam sub_11_add_2_5.INJECT1_0 = "NO";
    defparam sub_11_add_2_5.INJECT1_1 = "NO";
    LUT4 i5498_2_lut_rep_306 (.A(index[0]), .B(index[1]), .Z(n12624)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i5498_2_lut_rep_306.init = 16'heeee;
    LUT4 i7006_3_lut_4_lut_4_lut_3_lut (.A(index[0]), .B(index[1]), .C(index[2]), 
         .Z(n17[2])) /* synthesis lut_function=(A (B+(C))+!A (C)) */ ;
    defparam i7006_3_lut_4_lut_4_lut_3_lut.init = 16'hf8f8;
    FD1S3AX total_count_i14 (.D(total_count_15__N_1319[14]), .CK(clk_10mhz_c), 
            .Q(total_count[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=3, LSE_LLINE=218, LSE_RLINE=231 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_control_interface.v(100[18] 141[6])
    defparam total_count_i14.GSR = "ENABLED";
    FD1S3AX total_count_i13 (.D(total_count_15__N_1319[13]), .CK(clk_10mhz_c), 
            .Q(total_count[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=3, LSE_LLINE=218, LSE_RLINE=231 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_control_interface.v(100[18] 141[6])
    defparam total_count_i13.GSR = "ENABLED";
    LUT4 i6999_2_lut_3_lut_4_lut_3_lut (.A(index[0]), .B(index[1]), .C(index[2]), 
         .Z(n17[1])) /* synthesis lut_function=(A (B (C)+!B !(C))+!A (B)) */ ;
    defparam i6999_2_lut_3_lut_4_lut_3_lut.init = 16'hc6c6;
    FD1S3AX total_count_i12 (.D(total_count_15__N_1319[12]), .CK(clk_10mhz_c), 
            .Q(total_count[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=3, LSE_LLINE=218, LSE_RLINE=231 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_control_interface.v(100[18] 141[6])
    defparam total_count_i12.GSR = "ENABLED";
    FD1S3AX total_count_i11 (.D(total_count_15__N_1319[11]), .CK(clk_10mhz_c), 
            .Q(total_count[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=3, LSE_LLINE=218, LSE_RLINE=231 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_control_interface.v(100[18] 141[6])
    defparam total_count_i11.GSR = "ENABLED";
    FD1S3AX total_count_i10 (.D(total_count_15__N_1319[10]), .CK(clk_10mhz_c), 
            .Q(total_count[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=3, LSE_LLINE=218, LSE_RLINE=231 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_control_interface.v(100[18] 141[6])
    defparam total_count_i10.GSR = "ENABLED";
    FD1S3AX total_count_i9 (.D(total_count_15__N_1319[9]), .CK(clk_10mhz_c), 
            .Q(total_count[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=3, LSE_LLINE=218, LSE_RLINE=231 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_control_interface.v(100[18] 141[6])
    defparam total_count_i9.GSR = "ENABLED";
    FD1S3AX total_count_i8 (.D(total_count_15__N_1319[8]), .CK(clk_10mhz_c), 
            .Q(total_count[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=3, LSE_LLINE=218, LSE_RLINE=231 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_control_interface.v(100[18] 141[6])
    defparam total_count_i8.GSR = "ENABLED";
    FD1S3AX total_count_i7 (.D(total_count_15__N_1319[7]), .CK(clk_10mhz_c), 
            .Q(total_count[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=3, LSE_LLINE=218, LSE_RLINE=231 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_control_interface.v(100[18] 141[6])
    defparam total_count_i7.GSR = "ENABLED";
    FD1S3AX total_count_i6 (.D(total_count_15__N_1319[6]), .CK(clk_10mhz_c), 
            .Q(total_count[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=3, LSE_LLINE=218, LSE_RLINE=231 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_control_interface.v(100[18] 141[6])
    defparam total_count_i6.GSR = "ENABLED";
    FD1S3AX total_count_i5 (.D(total_count_15__N_1319[5]), .CK(clk_10mhz_c), 
            .Q(total_count[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=3, LSE_LLINE=218, LSE_RLINE=231 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_control_interface.v(100[18] 141[6])
    defparam total_count_i5.GSR = "ENABLED";
    FD1S3AX total_count_i4 (.D(total_count_15__N_1319[4]), .CK(clk_10mhz_c), 
            .Q(total_count[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=3, LSE_LLINE=218, LSE_RLINE=231 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_control_interface.v(100[18] 141[6])
    defparam total_count_i4.GSR = "ENABLED";
    FD1S3AX total_count_i3 (.D(total_count_15__N_1319[3]), .CK(clk_10mhz_c), 
            .Q(total_count[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=3, LSE_LLINE=218, LSE_RLINE=231 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_control_interface.v(100[18] 141[6])
    defparam total_count_i3.GSR = "ENABLED";
    FD1S3AX total_count_i2 (.D(total_count_15__N_1319[2]), .CK(clk_10mhz_c), 
            .Q(total_count[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=3, LSE_LLINE=218, LSE_RLINE=231 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_control_interface.v(100[18] 141[6])
    defparam total_count_i2.GSR = "ENABLED";
    FD1S3AX total_count_i1 (.D(total_count_15__N_1319[1]), .CK(clk_10mhz_c), 
            .Q(total_count[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=3, LSE_LLINE=218, LSE_RLINE=231 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_control_interface.v(100[18] 141[6])
    defparam total_count_i1.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_266_3_lut (.A(index[0]), .B(index[1]), .C(index[2]), 
         .Z(n12584)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam i1_2_lut_rep_266_3_lut.init = 16'he0e0;
    LUT4 i1_2_lut_3_lut_3_lut (.A(index[0]), .B(index[1]), .C(index[2]), 
         .Z(n9783)) /* synthesis lut_function=(A (C)+!A !(B (C))) */ ;
    defparam i1_2_lut_3_lut_3_lut.init = 16'hb5b5;
    LUT4 i1_4_lut_adj_111 (.A(cstate[1]), .B(total_count[11]), .C(n9), 
         .D(cstate[2]), .Z(total_count_15__N_1319[11])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_111.init = 16'heca0;
    LUT4 i1_2_lut_4_lut (.A(state[1]), .B(state[2]), .C(n11), .D(count_7__N_1363[0]), 
         .Z(count_7__N_1276[0])) /* synthesis lut_function=(!(A (B+!(C (D)))+!A (B+!(D)))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_control_interface.v(25[12:17])
    defparam i1_2_lut_4_lut.init = 16'h3100;
    LUT4 i25_4_lut (.A(total_count[11]), .B(total_count_15__N_1339[11]), 
         .C(cstate[0]), .D(cstate[2]), .Z(n9)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i25_4_lut.init = 16'h0aca;
    LUT4 i1_4_lut_adj_112 (.A(cstate[1]), .B(cstate[2]), .C(n9_adj_1732), 
         .D(total_count[10]), .Z(total_count_15__N_1319[10])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_112.init = 16'heca0;
    FD1S3DX test_run_325 (.D(n4260), .CK(clk_10mhz_c), .CD(n12627), .Q(test_run)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=3, LSE_LLINE=218, LSE_RLINE=231 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_control_interface.v(183[14] 211[17])
    defparam test_run_325.GSR = "DISABLED";
    LUT4 transfer_completed_temp_d_I_0_2_lut_rep_307 (.A(transfer_completed_temp_d), 
         .B(test_run), .Z(n12625)) /* synthesis lut_function=(A+(B)) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_control_interface.v(187[11:47])
    defparam transfer_completed_temp_d_I_0_2_lut_rep_307.init = 16'heeee;
    LUT4 i1_2_lut_4_lut_adj_113 (.A(state[1]), .B(state[2]), .C(n11), 
         .D(count_7__N_1363[4]), .Z(count_7__N_1276[4])) /* synthesis lut_function=(!(A (B+!(C (D)))+!A (B+!(D)))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_control_interface.v(25[12:17])
    defparam i1_2_lut_4_lut_adj_113.init = 16'h3100;
    LUT4 i1_2_lut_4_lut_adj_114 (.A(state[1]), .B(state[2]), .C(n11), 
         .D(count_7__N_1363[5]), .Z(count_7__N_1276[5])) /* synthesis lut_function=(!(A (B+!(C (D)))+!A (B+!(D)))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_control_interface.v(25[12:17])
    defparam i1_2_lut_4_lut_adj_114.init = 16'h3100;
    LUT4 i5401_2_lut_3_lut_4_lut (.A(transfer_completed_temp_d), .B(test_run), 
         .C(dds_control[11]), .D(n12626), .Z(n543)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B ((D)+!C)+!B !(C)))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_control_interface.v(187[11:47])
    defparam i5401_2_lut_3_lut_4_lut.init = 16'h10f0;
    LUT4 i1_2_lut_4_lut_adj_115 (.A(state[1]), .B(state[2]), .C(n11), 
         .D(count_7__N_1363[6]), .Z(count_7__N_1276[6])) /* synthesis lut_function=(!(A (B+!(C (D)))+!A (B+!(D)))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_control_interface.v(25[12:17])
    defparam i1_2_lut_4_lut_adj_115.init = 16'h3100;
    LUT4 i5402_2_lut_3_lut_4_lut (.A(transfer_completed_temp_d), .B(test_run), 
         .C(dds_control[12]), .D(n12626), .Z(n544)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B ((D)+!C)+!B !(C)))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_control_interface.v(187[11:47])
    defparam i5402_2_lut_3_lut_4_lut.init = 16'h10f0;
    LUT4 i297_2_lut_3_lut_4_lut (.A(transfer_completed_temp_d), .B(test_run), 
         .C(n12627), .D(n12626), .Z(clk_10mhz_c_enable_230)) /* synthesis lut_function=(!(A (C+!(D))+!A ((C+!(D))+!B))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_control_interface.v(187[11:47])
    defparam i297_2_lut_3_lut_4_lut.init = 16'h0e00;
    LUT4 i1_2_lut_4_lut_adj_116 (.A(state[1]), .B(state[2]), .C(n11), 
         .D(count_7__N_1363[7]), .Z(count_7__N_1276[7])) /* synthesis lut_function=(!(A (B+!(C (D)))+!A (B+!(D)))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_control_interface.v(25[12:17])
    defparam i1_2_lut_4_lut_adj_116.init = 16'h3100;
    LUT4 i5403_2_lut_3_lut_4_lut (.A(transfer_completed_temp_d), .B(test_run), 
         .C(dds_control[13]), .D(n12626), .Z(n545)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B ((D)+!C)+!B !(C)))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_control_interface.v(187[11:47])
    defparam i5403_2_lut_3_lut_4_lut.init = 16'h10f0;
    LUT4 test_mode_I_0_361_2_lut_rep_308 (.A(\static_control[7] ), .B(transfer_done), 
         .Z(n12626)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_control_interface.v(186[22:48])
    defparam test_mode_I_0_361_2_lut_rep_308.init = 16'h2222;
    LUT4 i289_2_lut_rep_267_3_lut_4_lut (.A(\static_control[7] ), .B(transfer_done), 
         .C(test_run), .D(transfer_completed_temp_d), .Z(n12585)) /* synthesis lut_function=(!((B+!(C+(D)))+!A)) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_control_interface.v(186[22:48])
    defparam i289_2_lut_rep_267_3_lut_4_lut.init = 16'h2220;
    LUT4 i1_2_lut_3_lut (.A(\static_control[7] ), .B(transfer_done), .C(\control[0] ), 
         .Z(clk_10mhz_c_enable_9)) /* synthesis lut_function=(A ((C)+!B)+!A (C)) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_control_interface.v(186[22:48])
    defparam i1_2_lut_3_lut.init = 16'hf2f2;
    LUT4 rstn_N_1256_I_0_2_lut_rep_309 (.A(reset_n), .B(data_valid_dbg), 
         .Z(n12627)) /* synthesis lut_function=((B)+!A) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_control_interface.v(178[9:33])
    defparam rstn_N_1256_I_0_2_lut_rep_309.init = 16'hdddd;
    LUT4 i1_2_lut_3_lut_adj_117 (.A(reset_n), .B(data_valid_dbg), .C(index[2]), 
         .Z(n11755)) /* synthesis lut_function=((B+!(C))+!A) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_control_interface.v(178[9:33])
    defparam i1_2_lut_3_lut_adj_117.init = 16'hdfdf;
    LUT4 i296_1_lut_2_lut (.A(reset_n), .B(data_valid_dbg), .Z(clk_10mhz_c_enable_59)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_control_interface.v(178[9:33])
    defparam i296_1_lut_2_lut.init = 16'h2222;
    LUT4 i1_2_lut_adj_118 (.A(n9734), .B(n10303), .Z(n10305)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_118.init = 16'heeee;
    FD1P3DX data_i0_i15 (.D(n547), .SP(clk_10mhz_c_enable_74), .CK(clk_10mhz_c), 
            .CD(n12627), .Q(data[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=3, LSE_LLINE=218, LSE_RLINE=231 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_control_interface.v(183[14] 211[17])
    defparam data_i0_i15.GSR = "DISABLED";
    LUT4 i4408_4_lut (.A(total_count[10]), .B(total_count_15__N_1339[10]), 
         .C(cstate[0]), .D(cstate[2]), .Z(n9_adj_1732)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_control_interface.v(25[20:26])
    defparam i4408_4_lut.init = 16'h0aca;
    FD1P3DX data_i0_i14 (.D(n546), .SP(clk_10mhz_c_enable_74), .CK(clk_10mhz_c), 
            .CD(n12627), .Q(data[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=3, LSE_LLINE=218, LSE_RLINE=231 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_control_interface.v(183[14] 211[17])
    defparam data_i0_i14.GSR = "DISABLED";
    FD1P3DX data_i0_i13 (.D(n545), .SP(clk_10mhz_c_enable_74), .CK(clk_10mhz_c), 
            .CD(n12627), .Q(data[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=3, LSE_LLINE=218, LSE_RLINE=231 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_control_interface.v(183[14] 211[17])
    defparam data_i0_i13.GSR = "DISABLED";
    FD1P3AX test_mode_d_326 (.D(\static_control[7] ), .SP(clk_10mhz_c_enable_59), 
            .CK(clk_10mhz_c), .Q(test_mode_d)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=3, LSE_LLINE=218, LSE_RLINE=231 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_control_interface.v(183[14] 211[17])
    defparam test_mode_d_326.GSR = "DISABLED";
    FD1P3DX data_i0_i12 (.D(n544), .SP(clk_10mhz_c_enable_74), .CK(clk_10mhz_c), 
            .CD(n12627), .Q(data[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=3, LSE_LLINE=218, LSE_RLINE=231 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_control_interface.v(183[14] 211[17])
    defparam data_i0_i12.GSR = "DISABLED";
    FD1P3DX data_i0_i11 (.D(n543), .SP(clk_10mhz_c_enable_74), .CK(clk_10mhz_c), 
            .CD(n12627), .Q(data[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=3, LSE_LLINE=218, LSE_RLINE=231 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_control_interface.v(183[14] 211[17])
    defparam data_i0_i11.GSR = "DISABLED";
    FD1P3DX data_i0_i10 (.D(n542), .SP(clk_10mhz_c_enable_74), .CK(clk_10mhz_c), 
            .CD(n12627), .Q(data[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=3, LSE_LLINE=218, LSE_RLINE=231 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_control_interface.v(183[14] 211[17])
    defparam data_i0_i10.GSR = "DISABLED";
    FD1P3DX data_i0_i9 (.D(n541), .SP(clk_10mhz_c_enable_74), .CK(clk_10mhz_c), 
            .CD(n12627), .Q(data[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=3, LSE_LLINE=218, LSE_RLINE=231 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_control_interface.v(183[14] 211[17])
    defparam data_i0_i9.GSR = "DISABLED";
    FD1P3DX data_i0_i8 (.D(n540), .SP(clk_10mhz_c_enable_74), .CK(clk_10mhz_c), 
            .CD(n12627), .Q(data[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=3, LSE_LLINE=218, LSE_RLINE=231 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_control_interface.v(183[14] 211[17])
    defparam data_i0_i8.GSR = "DISABLED";
    FD1P3DX data_i0_i7 (.D(n539), .SP(clk_10mhz_c_enable_74), .CK(clk_10mhz_c), 
            .CD(n12627), .Q(data[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=3, LSE_LLINE=218, LSE_RLINE=231 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_control_interface.v(183[14] 211[17])
    defparam data_i0_i7.GSR = "DISABLED";
    FD1P3DX data_i0_i6 (.D(n538), .SP(clk_10mhz_c_enable_74), .CK(clk_10mhz_c), 
            .CD(n12627), .Q(data[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=3, LSE_LLINE=218, LSE_RLINE=231 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_control_interface.v(183[14] 211[17])
    defparam data_i0_i6.GSR = "DISABLED";
    FD1P3DX data_i0_i5 (.D(n10177), .SP(clk_10mhz_c_enable_74), .CK(clk_10mhz_c), 
            .CD(n12627), .Q(data[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=3, LSE_LLINE=218, LSE_RLINE=231 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_control_interface.v(183[14] 211[17])
    defparam data_i0_i5.GSR = "DISABLED";
    FD1P3DX data_i0_i4 (.D(n536), .SP(clk_10mhz_c_enable_74), .CK(clk_10mhz_c), 
            .CD(n12627), .Q(data[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=3, LSE_LLINE=218, LSE_RLINE=231 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_control_interface.v(183[14] 211[17])
    defparam data_i0_i4.GSR = "DISABLED";
    FD1P3DX data_i0_i3 (.D(n535), .SP(clk_10mhz_c_enable_74), .CK(clk_10mhz_c), 
            .CD(n12627), .Q(data[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=3, LSE_LLINE=218, LSE_RLINE=231 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_control_interface.v(183[14] 211[17])
    defparam data_i0_i3.GSR = "DISABLED";
    FD1P3DX data_i0_i2 (.D(n534), .SP(clk_10mhz_c_enable_74), .CK(clk_10mhz_c), 
            .CD(n12627), .Q(data[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=3, LSE_LLINE=218, LSE_RLINE=231 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_control_interface.v(183[14] 211[17])
    defparam data_i0_i2.GSR = "DISABLED";
    FD1P3DX data_i0_i1 (.D(n533), .SP(clk_10mhz_c_enable_74), .CK(clk_10mhz_c), 
            .CD(n12627), .Q(data[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=3, LSE_LLINE=218, LSE_RLINE=231 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_control_interface.v(183[14] 211[17])
    defparam data_i0_i1.GSR = "DISABLED";
    LUT4 i1_4_lut_adj_119 (.A(cstate[1]), .B(cstate[2]), .C(n9_adj_1733), 
         .D(total_count[9]), .Z(total_count_15__N_1319[9])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_119.init = 16'heca0;
    LUT4 i4407_4_lut (.A(total_count[9]), .B(total_count_15__N_1339[9]), 
         .C(cstate[0]), .D(cstate[2]), .Z(n9_adj_1733)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_control_interface.v(25[20:26])
    defparam i4407_4_lut.init = 16'h0aca;
    FD1P3AX transfer_done_328 (.D(n12948), .SP(clk_10mhz_c_enable_223), 
            .CK(clk_10mhz_c), .Q(transfer_done)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=3, LSE_LLINE=218, LSE_RLINE=231 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_control_interface.v(183[14] 211[17])
    defparam transfer_done_328.GSR = "DISABLED";
    FD1P3IX cstate__i0 (.D(n12050), .SP(clk_10mhz_c_enable_233), .CD(n3921), 
            .CK(clk_10mhz_c), .Q(cstate[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=3, LSE_LLINE=218, LSE_RLINE=231 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_control_interface.v(100[18] 141[6])
    defparam cstate__i0.GSR = "ENABLED";
    FD1P3AX index_1537_1538__i2 (.D(n17[1]), .SP(clk_10mhz_c_enable_230), 
            .CK(clk_10mhz_c), .Q(index[1]));   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_control_interface.v(190[18:27])
    defparam index_1537_1538__i2.GSR = "DISABLED";
    FD1P3AX index_1537_1538__i3 (.D(n17[2]), .SP(clk_10mhz_c_enable_230), 
            .CK(clk_10mhz_c), .Q(index[2]));   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_control_interface.v(190[18:27])
    defparam index_1537_1538__i3.GSR = "DISABLED";
    LUT4 i9608_2_lut (.A(cstate[1]), .B(cstate[2]), .Z(clk_10mhz_c_enable_261)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i9608_2_lut.init = 16'h1111;
    LUT4 i1_4_lut_adj_120 (.A(sck_temp), .B(n46), .C(cstate[0]), .D(cstate[1]), 
         .Z(n11014)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_4_lut_adj_120.init = 16'h1000;
    FD1S3IX cstate__i1 (.D(n12046), .CK(clk_10mhz_c), .CD(n3921), .Q(cstate[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=3, LSE_LLINE=218, LSE_RLINE=231 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_control_interface.v(100[18] 141[6])
    defparam cstate__i1.GSR = "ENABLED";
    FD1P3IX cstate__i2 (.D(n1770[2]), .SP(clk_10mhz_c_enable_233), .CD(n3921), 
            .CK(clk_10mhz_c), .Q(cstate[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=3, LSE_LLINE=218, LSE_RLINE=231 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_control_interface.v(100[18] 141[6])
    defparam cstate__i2.GSR = "ENABLED";
    LUT4 i9528_4_lut (.A(n12584), .B(\control[0] ), .C(n12626), .D(n12625), 
         .Z(clk_10mhz_c_enable_74)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;
    defparam i9528_4_lut.init = 16'h5c0c;
    LUT4 mux_289_i1_4_lut (.A(dds_control[0]), .B(index[1]), .C(n12585), 
         .D(index[2]), .Z(n532)) /* synthesis lut_function=(!(A (B (C)+!B (C (D)))+!A (B+((D)+!C)))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_control_interface.v(204[15] 210[15])
    defparam mux_289_i1_4_lut.init = 16'h0a3a;
    LUT4 i4384_4_lut_rep_223 (.A(n40), .B(n7021), .C(cstate[1]), .D(cstate[2]), 
         .Z(clk_10mhz_c_enable_233)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_control_interface.v(25[20:26])
    defparam i4384_4_lut_rep_223.init = 16'hc0ca;
    LUT4 i1_4_lut_adj_121 (.A(cstate[1]), .B(total_count[8]), .C(n9_adj_1734), 
         .D(cstate[2]), .Z(total_count_15__N_1319[8])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_121.init = 16'heca0;
    LUT4 i1_4_lut_adj_122 (.A(cstate[1]), .B(total_count[0]), .C(n9_adj_1735), 
         .D(cstate[2]), .Z(total_count_15__N_1319[0])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_122.init = 16'heca0;
    LUT4 i25_4_lut_adj_123 (.A(total_count[0]), .B(total_count_15__N_1339[0]), 
         .C(cstate[0]), .D(cstate[2]), .Z(n9_adj_1735)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i25_4_lut_adj_123.init = 16'h0aca;
    LUT4 i1_2_lut_adj_124 (.A(cstate[0]), .B(cstate[2]), .Z(clk_10mhz_c_enable_262)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_adj_124.init = 16'h2222;
    CCU2D sub_11_add_2_3 (.A0(count[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n9688), 
          .COUT(n9689), .S0(count_7__N_1363[1]), .S1(count_7__N_1363[2]));   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_control_interface.v(154[54:63])
    defparam sub_11_add_2_3.INIT0 = 16'h5555;
    defparam sub_11_add_2_3.INIT1 = 16'h5555;
    defparam sub_11_add_2_3.INJECT1_0 = "NO";
    defparam sub_11_add_2_3.INJECT1_1 = "NO";
    CCU2D sub_11_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n9688), 
          .S1(count_7__N_1363[0]));   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_control_interface.v(154[54:63])
    defparam sub_11_add_2_1.INIT0 = 16'hF000;
    defparam sub_11_add_2_1.INIT1 = 16'h5555;
    defparam sub_11_add_2_1.INJECT1_0 = "NO";
    defparam sub_11_add_2_1.INJECT1_1 = "NO";
    LUT4 i1_3_lut_adj_125 (.A(cstate[0]), .B(cstate[1]), .C(cstate[2]), 
         .Z(clk_10mhz_c_enable_8)) /* synthesis lut_function=(!(A+!(B (C)+!B !(C)))) */ ;
    defparam i1_3_lut_adj_125.init = 16'h4141;
    LUT4 i1_2_lut_3_lut_adj_126 (.A(state[2]), .B(ss0_temp), .C(state[1]), 
         .Z(data_temp_15__N_1301)) /* synthesis lut_function=(A (C)+!A ((C)+!B)) */ ;
    defparam i1_2_lut_3_lut_adj_126.init = 16'hf1f1;
    LUT4 i6470_4_lut_4_lut (.A(state[2]), .B(ss0_temp), .C(n11), .D(state[1]), 
         .Z(state_3__N_1257)) /* synthesis lut_function=(A (D)+!A !(B (C+!(D))+!B (C (D)))) */ ;
    defparam i6470_4_lut_4_lut.init = 16'haf11;
    LUT4 i1_2_lut_rep_328 (.A(state[1]), .B(state[2]), .Z(n12646)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_control_interface.v(144[1] 175[4])
    defparam i1_2_lut_rep_328.init = 16'h2222;
    LUT4 i1_2_lut_3_lut_3_lut_adj_127 (.A(state[1]), .B(state[2]), .C(ss0_temp), 
         .Z(count_7__N_1284)) /* synthesis lut_function=(!(A (B)+!A (B+(C)))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_control_interface.v(144[1] 175[4])
    defparam i1_2_lut_3_lut_3_lut_adj_127.init = 16'h2323;
    LUT4 i5253_3_lut_4_lut (.A(n12624), .B(index[2]), .C(n12625), .D(n12626), 
         .Z(data_valid_N_1436)) /* synthesis lut_function=(!(A (B (D)+!B !(C+!(D)))+!A !(C+!(D)))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_control_interface.v(204[15] 210[15])
    defparam i5253_3_lut_4_lut.init = 16'h70ff;
    CCU2D add_604_17 (.A0(total_count[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n9651), .S0(total_count_15__N_1339[15]));   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_control_interface.v(122[48] 125[51])
    defparam add_604_17.INIT0 = 16'h5aaa;
    defparam add_604_17.INIT1 = 16'h0000;
    defparam add_604_17.INJECT1_0 = "NO";
    defparam add_604_17.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_128 (.A(state[2]), .B(data[15]), .C(data_temp[15]), 
         .D(state[1]), .Z(mosi_N_1431)) /* synthesis lut_function=(!(A+!(B (C+!(D))+!B (C (D))))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_control_interface.v(25[12:17])
    defparam i1_4_lut_adj_128.init = 16'h5044;
    LUT4 i23_3_lut_4_lut (.A(n12626), .B(n12625), .C(n12624), .D(dds_control[5]), 
         .Z(n10177)) /* synthesis lut_function=(!(A (B (C)+!B !(D))+!A !(D))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_control_interface.v(204[15] 210[15])
    defparam i23_3_lut_4_lut.init = 16'h7f08;
    CCU2D add_604_15 (.A0(total_count[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(total_count[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n9650), .COUT(n9651), .S0(total_count_15__N_1339[13]), 
          .S1(total_count_15__N_1339[14]));   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_control_interface.v(122[48] 125[51])
    defparam add_604_15.INIT0 = 16'h5aaa;
    defparam add_604_15.INIT1 = 16'h5aaa;
    defparam add_604_15.INJECT1_0 = "NO";
    defparam add_604_15.INJECT1_1 = "NO";
    CCU2D add_604_13 (.A0(total_count[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(total_count[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n9649), .COUT(n9650), .S0(total_count_15__N_1339[11]), 
          .S1(total_count_15__N_1339[12]));   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_control_interface.v(122[48] 125[51])
    defparam add_604_13.INIT0 = 16'h5aaa;
    defparam add_604_13.INIT1 = 16'h5aaa;
    defparam add_604_13.INJECT1_0 = "NO";
    defparam add_604_13.INJECT1_1 = "NO";
    CCU2D add_604_11 (.A0(total_count[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(total_count[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n9648), .COUT(n9649), .S0(total_count_15__N_1339[9]), 
          .S1(total_count_15__N_1339[10]));   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_control_interface.v(122[48] 125[51])
    defparam add_604_11.INIT0 = 16'h5aaa;
    defparam add_604_11.INIT1 = 16'h5aaa;
    defparam add_604_11.INJECT1_0 = "NO";
    defparam add_604_11.INJECT1_1 = "NO";
    CCU2D add_604_9 (.A0(total_count[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(total_count[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n9647), .COUT(n9648), .S0(total_count_15__N_1339[7]), 
          .S1(total_count_15__N_1339[8]));   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_control_interface.v(122[48] 125[51])
    defparam add_604_9.INIT0 = 16'h5aaa;
    defparam add_604_9.INIT1 = 16'h5aaa;
    defparam add_604_9.INJECT1_0 = "NO";
    defparam add_604_9.INJECT1_1 = "NO";
    CCU2D add_604_7 (.A0(total_count[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(total_count[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n9646), .COUT(n9647), .S0(total_count_15__N_1339[5]), 
          .S1(total_count_15__N_1339[6]));   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_control_interface.v(122[48] 125[51])
    defparam add_604_7.INIT0 = 16'h5aaa;
    defparam add_604_7.INIT1 = 16'h5aaa;
    defparam add_604_7.INJECT1_0 = "NO";
    defparam add_604_7.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_129 (.A(cstate[1]), .B(total_count[15]), .C(n9_adj_1736), 
         .D(cstate[2]), .Z(total_count_15__N_1319[15])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_129.init = 16'heca0;
    LUT4 i25_4_lut_adj_130 (.A(total_count[15]), .B(total_count_15__N_1339[15]), 
         .C(cstate[0]), .D(cstate[2]), .Z(n9_adj_1736)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i25_4_lut_adj_130.init = 16'h0aca;
    LUT4 i1_4_lut_adj_131 (.A(cstate[1]), .B(cstate[2]), .C(n9_adj_1737), 
         .D(total_count[14]), .Z(total_count_15__N_1319[14])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_131.init = 16'heca0;
    LUT4 i4414_4_lut (.A(total_count[14]), .B(total_count_15__N_1339[14]), 
         .C(cstate[0]), .D(cstate[2]), .Z(n9_adj_1737)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_control_interface.v(25[20:26])
    defparam i4414_4_lut.init = 16'h0aca;
    LUT4 i1_4_lut_adj_132 (.A(cstate[1]), .B(cstate[2]), .C(n9_adj_1738), 
         .D(total_count[13]), .Z(total_count_15__N_1319[13])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_132.init = 16'heca0;
    LUT4 i4423_4_lut (.A(total_count[13]), .B(total_count_15__N_1339[13]), 
         .C(cstate[0]), .D(cstate[2]), .Z(n9_adj_1738)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_control_interface.v(25[20:26])
    defparam i4423_4_lut.init = 16'h0aca;
    LUT4 i25_4_lut_adj_133 (.A(total_count[8]), .B(total_count_15__N_1339[8]), 
         .C(cstate[0]), .D(cstate[2]), .Z(n9_adj_1734)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i25_4_lut_adj_133.init = 16'h0aca;
    LUT4 i1_4_lut_adj_134 (.A(cstate[1]), .B(total_count[7]), .C(n9_adj_1739), 
         .D(cstate[2]), .Z(total_count_15__N_1319[7])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_134.init = 16'heca0;
    LUT4 i25_4_lut_adj_135 (.A(total_count[7]), .B(total_count_15__N_1339[7]), 
         .C(cstate[0]), .D(cstate[2]), .Z(n9_adj_1739)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i25_4_lut_adj_135.init = 16'h0aca;
    LUT4 i1_4_lut_adj_136 (.A(cstate[1]), .B(cstate[2]), .C(n9_adj_1740), 
         .D(total_count[6]), .Z(total_count_15__N_1319[6])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_136.init = 16'heca0;
    LUT4 i4421_4_lut (.A(total_count[6]), .B(total_count_15__N_1339[6]), 
         .C(cstate[0]), .D(cstate[2]), .Z(n9_adj_1740)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_control_interface.v(25[20:26])
    defparam i4421_4_lut.init = 16'h0aca;
    LUT4 i1_4_lut_adj_137 (.A(cstate[1]), .B(cstate[2]), .C(n9_adj_1741), 
         .D(total_count[5]), .Z(total_count_15__N_1319[5])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_137.init = 16'heca0;
    CCU2D add_604_5 (.A0(total_count[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(total_count[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n9645), .COUT(n9646), .S0(total_count_15__N_1339[3]), 
          .S1(total_count_15__N_1339[4]));   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_control_interface.v(122[48] 125[51])
    defparam add_604_5.INIT0 = 16'h5aaa;
    defparam add_604_5.INIT1 = 16'h5aaa;
    defparam add_604_5.INJECT1_0 = "NO";
    defparam add_604_5.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_138 (.A(cstate[1]), .B(total_count[12]), .C(n9_adj_1742), 
         .D(cstate[2]), .Z(total_count_15__N_1319[12])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_138.init = 16'heca0;
    LUT4 i4422_4_lut (.A(total_count[5]), .B(total_count_15__N_1339[5]), 
         .C(cstate[0]), .D(cstate[2]), .Z(n9_adj_1741)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_control_interface.v(25[20:26])
    defparam i4422_4_lut.init = 16'h0aca;
    LUT4 i1_4_lut_adj_139 (.A(cstate[1]), .B(total_count[4]), .C(n9_adj_1743), 
         .D(cstate[2]), .Z(total_count_15__N_1319[4])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_139.init = 16'heca0;
    LUT4 i25_4_lut_adj_140 (.A(total_count[12]), .B(total_count_15__N_1339[12]), 
         .C(cstate[0]), .D(cstate[2]), .Z(n9_adj_1742)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i25_4_lut_adj_140.init = 16'h0aca;
    LUT4 i25_4_lut_adj_141 (.A(total_count[4]), .B(total_count_15__N_1339[4]), 
         .C(cstate[0]), .D(cstate[2]), .Z(n9_adj_1743)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i25_4_lut_adj_141.init = 16'h0aca;
    CCU2D add_604_3 (.A0(total_count[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(total_count[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n9644), .COUT(n9645), .S0(total_count_15__N_1339[1]), 
          .S1(total_count_15__N_1339[2]));   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_control_interface.v(122[48] 125[51])
    defparam add_604_3.INIT0 = 16'h5aaa;
    defparam add_604_3.INIT1 = 16'h5aaa;
    defparam add_604_3.INJECT1_0 = "NO";
    defparam add_604_3.INJECT1_1 = "NO";
    CCU2D add_604_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n10433), .B1(n10305), .C1(total_count[0]), .D1(GND_net), 
          .COUT(n9644), .S1(total_count_15__N_1339[0]));   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_control_interface.v(122[48] 125[51])
    defparam add_604_1.INIT0 = 16'hF000;
    defparam add_604_1.INIT1 = 16'he1e1;
    defparam add_604_1.INJECT1_0 = "NO";
    defparam add_604_1.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_142 (.A(cstate[1]), .B(total_count[3]), .C(n9_adj_1744), 
         .D(cstate[2]), .Z(total_count_15__N_1319[3])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_142.init = 16'heca0;
    LUT4 i25_4_lut_adj_143 (.A(total_count[3]), .B(total_count_15__N_1339[3]), 
         .C(cstate[0]), .D(cstate[2]), .Z(n9_adj_1744)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i25_4_lut_adj_143.init = 16'h0aca;
    LUT4 i1_4_lut_adj_144 (.A(cstate[1]), .B(total_count[2]), .C(n9_adj_1745), 
         .D(cstate[2]), .Z(total_count_15__N_1319[2])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_144.init = 16'heca0;
    LUT4 i25_4_lut_adj_145 (.A(total_count[2]), .B(total_count_15__N_1339[2]), 
         .C(cstate[0]), .D(cstate[2]), .Z(n9_adj_1745)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i25_4_lut_adj_145.init = 16'h0aca;
    LUT4 i1_4_lut_adj_146 (.A(cstate[1]), .B(total_count[1]), .C(n9_adj_1746), 
         .D(cstate[2]), .Z(total_count_15__N_1319[1])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_146.init = 16'heca0;
    LUT4 i25_4_lut_adj_147 (.A(total_count[1]), .B(total_count_15__N_1339[1]), 
         .C(cstate[0]), .D(cstate[2]), .Z(n9_adj_1746)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i25_4_lut_adj_147.init = 16'h0aca;
    LUT4 i5283_2_lut (.A(test_mode_d), .B(\static_control[7] ), .Z(n4260)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_control_interface.v(183[14] 211[17])
    defparam i5283_2_lut.init = 16'h4444;
    LUT4 i9448_2_lut_4_lut (.A(n40), .B(n7021), .C(cstate[1]), .D(cstate[2]), 
         .Z(n12046)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+!(D)))+!A (B+!(C)))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_control_interface.v(25[20:26])
    defparam i9448_2_lut_4_lut.init = 16'h303a;
    FD1P3IX data_valid_reset_291 (.D(cstate[0]), .SP(clk_10mhz_c_enable_261), 
            .CD(GND_net), .CK(clk_10mhz_c), .Q(data_valid_dbg)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=3, LSE_LLINE=218, LSE_RLINE=231 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_control_interface.v(100[18] 141[6])
    defparam data_valid_reset_291.GSR = "ENABLED";
    FD1P3AX sck_temp_285 (.D(n11014), .SP(clk_10mhz_c_enable_262), .CK(clk_10mhz_c), 
            .Q(sck_temp)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=3, LSE_LLINE=218, LSE_RLINE=231 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_control_interface.v(100[18] 141[6])
    defparam sck_temp_285.GSR = "ENABLED";
    LUT4 ss0_temp_I_0_1_lut (.A(ss0_temp), .Z(ss0_temp_N_1263)) /* synthesis lut_function=(!(A)) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_control_interface.v(153[44:53])
    defparam ss0_temp_I_0_1_lut.init = 16'h5555;
    LUT4 ss0_temp_d_I_0_1_lut (.A(ss0_temp_d), .Z(ss0_temp_d_N_1447)) /* synthesis lut_function=(!(A)) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_control_interface.v(104[27:38])
    defparam ss0_temp_d_I_0_1_lut.init = 16'h5555;
    LUT4 mux_289_i8_4_lut (.A(dds_control[7]), .B(index[1]), .C(n12585), 
         .D(n12608), .Z(n539)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_control_interface.v(204[15] 210[15])
    defparam mux_289_i8_4_lut.init = 16'hca0a;
    LUT4 mux_289_i7_4_lut (.A(dds_control[6]), .B(n12624), .C(n12585), 
         .D(index[2]), .Z(n538)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/dds_control_interface.v(204[15] 210[15])
    defparam mux_289_i7_4_lut.init = 16'h0aca;
    
endmodule
//
// Verilog Description of module heart_beat
//

module heart_beat (clk_10mhz_c, GND_net, heartbeat_n_c_7) /* synthesis syn_module_defined=1 */ ;
    input clk_10mhz_c;
    input GND_net;
    output heartbeat_n_c_7;
    
    wire [15:0]prescale /* synthesis SET_AS_NETWORK=\heart_beat/prescale[15], is_clock=1 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/heart_beat.v(29[12:20])
    wire clk_10mhz_c /* synthesis SET_AS_NETWORK=clk_10mhz_c, is_clock=1 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/top.v(24[15:24])
    wire [7:0]n65;
    wire [7:0]n37;
    wire [15:0]n121;
    wire [15:0]n69;
    
    wire n9683, n9682, n9681, n9680, n9679, n9678, n9677, n9676, 
        n9675, n9674, n9673, n9672;
    
    FD1S3AX count_1534_1701__i0 (.D(n37[0]), .CK(prescale[15]), .Q(n65[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/heart_beat.v(49[27:36])
    defparam count_1534_1701__i0.GSR = "ENABLED";
    FD1S3AX prescale_1535__i0 (.D(n69[0]), .CK(clk_10mhz_c), .Q(n121[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/heart_beat.v(40[30:42])
    defparam prescale_1535__i0.GSR = "ENABLED";
    FD1S3AX count_1534_1701__i1 (.D(n37[1]), .CK(prescale[15]), .Q(n65[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/heart_beat.v(49[27:36])
    defparam count_1534_1701__i1.GSR = "ENABLED";
    CCU2D prescale_1535_add_4_17 (.A0(prescale[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n9683), .S0(n69[15]));   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/heart_beat.v(40[30:42])
    defparam prescale_1535_add_4_17.INIT0 = 16'hfaaa;
    defparam prescale_1535_add_4_17.INIT1 = 16'h0000;
    defparam prescale_1535_add_4_17.INJECT1_0 = "NO";
    defparam prescale_1535_add_4_17.INJECT1_1 = "NO";
    FD1S3AX count_1534_1701__i2 (.D(n37[2]), .CK(prescale[15]), .Q(n65[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/heart_beat.v(49[27:36])
    defparam count_1534_1701__i2.GSR = "ENABLED";
    FD1S3AX count_1534_1701__i3 (.D(n37[3]), .CK(prescale[15]), .Q(n65[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/heart_beat.v(49[27:36])
    defparam count_1534_1701__i3.GSR = "ENABLED";
    FD1S3AX count_1534_1701__i4 (.D(n37[4]), .CK(prescale[15]), .Q(n65[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/heart_beat.v(49[27:36])
    defparam count_1534_1701__i4.GSR = "ENABLED";
    FD1S3AX count_1534_1701__i5 (.D(n37[5]), .CK(prescale[15]), .Q(n65[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/heart_beat.v(49[27:36])
    defparam count_1534_1701__i5.GSR = "ENABLED";
    FD1S3AX count_1534_1701__i6 (.D(n37[6]), .CK(prescale[15]), .Q(n65[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/heart_beat.v(49[27:36])
    defparam count_1534_1701__i6.GSR = "ENABLED";
    FD1S3AX count_1534_1701__i7 (.D(n37[7]), .CK(prescale[15]), .Q(heartbeat_n_c_7)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/heart_beat.v(49[27:36])
    defparam count_1534_1701__i7.GSR = "ENABLED";
    FD1S3AX prescale_1535__i1 (.D(n69[1]), .CK(clk_10mhz_c), .Q(n121[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/heart_beat.v(40[30:42])
    defparam prescale_1535__i1.GSR = "ENABLED";
    CCU2D prescale_1535_add_4_15 (.A0(n121[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n121[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n9682), .COUT(n9683), .S0(n69[13]), .S1(n69[14]));   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/heart_beat.v(40[30:42])
    defparam prescale_1535_add_4_15.INIT0 = 16'hfaaa;
    defparam prescale_1535_add_4_15.INIT1 = 16'hfaaa;
    defparam prescale_1535_add_4_15.INJECT1_0 = "NO";
    defparam prescale_1535_add_4_15.INJECT1_1 = "NO";
    CCU2D prescale_1535_add_4_13 (.A0(n121[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n121[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n9681), .COUT(n9682), .S0(n69[11]), .S1(n69[12]));   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/heart_beat.v(40[30:42])
    defparam prescale_1535_add_4_13.INIT0 = 16'hfaaa;
    defparam prescale_1535_add_4_13.INIT1 = 16'hfaaa;
    defparam prescale_1535_add_4_13.INJECT1_0 = "NO";
    defparam prescale_1535_add_4_13.INJECT1_1 = "NO";
    CCU2D prescale_1535_add_4_11 (.A0(n121[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n121[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n9680), .COUT(n9681), .S0(n69[9]), .S1(n69[10]));   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/heart_beat.v(40[30:42])
    defparam prescale_1535_add_4_11.INIT0 = 16'hfaaa;
    defparam prescale_1535_add_4_11.INIT1 = 16'hfaaa;
    defparam prescale_1535_add_4_11.INJECT1_0 = "NO";
    defparam prescale_1535_add_4_11.INJECT1_1 = "NO";
    CCU2D prescale_1535_add_4_9 (.A0(n121[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n121[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n9679), .COUT(n9680), .S0(n69[7]), .S1(n69[8]));   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/heart_beat.v(40[30:42])
    defparam prescale_1535_add_4_9.INIT0 = 16'hfaaa;
    defparam prescale_1535_add_4_9.INIT1 = 16'hfaaa;
    defparam prescale_1535_add_4_9.INJECT1_0 = "NO";
    defparam prescale_1535_add_4_9.INJECT1_1 = "NO";
    CCU2D prescale_1535_add_4_7 (.A0(n121[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n121[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n9678), .COUT(n9679), .S0(n69[5]), .S1(n69[6]));   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/heart_beat.v(40[30:42])
    defparam prescale_1535_add_4_7.INIT0 = 16'hfaaa;
    defparam prescale_1535_add_4_7.INIT1 = 16'hfaaa;
    defparam prescale_1535_add_4_7.INJECT1_0 = "NO";
    defparam prescale_1535_add_4_7.INJECT1_1 = "NO";
    FD1S3AX prescale_1535__i2 (.D(n69[2]), .CK(clk_10mhz_c), .Q(n121[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/heart_beat.v(40[30:42])
    defparam prescale_1535__i2.GSR = "ENABLED";
    FD1S3AX prescale_1535__i3 (.D(n69[3]), .CK(clk_10mhz_c), .Q(n121[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/heart_beat.v(40[30:42])
    defparam prescale_1535__i3.GSR = "ENABLED";
    FD1S3AX prescale_1535__i4 (.D(n69[4]), .CK(clk_10mhz_c), .Q(n121[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/heart_beat.v(40[30:42])
    defparam prescale_1535__i4.GSR = "ENABLED";
    FD1S3AX prescale_1535__i5 (.D(n69[5]), .CK(clk_10mhz_c), .Q(n121[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/heart_beat.v(40[30:42])
    defparam prescale_1535__i5.GSR = "ENABLED";
    FD1S3AX prescale_1535__i6 (.D(n69[6]), .CK(clk_10mhz_c), .Q(n121[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/heart_beat.v(40[30:42])
    defparam prescale_1535__i6.GSR = "ENABLED";
    FD1S3AX prescale_1535__i7 (.D(n69[7]), .CK(clk_10mhz_c), .Q(n121[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/heart_beat.v(40[30:42])
    defparam prescale_1535__i7.GSR = "ENABLED";
    FD1S3AX prescale_1535__i8 (.D(n69[8]), .CK(clk_10mhz_c), .Q(n121[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/heart_beat.v(40[30:42])
    defparam prescale_1535__i8.GSR = "ENABLED";
    FD1S3AX prescale_1535__i9 (.D(n69[9]), .CK(clk_10mhz_c), .Q(n121[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/heart_beat.v(40[30:42])
    defparam prescale_1535__i9.GSR = "ENABLED";
    FD1S3AX prescale_1535__i10 (.D(n69[10]), .CK(clk_10mhz_c), .Q(n121[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/heart_beat.v(40[30:42])
    defparam prescale_1535__i10.GSR = "ENABLED";
    FD1S3AX prescale_1535__i11 (.D(n69[11]), .CK(clk_10mhz_c), .Q(n121[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/heart_beat.v(40[30:42])
    defparam prescale_1535__i11.GSR = "ENABLED";
    FD1S3AX prescale_1535__i12 (.D(n69[12]), .CK(clk_10mhz_c), .Q(n121[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/heart_beat.v(40[30:42])
    defparam prescale_1535__i12.GSR = "ENABLED";
    FD1S3AX prescale_1535__i13 (.D(n69[13]), .CK(clk_10mhz_c), .Q(n121[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/heart_beat.v(40[30:42])
    defparam prescale_1535__i13.GSR = "ENABLED";
    FD1S3AX prescale_1535__i14 (.D(n69[14]), .CK(clk_10mhz_c), .Q(n121[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/heart_beat.v(40[30:42])
    defparam prescale_1535__i14.GSR = "ENABLED";
    FD1S3AX prescale_1535__i15 (.D(n69[15]), .CK(clk_10mhz_c), .Q(prescale[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/heart_beat.v(40[30:42])
    defparam prescale_1535__i15.GSR = "ENABLED";
    CCU2D prescale_1535_add_4_5 (.A0(n121[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n121[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n9677), .COUT(n9678), .S0(n69[3]), .S1(n69[4]));   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/heart_beat.v(40[30:42])
    defparam prescale_1535_add_4_5.INIT0 = 16'hfaaa;
    defparam prescale_1535_add_4_5.INIT1 = 16'hfaaa;
    defparam prescale_1535_add_4_5.INJECT1_0 = "NO";
    defparam prescale_1535_add_4_5.INJECT1_1 = "NO";
    CCU2D prescale_1535_add_4_3 (.A0(n121[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n121[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n9676), .COUT(n9677), .S0(n69[1]), .S1(n69[2]));   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/heart_beat.v(40[30:42])
    defparam prescale_1535_add_4_3.INIT0 = 16'hfaaa;
    defparam prescale_1535_add_4_3.INIT1 = 16'hfaaa;
    defparam prescale_1535_add_4_3.INJECT1_0 = "NO";
    defparam prescale_1535_add_4_3.INJECT1_1 = "NO";
    CCU2D prescale_1535_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n121[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n9676), .S1(n69[0]));   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/heart_beat.v(40[30:42])
    defparam prescale_1535_add_4_1.INIT0 = 16'hF000;
    defparam prescale_1535_add_4_1.INIT1 = 16'h0555;
    defparam prescale_1535_add_4_1.INJECT1_0 = "NO";
    defparam prescale_1535_add_4_1.INJECT1_1 = "NO";
    CCU2D count_1534_1701_add_4_9 (.A0(heartbeat_n_c_7), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n9675), .S0(n37[7]));   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/heart_beat.v(49[27:36])
    defparam count_1534_1701_add_4_9.INIT0 = 16'hfaaa;
    defparam count_1534_1701_add_4_9.INIT1 = 16'h0000;
    defparam count_1534_1701_add_4_9.INJECT1_0 = "NO";
    defparam count_1534_1701_add_4_9.INJECT1_1 = "NO";
    CCU2D count_1534_1701_add_4_7 (.A0(n65[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n65[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n9674), .COUT(n9675), .S0(n37[5]), .S1(n37[6]));   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/heart_beat.v(49[27:36])
    defparam count_1534_1701_add_4_7.INIT0 = 16'hfaaa;
    defparam count_1534_1701_add_4_7.INIT1 = 16'hfaaa;
    defparam count_1534_1701_add_4_7.INJECT1_0 = "NO";
    defparam count_1534_1701_add_4_7.INJECT1_1 = "NO";
    CCU2D count_1534_1701_add_4_5 (.A0(n65[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n65[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n9673), .COUT(n9674), .S0(n37[3]), .S1(n37[4]));   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/heart_beat.v(49[27:36])
    defparam count_1534_1701_add_4_5.INIT0 = 16'hfaaa;
    defparam count_1534_1701_add_4_5.INIT1 = 16'hfaaa;
    defparam count_1534_1701_add_4_5.INJECT1_0 = "NO";
    defparam count_1534_1701_add_4_5.INJECT1_1 = "NO";
    CCU2D count_1534_1701_add_4_3 (.A0(n65[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n65[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n9672), .COUT(n9673), .S0(n37[1]), .S1(n37[2]));   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/heart_beat.v(49[27:36])
    defparam count_1534_1701_add_4_3.INIT0 = 16'hfaaa;
    defparam count_1534_1701_add_4_3.INIT1 = 16'hfaaa;
    defparam count_1534_1701_add_4_3.INJECT1_0 = "NO";
    defparam count_1534_1701_add_4_3.INJECT1_1 = "NO";
    CCU2D count_1534_1701_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n65[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n9672), .S1(n37[0]));   // c:/project/working/fpga/home/lattice/seed_driver/rev_5/src/heart_beat.v(49[27:36])
    defparam count_1534_1701_add_4_1.INIT0 = 16'hF000;
    defparam count_1534_1701_add_4_1.INIT1 = 16'h0555;
    defparam count_1534_1701_add_4_1.INJECT1_0 = "NO";
    defparam count_1534_1701_add_4_1.INJECT1_1 = "NO";
    
endmodule
