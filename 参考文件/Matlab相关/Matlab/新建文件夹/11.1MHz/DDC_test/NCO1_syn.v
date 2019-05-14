// Copyright (C) 1991-2008 Altera Corporation
// Your use of Altera Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Altera Program License 
// Subscription Agreement, Altera MegaCore Function License 
// Agreement, or other applicable license agreement, including, 
// without limitation, that your use is for the sole purpose of 
// programming logic devices manufactured by Altera and sold by 
// Altera or its authorized distributors.  Please refer to the 
// applicable agreement for further details.

// VENDOR "Altera"
// PROGRAM "Quartus II"
// VERSION "Version 8.1 Build 163 10/28/2008 SJ Full Version"

// DATE "05/30/2013 19:47:16"

// 
// Device: Altera EP2S15F484C3 Package FBGA484
// 

// 
// This greybox netlist file is for third party Synthesis Tools
// for timing and resource estimation only.
// 


module NCO1 (
	phi_inc_i,
	clk,
	reset_n,
	clken,
	fsin_o,
	fcos_o,
	out_valid)/* synthesis synthesis_greybox=1 */;
input 	[23:0] phi_inc_i;
input 	clk;
input 	reset_n;
input 	clken;
output 	[13:0] fsin_o;
output 	[13:0] fcos_o;
output 	out_valid;

wire gnd;
wire vcc;

assign gnd = 1'b0;
assign vcc = 1'b1;

wire \NCO1_st_inst|ux710isdr|data_ready~regout ;
wire \NCO1_st_inst|blk0|lpm_add_sub_component|auto_generated|pipeline_dffe[0]~regout ;
wire \NCO1_st_inst|blk0|lpm_add_sub_component|auto_generated|pipeline_dffe[1]~regout ;
wire \NCO1_st_inst|blk0|lpm_add_sub_component|auto_generated|pipeline_dffe[2]~regout ;
wire \NCO1_st_inst|blk0|lpm_add_sub_component|auto_generated|pipeline_dffe[3]~regout ;
wire \NCO1_st_inst|blk0|lpm_add_sub_component|auto_generated|pipeline_dffe[4]~regout ;
wire \NCO1_st_inst|blk0|lpm_add_sub_component|auto_generated|pipeline_dffe[5]~regout ;
wire \NCO1_st_inst|blk0|lpm_add_sub_component|auto_generated|pipeline_dffe[6]~regout ;
wire \NCO1_st_inst|blk0|lpm_add_sub_component|auto_generated|pipeline_dffe[7]~regout ;
wire \NCO1_st_inst|blk0|lpm_add_sub_component|auto_generated|pipeline_dffe[8]~regout ;
wire \NCO1_st_inst|blk0|lpm_add_sub_component|auto_generated|pipeline_dffe[9]~regout ;
wire \NCO1_st_inst|blk0|lpm_add_sub_component|auto_generated|pipeline_dffe[10]~regout ;
wire \NCO1_st_inst|blk0|lpm_add_sub_component|auto_generated|pipeline_dffe[11]~regout ;
wire \NCO1_st_inst|blk0|lpm_add_sub_component|auto_generated|pipeline_dffe[12]~regout ;
wire \NCO1_st_inst|blk0|lpm_add_sub_component|auto_generated|pipeline_dffe[13]~regout ;
wire \NCO1_st_inst|blk1|lpm_add_sub_component|auto_generated|pipeline_dffe[0]~regout ;
wire \NCO1_st_inst|blk1|lpm_add_sub_component|auto_generated|pipeline_dffe[1]~regout ;
wire \NCO1_st_inst|blk1|lpm_add_sub_component|auto_generated|pipeline_dffe[2]~regout ;
wire \NCO1_st_inst|blk1|lpm_add_sub_component|auto_generated|pipeline_dffe[3]~regout ;
wire \NCO1_st_inst|blk1|lpm_add_sub_component|auto_generated|pipeline_dffe[4]~regout ;
wire \NCO1_st_inst|blk1|lpm_add_sub_component|auto_generated|pipeline_dffe[5]~regout ;
wire \NCO1_st_inst|blk1|lpm_add_sub_component|auto_generated|pipeline_dffe[6]~regout ;
wire \NCO1_st_inst|blk1|lpm_add_sub_component|auto_generated|pipeline_dffe[7]~regout ;
wire \NCO1_st_inst|blk1|lpm_add_sub_component|auto_generated|pipeline_dffe[8]~regout ;
wire \NCO1_st_inst|blk1|lpm_add_sub_component|auto_generated|pipeline_dffe[9]~regout ;
wire \NCO1_st_inst|blk1|lpm_add_sub_component|auto_generated|pipeline_dffe[10]~regout ;
wire \NCO1_st_inst|blk1|lpm_add_sub_component|auto_generated|pipeline_dffe[11]~regout ;
wire \NCO1_st_inst|blk1|lpm_add_sub_component|auto_generated|pipeline_dffe[12]~regout ;
wire \NCO1_st_inst|blk1|lpm_add_sub_component|auto_generated|pipeline_dffe[13]~regout ;
wire \~GND~combout ;


NCO1_NCO1_st NCO1_st_inst(
	.data_ready(\NCO1_st_inst|ux710isdr|data_ready~regout ),
	.pipeline_dffe_0(\NCO1_st_inst|blk0|lpm_add_sub_component|auto_generated|pipeline_dffe[0]~regout ),
	.pipeline_dffe_1(\NCO1_st_inst|blk0|lpm_add_sub_component|auto_generated|pipeline_dffe[1]~regout ),
	.pipeline_dffe_2(\NCO1_st_inst|blk0|lpm_add_sub_component|auto_generated|pipeline_dffe[2]~regout ),
	.pipeline_dffe_3(\NCO1_st_inst|blk0|lpm_add_sub_component|auto_generated|pipeline_dffe[3]~regout ),
	.pipeline_dffe_4(\NCO1_st_inst|blk0|lpm_add_sub_component|auto_generated|pipeline_dffe[4]~regout ),
	.pipeline_dffe_5(\NCO1_st_inst|blk0|lpm_add_sub_component|auto_generated|pipeline_dffe[5]~regout ),
	.pipeline_dffe_6(\NCO1_st_inst|blk0|lpm_add_sub_component|auto_generated|pipeline_dffe[6]~regout ),
	.pipeline_dffe_7(\NCO1_st_inst|blk0|lpm_add_sub_component|auto_generated|pipeline_dffe[7]~regout ),
	.pipeline_dffe_8(\NCO1_st_inst|blk0|lpm_add_sub_component|auto_generated|pipeline_dffe[8]~regout ),
	.pipeline_dffe_9(\NCO1_st_inst|blk0|lpm_add_sub_component|auto_generated|pipeline_dffe[9]~regout ),
	.pipeline_dffe_10(\NCO1_st_inst|blk0|lpm_add_sub_component|auto_generated|pipeline_dffe[10]~regout ),
	.pipeline_dffe_11(\NCO1_st_inst|blk0|lpm_add_sub_component|auto_generated|pipeline_dffe[11]~regout ),
	.pipeline_dffe_12(\NCO1_st_inst|blk0|lpm_add_sub_component|auto_generated|pipeline_dffe[12]~regout ),
	.pipeline_dffe_13(\NCO1_st_inst|blk0|lpm_add_sub_component|auto_generated|pipeline_dffe[13]~regout ),
	.pipeline_dffe_01(\NCO1_st_inst|blk1|lpm_add_sub_component|auto_generated|pipeline_dffe[0]~regout ),
	.pipeline_dffe_14(\NCO1_st_inst|blk1|lpm_add_sub_component|auto_generated|pipeline_dffe[1]~regout ),
	.pipeline_dffe_21(\NCO1_st_inst|blk1|lpm_add_sub_component|auto_generated|pipeline_dffe[2]~regout ),
	.pipeline_dffe_31(\NCO1_st_inst|blk1|lpm_add_sub_component|auto_generated|pipeline_dffe[3]~regout ),
	.pipeline_dffe_41(\NCO1_st_inst|blk1|lpm_add_sub_component|auto_generated|pipeline_dffe[4]~regout ),
	.pipeline_dffe_51(\NCO1_st_inst|blk1|lpm_add_sub_component|auto_generated|pipeline_dffe[5]~regout ),
	.pipeline_dffe_61(\NCO1_st_inst|blk1|lpm_add_sub_component|auto_generated|pipeline_dffe[6]~regout ),
	.pipeline_dffe_71(\NCO1_st_inst|blk1|lpm_add_sub_component|auto_generated|pipeline_dffe[7]~regout ),
	.pipeline_dffe_81(\NCO1_st_inst|blk1|lpm_add_sub_component|auto_generated|pipeline_dffe[8]~regout ),
	.pipeline_dffe_91(\NCO1_st_inst|blk1|lpm_add_sub_component|auto_generated|pipeline_dffe[9]~regout ),
	.pipeline_dffe_101(\NCO1_st_inst|blk1|lpm_add_sub_component|auto_generated|pipeline_dffe[10]~regout ),
	.pipeline_dffe_111(\NCO1_st_inst|blk1|lpm_add_sub_component|auto_generated|pipeline_dffe[11]~regout ),
	.pipeline_dffe_121(\NCO1_st_inst|blk1|lpm_add_sub_component|auto_generated|pipeline_dffe[12]~regout ),
	.pipeline_dffe_131(\NCO1_st_inst|blk1|lpm_add_sub_component|auto_generated|pipeline_dffe[13]~regout ),
	.GND_port(\~GND~combout ),
	.clk(clk),
	.reset_n(reset_n),
	.clken(clken),
	.phi_inc_i_16(phi_inc_i[16]),
	.phi_inc_i_15(phi_inc_i[15]),
	.phi_inc_i_14(phi_inc_i[14]),
	.phi_inc_i_13(phi_inc_i[13]),
	.phi_inc_i_12(phi_inc_i[12]),
	.phi_inc_i_11(phi_inc_i[11]),
	.phi_inc_i_10(phi_inc_i[10]),
	.phi_inc_i_9(phi_inc_i[9]),
	.phi_inc_i_8(phi_inc_i[8]),
	.phi_inc_i_7(phi_inc_i[7]),
	.phi_inc_i_6(phi_inc_i[6]),
	.phi_inc_i_5(phi_inc_i[5]),
	.phi_inc_i_4(phi_inc_i[4]),
	.phi_inc_i_3(phi_inc_i[3]),
	.phi_inc_i_2(phi_inc_i[2]),
	.phi_inc_i_1(phi_inc_i[1]),
	.phi_inc_i_0(phi_inc_i[0]),
	.phi_inc_i_17(phi_inc_i[17]),
	.phi_inc_i_18(phi_inc_i[18]),
	.phi_inc_i_19(phi_inc_i[19]),
	.phi_inc_i_20(phi_inc_i[20]),
	.phi_inc_i_21(phi_inc_i[21]),
	.phi_inc_i_22(phi_inc_i[22]),
	.phi_inc_i_23(phi_inc_i[23]));

stratixii_lcell_comb \~GND (
	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.datae(vcc),
	.dataf(vcc),
	.datag(vcc),
	.cin(gnd),
	.sharein(gnd),
	.combout(\~GND~combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \~GND .extended_lut = "off";
defparam \~GND .lut_mask = 64'h0000000000000000;
defparam \~GND .shared_arith = "off";

assign fsin_o[0] = \NCO1_st_inst|blk0|lpm_add_sub_component|auto_generated|pipeline_dffe[0]~regout ;

assign fsin_o[1] = \NCO1_st_inst|blk0|lpm_add_sub_component|auto_generated|pipeline_dffe[1]~regout ;

assign fsin_o[2] = \NCO1_st_inst|blk0|lpm_add_sub_component|auto_generated|pipeline_dffe[2]~regout ;

assign fsin_o[3] = \NCO1_st_inst|blk0|lpm_add_sub_component|auto_generated|pipeline_dffe[3]~regout ;

assign fsin_o[4] = \NCO1_st_inst|blk0|lpm_add_sub_component|auto_generated|pipeline_dffe[4]~regout ;

assign fsin_o[5] = \NCO1_st_inst|blk0|lpm_add_sub_component|auto_generated|pipeline_dffe[5]~regout ;

assign fsin_o[6] = \NCO1_st_inst|blk0|lpm_add_sub_component|auto_generated|pipeline_dffe[6]~regout ;

assign fsin_o[7] = \NCO1_st_inst|blk0|lpm_add_sub_component|auto_generated|pipeline_dffe[7]~regout ;

assign fsin_o[8] = \NCO1_st_inst|blk0|lpm_add_sub_component|auto_generated|pipeline_dffe[8]~regout ;

assign fsin_o[9] = \NCO1_st_inst|blk0|lpm_add_sub_component|auto_generated|pipeline_dffe[9]~regout ;

assign fsin_o[10] = \NCO1_st_inst|blk0|lpm_add_sub_component|auto_generated|pipeline_dffe[10]~regout ;

assign fsin_o[11] = \NCO1_st_inst|blk0|lpm_add_sub_component|auto_generated|pipeline_dffe[11]~regout ;

assign fsin_o[12] = \NCO1_st_inst|blk0|lpm_add_sub_component|auto_generated|pipeline_dffe[12]~regout ;

assign fsin_o[13] = \NCO1_st_inst|blk0|lpm_add_sub_component|auto_generated|pipeline_dffe[13]~regout ;

assign fcos_o[0] = \NCO1_st_inst|blk1|lpm_add_sub_component|auto_generated|pipeline_dffe[0]~regout ;

assign fcos_o[1] = \NCO1_st_inst|blk1|lpm_add_sub_component|auto_generated|pipeline_dffe[1]~regout ;

assign fcos_o[2] = \NCO1_st_inst|blk1|lpm_add_sub_component|auto_generated|pipeline_dffe[2]~regout ;

assign fcos_o[3] = \NCO1_st_inst|blk1|lpm_add_sub_component|auto_generated|pipeline_dffe[3]~regout ;

assign fcos_o[4] = \NCO1_st_inst|blk1|lpm_add_sub_component|auto_generated|pipeline_dffe[4]~regout ;

assign fcos_o[5] = \NCO1_st_inst|blk1|lpm_add_sub_component|auto_generated|pipeline_dffe[5]~regout ;

assign fcos_o[6] = \NCO1_st_inst|blk1|lpm_add_sub_component|auto_generated|pipeline_dffe[6]~regout ;

assign fcos_o[7] = \NCO1_st_inst|blk1|lpm_add_sub_component|auto_generated|pipeline_dffe[7]~regout ;

assign fcos_o[8] = \NCO1_st_inst|blk1|lpm_add_sub_component|auto_generated|pipeline_dffe[8]~regout ;

assign fcos_o[9] = \NCO1_st_inst|blk1|lpm_add_sub_component|auto_generated|pipeline_dffe[9]~regout ;

assign fcos_o[10] = \NCO1_st_inst|blk1|lpm_add_sub_component|auto_generated|pipeline_dffe[10]~regout ;

assign fcos_o[11] = \NCO1_st_inst|blk1|lpm_add_sub_component|auto_generated|pipeline_dffe[11]~regout ;

assign fcos_o[12] = \NCO1_st_inst|blk1|lpm_add_sub_component|auto_generated|pipeline_dffe[12]~regout ;

assign fcos_o[13] = \NCO1_st_inst|blk1|lpm_add_sub_component|auto_generated|pipeline_dffe[13]~regout ;

assign out_valid = \NCO1_st_inst|ux710isdr|data_ready~regout ;

endmodule

module NCO1_NCO1_st (
	data_ready,
	pipeline_dffe_0,
	pipeline_dffe_1,
	pipeline_dffe_2,
	pipeline_dffe_3,
	pipeline_dffe_4,
	pipeline_dffe_5,
	pipeline_dffe_6,
	pipeline_dffe_7,
	pipeline_dffe_8,
	pipeline_dffe_9,
	pipeline_dffe_10,
	pipeline_dffe_11,
	pipeline_dffe_12,
	pipeline_dffe_13,
	pipeline_dffe_01,
	pipeline_dffe_14,
	pipeline_dffe_21,
	pipeline_dffe_31,
	pipeline_dffe_41,
	pipeline_dffe_51,
	pipeline_dffe_61,
	pipeline_dffe_71,
	pipeline_dffe_81,
	pipeline_dffe_91,
	pipeline_dffe_101,
	pipeline_dffe_111,
	pipeline_dffe_121,
	pipeline_dffe_131,
	GND_port,
	clk,
	reset_n,
	clken,
	phi_inc_i_16,
	phi_inc_i_15,
	phi_inc_i_14,
	phi_inc_i_13,
	phi_inc_i_12,
	phi_inc_i_11,
	phi_inc_i_10,
	phi_inc_i_9,
	phi_inc_i_8,
	phi_inc_i_7,
	phi_inc_i_6,
	phi_inc_i_5,
	phi_inc_i_4,
	phi_inc_i_3,
	phi_inc_i_2,
	phi_inc_i_1,
	phi_inc_i_0,
	phi_inc_i_17,
	phi_inc_i_18,
	phi_inc_i_19,
	phi_inc_i_20,
	phi_inc_i_21,
	phi_inc_i_22,
	phi_inc_i_23)/* synthesis synthesis_greybox=1 */;
output 	data_ready;
output 	pipeline_dffe_0;
output 	pipeline_dffe_1;
output 	pipeline_dffe_2;
output 	pipeline_dffe_3;
output 	pipeline_dffe_4;
output 	pipeline_dffe_5;
output 	pipeline_dffe_6;
output 	pipeline_dffe_7;
output 	pipeline_dffe_8;
output 	pipeline_dffe_9;
output 	pipeline_dffe_10;
output 	pipeline_dffe_11;
output 	pipeline_dffe_12;
output 	pipeline_dffe_13;
output 	pipeline_dffe_01;
output 	pipeline_dffe_14;
output 	pipeline_dffe_21;
output 	pipeline_dffe_31;
output 	pipeline_dffe_41;
output 	pipeline_dffe_51;
output 	pipeline_dffe_61;
output 	pipeline_dffe_71;
output 	pipeline_dffe_81;
output 	pipeline_dffe_91;
output 	pipeline_dffe_101;
output 	pipeline_dffe_111;
output 	pipeline_dffe_121;
output 	pipeline_dffe_131;
input 	GND_port;
input 	clk;
input 	reset_n;
input 	clken;
input 	phi_inc_i_16;
input 	phi_inc_i_15;
input 	phi_inc_i_14;
input 	phi_inc_i_13;
input 	phi_inc_i_12;
input 	phi_inc_i_11;
input 	phi_inc_i_10;
input 	phi_inc_i_9;
input 	phi_inc_i_8;
input 	phi_inc_i_7;
input 	phi_inc_i_6;
input 	phi_inc_i_5;
input 	phi_inc_i_4;
input 	phi_inc_i_3;
input 	phi_inc_i_2;
input 	phi_inc_i_1;
input 	phi_inc_i_0;
input 	phi_inc_i_17;
input 	phi_inc_i_18;
input 	phi_inc_i_19;
input 	phi_inc_i_20;
input 	phi_inc_i_21;
input 	phi_inc_i_22;
input 	phi_inc_i_23;

wire gnd;
wire vcc;

assign gnd = 1'b0;
assign vcc = 1'b1;

wire \m0|ALTMULT_ADD_component|auto_generated|result[13] ;
wire \m0|ALTMULT_ADD_component|auto_generated|result[14] ;
wire \m0|ALTMULT_ADD_component|auto_generated|result[15] ;
wire \m0|ALTMULT_ADD_component|auto_generated|result[16] ;
wire \m0|ALTMULT_ADD_component|auto_generated|result[17] ;
wire \m0|ALTMULT_ADD_component|auto_generated|result[18] ;
wire \m0|ALTMULT_ADD_component|auto_generated|result[19] ;
wire \m0|ALTMULT_ADD_component|auto_generated|result[20] ;
wire \m0|ALTMULT_ADD_component|auto_generated|result[21] ;
wire \m0|ALTMULT_ADD_component|auto_generated|result[22] ;
wire \m0|ALTMULT_ADD_component|auto_generated|result[23] ;
wire \m0|ALTMULT_ADD_component|auto_generated|result[24] ;
wire \m0|ALTMULT_ADD_component|auto_generated|result[25] ;
wire \m0|ALTMULT_ADD_component|auto_generated|result[26] ;
wire \m0|ALTMULT_ADD_component|auto_generated|result[27] ;
wire \m1|ALTMULT_ADD_component|auto_generated|result[13] ;
wire \m1|ALTMULT_ADD_component|auto_generated|result[14] ;
wire \m1|ALTMULT_ADD_component|auto_generated|result[15] ;
wire \m1|ALTMULT_ADD_component|auto_generated|result[16] ;
wire \m1|ALTMULT_ADD_component|auto_generated|result[17] ;
wire \m1|ALTMULT_ADD_component|auto_generated|result[18] ;
wire \m1|ALTMULT_ADD_component|auto_generated|result[19] ;
wire \m1|ALTMULT_ADD_component|auto_generated|result[20] ;
wire \m1|ALTMULT_ADD_component|auto_generated|result[21] ;
wire \m1|ALTMULT_ADD_component|auto_generated|result[22] ;
wire \m1|ALTMULT_ADD_component|auto_generated|result[23] ;
wire \m1|ALTMULT_ADD_component|auto_generated|result[24] ;
wire \m1|ALTMULT_ADD_component|auto_generated|result[25] ;
wire \m1|ALTMULT_ADD_component|auto_generated|result[26] ;
wire \m1|ALTMULT_ADD_component|auto_generated|result[27] ;
wire \ux0220|altsyncram_component|auto_generated|q_a[0] ;
wire \ux0220|altsyncram_component|auto_generated|q_b[0] ;
wire \ux0220|altsyncram_component|auto_generated|q_a[1] ;
wire \ux0220|altsyncram_component|auto_generated|q_b[1] ;
wire \ux0220|altsyncram_component|auto_generated|q_a[2] ;
wire \ux0220|altsyncram_component|auto_generated|q_b[2] ;
wire \ux0220|altsyncram_component|auto_generated|q_a[3] ;
wire \ux0220|altsyncram_component|auto_generated|q_b[3] ;
wire \ux0220|altsyncram_component|auto_generated|q_a[4] ;
wire \ux0220|altsyncram_component|auto_generated|q_b[4] ;
wire \ux0220|altsyncram_component|auto_generated|q_a[5] ;
wire \ux0220|altsyncram_component|auto_generated|q_b[5] ;
wire \ux0220|altsyncram_component|auto_generated|q_a[6] ;
wire \ux0220|altsyncram_component|auto_generated|q_b[6] ;
wire \ux0220|altsyncram_component|auto_generated|q_a[7] ;
wire \ux0220|altsyncram_component|auto_generated|q_b[7] ;
wire \ux0220|altsyncram_component|auto_generated|q_a[8] ;
wire \ux0220|altsyncram_component|auto_generated|q_b[8] ;
wire \ux0220|altsyncram_component|auto_generated|q_a[9] ;
wire \ux0220|altsyncram_component|auto_generated|q_b[9] ;
wire \ux0220|altsyncram_component|auto_generated|q_a[10] ;
wire \ux0220|altsyncram_component|auto_generated|q_b[10] ;
wire \ux0220|altsyncram_component|auto_generated|q_a[11] ;
wire \ux0220|altsyncram_component|auto_generated|q_b[11] ;
wire \ux0220|altsyncram_component|auto_generated|q_a[12] ;
wire \ux0220|altsyncram_component|auto_generated|q_b[12] ;
wire \ux0220|altsyncram_component|auto_generated|q_a[13] ;
wire \ux0220|altsyncram_component|auto_generated|q_b[13] ;
wire \ux0123|altsyncram_component0|auto_generated|q_a[0] ;
wire \ux0123|altsyncram_component0|auto_generated|q_a[1] ;
wire \ux0123|altsyncram_component0|auto_generated|q_a[2] ;
wire \ux0123|altsyncram_component0|auto_generated|q_a[3] ;
wire \ux0123|altsyncram_component0|auto_generated|q_a[4] ;
wire \ux0123|altsyncram_component0|auto_generated|q_a[5] ;
wire \ux0123|altsyncram_component0|auto_generated|q_a[6] ;
wire \ux0123|altsyncram_component0|auto_generated|q_a[7] ;
wire \ux0123|altsyncram_component0|auto_generated|q_a[8] ;
wire \ux0123|altsyncram_component0|auto_generated|q_a[9] ;
wire \ux0123|altsyncram_component0|auto_generated|q_a[10] ;
wire \ux0123|altsyncram_component0|auto_generated|q_a[11] ;
wire \ux0123|altsyncram_component0|auto_generated|q_a[12] ;
wire \ux0123|altsyncram_component0|auto_generated|q_a[13] ;
wire \ux0122|altsyncram_component0|auto_generated|q_a[0] ;
wire \ux0122|altsyncram_component0|auto_generated|q_a[1] ;
wire \ux0122|altsyncram_component0|auto_generated|q_a[2] ;
wire \ux0122|altsyncram_component0|auto_generated|q_a[3] ;
wire \ux0122|altsyncram_component0|auto_generated|q_a[4] ;
wire \ux0122|altsyncram_component0|auto_generated|q_a[5] ;
wire \ux0122|altsyncram_component0|auto_generated|q_a[6] ;
wire \ux0122|altsyncram_component0|auto_generated|q_a[7] ;
wire \ux0122|altsyncram_component0|auto_generated|q_a[8] ;
wire \ux0122|altsyncram_component0|auto_generated|q_a[9] ;
wire \ux0122|altsyncram_component0|auto_generated|q_a[10] ;
wire \ux0122|altsyncram_component0|auto_generated|q_a[11] ;
wire \ux0122|altsyncram_component0|auto_generated|q_a[12] ;
wire \ux0122|altsyncram_component0|auto_generated|q_a[13] ;
wire \ux008|rom_add_cc_temp[0]~regout ;
wire \ux008|rom_add_cc_temp[1]~regout ;
wire \ux008|rom_add_cc_temp[2]~regout ;
wire \ux008|rom_add_cc_temp[3]~regout ;
wire \ux008|rom_add_cc_temp[4]~regout ;
wire \ux008|rom_add_cc_temp[5]~regout ;
wire \ux008|rom_add_cs[6]~regout ;
wire \ux008|rom_add_cs[7]~regout ;
wire \ux008|rom_add_cc_temp[6]~regout ;
wire \ux008|rom_add_cc_temp[7]~regout ;
wire \ux008|rom_add_f[0]~regout ;
wire \ux008|rom_add_f[1]~regout ;
wire \ux008|rom_add_f[2]~regout ;
wire \ux008|rom_add_f[3]~regout ;
wire \ux008|rom_add_f[4]~regout ;
wire \ux008|rom_add_f[5]~regout ;
wire \ux008|rom_add_f[6]~regout ;
wire \ux008|rom_add_f[7]~regout ;
wire \ux002|dxxpdo[13]~regout ;
wire \ux002|dxxpdo[14]~regout ;
wire \ux002|dxxpdo[15]~regout ;
wire \ux002|dxxpdo[16]~regout ;
wire \ux002|dxxpdo[17]~regout ;
wire \ux002|dxxpdo[18]~regout ;
wire \ux002|dxxpdo[19]~regout ;
wire \ux002|dxxpdo[20]~regout ;
wire \ux002|dxxpdo[5]~regout ;
wire \ux002|dxxpdo[6]~regout ;
wire \ux002|dxxpdo[7]~regout ;
wire \ux002|dxxpdo[8]~regout ;
wire \ux002|dxxpdo[9]~regout ;
wire \ux002|dxxpdo[10]~regout ;
wire \ux002|dxxpdo[11]~regout ;
wire \ux002|dxxpdo[12]~regout ;
wire \ux001|dxxrv[4]~regout ;
wire \ux001|dxxrv[3]~regout ;
wire \ux001|dxxrv[2]~regout ;
wire \ux001|dxxrv[1]~regout ;
wire \ux001|dxxrv[0]~regout ;
wire \blk0|data_tmp[11]~105_combout ;
wire \ux000|acc|auto_generated|pipeline_dffe[16]~regout ;
wire \ux000|acc|auto_generated|pipeline_dffe[15]~regout ;
wire \ux000|acc|auto_generated|pipeline_dffe[14]~regout ;
wire \ux000|acc|auto_generated|pipeline_dffe[13]~regout ;
wire \ux000|acc|auto_generated|pipeline_dffe[12]~regout ;
wire \ux000|acc|auto_generated|pipeline_dffe[11]~regout ;
wire \ux000|acc|auto_generated|pipeline_dffe[10]~regout ;
wire \ux000|acc|auto_generated|pipeline_dffe[9]~regout ;
wire \ux000|acc|auto_generated|pipeline_dffe[8]~regout ;
wire \ux000|acc|auto_generated|pipeline_dffe[7]~regout ;
wire \ux000|acc|auto_generated|pipeline_dffe[6]~regout ;
wire \ux000|acc|auto_generated|pipeline_dffe[5]~regout ;
wire \ux000|acc|auto_generated|pipeline_dffe[4]~regout ;
wire \ux000|acc|auto_generated|pipeline_dffe[3]~regout ;
wire \ux000|acc|auto_generated|pipeline_dffe[17]~regout ;
wire \ux000|acc|auto_generated|pipeline_dffe[18]~regout ;
wire \ux000|acc|auto_generated|pipeline_dffe[19]~regout ;
wire \ux000|acc|auto_generated|pipeline_dffe[20]~regout ;
wire \ux000|acc|auto_generated|pipeline_dffe[21]~regout ;
wire \ux000|acc|auto_generated|pipeline_dffe[22]~regout ;
wire \ux000|acc|auto_generated|pipeline_dffe[23]~regout ;


NCO1_asj_altqmcpipe ux000(
	.data_tmp_11(\blk0|data_tmp[11]~105_combout ),
	.pipeline_dffe_16(\ux000|acc|auto_generated|pipeline_dffe[16]~regout ),
	.pipeline_dffe_15(\ux000|acc|auto_generated|pipeline_dffe[15]~regout ),
	.pipeline_dffe_14(\ux000|acc|auto_generated|pipeline_dffe[14]~regout ),
	.pipeline_dffe_13(\ux000|acc|auto_generated|pipeline_dffe[13]~regout ),
	.pipeline_dffe_12(\ux000|acc|auto_generated|pipeline_dffe[12]~regout ),
	.pipeline_dffe_11(\ux000|acc|auto_generated|pipeline_dffe[11]~regout ),
	.pipeline_dffe_10(\ux000|acc|auto_generated|pipeline_dffe[10]~regout ),
	.pipeline_dffe_9(\ux000|acc|auto_generated|pipeline_dffe[9]~regout ),
	.pipeline_dffe_8(\ux000|acc|auto_generated|pipeline_dffe[8]~regout ),
	.pipeline_dffe_7(\ux000|acc|auto_generated|pipeline_dffe[7]~regout ),
	.pipeline_dffe_6(\ux000|acc|auto_generated|pipeline_dffe[6]~regout ),
	.pipeline_dffe_5(\ux000|acc|auto_generated|pipeline_dffe[5]~regout ),
	.pipeline_dffe_4(\ux000|acc|auto_generated|pipeline_dffe[4]~regout ),
	.pipeline_dffe_3(\ux000|acc|auto_generated|pipeline_dffe[3]~regout ),
	.pipeline_dffe_17(\ux000|acc|auto_generated|pipeline_dffe[17]~regout ),
	.pipeline_dffe_18(\ux000|acc|auto_generated|pipeline_dffe[18]~regout ),
	.pipeline_dffe_19(\ux000|acc|auto_generated|pipeline_dffe[19]~regout ),
	.pipeline_dffe_20(\ux000|acc|auto_generated|pipeline_dffe[20]~regout ),
	.pipeline_dffe_21(\ux000|acc|auto_generated|pipeline_dffe[21]~regout ),
	.pipeline_dffe_22(\ux000|acc|auto_generated|pipeline_dffe[22]~regout ),
	.pipeline_dffe_23(\ux000|acc|auto_generated|pipeline_dffe[23]~regout ),
	.clk(clk),
	.reset_n(reset_n),
	.clken(clken),
	.phi_inc_i_16(phi_inc_i_16),
	.phi_inc_i_15(phi_inc_i_15),
	.phi_inc_i_14(phi_inc_i_14),
	.phi_inc_i_13(phi_inc_i_13),
	.phi_inc_i_12(phi_inc_i_12),
	.phi_inc_i_11(phi_inc_i_11),
	.phi_inc_i_10(phi_inc_i_10),
	.phi_inc_i_9(phi_inc_i_9),
	.phi_inc_i_8(phi_inc_i_8),
	.phi_inc_i_7(phi_inc_i_7),
	.phi_inc_i_6(phi_inc_i_6),
	.phi_inc_i_5(phi_inc_i_5),
	.phi_inc_i_4(phi_inc_i_4),
	.phi_inc_i_3(phi_inc_i_3),
	.phi_inc_i_2(phi_inc_i_2),
	.phi_inc_i_1(phi_inc_i_1),
	.phi_inc_i_0(phi_inc_i_0),
	.phi_inc_i_17(phi_inc_i_17),
	.phi_inc_i_18(phi_inc_i_18),
	.phi_inc_i_19(phi_inc_i_19),
	.phi_inc_i_20(phi_inc_i_20),
	.phi_inc_i_21(phi_inc_i_21),
	.phi_inc_i_22(phi_inc_i_22),
	.phi_inc_i_23(phi_inc_i_23));

NCO1_asj_dxx_g ux001(
	.dxxrv_4(\ux001|dxxrv[4]~regout ),
	.dxxrv_3(\ux001|dxxrv[3]~regout ),
	.dxxrv_2(\ux001|dxxrv[2]~regout ),
	.dxxrv_1(\ux001|dxxrv[1]~regout ),
	.dxxrv_0(\ux001|dxxrv[0]~regout ),
	.data_tmp_11(\blk0|data_tmp[11]~105_combout ),
	.clk(clk),
	.reset_n(reset_n));

NCO1_asj_dxx ux002(
	.dxxpdo_13(\ux002|dxxpdo[13]~regout ),
	.dxxpdo_14(\ux002|dxxpdo[14]~regout ),
	.dxxpdo_15(\ux002|dxxpdo[15]~regout ),
	.dxxpdo_16(\ux002|dxxpdo[16]~regout ),
	.dxxpdo_17(\ux002|dxxpdo[17]~regout ),
	.dxxpdo_18(\ux002|dxxpdo[18]~regout ),
	.dxxpdo_19(\ux002|dxxpdo[19]~regout ),
	.dxxpdo_20(\ux002|dxxpdo[20]~regout ),
	.dxxpdo_5(\ux002|dxxpdo[5]~regout ),
	.dxxpdo_6(\ux002|dxxpdo[6]~regout ),
	.dxxpdo_7(\ux002|dxxpdo[7]~regout ),
	.dxxpdo_8(\ux002|dxxpdo[8]~regout ),
	.dxxpdo_9(\ux002|dxxpdo[9]~regout ),
	.dxxpdo_10(\ux002|dxxpdo[10]~regout ),
	.dxxpdo_11(\ux002|dxxpdo[11]~regout ),
	.dxxpdo_12(\ux002|dxxpdo[12]~regout ),
	.dxxrv_4(\ux001|dxxrv[4]~regout ),
	.dxxrv_3(\ux001|dxxrv[3]~regout ),
	.dxxrv_2(\ux001|dxxrv[2]~regout ),
	.dxxrv_1(\ux001|dxxrv[1]~regout ),
	.dxxrv_0(\ux001|dxxrv[0]~regout ),
	.data_tmp_11(\blk0|data_tmp[11]~105_combout ),
	.pipeline_dffe_16(\ux000|acc|auto_generated|pipeline_dffe[16]~regout ),
	.pipeline_dffe_15(\ux000|acc|auto_generated|pipeline_dffe[15]~regout ),
	.pipeline_dffe_14(\ux000|acc|auto_generated|pipeline_dffe[14]~regout ),
	.pipeline_dffe_13(\ux000|acc|auto_generated|pipeline_dffe[13]~regout ),
	.pipeline_dffe_12(\ux000|acc|auto_generated|pipeline_dffe[12]~regout ),
	.pipeline_dffe_11(\ux000|acc|auto_generated|pipeline_dffe[11]~regout ),
	.pipeline_dffe_10(\ux000|acc|auto_generated|pipeline_dffe[10]~regout ),
	.pipeline_dffe_9(\ux000|acc|auto_generated|pipeline_dffe[9]~regout ),
	.pipeline_dffe_8(\ux000|acc|auto_generated|pipeline_dffe[8]~regout ),
	.pipeline_dffe_7(\ux000|acc|auto_generated|pipeline_dffe[7]~regout ),
	.pipeline_dffe_6(\ux000|acc|auto_generated|pipeline_dffe[6]~regout ),
	.pipeline_dffe_5(\ux000|acc|auto_generated|pipeline_dffe[5]~regout ),
	.pipeline_dffe_4(\ux000|acc|auto_generated|pipeline_dffe[4]~regout ),
	.pipeline_dffe_3(\ux000|acc|auto_generated|pipeline_dffe[3]~regout ),
	.pipeline_dffe_17(\ux000|acc|auto_generated|pipeline_dffe[17]~regout ),
	.pipeline_dffe_18(\ux000|acc|auto_generated|pipeline_dffe[18]~regout ),
	.pipeline_dffe_19(\ux000|acc|auto_generated|pipeline_dffe[19]~regout ),
	.pipeline_dffe_20(\ux000|acc|auto_generated|pipeline_dffe[20]~regout ),
	.pipeline_dffe_21(\ux000|acc|auto_generated|pipeline_dffe[21]~regout ),
	.pipeline_dffe_22(\ux000|acc|auto_generated|pipeline_dffe[22]~regout ),
	.pipeline_dffe_23(\ux000|acc|auto_generated|pipeline_dffe[23]~regout ),
	.clk(clk),
	.reset_n(reset_n),
	.clken(clken));

NCO1_asj_gam_dp ux008(
	.rom_add_cc_temp_0(\ux008|rom_add_cc_temp[0]~regout ),
	.rom_add_cc_temp_1(\ux008|rom_add_cc_temp[1]~regout ),
	.rom_add_cc_temp_2(\ux008|rom_add_cc_temp[2]~regout ),
	.rom_add_cc_temp_3(\ux008|rom_add_cc_temp[3]~regout ),
	.rom_add_cc_temp_4(\ux008|rom_add_cc_temp[4]~regout ),
	.rom_add_cc_temp_5(\ux008|rom_add_cc_temp[5]~regout ),
	.rom_add_cs_6(\ux008|rom_add_cs[6]~regout ),
	.rom_add_cs_7(\ux008|rom_add_cs[7]~regout ),
	.rom_add_cc_temp_6(\ux008|rom_add_cc_temp[6]~regout ),
	.rom_add_cc_temp_7(\ux008|rom_add_cc_temp[7]~regout ),
	.rom_add_f_0(\ux008|rom_add_f[0]~regout ),
	.rom_add_f_1(\ux008|rom_add_f[1]~regout ),
	.rom_add_f_2(\ux008|rom_add_f[2]~regout ),
	.rom_add_f_3(\ux008|rom_add_f[3]~regout ),
	.rom_add_f_4(\ux008|rom_add_f[4]~regout ),
	.rom_add_f_5(\ux008|rom_add_f[5]~regout ),
	.rom_add_f_6(\ux008|rom_add_f[6]~regout ),
	.rom_add_f_7(\ux008|rom_add_f[7]~regout ),
	.dxxpdo_13(\ux002|dxxpdo[13]~regout ),
	.dxxpdo_14(\ux002|dxxpdo[14]~regout ),
	.dxxpdo_15(\ux002|dxxpdo[15]~regout ),
	.dxxpdo_16(\ux002|dxxpdo[16]~regout ),
	.dxxpdo_17(\ux002|dxxpdo[17]~regout ),
	.dxxpdo_18(\ux002|dxxpdo[18]~regout ),
	.dxxpdo_19(\ux002|dxxpdo[19]~regout ),
	.dxxpdo_20(\ux002|dxxpdo[20]~regout ),
	.dxxpdo_5(\ux002|dxxpdo[5]~regout ),
	.dxxpdo_6(\ux002|dxxpdo[6]~regout ),
	.dxxpdo_7(\ux002|dxxpdo[7]~regout ),
	.dxxpdo_8(\ux002|dxxpdo[8]~regout ),
	.dxxpdo_9(\ux002|dxxpdo[9]~regout ),
	.dxxpdo_10(\ux002|dxxpdo[10]~regout ),
	.dxxpdo_11(\ux002|dxxpdo[11]~regout ),
	.dxxpdo_12(\ux002|dxxpdo[12]~regout ),
	.data_tmp_11(\blk0|data_tmp[11]~105_combout ),
	.clk(clk),
	.reset_n(reset_n));

NCO1_asj_nco_as_m_dp_cen ux0220(
	.q_a_0(\ux0220|altsyncram_component|auto_generated|q_a[0] ),
	.q_b_0(\ux0220|altsyncram_component|auto_generated|q_b[0] ),
	.q_a_1(\ux0220|altsyncram_component|auto_generated|q_a[1] ),
	.q_b_1(\ux0220|altsyncram_component|auto_generated|q_b[1] ),
	.q_a_2(\ux0220|altsyncram_component|auto_generated|q_a[2] ),
	.q_b_2(\ux0220|altsyncram_component|auto_generated|q_b[2] ),
	.q_a_3(\ux0220|altsyncram_component|auto_generated|q_a[3] ),
	.q_b_3(\ux0220|altsyncram_component|auto_generated|q_b[3] ),
	.q_a_4(\ux0220|altsyncram_component|auto_generated|q_a[4] ),
	.q_b_4(\ux0220|altsyncram_component|auto_generated|q_b[4] ),
	.q_a_5(\ux0220|altsyncram_component|auto_generated|q_a[5] ),
	.q_b_5(\ux0220|altsyncram_component|auto_generated|q_b[5] ),
	.q_a_6(\ux0220|altsyncram_component|auto_generated|q_a[6] ),
	.q_b_6(\ux0220|altsyncram_component|auto_generated|q_b[6] ),
	.q_a_7(\ux0220|altsyncram_component|auto_generated|q_a[7] ),
	.q_b_7(\ux0220|altsyncram_component|auto_generated|q_b[7] ),
	.q_a_8(\ux0220|altsyncram_component|auto_generated|q_a[8] ),
	.q_b_8(\ux0220|altsyncram_component|auto_generated|q_b[8] ),
	.q_a_9(\ux0220|altsyncram_component|auto_generated|q_a[9] ),
	.q_b_9(\ux0220|altsyncram_component|auto_generated|q_b[9] ),
	.q_a_10(\ux0220|altsyncram_component|auto_generated|q_a[10] ),
	.q_b_10(\ux0220|altsyncram_component|auto_generated|q_b[10] ),
	.q_a_11(\ux0220|altsyncram_component|auto_generated|q_a[11] ),
	.q_b_11(\ux0220|altsyncram_component|auto_generated|q_b[11] ),
	.q_a_12(\ux0220|altsyncram_component|auto_generated|q_a[12] ),
	.q_b_12(\ux0220|altsyncram_component|auto_generated|q_b[12] ),
	.q_a_13(\ux0220|altsyncram_component|auto_generated|q_a[13] ),
	.q_b_13(\ux0220|altsyncram_component|auto_generated|q_b[13] ),
	.rom_add_cc_temp_0(\ux008|rom_add_cc_temp[0]~regout ),
	.rom_add_cc_temp_1(\ux008|rom_add_cc_temp[1]~regout ),
	.rom_add_cc_temp_2(\ux008|rom_add_cc_temp[2]~regout ),
	.rom_add_cc_temp_3(\ux008|rom_add_cc_temp[3]~regout ),
	.rom_add_cc_temp_4(\ux008|rom_add_cc_temp[4]~regout ),
	.rom_add_cc_temp_5(\ux008|rom_add_cc_temp[5]~regout ),
	.rom_add_cs_6(\ux008|rom_add_cs[6]~regout ),
	.rom_add_cs_7(\ux008|rom_add_cs[7]~regout ),
	.rom_add_cc_temp_6(\ux008|rom_add_cc_temp[6]~regout ),
	.rom_add_cc_temp_7(\ux008|rom_add_cc_temp[7]~regout ),
	.GND_port(GND_port),
	.clk(clk),
	.clken(clken));

NCO1_asj_nco_as_m_cen ux0122(
	.q_a_0(\ux0122|altsyncram_component0|auto_generated|q_a[0] ),
	.q_a_1(\ux0122|altsyncram_component0|auto_generated|q_a[1] ),
	.q_a_2(\ux0122|altsyncram_component0|auto_generated|q_a[2] ),
	.q_a_3(\ux0122|altsyncram_component0|auto_generated|q_a[3] ),
	.q_a_4(\ux0122|altsyncram_component0|auto_generated|q_a[4] ),
	.q_a_5(\ux0122|altsyncram_component0|auto_generated|q_a[5] ),
	.q_a_6(\ux0122|altsyncram_component0|auto_generated|q_a[6] ),
	.q_a_7(\ux0122|altsyncram_component0|auto_generated|q_a[7] ),
	.q_a_8(\ux0122|altsyncram_component0|auto_generated|q_a[8] ),
	.q_a_9(\ux0122|altsyncram_component0|auto_generated|q_a[9] ),
	.q_a_10(\ux0122|altsyncram_component0|auto_generated|q_a[10] ),
	.q_a_11(\ux0122|altsyncram_component0|auto_generated|q_a[11] ),
	.q_a_12(\ux0122|altsyncram_component0|auto_generated|q_a[12] ),
	.q_a_13(\ux0122|altsyncram_component0|auto_generated|q_a[13] ),
	.rom_add_f_0(\ux008|rom_add_f[0]~regout ),
	.rom_add_f_1(\ux008|rom_add_f[1]~regout ),
	.rom_add_f_2(\ux008|rom_add_f[2]~regout ),
	.rom_add_f_3(\ux008|rom_add_f[3]~regout ),
	.rom_add_f_4(\ux008|rom_add_f[4]~regout ),
	.rom_add_f_5(\ux008|rom_add_f[5]~regout ),
	.rom_add_f_6(\ux008|rom_add_f[6]~regout ),
	.rom_add_f_7(\ux008|rom_add_f[7]~regout ),
	.clk(clk),
	.clken(clken));

NCO1_asj_nco_as_m_cen_1 ux0123(
	.q_a_0(\ux0123|altsyncram_component0|auto_generated|q_a[0] ),
	.q_a_1(\ux0123|altsyncram_component0|auto_generated|q_a[1] ),
	.q_a_2(\ux0123|altsyncram_component0|auto_generated|q_a[2] ),
	.q_a_3(\ux0123|altsyncram_component0|auto_generated|q_a[3] ),
	.q_a_4(\ux0123|altsyncram_component0|auto_generated|q_a[4] ),
	.q_a_5(\ux0123|altsyncram_component0|auto_generated|q_a[5] ),
	.q_a_6(\ux0123|altsyncram_component0|auto_generated|q_a[6] ),
	.q_a_7(\ux0123|altsyncram_component0|auto_generated|q_a[7] ),
	.q_a_8(\ux0123|altsyncram_component0|auto_generated|q_a[8] ),
	.q_a_9(\ux0123|altsyncram_component0|auto_generated|q_a[9] ),
	.q_a_10(\ux0123|altsyncram_component0|auto_generated|q_a[10] ),
	.q_a_11(\ux0123|altsyncram_component0|auto_generated|q_a[11] ),
	.q_a_12(\ux0123|altsyncram_component0|auto_generated|q_a[12] ),
	.q_a_13(\ux0123|altsyncram_component0|auto_generated|q_a[13] ),
	.rom_add_f_0(\ux008|rom_add_f[0]~regout ),
	.rom_add_f_1(\ux008|rom_add_f[1]~regout ),
	.rom_add_f_2(\ux008|rom_add_f[2]~regout ),
	.rom_add_f_3(\ux008|rom_add_f[3]~regout ),
	.rom_add_f_4(\ux008|rom_add_f[4]~regout ),
	.rom_add_f_5(\ux008|rom_add_f[5]~regout ),
	.rom_add_f_6(\ux008|rom_add_f[6]~regout ),
	.rom_add_f_7(\ux008|rom_add_f[7]~regout ),
	.clk(clk),
	.clken(clken));

NCO1_asj_nco_madx_cen m1(
	.result_13(\m1|ALTMULT_ADD_component|auto_generated|result[13] ),
	.result_14(\m1|ALTMULT_ADD_component|auto_generated|result[14] ),
	.result_15(\m1|ALTMULT_ADD_component|auto_generated|result[15] ),
	.result_16(\m1|ALTMULT_ADD_component|auto_generated|result[16] ),
	.result_17(\m1|ALTMULT_ADD_component|auto_generated|result[17] ),
	.result_18(\m1|ALTMULT_ADD_component|auto_generated|result[18] ),
	.result_19(\m1|ALTMULT_ADD_component|auto_generated|result[19] ),
	.result_20(\m1|ALTMULT_ADD_component|auto_generated|result[20] ),
	.result_21(\m1|ALTMULT_ADD_component|auto_generated|result[21] ),
	.result_22(\m1|ALTMULT_ADD_component|auto_generated|result[22] ),
	.result_23(\m1|ALTMULT_ADD_component|auto_generated|result[23] ),
	.result_24(\m1|ALTMULT_ADD_component|auto_generated|result[24] ),
	.result_25(\m1|ALTMULT_ADD_component|auto_generated|result[25] ),
	.result_26(\m1|ALTMULT_ADD_component|auto_generated|result[26] ),
	.result_27(\m1|ALTMULT_ADD_component|auto_generated|result[27] ),
	.q_a_0(\ux0220|altsyncram_component|auto_generated|q_a[0] ),
	.q_b_0(\ux0220|altsyncram_component|auto_generated|q_b[0] ),
	.q_a_1(\ux0220|altsyncram_component|auto_generated|q_a[1] ),
	.q_b_1(\ux0220|altsyncram_component|auto_generated|q_b[1] ),
	.q_a_2(\ux0220|altsyncram_component|auto_generated|q_a[2] ),
	.q_b_2(\ux0220|altsyncram_component|auto_generated|q_b[2] ),
	.q_a_3(\ux0220|altsyncram_component|auto_generated|q_a[3] ),
	.q_b_3(\ux0220|altsyncram_component|auto_generated|q_b[3] ),
	.q_a_4(\ux0220|altsyncram_component|auto_generated|q_a[4] ),
	.q_b_4(\ux0220|altsyncram_component|auto_generated|q_b[4] ),
	.q_a_5(\ux0220|altsyncram_component|auto_generated|q_a[5] ),
	.q_b_5(\ux0220|altsyncram_component|auto_generated|q_b[5] ),
	.q_a_6(\ux0220|altsyncram_component|auto_generated|q_a[6] ),
	.q_b_6(\ux0220|altsyncram_component|auto_generated|q_b[6] ),
	.q_a_7(\ux0220|altsyncram_component|auto_generated|q_a[7] ),
	.q_b_7(\ux0220|altsyncram_component|auto_generated|q_b[7] ),
	.q_a_8(\ux0220|altsyncram_component|auto_generated|q_a[8] ),
	.q_b_8(\ux0220|altsyncram_component|auto_generated|q_b[8] ),
	.q_a_9(\ux0220|altsyncram_component|auto_generated|q_a[9] ),
	.q_b_9(\ux0220|altsyncram_component|auto_generated|q_b[9] ),
	.q_a_10(\ux0220|altsyncram_component|auto_generated|q_a[10] ),
	.q_b_10(\ux0220|altsyncram_component|auto_generated|q_b[10] ),
	.q_a_11(\ux0220|altsyncram_component|auto_generated|q_a[11] ),
	.q_b_11(\ux0220|altsyncram_component|auto_generated|q_b[11] ),
	.q_a_12(\ux0220|altsyncram_component|auto_generated|q_a[12] ),
	.q_b_12(\ux0220|altsyncram_component|auto_generated|q_b[12] ),
	.q_a_13(\ux0220|altsyncram_component|auto_generated|q_a[13] ),
	.q_b_13(\ux0220|altsyncram_component|auto_generated|q_b[13] ),
	.q_a_01(\ux0123|altsyncram_component0|auto_generated|q_a[0] ),
	.q_a_14(\ux0123|altsyncram_component0|auto_generated|q_a[1] ),
	.q_a_21(\ux0123|altsyncram_component0|auto_generated|q_a[2] ),
	.q_a_31(\ux0123|altsyncram_component0|auto_generated|q_a[3] ),
	.q_a_41(\ux0123|altsyncram_component0|auto_generated|q_a[4] ),
	.q_a_51(\ux0123|altsyncram_component0|auto_generated|q_a[5] ),
	.q_a_61(\ux0123|altsyncram_component0|auto_generated|q_a[6] ),
	.q_a_71(\ux0123|altsyncram_component0|auto_generated|q_a[7] ),
	.q_a_81(\ux0123|altsyncram_component0|auto_generated|q_a[8] ),
	.q_a_91(\ux0123|altsyncram_component0|auto_generated|q_a[9] ),
	.q_a_101(\ux0123|altsyncram_component0|auto_generated|q_a[10] ),
	.q_a_111(\ux0123|altsyncram_component0|auto_generated|q_a[11] ),
	.q_a_121(\ux0123|altsyncram_component0|auto_generated|q_a[12] ),
	.q_a_131(\ux0123|altsyncram_component0|auto_generated|q_a[13] ),
	.q_a_02(\ux0122|altsyncram_component0|auto_generated|q_a[0] ),
	.q_a_15(\ux0122|altsyncram_component0|auto_generated|q_a[1] ),
	.q_a_22(\ux0122|altsyncram_component0|auto_generated|q_a[2] ),
	.q_a_32(\ux0122|altsyncram_component0|auto_generated|q_a[3] ),
	.q_a_42(\ux0122|altsyncram_component0|auto_generated|q_a[4] ),
	.q_a_52(\ux0122|altsyncram_component0|auto_generated|q_a[5] ),
	.q_a_62(\ux0122|altsyncram_component0|auto_generated|q_a[6] ),
	.q_a_72(\ux0122|altsyncram_component0|auto_generated|q_a[7] ),
	.q_a_82(\ux0122|altsyncram_component0|auto_generated|q_a[8] ),
	.q_a_92(\ux0122|altsyncram_component0|auto_generated|q_a[9] ),
	.q_a_102(\ux0122|altsyncram_component0|auto_generated|q_a[10] ),
	.q_a_112(\ux0122|altsyncram_component0|auto_generated|q_a[11] ),
	.q_a_122(\ux0122|altsyncram_component0|auto_generated|q_a[12] ),
	.q_a_132(\ux0122|altsyncram_component0|auto_generated|q_a[13] ),
	.clk(clk),
	.clken(clken));

NCO1_asj_nco_mady_cen m0(
	.result_13(\m0|ALTMULT_ADD_component|auto_generated|result[13] ),
	.result_14(\m0|ALTMULT_ADD_component|auto_generated|result[14] ),
	.result_15(\m0|ALTMULT_ADD_component|auto_generated|result[15] ),
	.result_16(\m0|ALTMULT_ADD_component|auto_generated|result[16] ),
	.result_17(\m0|ALTMULT_ADD_component|auto_generated|result[17] ),
	.result_18(\m0|ALTMULT_ADD_component|auto_generated|result[18] ),
	.result_19(\m0|ALTMULT_ADD_component|auto_generated|result[19] ),
	.result_20(\m0|ALTMULT_ADD_component|auto_generated|result[20] ),
	.result_21(\m0|ALTMULT_ADD_component|auto_generated|result[21] ),
	.result_22(\m0|ALTMULT_ADD_component|auto_generated|result[22] ),
	.result_23(\m0|ALTMULT_ADD_component|auto_generated|result[23] ),
	.result_24(\m0|ALTMULT_ADD_component|auto_generated|result[24] ),
	.result_25(\m0|ALTMULT_ADD_component|auto_generated|result[25] ),
	.result_26(\m0|ALTMULT_ADD_component|auto_generated|result[26] ),
	.result_27(\m0|ALTMULT_ADD_component|auto_generated|result[27] ),
	.q_a_0(\ux0220|altsyncram_component|auto_generated|q_a[0] ),
	.q_b_0(\ux0220|altsyncram_component|auto_generated|q_b[0] ),
	.q_a_1(\ux0220|altsyncram_component|auto_generated|q_a[1] ),
	.q_b_1(\ux0220|altsyncram_component|auto_generated|q_b[1] ),
	.q_a_2(\ux0220|altsyncram_component|auto_generated|q_a[2] ),
	.q_b_2(\ux0220|altsyncram_component|auto_generated|q_b[2] ),
	.q_a_3(\ux0220|altsyncram_component|auto_generated|q_a[3] ),
	.q_b_3(\ux0220|altsyncram_component|auto_generated|q_b[3] ),
	.q_a_4(\ux0220|altsyncram_component|auto_generated|q_a[4] ),
	.q_b_4(\ux0220|altsyncram_component|auto_generated|q_b[4] ),
	.q_a_5(\ux0220|altsyncram_component|auto_generated|q_a[5] ),
	.q_b_5(\ux0220|altsyncram_component|auto_generated|q_b[5] ),
	.q_a_6(\ux0220|altsyncram_component|auto_generated|q_a[6] ),
	.q_b_6(\ux0220|altsyncram_component|auto_generated|q_b[6] ),
	.q_a_7(\ux0220|altsyncram_component|auto_generated|q_a[7] ),
	.q_b_7(\ux0220|altsyncram_component|auto_generated|q_b[7] ),
	.q_a_8(\ux0220|altsyncram_component|auto_generated|q_a[8] ),
	.q_b_8(\ux0220|altsyncram_component|auto_generated|q_b[8] ),
	.q_a_9(\ux0220|altsyncram_component|auto_generated|q_a[9] ),
	.q_b_9(\ux0220|altsyncram_component|auto_generated|q_b[9] ),
	.q_a_10(\ux0220|altsyncram_component|auto_generated|q_a[10] ),
	.q_b_10(\ux0220|altsyncram_component|auto_generated|q_b[10] ),
	.q_a_11(\ux0220|altsyncram_component|auto_generated|q_a[11] ),
	.q_b_11(\ux0220|altsyncram_component|auto_generated|q_b[11] ),
	.q_a_12(\ux0220|altsyncram_component|auto_generated|q_a[12] ),
	.q_b_12(\ux0220|altsyncram_component|auto_generated|q_b[12] ),
	.q_a_13(\ux0220|altsyncram_component|auto_generated|q_a[13] ),
	.q_b_13(\ux0220|altsyncram_component|auto_generated|q_b[13] ),
	.q_a_01(\ux0123|altsyncram_component0|auto_generated|q_a[0] ),
	.q_a_14(\ux0123|altsyncram_component0|auto_generated|q_a[1] ),
	.q_a_21(\ux0123|altsyncram_component0|auto_generated|q_a[2] ),
	.q_a_31(\ux0123|altsyncram_component0|auto_generated|q_a[3] ),
	.q_a_41(\ux0123|altsyncram_component0|auto_generated|q_a[4] ),
	.q_a_51(\ux0123|altsyncram_component0|auto_generated|q_a[5] ),
	.q_a_61(\ux0123|altsyncram_component0|auto_generated|q_a[6] ),
	.q_a_71(\ux0123|altsyncram_component0|auto_generated|q_a[7] ),
	.q_a_81(\ux0123|altsyncram_component0|auto_generated|q_a[8] ),
	.q_a_91(\ux0123|altsyncram_component0|auto_generated|q_a[9] ),
	.q_a_101(\ux0123|altsyncram_component0|auto_generated|q_a[10] ),
	.q_a_111(\ux0123|altsyncram_component0|auto_generated|q_a[11] ),
	.q_a_121(\ux0123|altsyncram_component0|auto_generated|q_a[12] ),
	.q_a_131(\ux0123|altsyncram_component0|auto_generated|q_a[13] ),
	.q_a_02(\ux0122|altsyncram_component0|auto_generated|q_a[0] ),
	.q_a_15(\ux0122|altsyncram_component0|auto_generated|q_a[1] ),
	.q_a_22(\ux0122|altsyncram_component0|auto_generated|q_a[2] ),
	.q_a_32(\ux0122|altsyncram_component0|auto_generated|q_a[3] ),
	.q_a_42(\ux0122|altsyncram_component0|auto_generated|q_a[4] ),
	.q_a_52(\ux0122|altsyncram_component0|auto_generated|q_a[5] ),
	.q_a_62(\ux0122|altsyncram_component0|auto_generated|q_a[6] ),
	.q_a_72(\ux0122|altsyncram_component0|auto_generated|q_a[7] ),
	.q_a_82(\ux0122|altsyncram_component0|auto_generated|q_a[8] ),
	.q_a_92(\ux0122|altsyncram_component0|auto_generated|q_a[9] ),
	.q_a_102(\ux0122|altsyncram_component0|auto_generated|q_a[10] ),
	.q_a_112(\ux0122|altsyncram_component0|auto_generated|q_a[11] ),
	.q_a_122(\ux0122|altsyncram_component0|auto_generated|q_a[12] ),
	.q_a_132(\ux0122|altsyncram_component0|auto_generated|q_a[13] ),
	.clk(clk),
	.clken(clken));

NCO1_asj_nco_mob_w blk0(
	.result_13(\m0|ALTMULT_ADD_component|auto_generated|result[13] ),
	.result_14(\m0|ALTMULT_ADD_component|auto_generated|result[14] ),
	.result_15(\m0|ALTMULT_ADD_component|auto_generated|result[15] ),
	.result_16(\m0|ALTMULT_ADD_component|auto_generated|result[16] ),
	.result_17(\m0|ALTMULT_ADD_component|auto_generated|result[17] ),
	.result_18(\m0|ALTMULT_ADD_component|auto_generated|result[18] ),
	.result_19(\m0|ALTMULT_ADD_component|auto_generated|result[19] ),
	.result_20(\m0|ALTMULT_ADD_component|auto_generated|result[20] ),
	.result_21(\m0|ALTMULT_ADD_component|auto_generated|result[21] ),
	.result_22(\m0|ALTMULT_ADD_component|auto_generated|result[22] ),
	.result_23(\m0|ALTMULT_ADD_component|auto_generated|result[23] ),
	.result_24(\m0|ALTMULT_ADD_component|auto_generated|result[24] ),
	.result_25(\m0|ALTMULT_ADD_component|auto_generated|result[25] ),
	.result_26(\m0|ALTMULT_ADD_component|auto_generated|result[26] ),
	.result_27(\m0|ALTMULT_ADD_component|auto_generated|result[27] ),
	.pipeline_dffe_0(pipeline_dffe_0),
	.pipeline_dffe_1(pipeline_dffe_1),
	.pipeline_dffe_2(pipeline_dffe_2),
	.pipeline_dffe_3(pipeline_dffe_3),
	.pipeline_dffe_4(pipeline_dffe_4),
	.pipeline_dffe_5(pipeline_dffe_5),
	.pipeline_dffe_6(pipeline_dffe_6),
	.pipeline_dffe_7(pipeline_dffe_7),
	.pipeline_dffe_8(pipeline_dffe_8),
	.pipeline_dffe_9(pipeline_dffe_9),
	.pipeline_dffe_10(pipeline_dffe_10),
	.pipeline_dffe_11(pipeline_dffe_11),
	.pipeline_dffe_12(pipeline_dffe_12),
	.pipeline_dffe_13(pipeline_dffe_13),
	.data_tmp_11(\blk0|data_tmp[11]~105_combout ),
	.clk(clk),
	.reset_n(reset_n),
	.clken(clken));

NCO1_asj_nco_mob_w_1 blk1(
	.result_13(\m1|ALTMULT_ADD_component|auto_generated|result[13] ),
	.result_14(\m1|ALTMULT_ADD_component|auto_generated|result[14] ),
	.result_15(\m1|ALTMULT_ADD_component|auto_generated|result[15] ),
	.result_16(\m1|ALTMULT_ADD_component|auto_generated|result[16] ),
	.result_17(\m1|ALTMULT_ADD_component|auto_generated|result[17] ),
	.result_18(\m1|ALTMULT_ADD_component|auto_generated|result[18] ),
	.result_19(\m1|ALTMULT_ADD_component|auto_generated|result[19] ),
	.result_20(\m1|ALTMULT_ADD_component|auto_generated|result[20] ),
	.result_21(\m1|ALTMULT_ADD_component|auto_generated|result[21] ),
	.result_22(\m1|ALTMULT_ADD_component|auto_generated|result[22] ),
	.result_23(\m1|ALTMULT_ADD_component|auto_generated|result[23] ),
	.result_24(\m1|ALTMULT_ADD_component|auto_generated|result[24] ),
	.result_25(\m1|ALTMULT_ADD_component|auto_generated|result[25] ),
	.result_26(\m1|ALTMULT_ADD_component|auto_generated|result[26] ),
	.result_27(\m1|ALTMULT_ADD_component|auto_generated|result[27] ),
	.pipeline_dffe_0(pipeline_dffe_01),
	.pipeline_dffe_1(pipeline_dffe_14),
	.pipeline_dffe_2(pipeline_dffe_21),
	.pipeline_dffe_3(pipeline_dffe_31),
	.pipeline_dffe_4(pipeline_dffe_41),
	.pipeline_dffe_5(pipeline_dffe_51),
	.pipeline_dffe_6(pipeline_dffe_61),
	.pipeline_dffe_7(pipeline_dffe_71),
	.pipeline_dffe_8(pipeline_dffe_81),
	.pipeline_dffe_9(pipeline_dffe_91),
	.pipeline_dffe_10(pipeline_dffe_101),
	.pipeline_dffe_11(pipeline_dffe_111),
	.pipeline_dffe_12(pipeline_dffe_121),
	.pipeline_dffe_13(pipeline_dffe_131),
	.data_tmp_11(\blk0|data_tmp[11]~105_combout ),
	.clk(clk),
	.reset_n(reset_n),
	.clken(clken));

NCO1_asj_nco_isdr ux710isdr(
	.data_ready1(data_ready),
	.clk(clk),
	.reset_n(reset_n),
	.clken(clken));

endmodule

module NCO1_asj_altqmcpipe (
	data_tmp_11,
	pipeline_dffe_16,
	pipeline_dffe_15,
	pipeline_dffe_14,
	pipeline_dffe_13,
	pipeline_dffe_12,
	pipeline_dffe_11,
	pipeline_dffe_10,
	pipeline_dffe_9,
	pipeline_dffe_8,
	pipeline_dffe_7,
	pipeline_dffe_6,
	pipeline_dffe_5,
	pipeline_dffe_4,
	pipeline_dffe_3,
	pipeline_dffe_17,
	pipeline_dffe_18,
	pipeline_dffe_19,
	pipeline_dffe_20,
	pipeline_dffe_21,
	pipeline_dffe_22,
	pipeline_dffe_23,
	clk,
	reset_n,
	clken,
	phi_inc_i_16,
	phi_inc_i_15,
	phi_inc_i_14,
	phi_inc_i_13,
	phi_inc_i_12,
	phi_inc_i_11,
	phi_inc_i_10,
	phi_inc_i_9,
	phi_inc_i_8,
	phi_inc_i_7,
	phi_inc_i_6,
	phi_inc_i_5,
	phi_inc_i_4,
	phi_inc_i_3,
	phi_inc_i_2,
	phi_inc_i_1,
	phi_inc_i_0,
	phi_inc_i_17,
	phi_inc_i_18,
	phi_inc_i_19,
	phi_inc_i_20,
	phi_inc_i_21,
	phi_inc_i_22,
	phi_inc_i_23)/* synthesis synthesis_greybox=1 */;
input 	data_tmp_11;
output 	pipeline_dffe_16;
output 	pipeline_dffe_15;
output 	pipeline_dffe_14;
output 	pipeline_dffe_13;
output 	pipeline_dffe_12;
output 	pipeline_dffe_11;
output 	pipeline_dffe_10;
output 	pipeline_dffe_9;
output 	pipeline_dffe_8;
output 	pipeline_dffe_7;
output 	pipeline_dffe_6;
output 	pipeline_dffe_5;
output 	pipeline_dffe_4;
output 	pipeline_dffe_3;
output 	pipeline_dffe_17;
output 	pipeline_dffe_18;
output 	pipeline_dffe_19;
output 	pipeline_dffe_20;
output 	pipeline_dffe_21;
output 	pipeline_dffe_22;
output 	pipeline_dffe_23;
input 	clk;
input 	reset_n;
input 	clken;
input 	phi_inc_i_16;
input 	phi_inc_i_15;
input 	phi_inc_i_14;
input 	phi_inc_i_13;
input 	phi_inc_i_12;
input 	phi_inc_i_11;
input 	phi_inc_i_10;
input 	phi_inc_i_9;
input 	phi_inc_i_8;
input 	phi_inc_i_7;
input 	phi_inc_i_6;
input 	phi_inc_i_5;
input 	phi_inc_i_4;
input 	phi_inc_i_3;
input 	phi_inc_i_2;
input 	phi_inc_i_1;
input 	phi_inc_i_0;
input 	phi_inc_i_17;
input 	phi_inc_i_18;
input 	phi_inc_i_19;
input 	phi_inc_i_20;
input 	phi_inc_i_21;
input 	phi_inc_i_22;
input 	phi_inc_i_23;

wire gnd;
wire vcc;

assign gnd = 1'b0;
assign vcc = 1'b1;

wire \phi_int_arr_reg[16]~regout ;
wire \phi_int_arr_reg[15]~regout ;
wire \phi_int_arr_reg[14]~regout ;
wire \phi_int_arr_reg[13]~regout ;
wire \phi_int_arr_reg[12]~regout ;
wire \phi_int_arr_reg[11]~regout ;
wire \phi_int_arr_reg[10]~regout ;
wire \phi_int_arr_reg[9]~regout ;
wire \phi_int_arr_reg[8]~regout ;
wire \phi_int_arr_reg[7]~regout ;
wire \phi_int_arr_reg[6]~regout ;
wire \phi_int_arr_reg[5]~regout ;
wire \phi_int_arr_reg[4]~regout ;
wire \phi_int_arr_reg[3]~regout ;
wire \phi_int_arr_reg[2]~regout ;
wire \phi_int_arr_reg[1]~regout ;
wire \phi_int_arr_reg[0]~regout ;
wire \phi_int_arr_reg[17]~regout ;
wire \phi_int_arr_reg[18]~regout ;
wire \phi_int_arr_reg[19]~regout ;
wire \phi_int_arr_reg[20]~regout ;
wire \phi_int_arr_reg[21]~regout ;
wire \phi_int_arr_reg[22]~regout ;
wire \phi_int_arr_reg[23]~regout ;


NCO1_lpm_add_sub_1 acc(
	.phi_int_arr_reg_16(\phi_int_arr_reg[16]~regout ),
	.phi_int_arr_reg_15(\phi_int_arr_reg[15]~regout ),
	.phi_int_arr_reg_14(\phi_int_arr_reg[14]~regout ),
	.phi_int_arr_reg_13(\phi_int_arr_reg[13]~regout ),
	.phi_int_arr_reg_12(\phi_int_arr_reg[12]~regout ),
	.phi_int_arr_reg_11(\phi_int_arr_reg[11]~regout ),
	.phi_int_arr_reg_10(\phi_int_arr_reg[10]~regout ),
	.phi_int_arr_reg_9(\phi_int_arr_reg[9]~regout ),
	.phi_int_arr_reg_8(\phi_int_arr_reg[8]~regout ),
	.phi_int_arr_reg_7(\phi_int_arr_reg[7]~regout ),
	.phi_int_arr_reg_6(\phi_int_arr_reg[6]~regout ),
	.phi_int_arr_reg_5(\phi_int_arr_reg[5]~regout ),
	.phi_int_arr_reg_4(\phi_int_arr_reg[4]~regout ),
	.phi_int_arr_reg_3(\phi_int_arr_reg[3]~regout ),
	.phi_int_arr_reg_2(\phi_int_arr_reg[2]~regout ),
	.phi_int_arr_reg_1(\phi_int_arr_reg[1]~regout ),
	.phi_int_arr_reg_0(\phi_int_arr_reg[0]~regout ),
	.phi_int_arr_reg_17(\phi_int_arr_reg[17]~regout ),
	.phi_int_arr_reg_18(\phi_int_arr_reg[18]~regout ),
	.phi_int_arr_reg_19(\phi_int_arr_reg[19]~regout ),
	.phi_int_arr_reg_20(\phi_int_arr_reg[20]~regout ),
	.phi_int_arr_reg_21(\phi_int_arr_reg[21]~regout ),
	.phi_int_arr_reg_22(\phi_int_arr_reg[22]~regout ),
	.phi_int_arr_reg_23(\phi_int_arr_reg[23]~regout ),
	.pipeline_dffe_16(pipeline_dffe_16),
	.pipeline_dffe_15(pipeline_dffe_15),
	.pipeline_dffe_14(pipeline_dffe_14),
	.pipeline_dffe_13(pipeline_dffe_13),
	.pipeline_dffe_12(pipeline_dffe_12),
	.pipeline_dffe_11(pipeline_dffe_11),
	.pipeline_dffe_10(pipeline_dffe_10),
	.pipeline_dffe_9(pipeline_dffe_9),
	.pipeline_dffe_8(pipeline_dffe_8),
	.pipeline_dffe_7(pipeline_dffe_7),
	.pipeline_dffe_6(pipeline_dffe_6),
	.pipeline_dffe_5(pipeline_dffe_5),
	.pipeline_dffe_4(pipeline_dffe_4),
	.pipeline_dffe_3(pipeline_dffe_3),
	.pipeline_dffe_17(pipeline_dffe_17),
	.pipeline_dffe_18(pipeline_dffe_18),
	.pipeline_dffe_19(pipeline_dffe_19),
	.pipeline_dffe_20(pipeline_dffe_20),
	.pipeline_dffe_21(pipeline_dffe_21),
	.pipeline_dffe_22(pipeline_dffe_22),
	.pipeline_dffe_23(pipeline_dffe_23),
	.clock(clk),
	.reset_n(reset_n),
	.clken(clken));

stratixii_lcell_ff \phi_int_arr_reg[16] (
	.clk(clk),
	.datain(phi_inc_i_16),
	.adatasdata(gnd),
	.aclr(gnd),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_tmp_11),
	.regout(\phi_int_arr_reg[16]~regout ));

stratixii_lcell_ff \phi_int_arr_reg[15] (
	.clk(clk),
	.datain(phi_inc_i_15),
	.adatasdata(gnd),
	.aclr(gnd),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_tmp_11),
	.regout(\phi_int_arr_reg[15]~regout ));

stratixii_lcell_ff \phi_int_arr_reg[14] (
	.clk(clk),
	.datain(phi_inc_i_14),
	.adatasdata(gnd),
	.aclr(gnd),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_tmp_11),
	.regout(\phi_int_arr_reg[14]~regout ));

stratixii_lcell_ff \phi_int_arr_reg[13] (
	.clk(clk),
	.datain(phi_inc_i_13),
	.adatasdata(gnd),
	.aclr(gnd),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_tmp_11),
	.regout(\phi_int_arr_reg[13]~regout ));

stratixii_lcell_ff \phi_int_arr_reg[12] (
	.clk(clk),
	.datain(phi_inc_i_12),
	.adatasdata(gnd),
	.aclr(gnd),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_tmp_11),
	.regout(\phi_int_arr_reg[12]~regout ));

stratixii_lcell_ff \phi_int_arr_reg[11] (
	.clk(clk),
	.datain(phi_inc_i_11),
	.adatasdata(gnd),
	.aclr(gnd),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_tmp_11),
	.regout(\phi_int_arr_reg[11]~regout ));

stratixii_lcell_ff \phi_int_arr_reg[10] (
	.clk(clk),
	.datain(phi_inc_i_10),
	.adatasdata(gnd),
	.aclr(gnd),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_tmp_11),
	.regout(\phi_int_arr_reg[10]~regout ));

stratixii_lcell_ff \phi_int_arr_reg[9] (
	.clk(clk),
	.datain(phi_inc_i_9),
	.adatasdata(gnd),
	.aclr(gnd),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_tmp_11),
	.regout(\phi_int_arr_reg[9]~regout ));

stratixii_lcell_ff \phi_int_arr_reg[8] (
	.clk(clk),
	.datain(phi_inc_i_8),
	.adatasdata(gnd),
	.aclr(gnd),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_tmp_11),
	.regout(\phi_int_arr_reg[8]~regout ));

stratixii_lcell_ff \phi_int_arr_reg[7] (
	.clk(clk),
	.datain(phi_inc_i_7),
	.adatasdata(gnd),
	.aclr(gnd),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_tmp_11),
	.regout(\phi_int_arr_reg[7]~regout ));

stratixii_lcell_ff \phi_int_arr_reg[6] (
	.clk(clk),
	.datain(phi_inc_i_6),
	.adatasdata(gnd),
	.aclr(gnd),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_tmp_11),
	.regout(\phi_int_arr_reg[6]~regout ));

stratixii_lcell_ff \phi_int_arr_reg[5] (
	.clk(clk),
	.datain(phi_inc_i_5),
	.adatasdata(gnd),
	.aclr(gnd),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_tmp_11),
	.regout(\phi_int_arr_reg[5]~regout ));

stratixii_lcell_ff \phi_int_arr_reg[4] (
	.clk(clk),
	.datain(phi_inc_i_4),
	.adatasdata(gnd),
	.aclr(gnd),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_tmp_11),
	.regout(\phi_int_arr_reg[4]~regout ));

stratixii_lcell_ff \phi_int_arr_reg[3] (
	.clk(clk),
	.datain(phi_inc_i_3),
	.adatasdata(gnd),
	.aclr(gnd),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_tmp_11),
	.regout(\phi_int_arr_reg[3]~regout ));

stratixii_lcell_ff \phi_int_arr_reg[2] (
	.clk(clk),
	.datain(phi_inc_i_2),
	.adatasdata(gnd),
	.aclr(gnd),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_tmp_11),
	.regout(\phi_int_arr_reg[2]~regout ));

stratixii_lcell_ff \phi_int_arr_reg[1] (
	.clk(clk),
	.datain(phi_inc_i_1),
	.adatasdata(gnd),
	.aclr(gnd),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_tmp_11),
	.regout(\phi_int_arr_reg[1]~regout ));

stratixii_lcell_ff \phi_int_arr_reg[0] (
	.clk(clk),
	.datain(phi_inc_i_0),
	.adatasdata(gnd),
	.aclr(gnd),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_tmp_11),
	.regout(\phi_int_arr_reg[0]~regout ));

stratixii_lcell_ff \phi_int_arr_reg[17] (
	.clk(clk),
	.datain(phi_inc_i_17),
	.adatasdata(gnd),
	.aclr(gnd),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_tmp_11),
	.regout(\phi_int_arr_reg[17]~regout ));

stratixii_lcell_ff \phi_int_arr_reg[18] (
	.clk(clk),
	.datain(phi_inc_i_18),
	.adatasdata(gnd),
	.aclr(gnd),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_tmp_11),
	.regout(\phi_int_arr_reg[18]~regout ));

stratixii_lcell_ff \phi_int_arr_reg[19] (
	.clk(clk),
	.datain(phi_inc_i_19),
	.adatasdata(gnd),
	.aclr(gnd),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_tmp_11),
	.regout(\phi_int_arr_reg[19]~regout ));

stratixii_lcell_ff \phi_int_arr_reg[20] (
	.clk(clk),
	.datain(phi_inc_i_20),
	.adatasdata(gnd),
	.aclr(gnd),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_tmp_11),
	.regout(\phi_int_arr_reg[20]~regout ));

stratixii_lcell_ff \phi_int_arr_reg[21] (
	.clk(clk),
	.datain(phi_inc_i_21),
	.adatasdata(gnd),
	.aclr(gnd),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_tmp_11),
	.regout(\phi_int_arr_reg[21]~regout ));

stratixii_lcell_ff \phi_int_arr_reg[22] (
	.clk(clk),
	.datain(phi_inc_i_22),
	.adatasdata(gnd),
	.aclr(gnd),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_tmp_11),
	.regout(\phi_int_arr_reg[22]~regout ));

stratixii_lcell_ff \phi_int_arr_reg[23] (
	.clk(clk),
	.datain(phi_inc_i_23),
	.adatasdata(gnd),
	.aclr(gnd),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_tmp_11),
	.regout(\phi_int_arr_reg[23]~regout ));

endmodule

module NCO1_lpm_add_sub_1 (
	phi_int_arr_reg_16,
	phi_int_arr_reg_15,
	phi_int_arr_reg_14,
	phi_int_arr_reg_13,
	phi_int_arr_reg_12,
	phi_int_arr_reg_11,
	phi_int_arr_reg_10,
	phi_int_arr_reg_9,
	phi_int_arr_reg_8,
	phi_int_arr_reg_7,
	phi_int_arr_reg_6,
	phi_int_arr_reg_5,
	phi_int_arr_reg_4,
	phi_int_arr_reg_3,
	phi_int_arr_reg_2,
	phi_int_arr_reg_1,
	phi_int_arr_reg_0,
	phi_int_arr_reg_17,
	phi_int_arr_reg_18,
	phi_int_arr_reg_19,
	phi_int_arr_reg_20,
	phi_int_arr_reg_21,
	phi_int_arr_reg_22,
	phi_int_arr_reg_23,
	pipeline_dffe_16,
	pipeline_dffe_15,
	pipeline_dffe_14,
	pipeline_dffe_13,
	pipeline_dffe_12,
	pipeline_dffe_11,
	pipeline_dffe_10,
	pipeline_dffe_9,
	pipeline_dffe_8,
	pipeline_dffe_7,
	pipeline_dffe_6,
	pipeline_dffe_5,
	pipeline_dffe_4,
	pipeline_dffe_3,
	pipeline_dffe_17,
	pipeline_dffe_18,
	pipeline_dffe_19,
	pipeline_dffe_20,
	pipeline_dffe_21,
	pipeline_dffe_22,
	pipeline_dffe_23,
	clock,
	reset_n,
	clken)/* synthesis synthesis_greybox=1 */;
input 	phi_int_arr_reg_16;
input 	phi_int_arr_reg_15;
input 	phi_int_arr_reg_14;
input 	phi_int_arr_reg_13;
input 	phi_int_arr_reg_12;
input 	phi_int_arr_reg_11;
input 	phi_int_arr_reg_10;
input 	phi_int_arr_reg_9;
input 	phi_int_arr_reg_8;
input 	phi_int_arr_reg_7;
input 	phi_int_arr_reg_6;
input 	phi_int_arr_reg_5;
input 	phi_int_arr_reg_4;
input 	phi_int_arr_reg_3;
input 	phi_int_arr_reg_2;
input 	phi_int_arr_reg_1;
input 	phi_int_arr_reg_0;
input 	phi_int_arr_reg_17;
input 	phi_int_arr_reg_18;
input 	phi_int_arr_reg_19;
input 	phi_int_arr_reg_20;
input 	phi_int_arr_reg_21;
input 	phi_int_arr_reg_22;
input 	phi_int_arr_reg_23;
output 	pipeline_dffe_16;
output 	pipeline_dffe_15;
output 	pipeline_dffe_14;
output 	pipeline_dffe_13;
output 	pipeline_dffe_12;
output 	pipeline_dffe_11;
output 	pipeline_dffe_10;
output 	pipeline_dffe_9;
output 	pipeline_dffe_8;
output 	pipeline_dffe_7;
output 	pipeline_dffe_6;
output 	pipeline_dffe_5;
output 	pipeline_dffe_4;
output 	pipeline_dffe_3;
output 	pipeline_dffe_17;
output 	pipeline_dffe_18;
output 	pipeline_dffe_19;
output 	pipeline_dffe_20;
output 	pipeline_dffe_21;
output 	pipeline_dffe_22;
output 	pipeline_dffe_23;
input 	clock;
input 	reset_n;
input 	clken;

wire gnd;
wire vcc;

assign gnd = 1'b0;
assign vcc = 1'b1;



NCO1_add_sub_sbh auto_generated(
	.phi_int_arr_reg_16(phi_int_arr_reg_16),
	.phi_int_arr_reg_15(phi_int_arr_reg_15),
	.phi_int_arr_reg_14(phi_int_arr_reg_14),
	.phi_int_arr_reg_13(phi_int_arr_reg_13),
	.phi_int_arr_reg_12(phi_int_arr_reg_12),
	.phi_int_arr_reg_11(phi_int_arr_reg_11),
	.phi_int_arr_reg_10(phi_int_arr_reg_10),
	.phi_int_arr_reg_9(phi_int_arr_reg_9),
	.phi_int_arr_reg_8(phi_int_arr_reg_8),
	.phi_int_arr_reg_7(phi_int_arr_reg_7),
	.phi_int_arr_reg_6(phi_int_arr_reg_6),
	.phi_int_arr_reg_5(phi_int_arr_reg_5),
	.phi_int_arr_reg_4(phi_int_arr_reg_4),
	.phi_int_arr_reg_3(phi_int_arr_reg_3),
	.phi_int_arr_reg_2(phi_int_arr_reg_2),
	.phi_int_arr_reg_1(phi_int_arr_reg_1),
	.phi_int_arr_reg_0(phi_int_arr_reg_0),
	.phi_int_arr_reg_17(phi_int_arr_reg_17),
	.phi_int_arr_reg_18(phi_int_arr_reg_18),
	.phi_int_arr_reg_19(phi_int_arr_reg_19),
	.phi_int_arr_reg_20(phi_int_arr_reg_20),
	.phi_int_arr_reg_21(phi_int_arr_reg_21),
	.phi_int_arr_reg_22(phi_int_arr_reg_22),
	.phi_int_arr_reg_23(phi_int_arr_reg_23),
	.pipeline_dffe_16(pipeline_dffe_16),
	.pipeline_dffe_15(pipeline_dffe_15),
	.pipeline_dffe_14(pipeline_dffe_14),
	.pipeline_dffe_13(pipeline_dffe_13),
	.pipeline_dffe_12(pipeline_dffe_12),
	.pipeline_dffe_11(pipeline_dffe_11),
	.pipeline_dffe_10(pipeline_dffe_10),
	.pipeline_dffe_9(pipeline_dffe_9),
	.pipeline_dffe_8(pipeline_dffe_8),
	.pipeline_dffe_7(pipeline_dffe_7),
	.pipeline_dffe_6(pipeline_dffe_6),
	.pipeline_dffe_5(pipeline_dffe_5),
	.pipeline_dffe_4(pipeline_dffe_4),
	.pipeline_dffe_3(pipeline_dffe_3),
	.pipeline_dffe_17(pipeline_dffe_17),
	.pipeline_dffe_18(pipeline_dffe_18),
	.pipeline_dffe_19(pipeline_dffe_19),
	.pipeline_dffe_20(pipeline_dffe_20),
	.pipeline_dffe_21(pipeline_dffe_21),
	.pipeline_dffe_22(pipeline_dffe_22),
	.pipeline_dffe_23(pipeline_dffe_23),
	.clock(clock),
	.reset_n(reset_n),
	.clken(clken));

endmodule

module NCO1_add_sub_sbh (
	phi_int_arr_reg_16,
	phi_int_arr_reg_15,
	phi_int_arr_reg_14,
	phi_int_arr_reg_13,
	phi_int_arr_reg_12,
	phi_int_arr_reg_11,
	phi_int_arr_reg_10,
	phi_int_arr_reg_9,
	phi_int_arr_reg_8,
	phi_int_arr_reg_7,
	phi_int_arr_reg_6,
	phi_int_arr_reg_5,
	phi_int_arr_reg_4,
	phi_int_arr_reg_3,
	phi_int_arr_reg_2,
	phi_int_arr_reg_1,
	phi_int_arr_reg_0,
	phi_int_arr_reg_17,
	phi_int_arr_reg_18,
	phi_int_arr_reg_19,
	phi_int_arr_reg_20,
	phi_int_arr_reg_21,
	phi_int_arr_reg_22,
	phi_int_arr_reg_23,
	pipeline_dffe_16,
	pipeline_dffe_15,
	pipeline_dffe_14,
	pipeline_dffe_13,
	pipeline_dffe_12,
	pipeline_dffe_11,
	pipeline_dffe_10,
	pipeline_dffe_9,
	pipeline_dffe_8,
	pipeline_dffe_7,
	pipeline_dffe_6,
	pipeline_dffe_5,
	pipeline_dffe_4,
	pipeline_dffe_3,
	pipeline_dffe_17,
	pipeline_dffe_18,
	pipeline_dffe_19,
	pipeline_dffe_20,
	pipeline_dffe_21,
	pipeline_dffe_22,
	pipeline_dffe_23,
	clock,
	reset_n,
	clken)/* synthesis synthesis_greybox=1 */;
input 	phi_int_arr_reg_16;
input 	phi_int_arr_reg_15;
input 	phi_int_arr_reg_14;
input 	phi_int_arr_reg_13;
input 	phi_int_arr_reg_12;
input 	phi_int_arr_reg_11;
input 	phi_int_arr_reg_10;
input 	phi_int_arr_reg_9;
input 	phi_int_arr_reg_8;
input 	phi_int_arr_reg_7;
input 	phi_int_arr_reg_6;
input 	phi_int_arr_reg_5;
input 	phi_int_arr_reg_4;
input 	phi_int_arr_reg_3;
input 	phi_int_arr_reg_2;
input 	phi_int_arr_reg_1;
input 	phi_int_arr_reg_0;
input 	phi_int_arr_reg_17;
input 	phi_int_arr_reg_18;
input 	phi_int_arr_reg_19;
input 	phi_int_arr_reg_20;
input 	phi_int_arr_reg_21;
input 	phi_int_arr_reg_22;
input 	phi_int_arr_reg_23;
output 	pipeline_dffe_16;
output 	pipeline_dffe_15;
output 	pipeline_dffe_14;
output 	pipeline_dffe_13;
output 	pipeline_dffe_12;
output 	pipeline_dffe_11;
output 	pipeline_dffe_10;
output 	pipeline_dffe_9;
output 	pipeline_dffe_8;
output 	pipeline_dffe_7;
output 	pipeline_dffe_6;
output 	pipeline_dffe_5;
output 	pipeline_dffe_4;
output 	pipeline_dffe_3;
output 	pipeline_dffe_17;
output 	pipeline_dffe_18;
output 	pipeline_dffe_19;
output 	pipeline_dffe_20;
output 	pipeline_dffe_21;
output 	pipeline_dffe_22;
output 	pipeline_dffe_23;
input 	clock;
input 	reset_n;
input 	clken;

wire gnd;
wire vcc;

assign gnd = 1'b0;
assign vcc = 1'b1;

wire \op_1~337_sumout ;
wire \pipeline_dffe[0]~regout ;
wire \op_1~338 ;
wire \op_1~341_sumout ;
wire \pipeline_dffe[1]~regout ;
wire \op_1~342 ;
wire \op_1~345_sumout ;
wire \pipeline_dffe[2]~regout ;
wire \op_1~346 ;
wire \op_1~350 ;
wire \op_1~354 ;
wire \op_1~358 ;
wire \op_1~362 ;
wire \op_1~366 ;
wire \op_1~370 ;
wire \op_1~374 ;
wire \op_1~378 ;
wire \op_1~382 ;
wire \op_1~386 ;
wire \op_1~390 ;
wire \op_1~394 ;
wire \op_1~398 ;
wire \op_1~401_sumout ;
wire \op_1~397_sumout ;
wire \op_1~393_sumout ;
wire \op_1~389_sumout ;
wire \op_1~385_sumout ;
wire \op_1~381_sumout ;
wire \op_1~377_sumout ;
wire \op_1~373_sumout ;
wire \op_1~369_sumout ;
wire \op_1~365_sumout ;
wire \op_1~361_sumout ;
wire \op_1~357_sumout ;
wire \op_1~353_sumout ;
wire \op_1~349_sumout ;
wire \op_1~402 ;
wire \op_1~405_sumout ;
wire \op_1~406 ;
wire \op_1~409_sumout ;
wire \op_1~410 ;
wire \op_1~413_sumout ;
wire \op_1~414 ;
wire \op_1~417_sumout ;
wire \op_1~418 ;
wire \op_1~421_sumout ;
wire \op_1~422 ;
wire \op_1~425_sumout ;
wire \op_1~426 ;
wire \op_1~429_sumout ;


stratixii_lcell_ff \pipeline_dffe[16] (
	.clk(clock),
	.datain(\op_1~401_sumout ),
	.adatasdata(gnd),
	.aclr(!reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.regout(pipeline_dffe_16));

stratixii_lcell_ff \pipeline_dffe[15] (
	.clk(clock),
	.datain(\op_1~397_sumout ),
	.adatasdata(gnd),
	.aclr(!reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.regout(pipeline_dffe_15));

stratixii_lcell_ff \pipeline_dffe[14] (
	.clk(clock),
	.datain(\op_1~393_sumout ),
	.adatasdata(gnd),
	.aclr(!reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.regout(pipeline_dffe_14));

stratixii_lcell_ff \pipeline_dffe[13] (
	.clk(clock),
	.datain(\op_1~389_sumout ),
	.adatasdata(gnd),
	.aclr(!reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.regout(pipeline_dffe_13));

stratixii_lcell_ff \pipeline_dffe[12] (
	.clk(clock),
	.datain(\op_1~385_sumout ),
	.adatasdata(gnd),
	.aclr(!reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.regout(pipeline_dffe_12));

stratixii_lcell_ff \pipeline_dffe[11] (
	.clk(clock),
	.datain(\op_1~381_sumout ),
	.adatasdata(gnd),
	.aclr(!reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.regout(pipeline_dffe_11));

stratixii_lcell_ff \pipeline_dffe[10] (
	.clk(clock),
	.datain(\op_1~377_sumout ),
	.adatasdata(gnd),
	.aclr(!reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.regout(pipeline_dffe_10));

stratixii_lcell_ff \pipeline_dffe[9] (
	.clk(clock),
	.datain(\op_1~373_sumout ),
	.adatasdata(gnd),
	.aclr(!reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.regout(pipeline_dffe_9));

stratixii_lcell_ff \pipeline_dffe[8] (
	.clk(clock),
	.datain(\op_1~369_sumout ),
	.adatasdata(gnd),
	.aclr(!reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.regout(pipeline_dffe_8));

stratixii_lcell_ff \pipeline_dffe[7] (
	.clk(clock),
	.datain(\op_1~365_sumout ),
	.adatasdata(gnd),
	.aclr(!reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.regout(pipeline_dffe_7));

stratixii_lcell_ff \pipeline_dffe[6] (
	.clk(clock),
	.datain(\op_1~361_sumout ),
	.adatasdata(gnd),
	.aclr(!reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.regout(pipeline_dffe_6));

stratixii_lcell_ff \pipeline_dffe[5] (
	.clk(clock),
	.datain(\op_1~357_sumout ),
	.adatasdata(gnd),
	.aclr(!reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.regout(pipeline_dffe_5));

stratixii_lcell_ff \pipeline_dffe[4] (
	.clk(clock),
	.datain(\op_1~353_sumout ),
	.adatasdata(gnd),
	.aclr(!reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.regout(pipeline_dffe_4));

stratixii_lcell_ff \pipeline_dffe[3] (
	.clk(clock),
	.datain(\op_1~349_sumout ),
	.adatasdata(gnd),
	.aclr(!reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.regout(pipeline_dffe_3));

stratixii_lcell_ff \pipeline_dffe[17] (
	.clk(clock),
	.datain(\op_1~405_sumout ),
	.adatasdata(gnd),
	.aclr(!reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.regout(pipeline_dffe_17));

stratixii_lcell_ff \pipeline_dffe[18] (
	.clk(clock),
	.datain(\op_1~409_sumout ),
	.adatasdata(gnd),
	.aclr(!reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.regout(pipeline_dffe_18));

stratixii_lcell_ff \pipeline_dffe[19] (
	.clk(clock),
	.datain(\op_1~413_sumout ),
	.adatasdata(gnd),
	.aclr(!reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.regout(pipeline_dffe_19));

stratixii_lcell_ff \pipeline_dffe[20] (
	.clk(clock),
	.datain(\op_1~417_sumout ),
	.adatasdata(gnd),
	.aclr(!reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.regout(pipeline_dffe_20));

stratixii_lcell_ff \pipeline_dffe[21] (
	.clk(clock),
	.datain(\op_1~421_sumout ),
	.adatasdata(gnd),
	.aclr(!reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.regout(pipeline_dffe_21));

stratixii_lcell_ff \pipeline_dffe[22] (
	.clk(clock),
	.datain(\op_1~425_sumout ),
	.adatasdata(gnd),
	.aclr(!reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.regout(pipeline_dffe_22));

stratixii_lcell_ff \pipeline_dffe[23] (
	.clk(clock),
	.datain(\op_1~429_sumout ),
	.adatasdata(gnd),
	.aclr(!reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.regout(pipeline_dffe_23));

stratixii_lcell_comb \op_1~337 (
	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(!phi_int_arr_reg_0),
	.datae(vcc),
	.dataf(!\pipeline_dffe[0]~regout ),
	.datag(vcc),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(\op_1~337_sumout ),
	.cout(\op_1~338 ),
	.shareout());
defparam \op_1~337 .extended_lut = "off";
defparam \op_1~337 .lut_mask = 64'h000000000000ff00;
defparam \op_1~337 .shared_arith = "off";

stratixii_lcell_ff \pipeline_dffe[0] (
	.clk(clock),
	.datain(\op_1~337_sumout ),
	.adatasdata(gnd),
	.aclr(!reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.regout(\pipeline_dffe[0]~regout ));

stratixii_lcell_comb \op_1~341 (
	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(!phi_int_arr_reg_1),
	.datae(vcc),
	.dataf(!\pipeline_dffe[1]~regout ),
	.datag(vcc),
	.cin(\op_1~338 ),
	.sharein(gnd),
	.combout(),
	.sumout(\op_1~341_sumout ),
	.cout(\op_1~342 ),
	.shareout());
defparam \op_1~341 .extended_lut = "off";
defparam \op_1~341 .lut_mask = 64'h000000000000ff00;
defparam \op_1~341 .shared_arith = "off";

stratixii_lcell_ff \pipeline_dffe[1] (
	.clk(clock),
	.datain(\op_1~341_sumout ),
	.adatasdata(gnd),
	.aclr(!reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.regout(\pipeline_dffe[1]~regout ));

stratixii_lcell_comb \op_1~345 (
	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(!phi_int_arr_reg_2),
	.datae(vcc),
	.dataf(!\pipeline_dffe[2]~regout ),
	.datag(vcc),
	.cin(\op_1~342 ),
	.sharein(gnd),
	.combout(),
	.sumout(\op_1~345_sumout ),
	.cout(\op_1~346 ),
	.shareout());
defparam \op_1~345 .extended_lut = "off";
defparam \op_1~345 .lut_mask = 64'h000000000000ff00;
defparam \op_1~345 .shared_arith = "off";

stratixii_lcell_ff \pipeline_dffe[2] (
	.clk(clock),
	.datain(\op_1~345_sumout ),
	.adatasdata(gnd),
	.aclr(!reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.regout(\pipeline_dffe[2]~regout ));

stratixii_lcell_comb \op_1~349 (
	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(!phi_int_arr_reg_3),
	.datae(vcc),
	.dataf(!pipeline_dffe_3),
	.datag(vcc),
	.cin(\op_1~346 ),
	.sharein(gnd),
	.combout(),
	.sumout(\op_1~349_sumout ),
	.cout(\op_1~350 ),
	.shareout());
defparam \op_1~349 .extended_lut = "off";
defparam \op_1~349 .lut_mask = 64'h000000000000ff00;
defparam \op_1~349 .shared_arith = "off";

stratixii_lcell_comb \op_1~353 (
	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(!phi_int_arr_reg_4),
	.datae(vcc),
	.dataf(!pipeline_dffe_4),
	.datag(vcc),
	.cin(\op_1~350 ),
	.sharein(gnd),
	.combout(),
	.sumout(\op_1~353_sumout ),
	.cout(\op_1~354 ),
	.shareout());
defparam \op_1~353 .extended_lut = "off";
defparam \op_1~353 .lut_mask = 64'h000000000000ff00;
defparam \op_1~353 .shared_arith = "off";

stratixii_lcell_comb \op_1~357 (
	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(!phi_int_arr_reg_5),
	.datae(vcc),
	.dataf(!pipeline_dffe_5),
	.datag(vcc),
	.cin(\op_1~354 ),
	.sharein(gnd),
	.combout(),
	.sumout(\op_1~357_sumout ),
	.cout(\op_1~358 ),
	.shareout());
defparam \op_1~357 .extended_lut = "off";
defparam \op_1~357 .lut_mask = 64'h000000000000ff00;
defparam \op_1~357 .shared_arith = "off";

stratixii_lcell_comb \op_1~361 (
	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(!phi_int_arr_reg_6),
	.datae(vcc),
	.dataf(!pipeline_dffe_6),
	.datag(vcc),
	.cin(\op_1~358 ),
	.sharein(gnd),
	.combout(),
	.sumout(\op_1~361_sumout ),
	.cout(\op_1~362 ),
	.shareout());
defparam \op_1~361 .extended_lut = "off";
defparam \op_1~361 .lut_mask = 64'h000000000000ff00;
defparam \op_1~361 .shared_arith = "off";

stratixii_lcell_comb \op_1~365 (
	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(!phi_int_arr_reg_7),
	.datae(vcc),
	.dataf(!pipeline_dffe_7),
	.datag(vcc),
	.cin(\op_1~362 ),
	.sharein(gnd),
	.combout(),
	.sumout(\op_1~365_sumout ),
	.cout(\op_1~366 ),
	.shareout());
defparam \op_1~365 .extended_lut = "off";
defparam \op_1~365 .lut_mask = 64'h000000000000ff00;
defparam \op_1~365 .shared_arith = "off";

stratixii_lcell_comb \op_1~369 (
	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(!phi_int_arr_reg_8),
	.datae(vcc),
	.dataf(!pipeline_dffe_8),
	.datag(vcc),
	.cin(\op_1~366 ),
	.sharein(gnd),
	.combout(),
	.sumout(\op_1~369_sumout ),
	.cout(\op_1~370 ),
	.shareout());
defparam \op_1~369 .extended_lut = "off";
defparam \op_1~369 .lut_mask = 64'h000000000000ff00;
defparam \op_1~369 .shared_arith = "off";

stratixii_lcell_comb \op_1~373 (
	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(!phi_int_arr_reg_9),
	.datae(vcc),
	.dataf(!pipeline_dffe_9),
	.datag(vcc),
	.cin(\op_1~370 ),
	.sharein(gnd),
	.combout(),
	.sumout(\op_1~373_sumout ),
	.cout(\op_1~374 ),
	.shareout());
defparam \op_1~373 .extended_lut = "off";
defparam \op_1~373 .lut_mask = 64'h000000000000ff00;
defparam \op_1~373 .shared_arith = "off";

stratixii_lcell_comb \op_1~377 (
	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(!phi_int_arr_reg_10),
	.datae(vcc),
	.dataf(!pipeline_dffe_10),
	.datag(vcc),
	.cin(\op_1~374 ),
	.sharein(gnd),
	.combout(),
	.sumout(\op_1~377_sumout ),
	.cout(\op_1~378 ),
	.shareout());
defparam \op_1~377 .extended_lut = "off";
defparam \op_1~377 .lut_mask = 64'h000000000000ff00;
defparam \op_1~377 .shared_arith = "off";

stratixii_lcell_comb \op_1~381 (
	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(!phi_int_arr_reg_11),
	.datae(vcc),
	.dataf(!pipeline_dffe_11),
	.datag(vcc),
	.cin(\op_1~378 ),
	.sharein(gnd),
	.combout(),
	.sumout(\op_1~381_sumout ),
	.cout(\op_1~382 ),
	.shareout());
defparam \op_1~381 .extended_lut = "off";
defparam \op_1~381 .lut_mask = 64'h000000000000ff00;
defparam \op_1~381 .shared_arith = "off";

stratixii_lcell_comb \op_1~385 (
	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(!phi_int_arr_reg_12),
	.datae(vcc),
	.dataf(!pipeline_dffe_12),
	.datag(vcc),
	.cin(\op_1~382 ),
	.sharein(gnd),
	.combout(),
	.sumout(\op_1~385_sumout ),
	.cout(\op_1~386 ),
	.shareout());
defparam \op_1~385 .extended_lut = "off";
defparam \op_1~385 .lut_mask = 64'h000000000000ff00;
defparam \op_1~385 .shared_arith = "off";

stratixii_lcell_comb \op_1~389 (
	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(!phi_int_arr_reg_13),
	.datae(vcc),
	.dataf(!pipeline_dffe_13),
	.datag(vcc),
	.cin(\op_1~386 ),
	.sharein(gnd),
	.combout(),
	.sumout(\op_1~389_sumout ),
	.cout(\op_1~390 ),
	.shareout());
defparam \op_1~389 .extended_lut = "off";
defparam \op_1~389 .lut_mask = 64'h000000000000ff00;
defparam \op_1~389 .shared_arith = "off";

stratixii_lcell_comb \op_1~393 (
	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(!phi_int_arr_reg_14),
	.datae(vcc),
	.dataf(!pipeline_dffe_14),
	.datag(vcc),
	.cin(\op_1~390 ),
	.sharein(gnd),
	.combout(),
	.sumout(\op_1~393_sumout ),
	.cout(\op_1~394 ),
	.shareout());
defparam \op_1~393 .extended_lut = "off";
defparam \op_1~393 .lut_mask = 64'h000000000000ff00;
defparam \op_1~393 .shared_arith = "off";

stratixii_lcell_comb \op_1~397 (
	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(!phi_int_arr_reg_15),
	.datae(vcc),
	.dataf(!pipeline_dffe_15),
	.datag(vcc),
	.cin(\op_1~394 ),
	.sharein(gnd),
	.combout(),
	.sumout(\op_1~397_sumout ),
	.cout(\op_1~398 ),
	.shareout());
defparam \op_1~397 .extended_lut = "off";
defparam \op_1~397 .lut_mask = 64'h000000000000ff00;
defparam \op_1~397 .shared_arith = "off";

stratixii_lcell_comb \op_1~401 (
	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(!phi_int_arr_reg_16),
	.datae(vcc),
	.dataf(!pipeline_dffe_16),
	.datag(vcc),
	.cin(\op_1~398 ),
	.sharein(gnd),
	.combout(),
	.sumout(\op_1~401_sumout ),
	.cout(\op_1~402 ),
	.shareout());
defparam \op_1~401 .extended_lut = "off";
defparam \op_1~401 .lut_mask = 64'h000000000000ff00;
defparam \op_1~401 .shared_arith = "off";

stratixii_lcell_comb \op_1~405 (
	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(!phi_int_arr_reg_17),
	.datae(vcc),
	.dataf(!pipeline_dffe_17),
	.datag(vcc),
	.cin(\op_1~402 ),
	.sharein(gnd),
	.combout(),
	.sumout(\op_1~405_sumout ),
	.cout(\op_1~406 ),
	.shareout());
defparam \op_1~405 .extended_lut = "off";
defparam \op_1~405 .lut_mask = 64'h000000000000ff00;
defparam \op_1~405 .shared_arith = "off";

stratixii_lcell_comb \op_1~409 (
	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(!phi_int_arr_reg_18),
	.datae(vcc),
	.dataf(!pipeline_dffe_18),
	.datag(vcc),
	.cin(\op_1~406 ),
	.sharein(gnd),
	.combout(),
	.sumout(\op_1~409_sumout ),
	.cout(\op_1~410 ),
	.shareout());
defparam \op_1~409 .extended_lut = "off";
defparam \op_1~409 .lut_mask = 64'h000000000000ff00;
defparam \op_1~409 .shared_arith = "off";

stratixii_lcell_comb \op_1~413 (
	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(!phi_int_arr_reg_19),
	.datae(vcc),
	.dataf(!pipeline_dffe_19),
	.datag(vcc),
	.cin(\op_1~410 ),
	.sharein(gnd),
	.combout(),
	.sumout(\op_1~413_sumout ),
	.cout(\op_1~414 ),
	.shareout());
defparam \op_1~413 .extended_lut = "off";
defparam \op_1~413 .lut_mask = 64'h000000000000ff00;
defparam \op_1~413 .shared_arith = "off";

stratixii_lcell_comb \op_1~417 (
	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(!phi_int_arr_reg_20),
	.datae(vcc),
	.dataf(!pipeline_dffe_20),
	.datag(vcc),
	.cin(\op_1~414 ),
	.sharein(gnd),
	.combout(),
	.sumout(\op_1~417_sumout ),
	.cout(\op_1~418 ),
	.shareout());
defparam \op_1~417 .extended_lut = "off";
defparam \op_1~417 .lut_mask = 64'h000000000000ff00;
defparam \op_1~417 .shared_arith = "off";

stratixii_lcell_comb \op_1~421 (
	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(!phi_int_arr_reg_21),
	.datae(vcc),
	.dataf(!pipeline_dffe_21),
	.datag(vcc),
	.cin(\op_1~418 ),
	.sharein(gnd),
	.combout(),
	.sumout(\op_1~421_sumout ),
	.cout(\op_1~422 ),
	.shareout());
defparam \op_1~421 .extended_lut = "off";
defparam \op_1~421 .lut_mask = 64'h000000000000ff00;
defparam \op_1~421 .shared_arith = "off";

stratixii_lcell_comb \op_1~425 (
	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(!phi_int_arr_reg_22),
	.datae(vcc),
	.dataf(!pipeline_dffe_22),
	.datag(vcc),
	.cin(\op_1~422 ),
	.sharein(gnd),
	.combout(),
	.sumout(\op_1~425_sumout ),
	.cout(\op_1~426 ),
	.shareout());
defparam \op_1~425 .extended_lut = "off";
defparam \op_1~425 .lut_mask = 64'h000000000000ff00;
defparam \op_1~425 .shared_arith = "off";

stratixii_lcell_comb \op_1~429 (
	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(!phi_int_arr_reg_23),
	.datae(vcc),
	.dataf(!pipeline_dffe_23),
	.datag(vcc),
	.cin(\op_1~426 ),
	.sharein(gnd),
	.combout(),
	.sumout(\op_1~429_sumout ),
	.cout(),
	.shareout());
defparam \op_1~429 .extended_lut = "off";
defparam \op_1~429 .lut_mask = 64'h000000000000ff00;
defparam \op_1~429 .shared_arith = "off";

endmodule

module NCO1_asj_dxx (
	dxxpdo_13,
	dxxpdo_14,
	dxxpdo_15,
	dxxpdo_16,
	dxxpdo_17,
	dxxpdo_18,
	dxxpdo_19,
	dxxpdo_20,
	dxxpdo_5,
	dxxpdo_6,
	dxxpdo_7,
	dxxpdo_8,
	dxxpdo_9,
	dxxpdo_10,
	dxxpdo_11,
	dxxpdo_12,
	dxxrv_4,
	dxxrv_3,
	dxxrv_2,
	dxxrv_1,
	dxxrv_0,
	data_tmp_11,
	pipeline_dffe_16,
	pipeline_dffe_15,
	pipeline_dffe_14,
	pipeline_dffe_13,
	pipeline_dffe_12,
	pipeline_dffe_11,
	pipeline_dffe_10,
	pipeline_dffe_9,
	pipeline_dffe_8,
	pipeline_dffe_7,
	pipeline_dffe_6,
	pipeline_dffe_5,
	pipeline_dffe_4,
	pipeline_dffe_3,
	pipeline_dffe_17,
	pipeline_dffe_18,
	pipeline_dffe_19,
	pipeline_dffe_20,
	pipeline_dffe_21,
	pipeline_dffe_22,
	pipeline_dffe_23,
	clk,
	reset_n,
	clken)/* synthesis synthesis_greybox=1 */;
output 	dxxpdo_13;
output 	dxxpdo_14;
output 	dxxpdo_15;
output 	dxxpdo_16;
output 	dxxpdo_17;
output 	dxxpdo_18;
output 	dxxpdo_19;
output 	dxxpdo_20;
output 	dxxpdo_5;
output 	dxxpdo_6;
output 	dxxpdo_7;
output 	dxxpdo_8;
output 	dxxpdo_9;
output 	dxxpdo_10;
output 	dxxpdo_11;
output 	dxxpdo_12;
input 	dxxrv_4;
input 	dxxrv_3;
input 	dxxrv_2;
input 	dxxrv_1;
input 	dxxrv_0;
input 	data_tmp_11;
input 	pipeline_dffe_16;
input 	pipeline_dffe_15;
input 	pipeline_dffe_14;
input 	pipeline_dffe_13;
input 	pipeline_dffe_12;
input 	pipeline_dffe_11;
input 	pipeline_dffe_10;
input 	pipeline_dffe_9;
input 	pipeline_dffe_8;
input 	pipeline_dffe_7;
input 	pipeline_dffe_6;
input 	pipeline_dffe_5;
input 	pipeline_dffe_4;
input 	pipeline_dffe_3;
input 	pipeline_dffe_17;
input 	pipeline_dffe_18;
input 	pipeline_dffe_19;
input 	pipeline_dffe_20;
input 	pipeline_dffe_21;
input 	pipeline_dffe_22;
input 	pipeline_dffe_23;
input 	clk;
input 	reset_n;
input 	clken;

wire gnd;
wire vcc;

assign gnd = 1'b0;
assign vcc = 1'b1;

wire \ux014|auto_generated|pipeline_dffe[13]~regout ;
wire \ux014|auto_generated|pipeline_dffe[14]~regout ;
wire \ux014|auto_generated|pipeline_dffe[15]~regout ;
wire \ux014|auto_generated|pipeline_dffe[16]~regout ;
wire \ux014|auto_generated|pipeline_dffe[17]~regout ;
wire \ux014|auto_generated|pipeline_dffe[18]~regout ;
wire \ux014|auto_generated|pipeline_dffe[19]~regout ;
wire \ux014|auto_generated|pipeline_dffe[20]~regout ;
wire \ux014|auto_generated|pipeline_dffe[5]~regout ;
wire \ux014|auto_generated|pipeline_dffe[6]~regout ;
wire \ux014|auto_generated|pipeline_dffe[7]~regout ;
wire \ux014|auto_generated|pipeline_dffe[8]~regout ;
wire \ux014|auto_generated|pipeline_dffe[9]~regout ;
wire \ux014|auto_generated|pipeline_dffe[10]~regout ;
wire \ux014|auto_generated|pipeline_dffe[11]~regout ;
wire \ux014|auto_generated|pipeline_dffe[12]~regout ;


NCO1_lpm_add_sub_2 ux014(
	.dxxrv_4(dxxrv_4),
	.dxxrv_3(dxxrv_3),
	.dxxrv_2(dxxrv_2),
	.dxxrv_1(dxxrv_1),
	.dxxrv_0(dxxrv_0),
	.pipeline_dffe_13(\ux014|auto_generated|pipeline_dffe[13]~regout ),
	.pipeline_dffe_14(\ux014|auto_generated|pipeline_dffe[14]~regout ),
	.pipeline_dffe_15(\ux014|auto_generated|pipeline_dffe[15]~regout ),
	.pipeline_dffe_16(\ux014|auto_generated|pipeline_dffe[16]~regout ),
	.pipeline_dffe_17(\ux014|auto_generated|pipeline_dffe[17]~regout ),
	.pipeline_dffe_18(\ux014|auto_generated|pipeline_dffe[18]~regout ),
	.pipeline_dffe_19(\ux014|auto_generated|pipeline_dffe[19]~regout ),
	.pipeline_dffe_20(\ux014|auto_generated|pipeline_dffe[20]~regout ),
	.pipeline_dffe_5(\ux014|auto_generated|pipeline_dffe[5]~regout ),
	.pipeline_dffe_6(\ux014|auto_generated|pipeline_dffe[6]~regout ),
	.pipeline_dffe_7(\ux014|auto_generated|pipeline_dffe[7]~regout ),
	.pipeline_dffe_8(\ux014|auto_generated|pipeline_dffe[8]~regout ),
	.pipeline_dffe_9(\ux014|auto_generated|pipeline_dffe[9]~regout ),
	.pipeline_dffe_10(\ux014|auto_generated|pipeline_dffe[10]~regout ),
	.pipeline_dffe_11(\ux014|auto_generated|pipeline_dffe[11]~regout ),
	.pipeline_dffe_12(\ux014|auto_generated|pipeline_dffe[12]~regout ),
	.pipeline_dffe_161(pipeline_dffe_16),
	.pipeline_dffe_151(pipeline_dffe_15),
	.pipeline_dffe_141(pipeline_dffe_14),
	.pipeline_dffe_131(pipeline_dffe_13),
	.pipeline_dffe_121(pipeline_dffe_12),
	.pipeline_dffe_111(pipeline_dffe_11),
	.pipeline_dffe_101(pipeline_dffe_10),
	.pipeline_dffe_91(pipeline_dffe_9),
	.pipeline_dffe_81(pipeline_dffe_8),
	.pipeline_dffe_71(pipeline_dffe_7),
	.pipeline_dffe_61(pipeline_dffe_6),
	.pipeline_dffe_51(pipeline_dffe_5),
	.pipeline_dffe_4(pipeline_dffe_4),
	.pipeline_dffe_3(pipeline_dffe_3),
	.pipeline_dffe_171(pipeline_dffe_17),
	.pipeline_dffe_181(pipeline_dffe_18),
	.pipeline_dffe_191(pipeline_dffe_19),
	.pipeline_dffe_201(pipeline_dffe_20),
	.pipeline_dffe_21(pipeline_dffe_21),
	.pipeline_dffe_22(pipeline_dffe_22),
	.pipeline_dffe_23(pipeline_dffe_23),
	.clock(clk),
	.reset_n(reset_n),
	.clken(clken));

stratixii_lcell_ff \dxxpdo[13] (
	.clk(clk),
	.datain(\ux014|auto_generated|pipeline_dffe[13]~regout ),
	.adatasdata(gnd),
	.aclr(gnd),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_tmp_11),
	.regout(dxxpdo_13));

stratixii_lcell_ff \dxxpdo[14] (
	.clk(clk),
	.datain(\ux014|auto_generated|pipeline_dffe[14]~regout ),
	.adatasdata(gnd),
	.aclr(gnd),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_tmp_11),
	.regout(dxxpdo_14));

stratixii_lcell_ff \dxxpdo[15] (
	.clk(clk),
	.datain(\ux014|auto_generated|pipeline_dffe[15]~regout ),
	.adatasdata(gnd),
	.aclr(gnd),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_tmp_11),
	.regout(dxxpdo_15));

stratixii_lcell_ff \dxxpdo[16] (
	.clk(clk),
	.datain(\ux014|auto_generated|pipeline_dffe[16]~regout ),
	.adatasdata(gnd),
	.aclr(gnd),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_tmp_11),
	.regout(dxxpdo_16));

stratixii_lcell_ff \dxxpdo[17] (
	.clk(clk),
	.datain(\ux014|auto_generated|pipeline_dffe[17]~regout ),
	.adatasdata(gnd),
	.aclr(gnd),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_tmp_11),
	.regout(dxxpdo_17));

stratixii_lcell_ff \dxxpdo[18] (
	.clk(clk),
	.datain(\ux014|auto_generated|pipeline_dffe[18]~regout ),
	.adatasdata(gnd),
	.aclr(gnd),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_tmp_11),
	.regout(dxxpdo_18));

stratixii_lcell_ff \dxxpdo[19] (
	.clk(clk),
	.datain(\ux014|auto_generated|pipeline_dffe[19]~regout ),
	.adatasdata(gnd),
	.aclr(gnd),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_tmp_11),
	.regout(dxxpdo_19));

stratixii_lcell_ff \dxxpdo[20] (
	.clk(clk),
	.datain(\ux014|auto_generated|pipeline_dffe[20]~regout ),
	.adatasdata(gnd),
	.aclr(gnd),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_tmp_11),
	.regout(dxxpdo_20));

stratixii_lcell_ff \dxxpdo[5] (
	.clk(clk),
	.datain(\ux014|auto_generated|pipeline_dffe[5]~regout ),
	.adatasdata(gnd),
	.aclr(gnd),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_tmp_11),
	.regout(dxxpdo_5));

stratixii_lcell_ff \dxxpdo[6] (
	.clk(clk),
	.datain(\ux014|auto_generated|pipeline_dffe[6]~regout ),
	.adatasdata(gnd),
	.aclr(gnd),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_tmp_11),
	.regout(dxxpdo_6));

stratixii_lcell_ff \dxxpdo[7] (
	.clk(clk),
	.datain(\ux014|auto_generated|pipeline_dffe[7]~regout ),
	.adatasdata(gnd),
	.aclr(gnd),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_tmp_11),
	.regout(dxxpdo_7));

stratixii_lcell_ff \dxxpdo[8] (
	.clk(clk),
	.datain(\ux014|auto_generated|pipeline_dffe[8]~regout ),
	.adatasdata(gnd),
	.aclr(gnd),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_tmp_11),
	.regout(dxxpdo_8));

stratixii_lcell_ff \dxxpdo[9] (
	.clk(clk),
	.datain(\ux014|auto_generated|pipeline_dffe[9]~regout ),
	.adatasdata(gnd),
	.aclr(gnd),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_tmp_11),
	.regout(dxxpdo_9));

stratixii_lcell_ff \dxxpdo[10] (
	.clk(clk),
	.datain(\ux014|auto_generated|pipeline_dffe[10]~regout ),
	.adatasdata(gnd),
	.aclr(gnd),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_tmp_11),
	.regout(dxxpdo_10));

stratixii_lcell_ff \dxxpdo[11] (
	.clk(clk),
	.datain(\ux014|auto_generated|pipeline_dffe[11]~regout ),
	.adatasdata(gnd),
	.aclr(gnd),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_tmp_11),
	.regout(dxxpdo_11));

stratixii_lcell_ff \dxxpdo[12] (
	.clk(clk),
	.datain(\ux014|auto_generated|pipeline_dffe[12]~regout ),
	.adatasdata(gnd),
	.aclr(gnd),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_tmp_11),
	.regout(dxxpdo_12));

endmodule

module NCO1_lpm_add_sub_2 (
	dxxrv_4,
	dxxrv_3,
	dxxrv_2,
	dxxrv_1,
	dxxrv_0,
	pipeline_dffe_13,
	pipeline_dffe_14,
	pipeline_dffe_15,
	pipeline_dffe_16,
	pipeline_dffe_17,
	pipeline_dffe_18,
	pipeline_dffe_19,
	pipeline_dffe_20,
	pipeline_dffe_5,
	pipeline_dffe_6,
	pipeline_dffe_7,
	pipeline_dffe_8,
	pipeline_dffe_9,
	pipeline_dffe_10,
	pipeline_dffe_11,
	pipeline_dffe_12,
	pipeline_dffe_161,
	pipeline_dffe_151,
	pipeline_dffe_141,
	pipeline_dffe_131,
	pipeline_dffe_121,
	pipeline_dffe_111,
	pipeline_dffe_101,
	pipeline_dffe_91,
	pipeline_dffe_81,
	pipeline_dffe_71,
	pipeline_dffe_61,
	pipeline_dffe_51,
	pipeline_dffe_4,
	pipeline_dffe_3,
	pipeline_dffe_171,
	pipeline_dffe_181,
	pipeline_dffe_191,
	pipeline_dffe_201,
	pipeline_dffe_21,
	pipeline_dffe_22,
	pipeline_dffe_23,
	clock,
	reset_n,
	clken)/* synthesis synthesis_greybox=1 */;
input 	dxxrv_4;
input 	dxxrv_3;
input 	dxxrv_2;
input 	dxxrv_1;
input 	dxxrv_0;
output 	pipeline_dffe_13;
output 	pipeline_dffe_14;
output 	pipeline_dffe_15;
output 	pipeline_dffe_16;
output 	pipeline_dffe_17;
output 	pipeline_dffe_18;
output 	pipeline_dffe_19;
output 	pipeline_dffe_20;
output 	pipeline_dffe_5;
output 	pipeline_dffe_6;
output 	pipeline_dffe_7;
output 	pipeline_dffe_8;
output 	pipeline_dffe_9;
output 	pipeline_dffe_10;
output 	pipeline_dffe_11;
output 	pipeline_dffe_12;
input 	pipeline_dffe_161;
input 	pipeline_dffe_151;
input 	pipeline_dffe_141;
input 	pipeline_dffe_131;
input 	pipeline_dffe_121;
input 	pipeline_dffe_111;
input 	pipeline_dffe_101;
input 	pipeline_dffe_91;
input 	pipeline_dffe_81;
input 	pipeline_dffe_71;
input 	pipeline_dffe_61;
input 	pipeline_dffe_51;
input 	pipeline_dffe_4;
input 	pipeline_dffe_3;
input 	pipeline_dffe_171;
input 	pipeline_dffe_181;
input 	pipeline_dffe_191;
input 	pipeline_dffe_201;
input 	pipeline_dffe_21;
input 	pipeline_dffe_22;
input 	pipeline_dffe_23;
input 	clock;
input 	reset_n;
input 	clken;

wire gnd;
wire vcc;

assign gnd = 1'b0;
assign vcc = 1'b1;



NCO1_add_sub_m4h auto_generated(
	.dxxrv_4(dxxrv_4),
	.dxxrv_3(dxxrv_3),
	.dxxrv_2(dxxrv_2),
	.dxxrv_1(dxxrv_1),
	.dxxrv_0(dxxrv_0),
	.pipeline_dffe_13(pipeline_dffe_13),
	.pipeline_dffe_14(pipeline_dffe_14),
	.pipeline_dffe_15(pipeline_dffe_15),
	.pipeline_dffe_16(pipeline_dffe_16),
	.pipeline_dffe_17(pipeline_dffe_17),
	.pipeline_dffe_18(pipeline_dffe_18),
	.pipeline_dffe_19(pipeline_dffe_19),
	.pipeline_dffe_20(pipeline_dffe_20),
	.pipeline_dffe_5(pipeline_dffe_5),
	.pipeline_dffe_6(pipeline_dffe_6),
	.pipeline_dffe_7(pipeline_dffe_7),
	.pipeline_dffe_8(pipeline_dffe_8),
	.pipeline_dffe_9(pipeline_dffe_9),
	.pipeline_dffe_10(pipeline_dffe_10),
	.pipeline_dffe_11(pipeline_dffe_11),
	.pipeline_dffe_12(pipeline_dffe_12),
	.pipeline_dffe_161(pipeline_dffe_161),
	.pipeline_dffe_151(pipeline_dffe_151),
	.pipeline_dffe_141(pipeline_dffe_141),
	.pipeline_dffe_131(pipeline_dffe_131),
	.pipeline_dffe_121(pipeline_dffe_121),
	.pipeline_dffe_111(pipeline_dffe_111),
	.pipeline_dffe_101(pipeline_dffe_101),
	.pipeline_dffe_91(pipeline_dffe_91),
	.pipeline_dffe_81(pipeline_dffe_81),
	.pipeline_dffe_71(pipeline_dffe_71),
	.pipeline_dffe_61(pipeline_dffe_61),
	.pipeline_dffe_51(pipeline_dffe_51),
	.pipeline_dffe_4(pipeline_dffe_4),
	.pipeline_dffe_3(pipeline_dffe_3),
	.pipeline_dffe_171(pipeline_dffe_171),
	.pipeline_dffe_181(pipeline_dffe_181),
	.pipeline_dffe_191(pipeline_dffe_191),
	.pipeline_dffe_201(pipeline_dffe_201),
	.pipeline_dffe_21(pipeline_dffe_21),
	.pipeline_dffe_22(pipeline_dffe_22),
	.pipeline_dffe_23(pipeline_dffe_23),
	.clock(clock),
	.reset_n(reset_n),
	.clken(clken));

endmodule

module NCO1_add_sub_m4h (
	dxxrv_4,
	dxxrv_3,
	dxxrv_2,
	dxxrv_1,
	dxxrv_0,
	pipeline_dffe_13,
	pipeline_dffe_14,
	pipeline_dffe_15,
	pipeline_dffe_16,
	pipeline_dffe_17,
	pipeline_dffe_18,
	pipeline_dffe_19,
	pipeline_dffe_20,
	pipeline_dffe_5,
	pipeline_dffe_6,
	pipeline_dffe_7,
	pipeline_dffe_8,
	pipeline_dffe_9,
	pipeline_dffe_10,
	pipeline_dffe_11,
	pipeline_dffe_12,
	pipeline_dffe_161,
	pipeline_dffe_151,
	pipeline_dffe_141,
	pipeline_dffe_131,
	pipeline_dffe_121,
	pipeline_dffe_111,
	pipeline_dffe_101,
	pipeline_dffe_91,
	pipeline_dffe_81,
	pipeline_dffe_71,
	pipeline_dffe_61,
	pipeline_dffe_51,
	pipeline_dffe_4,
	pipeline_dffe_3,
	pipeline_dffe_171,
	pipeline_dffe_181,
	pipeline_dffe_191,
	pipeline_dffe_201,
	pipeline_dffe_21,
	pipeline_dffe_22,
	pipeline_dffe_23,
	clock,
	reset_n,
	clken)/* synthesis synthesis_greybox=1 */;
input 	dxxrv_4;
input 	dxxrv_3;
input 	dxxrv_2;
input 	dxxrv_1;
input 	dxxrv_0;
output 	pipeline_dffe_13;
output 	pipeline_dffe_14;
output 	pipeline_dffe_15;
output 	pipeline_dffe_16;
output 	pipeline_dffe_17;
output 	pipeline_dffe_18;
output 	pipeline_dffe_19;
output 	pipeline_dffe_20;
output 	pipeline_dffe_5;
output 	pipeline_dffe_6;
output 	pipeline_dffe_7;
output 	pipeline_dffe_8;
output 	pipeline_dffe_9;
output 	pipeline_dffe_10;
output 	pipeline_dffe_11;
output 	pipeline_dffe_12;
input 	pipeline_dffe_161;
input 	pipeline_dffe_151;
input 	pipeline_dffe_141;
input 	pipeline_dffe_131;
input 	pipeline_dffe_121;
input 	pipeline_dffe_111;
input 	pipeline_dffe_101;
input 	pipeline_dffe_91;
input 	pipeline_dffe_81;
input 	pipeline_dffe_71;
input 	pipeline_dffe_61;
input 	pipeline_dffe_51;
input 	pipeline_dffe_4;
input 	pipeline_dffe_3;
input 	pipeline_dffe_171;
input 	pipeline_dffe_181;
input 	pipeline_dffe_191;
input 	pipeline_dffe_201;
input 	pipeline_dffe_21;
input 	pipeline_dffe_22;
input 	pipeline_dffe_23;
input 	clock;
input 	reset_n;
input 	clken;

wire gnd;
wire vcc;

assign gnd = 1'b0;
assign vcc = 1'b1;

wire \op_1~296_cout ;
wire \op_1~300_cout ;
wire \op_1~304_cout ;
wire \op_1~308_cout ;
wire \op_1~312_cout ;
wire \op_1~316 ;
wire \op_1~320 ;
wire \op_1~324 ;
wire \op_1~328 ;
wire \op_1~332 ;
wire \op_1~336 ;
wire \op_1~340 ;
wire \op_1~344 ;
wire \op_1~347_sumout ;
wire \op_1~348 ;
wire \op_1~351_sumout ;
wire \op_1~352 ;
wire \op_1~355_sumout ;
wire \op_1~356 ;
wire \op_1~359_sumout ;
wire \op_1~360 ;
wire \op_1~363_sumout ;
wire \op_1~364 ;
wire \op_1~367_sumout ;
wire \op_1~368 ;
wire \op_1~371_sumout ;
wire \op_1~372 ;
wire \op_1~375_sumout ;
wire \op_1~315_sumout ;
wire \op_1~319_sumout ;
wire \op_1~323_sumout ;
wire \op_1~327_sumout ;
wire \op_1~331_sumout ;
wire \op_1~335_sumout ;
wire \op_1~339_sumout ;
wire \op_1~343_sumout ;


stratixii_lcell_ff \pipeline_dffe[13] (
	.clk(clock),
	.datain(\op_1~347_sumout ),
	.adatasdata(gnd),
	.aclr(!reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.regout(pipeline_dffe_13));

stratixii_lcell_ff \pipeline_dffe[14] (
	.clk(clock),
	.datain(\op_1~351_sumout ),
	.adatasdata(gnd),
	.aclr(!reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.regout(pipeline_dffe_14));

stratixii_lcell_ff \pipeline_dffe[15] (
	.clk(clock),
	.datain(\op_1~355_sumout ),
	.adatasdata(gnd),
	.aclr(!reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.regout(pipeline_dffe_15));

stratixii_lcell_ff \pipeline_dffe[16] (
	.clk(clock),
	.datain(\op_1~359_sumout ),
	.adatasdata(gnd),
	.aclr(!reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.regout(pipeline_dffe_16));

stratixii_lcell_ff \pipeline_dffe[17] (
	.clk(clock),
	.datain(\op_1~363_sumout ),
	.adatasdata(gnd),
	.aclr(!reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.regout(pipeline_dffe_17));

stratixii_lcell_ff \pipeline_dffe[18] (
	.clk(clock),
	.datain(\op_1~367_sumout ),
	.adatasdata(gnd),
	.aclr(!reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.regout(pipeline_dffe_18));

stratixii_lcell_ff \pipeline_dffe[19] (
	.clk(clock),
	.datain(\op_1~371_sumout ),
	.adatasdata(gnd),
	.aclr(!reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.regout(pipeline_dffe_19));

stratixii_lcell_ff \pipeline_dffe[20] (
	.clk(clock),
	.datain(\op_1~375_sumout ),
	.adatasdata(gnd),
	.aclr(!reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.regout(pipeline_dffe_20));

stratixii_lcell_ff \pipeline_dffe[5] (
	.clk(clock),
	.datain(\op_1~315_sumout ),
	.adatasdata(gnd),
	.aclr(!reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.regout(pipeline_dffe_5));

stratixii_lcell_ff \pipeline_dffe[6] (
	.clk(clock),
	.datain(\op_1~319_sumout ),
	.adatasdata(gnd),
	.aclr(!reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.regout(pipeline_dffe_6));

stratixii_lcell_ff \pipeline_dffe[7] (
	.clk(clock),
	.datain(\op_1~323_sumout ),
	.adatasdata(gnd),
	.aclr(!reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.regout(pipeline_dffe_7));

stratixii_lcell_ff \pipeline_dffe[8] (
	.clk(clock),
	.datain(\op_1~327_sumout ),
	.adatasdata(gnd),
	.aclr(!reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.regout(pipeline_dffe_8));

stratixii_lcell_ff \pipeline_dffe[9] (
	.clk(clock),
	.datain(\op_1~331_sumout ),
	.adatasdata(gnd),
	.aclr(!reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.regout(pipeline_dffe_9));

stratixii_lcell_ff \pipeline_dffe[10] (
	.clk(clock),
	.datain(\op_1~335_sumout ),
	.adatasdata(gnd),
	.aclr(!reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.regout(pipeline_dffe_10));

stratixii_lcell_ff \pipeline_dffe[11] (
	.clk(clock),
	.datain(\op_1~339_sumout ),
	.adatasdata(gnd),
	.aclr(!reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.regout(pipeline_dffe_11));

stratixii_lcell_ff \pipeline_dffe[12] (
	.clk(clock),
	.datain(\op_1~343_sumout ),
	.adatasdata(gnd),
	.aclr(!reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.regout(pipeline_dffe_12));

stratixii_lcell_comb \op_1~296 (
	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(!dxxrv_0),
	.datae(vcc),
	.dataf(!pipeline_dffe_3),
	.datag(vcc),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\op_1~296_cout ),
	.shareout());
defparam \op_1~296 .extended_lut = "off";
defparam \op_1~296 .lut_mask = 64'h000000000000ff00;
defparam \op_1~296 .shared_arith = "off";

stratixii_lcell_comb \op_1~300 (
	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(!dxxrv_1),
	.datae(vcc),
	.dataf(!pipeline_dffe_4),
	.datag(vcc),
	.cin(\op_1~296_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\op_1~300_cout ),
	.shareout());
defparam \op_1~300 .extended_lut = "off";
defparam \op_1~300 .lut_mask = 64'h000000000000ff00;
defparam \op_1~300 .shared_arith = "off";

stratixii_lcell_comb \op_1~304 (
	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(!dxxrv_2),
	.datae(vcc),
	.dataf(!pipeline_dffe_51),
	.datag(vcc),
	.cin(\op_1~300_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\op_1~304_cout ),
	.shareout());
defparam \op_1~304 .extended_lut = "off";
defparam \op_1~304 .lut_mask = 64'h000000000000ff00;
defparam \op_1~304 .shared_arith = "off";

stratixii_lcell_comb \op_1~308 (
	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(!dxxrv_3),
	.datae(vcc),
	.dataf(!pipeline_dffe_61),
	.datag(vcc),
	.cin(\op_1~304_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\op_1~308_cout ),
	.shareout());
defparam \op_1~308 .extended_lut = "off";
defparam \op_1~308 .lut_mask = 64'h000000000000ff00;
defparam \op_1~308 .shared_arith = "off";

stratixii_lcell_comb \op_1~312 (
	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(!dxxrv_4),
	.datae(vcc),
	.dataf(!pipeline_dffe_71),
	.datag(vcc),
	.cin(\op_1~308_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\op_1~312_cout ),
	.shareout());
defparam \op_1~312 .extended_lut = "off";
defparam \op_1~312 .lut_mask = 64'h000000000000ff00;
defparam \op_1~312 .shared_arith = "off";

stratixii_lcell_comb \op_1~315 (
	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(!dxxrv_4),
	.datae(vcc),
	.dataf(!pipeline_dffe_81),
	.datag(vcc),
	.cin(\op_1~312_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(\op_1~315_sumout ),
	.cout(\op_1~316 ),
	.shareout());
defparam \op_1~315 .extended_lut = "off";
defparam \op_1~315 .lut_mask = 64'h000000000000ff00;
defparam \op_1~315 .shared_arith = "off";

stratixii_lcell_comb \op_1~319 (
	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(!dxxrv_4),
	.datae(vcc),
	.dataf(!pipeline_dffe_91),
	.datag(vcc),
	.cin(\op_1~316 ),
	.sharein(gnd),
	.combout(),
	.sumout(\op_1~319_sumout ),
	.cout(\op_1~320 ),
	.shareout());
defparam \op_1~319 .extended_lut = "off";
defparam \op_1~319 .lut_mask = 64'h000000000000ff00;
defparam \op_1~319 .shared_arith = "off";

stratixii_lcell_comb \op_1~323 (
	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(!dxxrv_4),
	.datae(vcc),
	.dataf(!pipeline_dffe_101),
	.datag(vcc),
	.cin(\op_1~320 ),
	.sharein(gnd),
	.combout(),
	.sumout(\op_1~323_sumout ),
	.cout(\op_1~324 ),
	.shareout());
defparam \op_1~323 .extended_lut = "off";
defparam \op_1~323 .lut_mask = 64'h000000000000ff00;
defparam \op_1~323 .shared_arith = "off";

stratixii_lcell_comb \op_1~327 (
	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(!dxxrv_4),
	.datae(vcc),
	.dataf(!pipeline_dffe_111),
	.datag(vcc),
	.cin(\op_1~324 ),
	.sharein(gnd),
	.combout(),
	.sumout(\op_1~327_sumout ),
	.cout(\op_1~328 ),
	.shareout());
defparam \op_1~327 .extended_lut = "off";
defparam \op_1~327 .lut_mask = 64'h000000000000ff00;
defparam \op_1~327 .shared_arith = "off";

stratixii_lcell_comb \op_1~331 (
	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(!dxxrv_4),
	.datae(vcc),
	.dataf(!pipeline_dffe_121),
	.datag(vcc),
	.cin(\op_1~328 ),
	.sharein(gnd),
	.combout(),
	.sumout(\op_1~331_sumout ),
	.cout(\op_1~332 ),
	.shareout());
defparam \op_1~331 .extended_lut = "off";
defparam \op_1~331 .lut_mask = 64'h000000000000ff00;
defparam \op_1~331 .shared_arith = "off";

stratixii_lcell_comb \op_1~335 (
	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(!dxxrv_4),
	.datae(vcc),
	.dataf(!pipeline_dffe_131),
	.datag(vcc),
	.cin(\op_1~332 ),
	.sharein(gnd),
	.combout(),
	.sumout(\op_1~335_sumout ),
	.cout(\op_1~336 ),
	.shareout());
defparam \op_1~335 .extended_lut = "off";
defparam \op_1~335 .lut_mask = 64'h000000000000ff00;
defparam \op_1~335 .shared_arith = "off";

stratixii_lcell_comb \op_1~339 (
	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(!dxxrv_4),
	.datae(vcc),
	.dataf(!pipeline_dffe_141),
	.datag(vcc),
	.cin(\op_1~336 ),
	.sharein(gnd),
	.combout(),
	.sumout(\op_1~339_sumout ),
	.cout(\op_1~340 ),
	.shareout());
defparam \op_1~339 .extended_lut = "off";
defparam \op_1~339 .lut_mask = 64'h000000000000ff00;
defparam \op_1~339 .shared_arith = "off";

stratixii_lcell_comb \op_1~343 (
	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(!dxxrv_4),
	.datae(vcc),
	.dataf(!pipeline_dffe_151),
	.datag(vcc),
	.cin(\op_1~340 ),
	.sharein(gnd),
	.combout(),
	.sumout(\op_1~343_sumout ),
	.cout(\op_1~344 ),
	.shareout());
defparam \op_1~343 .extended_lut = "off";
defparam \op_1~343 .lut_mask = 64'h000000000000ff00;
defparam \op_1~343 .shared_arith = "off";

stratixii_lcell_comb \op_1~347 (
	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(!dxxrv_4),
	.datae(vcc),
	.dataf(!pipeline_dffe_161),
	.datag(vcc),
	.cin(\op_1~344 ),
	.sharein(gnd),
	.combout(),
	.sumout(\op_1~347_sumout ),
	.cout(\op_1~348 ),
	.shareout());
defparam \op_1~347 .extended_lut = "off";
defparam \op_1~347 .lut_mask = 64'h000000000000ff00;
defparam \op_1~347 .shared_arith = "off";

stratixii_lcell_comb \op_1~351 (
	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(!dxxrv_4),
	.datae(vcc),
	.dataf(!pipeline_dffe_171),
	.datag(vcc),
	.cin(\op_1~348 ),
	.sharein(gnd),
	.combout(),
	.sumout(\op_1~351_sumout ),
	.cout(\op_1~352 ),
	.shareout());
defparam \op_1~351 .extended_lut = "off";
defparam \op_1~351 .lut_mask = 64'h000000000000ff00;
defparam \op_1~351 .shared_arith = "off";

stratixii_lcell_comb \op_1~355 (
	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(!dxxrv_4),
	.datae(vcc),
	.dataf(!pipeline_dffe_181),
	.datag(vcc),
	.cin(\op_1~352 ),
	.sharein(gnd),
	.combout(),
	.sumout(\op_1~355_sumout ),
	.cout(\op_1~356 ),
	.shareout());
defparam \op_1~355 .extended_lut = "off";
defparam \op_1~355 .lut_mask = 64'h000000000000ff00;
defparam \op_1~355 .shared_arith = "off";

stratixii_lcell_comb \op_1~359 (
	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(!dxxrv_4),
	.datae(vcc),
	.dataf(!pipeline_dffe_191),
	.datag(vcc),
	.cin(\op_1~356 ),
	.sharein(gnd),
	.combout(),
	.sumout(\op_1~359_sumout ),
	.cout(\op_1~360 ),
	.shareout());
defparam \op_1~359 .extended_lut = "off";
defparam \op_1~359 .lut_mask = 64'h000000000000ff00;
defparam \op_1~359 .shared_arith = "off";

stratixii_lcell_comb \op_1~363 (
	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(!dxxrv_4),
	.datae(vcc),
	.dataf(!pipeline_dffe_201),
	.datag(vcc),
	.cin(\op_1~360 ),
	.sharein(gnd),
	.combout(),
	.sumout(\op_1~363_sumout ),
	.cout(\op_1~364 ),
	.shareout());
defparam \op_1~363 .extended_lut = "off";
defparam \op_1~363 .lut_mask = 64'h000000000000ff00;
defparam \op_1~363 .shared_arith = "off";

stratixii_lcell_comb \op_1~367 (
	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(!dxxrv_4),
	.datae(vcc),
	.dataf(!pipeline_dffe_21),
	.datag(vcc),
	.cin(\op_1~364 ),
	.sharein(gnd),
	.combout(),
	.sumout(\op_1~367_sumout ),
	.cout(\op_1~368 ),
	.shareout());
defparam \op_1~367 .extended_lut = "off";
defparam \op_1~367 .lut_mask = 64'h000000000000ff00;
defparam \op_1~367 .shared_arith = "off";

stratixii_lcell_comb \op_1~371 (
	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(!dxxrv_4),
	.datae(vcc),
	.dataf(!pipeline_dffe_22),
	.datag(vcc),
	.cin(\op_1~368 ),
	.sharein(gnd),
	.combout(),
	.sumout(\op_1~371_sumout ),
	.cout(\op_1~372 ),
	.shareout());
defparam \op_1~371 .extended_lut = "off";
defparam \op_1~371 .lut_mask = 64'h000000000000ff00;
defparam \op_1~371 .shared_arith = "off";

stratixii_lcell_comb \op_1~375 (
	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(!dxxrv_4),
	.datae(vcc),
	.dataf(!pipeline_dffe_23),
	.datag(vcc),
	.cin(\op_1~372 ),
	.sharein(gnd),
	.combout(),
	.sumout(\op_1~375_sumout ),
	.cout(),
	.shareout());
defparam \op_1~375 .extended_lut = "off";
defparam \op_1~375 .lut_mask = 64'h000000000000ff00;
defparam \op_1~375 .shared_arith = "off";

endmodule

module NCO1_asj_dxx_g (
	dxxrv_4,
	dxxrv_3,
	dxxrv_2,
	dxxrv_1,
	dxxrv_0,
	data_tmp_11,
	clk,
	reset_n)/* synthesis synthesis_greybox=1 */;
output 	dxxrv_4;
output 	dxxrv_3;
output 	dxxrv_2;
output 	dxxrv_1;
output 	dxxrv_0;
input 	data_tmp_11;
input 	clk;
input 	reset_n;

wire gnd;
wire vcc;

assign gnd = 1'b0;
assign vcc = 1'b1;

wire \lsfr_reg~2_combout ;
wire \lsfr_reg[0]~regout ;
wire \lsfr_reg[1]~regout ;
wire \lsfr_reg~312_combout ;
wire \lsfr_reg[2]~regout ;
wire \lsfr_reg~311_combout ;
wire \lsfr_reg[3]~regout ;
wire \lsfr_reg~310_combout ;
wire \lsfr_reg[4]~regout ;
wire \lsfr_reg[5]~regout ;
wire \lsfr_reg~309_combout ;
wire \lsfr_reg[6]~regout ;
wire \lsfr_reg~308_combout ;
wire \lsfr_reg[7]~regout ;
wire \lsfr_reg[8]~regout ;
wire \lsfr_reg~307_combout ;
wire \lsfr_reg[9]~regout ;
wire \lsfr_reg[10]~regout ;
wire \lsfr_reg~306_combout ;
wire \lsfr_reg[11]~regout ;
wire \lsfr_reg~305_combout ;
wire \lsfr_reg[12]~regout ;
wire \lsfr_reg[13]~regout ;
wire \lsfr_reg[14]~regout ;
wire \lsfr_reg~304_combout ;
wire \lsfr_reg[15]~regout ;
wire \Add0~76 ;
wire \Add0~80 ;
wire \Add0~84 ;
wire \Add0~88 ;
wire \Add0~91_sumout ;
wire \Add0~87_sumout ;
wire \Add0~83_sumout ;
wire \Add0~79_sumout ;
wire \Add0~75_sumout ;


stratixii_lcell_ff \dxxrv[4] (
	.clk(clk),
	.datain(\Add0~91_sumout ),
	.adatasdata(gnd),
	.aclr(gnd),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_tmp_11),
	.regout(dxxrv_4));

stratixii_lcell_ff \dxxrv[3] (
	.clk(clk),
	.datain(\Add0~87_sumout ),
	.adatasdata(gnd),
	.aclr(gnd),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_tmp_11),
	.regout(dxxrv_3));

stratixii_lcell_ff \dxxrv[2] (
	.clk(clk),
	.datain(\Add0~83_sumout ),
	.adatasdata(gnd),
	.aclr(gnd),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_tmp_11),
	.regout(dxxrv_2));

stratixii_lcell_ff \dxxrv[1] (
	.clk(clk),
	.datain(\Add0~79_sumout ),
	.adatasdata(gnd),
	.aclr(gnd),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_tmp_11),
	.regout(dxxrv_1));

stratixii_lcell_ff \dxxrv[0] (
	.clk(clk),
	.datain(\Add0~75_sumout ),
	.adatasdata(gnd),
	.aclr(gnd),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_tmp_11),
	.regout(dxxrv_0));

stratixii_lcell_comb \lsfr_reg~2 (
	.dataa(!\lsfr_reg[15]~regout ),
	.datab(!\lsfr_reg[14]~regout ),
	.datac(!\lsfr_reg[12]~regout ),
	.datad(!\lsfr_reg[3]~regout ),
	.datae(vcc),
	.dataf(vcc),
	.datag(vcc),
	.cin(gnd),
	.sharein(gnd),
	.combout(\lsfr_reg~2_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \lsfr_reg~2 .extended_lut = "off";
defparam \lsfr_reg~2 .lut_mask = 64'h8000800080008000;
defparam \lsfr_reg~2 .shared_arith = "off";

stratixii_lcell_ff \lsfr_reg[0] (
	.clk(clk),
	.datain(\lsfr_reg~2_combout ),
	.adatasdata(vcc),
	.aclr(gnd),
	.aload(gnd),
	.sclr(gnd),
	.sload(!reset_n),
	.ena(data_tmp_11),
	.regout(\lsfr_reg[0]~regout ));

stratixii_lcell_ff \lsfr_reg[1] (
	.clk(clk),
	.datain(\lsfr_reg[0]~regout ),
	.adatasdata(gnd),
	.aclr(gnd),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_tmp_11),
	.regout(\lsfr_reg[1]~regout ));

stratixii_lcell_comb \lsfr_reg~312 (
	.dataa(!reset_n),
	.datab(!\lsfr_reg[1]~regout ),
	.datac(vcc),
	.datad(vcc),
	.datae(vcc),
	.dataf(vcc),
	.datag(vcc),
	.cin(gnd),
	.sharein(gnd),
	.combout(\lsfr_reg~312_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \lsfr_reg~312 .extended_lut = "off";
defparam \lsfr_reg~312 .lut_mask = 64'h8888888888888888;
defparam \lsfr_reg~312 .shared_arith = "off";

stratixii_lcell_ff \lsfr_reg[2] (
	.clk(clk),
	.datain(\lsfr_reg~312_combout ),
	.adatasdata(gnd),
	.aclr(gnd),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_tmp_11),
	.regout(\lsfr_reg[2]~regout ));

stratixii_lcell_comb \lsfr_reg~311 (
	.dataa(!reset_n),
	.datab(!\lsfr_reg[2]~regout ),
	.datac(vcc),
	.datad(vcc),
	.datae(vcc),
	.dataf(vcc),
	.datag(vcc),
	.cin(gnd),
	.sharein(gnd),
	.combout(\lsfr_reg~311_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \lsfr_reg~311 .extended_lut = "off";
defparam \lsfr_reg~311 .lut_mask = 64'h8888888888888888;
defparam \lsfr_reg~311 .shared_arith = "off";

stratixii_lcell_ff \lsfr_reg[3] (
	.clk(clk),
	.datain(\lsfr_reg~311_combout ),
	.adatasdata(gnd),
	.aclr(gnd),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_tmp_11),
	.regout(\lsfr_reg[3]~regout ));

stratixii_lcell_comb \lsfr_reg~310 (
	.dataa(!reset_n),
	.datab(!\lsfr_reg[3]~regout ),
	.datac(vcc),
	.datad(vcc),
	.datae(vcc),
	.dataf(vcc),
	.datag(vcc),
	.cin(gnd),
	.sharein(gnd),
	.combout(\lsfr_reg~310_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \lsfr_reg~310 .extended_lut = "off";
defparam \lsfr_reg~310 .lut_mask = 64'h8888888888888888;
defparam \lsfr_reg~310 .shared_arith = "off";

stratixii_lcell_ff \lsfr_reg[4] (
	.clk(clk),
	.datain(\lsfr_reg~310_combout ),
	.adatasdata(gnd),
	.aclr(gnd),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_tmp_11),
	.regout(\lsfr_reg[4]~regout ));

stratixii_lcell_ff \lsfr_reg[5] (
	.clk(clk),
	.datain(\lsfr_reg[4]~regout ),
	.adatasdata(gnd),
	.aclr(gnd),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_tmp_11),
	.regout(\lsfr_reg[5]~regout ));

stratixii_lcell_comb \lsfr_reg~309 (
	.dataa(!reset_n),
	.datab(!\lsfr_reg[5]~regout ),
	.datac(vcc),
	.datad(vcc),
	.datae(vcc),
	.dataf(vcc),
	.datag(vcc),
	.cin(gnd),
	.sharein(gnd),
	.combout(\lsfr_reg~309_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \lsfr_reg~309 .extended_lut = "off";
defparam \lsfr_reg~309 .lut_mask = 64'h8888888888888888;
defparam \lsfr_reg~309 .shared_arith = "off";

stratixii_lcell_ff \lsfr_reg[6] (
	.clk(clk),
	.datain(\lsfr_reg~309_combout ),
	.adatasdata(gnd),
	.aclr(gnd),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_tmp_11),
	.regout(\lsfr_reg[6]~regout ));

stratixii_lcell_comb \lsfr_reg~308 (
	.dataa(!reset_n),
	.datab(!\lsfr_reg[6]~regout ),
	.datac(vcc),
	.datad(vcc),
	.datae(vcc),
	.dataf(vcc),
	.datag(vcc),
	.cin(gnd),
	.sharein(gnd),
	.combout(\lsfr_reg~308_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \lsfr_reg~308 .extended_lut = "off";
defparam \lsfr_reg~308 .lut_mask = 64'h8888888888888888;
defparam \lsfr_reg~308 .shared_arith = "off";

stratixii_lcell_ff \lsfr_reg[7] (
	.clk(clk),
	.datain(\lsfr_reg~308_combout ),
	.adatasdata(gnd),
	.aclr(gnd),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_tmp_11),
	.regout(\lsfr_reg[7]~regout ));

stratixii_lcell_ff \lsfr_reg[8] (
	.clk(clk),
	.datain(\lsfr_reg[7]~regout ),
	.adatasdata(gnd),
	.aclr(gnd),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_tmp_11),
	.regout(\lsfr_reg[8]~regout ));

stratixii_lcell_comb \lsfr_reg~307 (
	.dataa(!reset_n),
	.datab(!\lsfr_reg[8]~regout ),
	.datac(vcc),
	.datad(vcc),
	.datae(vcc),
	.dataf(vcc),
	.datag(vcc),
	.cin(gnd),
	.sharein(gnd),
	.combout(\lsfr_reg~307_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \lsfr_reg~307 .extended_lut = "off";
defparam \lsfr_reg~307 .lut_mask = 64'h8888888888888888;
defparam \lsfr_reg~307 .shared_arith = "off";

stratixii_lcell_ff \lsfr_reg[9] (
	.clk(clk),
	.datain(\lsfr_reg~307_combout ),
	.adatasdata(gnd),
	.aclr(gnd),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_tmp_11),
	.regout(\lsfr_reg[9]~regout ));

stratixii_lcell_ff \lsfr_reg[10] (
	.clk(clk),
	.datain(\lsfr_reg[9]~regout ),
	.adatasdata(gnd),
	.aclr(gnd),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_tmp_11),
	.regout(\lsfr_reg[10]~regout ));

stratixii_lcell_comb \lsfr_reg~306 (
	.dataa(!reset_n),
	.datab(!\lsfr_reg[10]~regout ),
	.datac(vcc),
	.datad(vcc),
	.datae(vcc),
	.dataf(vcc),
	.datag(vcc),
	.cin(gnd),
	.sharein(gnd),
	.combout(\lsfr_reg~306_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \lsfr_reg~306 .extended_lut = "off";
defparam \lsfr_reg~306 .lut_mask = 64'h8888888888888888;
defparam \lsfr_reg~306 .shared_arith = "off";

stratixii_lcell_ff \lsfr_reg[11] (
	.clk(clk),
	.datain(\lsfr_reg~306_combout ),
	.adatasdata(gnd),
	.aclr(gnd),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_tmp_11),
	.regout(\lsfr_reg[11]~regout ));

stratixii_lcell_comb \lsfr_reg~305 (
	.dataa(!reset_n),
	.datab(!\lsfr_reg[11]~regout ),
	.datac(vcc),
	.datad(vcc),
	.datae(vcc),
	.dataf(vcc),
	.datag(vcc),
	.cin(gnd),
	.sharein(gnd),
	.combout(\lsfr_reg~305_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \lsfr_reg~305 .extended_lut = "off";
defparam \lsfr_reg~305 .lut_mask = 64'h8888888888888888;
defparam \lsfr_reg~305 .shared_arith = "off";

stratixii_lcell_ff \lsfr_reg[12] (
	.clk(clk),
	.datain(\lsfr_reg~305_combout ),
	.adatasdata(gnd),
	.aclr(gnd),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_tmp_11),
	.regout(\lsfr_reg[12]~regout ));

stratixii_lcell_ff \lsfr_reg[13] (
	.clk(clk),
	.datain(\lsfr_reg[12]~regout ),
	.adatasdata(gnd),
	.aclr(gnd),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_tmp_11),
	.regout(\lsfr_reg[13]~regout ));

stratixii_lcell_ff \lsfr_reg[14] (
	.clk(clk),
	.datain(\lsfr_reg[13]~regout ),
	.adatasdata(gnd),
	.aclr(gnd),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_tmp_11),
	.regout(\lsfr_reg[14]~regout ));

stratixii_lcell_comb \lsfr_reg~304 (
	.dataa(!reset_n),
	.datab(!\lsfr_reg[14]~regout ),
	.datac(vcc),
	.datad(vcc),
	.datae(vcc),
	.dataf(vcc),
	.datag(vcc),
	.cin(gnd),
	.sharein(gnd),
	.combout(\lsfr_reg~304_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \lsfr_reg~304 .extended_lut = "off";
defparam \lsfr_reg~304 .lut_mask = 64'h8888888888888888;
defparam \lsfr_reg~304 .shared_arith = "off";

stratixii_lcell_ff \lsfr_reg[15] (
	.clk(clk),
	.datain(\lsfr_reg~304_combout ),
	.adatasdata(gnd),
	.aclr(gnd),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_tmp_11),
	.regout(\lsfr_reg[15]~regout ));

stratixii_lcell_comb \Add0~75 (
	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(!\lsfr_reg[15]~regout ),
	.datae(vcc),
	.dataf(!\lsfr_reg[11]~regout ),
	.datag(vcc),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(\Add0~75_sumout ),
	.cout(\Add0~76 ),
	.shareout());
defparam \Add0~75 .extended_lut = "off";
defparam \Add0~75 .lut_mask = 64'h000000000000ff00;
defparam \Add0~75 .shared_arith = "off";

stratixii_lcell_comb \Add0~79 (
	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(!\lsfr_reg[12]~regout ),
	.datae(vcc),
	.dataf(vcc),
	.datag(vcc),
	.cin(\Add0~76 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add0~79_sumout ),
	.cout(\Add0~80 ),
	.shareout());
defparam \Add0~79 .extended_lut = "off";
defparam \Add0~79 .lut_mask = 64'h000000000000ff00;
defparam \Add0~79 .shared_arith = "off";

stratixii_lcell_comb \Add0~83 (
	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(!\lsfr_reg[13]~regout ),
	.datae(vcc),
	.dataf(vcc),
	.datag(vcc),
	.cin(\Add0~80 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add0~83_sumout ),
	.cout(\Add0~84 ),
	.shareout());
defparam \Add0~83 .extended_lut = "off";
defparam \Add0~83 .lut_mask = 64'h000000000000ff00;
defparam \Add0~83 .shared_arith = "off";

stratixii_lcell_comb \Add0~87 (
	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(!\lsfr_reg[14]~regout ),
	.datae(vcc),
	.dataf(vcc),
	.datag(vcc),
	.cin(\Add0~84 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add0~87_sumout ),
	.cout(\Add0~88 ),
	.shareout());
defparam \Add0~87 .extended_lut = "off";
defparam \Add0~87 .lut_mask = 64'h000000000000ff00;
defparam \Add0~87 .shared_arith = "off";

stratixii_lcell_comb \Add0~91 (
	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(!\lsfr_reg[15]~regout ),
	.datae(vcc),
	.dataf(vcc),
	.datag(vcc),
	.cin(\Add0~88 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add0~91_sumout ),
	.cout(),
	.shareout());
defparam \Add0~91 .extended_lut = "off";
defparam \Add0~91 .lut_mask = 64'h000000000000ff00;
defparam \Add0~91 .shared_arith = "off";

endmodule

module NCO1_asj_gam_dp (
	rom_add_cc_temp_0,
	rom_add_cc_temp_1,
	rom_add_cc_temp_2,
	rom_add_cc_temp_3,
	rom_add_cc_temp_4,
	rom_add_cc_temp_5,
	rom_add_cs_6,
	rom_add_cs_7,
	rom_add_cc_temp_6,
	rom_add_cc_temp_7,
	rom_add_f_0,
	rom_add_f_1,
	rom_add_f_2,
	rom_add_f_3,
	rom_add_f_4,
	rom_add_f_5,
	rom_add_f_6,
	rom_add_f_7,
	dxxpdo_13,
	dxxpdo_14,
	dxxpdo_15,
	dxxpdo_16,
	dxxpdo_17,
	dxxpdo_18,
	dxxpdo_19,
	dxxpdo_20,
	dxxpdo_5,
	dxxpdo_6,
	dxxpdo_7,
	dxxpdo_8,
	dxxpdo_9,
	dxxpdo_10,
	dxxpdo_11,
	dxxpdo_12,
	data_tmp_11,
	clk,
	reset_n)/* synthesis synthesis_greybox=1 */;
output 	rom_add_cc_temp_0;
output 	rom_add_cc_temp_1;
output 	rom_add_cc_temp_2;
output 	rom_add_cc_temp_3;
output 	rom_add_cc_temp_4;
output 	rom_add_cc_temp_5;
output 	rom_add_cs_6;
output 	rom_add_cs_7;
output 	rom_add_cc_temp_6;
output 	rom_add_cc_temp_7;
output 	rom_add_f_0;
output 	rom_add_f_1;
output 	rom_add_f_2;
output 	rom_add_f_3;
output 	rom_add_f_4;
output 	rom_add_f_5;
output 	rom_add_f_6;
output 	rom_add_f_7;
input 	dxxpdo_13;
input 	dxxpdo_14;
input 	dxxpdo_15;
input 	dxxpdo_16;
input 	dxxpdo_17;
input 	dxxpdo_18;
input 	dxxpdo_19;
input 	dxxpdo_20;
input 	dxxpdo_5;
input 	dxxpdo_6;
input 	dxxpdo_7;
input 	dxxpdo_8;
input 	dxxpdo_9;
input 	dxxpdo_10;
input 	dxxpdo_11;
input 	dxxpdo_12;
input 	data_tmp_11;
input 	clk;
input 	reset_n;

wire gnd;
wire vcc;

assign gnd = 1'b0;
assign vcc = 1'b1;

wire \Add0~129_sumout ;
wire \Add0~130 ;
wire \Add0~133_sumout ;


stratixii_lcell_ff \rom_add_cc_temp[0] (
	.clk(clk),
	.datain(dxxpdo_13),
	.adatasdata(gnd),
	.aclr(gnd),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_tmp_11),
	.regout(rom_add_cc_temp_0));

stratixii_lcell_ff \rom_add_cc_temp[1] (
	.clk(clk),
	.datain(dxxpdo_14),
	.adatasdata(gnd),
	.aclr(gnd),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_tmp_11),
	.regout(rom_add_cc_temp_1));

stratixii_lcell_ff \rom_add_cc_temp[2] (
	.clk(clk),
	.datain(dxxpdo_15),
	.adatasdata(gnd),
	.aclr(gnd),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_tmp_11),
	.regout(rom_add_cc_temp_2));

stratixii_lcell_ff \rom_add_cc_temp[3] (
	.clk(clk),
	.datain(dxxpdo_16),
	.adatasdata(gnd),
	.aclr(gnd),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_tmp_11),
	.regout(rom_add_cc_temp_3));

stratixii_lcell_ff \rom_add_cc_temp[4] (
	.clk(clk),
	.datain(dxxpdo_17),
	.adatasdata(gnd),
	.aclr(gnd),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_tmp_11),
	.regout(rom_add_cc_temp_4));

stratixii_lcell_ff \rom_add_cc_temp[5] (
	.clk(clk),
	.datain(dxxpdo_18),
	.adatasdata(gnd),
	.aclr(gnd),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_tmp_11),
	.regout(rom_add_cc_temp_5));

stratixii_lcell_ff \rom_add_cs[6] (
	.clk(clk),
	.datain(dxxpdo_19),
	.adatasdata(gnd),
	.aclr(gnd),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_tmp_11),
	.regout(rom_add_cs_6));

stratixii_lcell_ff \rom_add_cs[7] (
	.clk(clk),
	.datain(dxxpdo_20),
	.adatasdata(gnd),
	.aclr(gnd),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_tmp_11),
	.regout(rom_add_cs_7));

stratixii_lcell_ff \rom_add_cc_temp[6] (
	.clk(clk),
	.datain(\Add0~129_sumout ),
	.adatasdata(gnd),
	.aclr(gnd),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_tmp_11),
	.regout(rom_add_cc_temp_6));

stratixii_lcell_ff \rom_add_cc_temp[7] (
	.clk(clk),
	.datain(\Add0~133_sumout ),
	.adatasdata(gnd),
	.aclr(gnd),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_tmp_11),
	.regout(rom_add_cc_temp_7));

stratixii_lcell_ff \rom_add_f[0] (
	.clk(clk),
	.datain(dxxpdo_5),
	.adatasdata(gnd),
	.aclr(gnd),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_tmp_11),
	.regout(rom_add_f_0));

stratixii_lcell_ff \rom_add_f[1] (
	.clk(clk),
	.datain(dxxpdo_6),
	.adatasdata(gnd),
	.aclr(gnd),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_tmp_11),
	.regout(rom_add_f_1));

stratixii_lcell_ff \rom_add_f[2] (
	.clk(clk),
	.datain(dxxpdo_7),
	.adatasdata(gnd),
	.aclr(gnd),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_tmp_11),
	.regout(rom_add_f_2));

stratixii_lcell_ff \rom_add_f[3] (
	.clk(clk),
	.datain(dxxpdo_8),
	.adatasdata(gnd),
	.aclr(gnd),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_tmp_11),
	.regout(rom_add_f_3));

stratixii_lcell_ff \rom_add_f[4] (
	.clk(clk),
	.datain(dxxpdo_9),
	.adatasdata(gnd),
	.aclr(gnd),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_tmp_11),
	.regout(rom_add_f_4));

stratixii_lcell_ff \rom_add_f[5] (
	.clk(clk),
	.datain(dxxpdo_10),
	.adatasdata(gnd),
	.aclr(gnd),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_tmp_11),
	.regout(rom_add_f_5));

stratixii_lcell_ff \rom_add_f[6] (
	.clk(clk),
	.datain(dxxpdo_11),
	.adatasdata(gnd),
	.aclr(gnd),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_tmp_11),
	.regout(rom_add_f_6));

stratixii_lcell_ff \rom_add_f[7] (
	.clk(clk),
	.datain(dxxpdo_12),
	.adatasdata(gnd),
	.aclr(gnd),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_tmp_11),
	.regout(rom_add_f_7));

stratixii_lcell_comb \Add0~129 (
	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(!dxxpdo_19),
	.datae(vcc),
	.dataf(vcc),
	.datag(vcc),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(\Add0~129_sumout ),
	.cout(\Add0~130 ),
	.shareout());
defparam \Add0~129 .extended_lut = "off";
defparam \Add0~129 .lut_mask = 64'h000000000000ff00;
defparam \Add0~129 .shared_arith = "off";

stratixii_lcell_comb \Add0~133 (
	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(!dxxpdo_20),
	.datae(vcc),
	.dataf(vcc),
	.datag(vcc),
	.cin(\Add0~130 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add0~133_sumout ),
	.cout(),
	.shareout());
defparam \Add0~133 .extended_lut = "off";
defparam \Add0~133 .lut_mask = 64'h000000000000ff00;
defparam \Add0~133 .shared_arith = "off";

endmodule

module NCO1_asj_nco_as_m_cen (
	q_a_0,
	q_a_1,
	q_a_2,
	q_a_3,
	q_a_4,
	q_a_5,
	q_a_6,
	q_a_7,
	q_a_8,
	q_a_9,
	q_a_10,
	q_a_11,
	q_a_12,
	q_a_13,
	rom_add_f_0,
	rom_add_f_1,
	rom_add_f_2,
	rom_add_f_3,
	rom_add_f_4,
	rom_add_f_5,
	rom_add_f_6,
	rom_add_f_7,
	clk,
	clken)/* synthesis synthesis_greybox=1 */;
output 	q_a_0;
output 	q_a_1;
output 	q_a_2;
output 	q_a_3;
output 	q_a_4;
output 	q_a_5;
output 	q_a_6;
output 	q_a_7;
output 	q_a_8;
output 	q_a_9;
output 	q_a_10;
output 	q_a_11;
output 	q_a_12;
output 	q_a_13;
input 	rom_add_f_0;
input 	rom_add_f_1;
input 	rom_add_f_2;
input 	rom_add_f_3;
input 	rom_add_f_4;
input 	rom_add_f_5;
input 	rom_add_f_6;
input 	rom_add_f_7;
input 	clk;
input 	clken;

wire gnd;
wire vcc;

assign gnd = 1'b0;
assign vcc = 1'b1;



NCO1_altsyncram_1 altsyncram_component0(
	.q_a({q_a_13,q_a_12,q_a_11,q_a_10,q_a_9,q_a_8,q_a_7,q_a_6,q_a_5,q_a_4,q_a_3,q_a_2,q_a_1,q_a_0}),
	.address_a({rom_add_f_7,rom_add_f_6,rom_add_f_5,rom_add_f_4,rom_add_f_3,rom_add_f_2,rom_add_f_1,rom_add_f_0}),
	.clock0(clk),
	.clocken0(clken));

endmodule

module NCO1_altsyncram_1 (
	q_a,
	address_a,
	clock0,
	clocken0)/* synthesis synthesis_greybox=1 */;
output 	[13:0] q_a;
input 	[7:0] address_a;
input 	clock0;
input 	clocken0;

wire gnd;
wire vcc;

assign gnd = 1'b0;
assign vcc = 1'b1;



NCO1_altsyncram_ou81 auto_generated(
	.q_a({q_a[13],q_a[12],q_a[11],q_a[10],q_a[9],q_a[8],q_a[7],q_a[6],q_a[5],q_a[4],q_a[3],q_a[2],q_a[1],q_a[0]}),
	.address_a({address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.clock0(clock0),
	.clocken0(clocken0));

endmodule

module NCO1_altsyncram_ou81 (
	q_a,
	address_a,
	clock0,
	clocken0)/* synthesis synthesis_greybox=1 */;
output 	[13:0] q_a;
input 	[7:0] address_a;
input 	clock0;
input 	clocken0;

wire gnd;
wire vcc;

assign gnd = 1'b0;
assign vcc = 1'b1;


wire [143:0] ram_block1a0_PORTADATAOUT_bus;
wire [143:0] ram_block1a1_PORTADATAOUT_bus;
wire [143:0] ram_block1a2_PORTADATAOUT_bus;
wire [143:0] ram_block1a3_PORTADATAOUT_bus;
wire [143:0] ram_block1a4_PORTADATAOUT_bus;
wire [143:0] ram_block1a5_PORTADATAOUT_bus;
wire [143:0] ram_block1a6_PORTADATAOUT_bus;
wire [143:0] ram_block1a7_PORTADATAOUT_bus;
wire [143:0] ram_block1a8_PORTADATAOUT_bus;
wire [143:0] ram_block1a9_PORTADATAOUT_bus;
wire [143:0] ram_block1a10_PORTADATAOUT_bus;
wire [143:0] ram_block1a11_PORTADATAOUT_bus;
wire [143:0] ram_block1a12_PORTADATAOUT_bus;
wire [143:0] ram_block1a13_PORTADATAOUT_bus;

assign q_a[0] = ram_block1a0_PORTADATAOUT_bus[0];

assign q_a[1] = ram_block1a1_PORTADATAOUT_bus[0];

assign q_a[2] = ram_block1a2_PORTADATAOUT_bus[0];

assign q_a[3] = ram_block1a3_PORTADATAOUT_bus[0];

assign q_a[4] = ram_block1a4_PORTADATAOUT_bus[0];

assign q_a[5] = ram_block1a5_PORTADATAOUT_bus[0];

assign q_a[6] = ram_block1a6_PORTADATAOUT_bus[0];

assign q_a[7] = ram_block1a7_PORTADATAOUT_bus[0];

assign q_a[8] = ram_block1a8_PORTADATAOUT_bus[0];

assign q_a[9] = ram_block1a9_PORTADATAOUT_bus[0];

assign q_a[10] = ram_block1a10_PORTADATAOUT_bus[0];

assign q_a[11] = ram_block1a11_PORTADATAOUT_bus[0];

assign q_a[12] = ram_block1a12_PORTADATAOUT_bus[0];

assign q_a[13] = ram_block1a13_PORTADATAOUT_bus[0];

stratixii_ram_block ram_block1a0(
	.portawe(gnd),
	.portaaddrstall(gnd),
	.portbrewe(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(clocken0),
	.ena1(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a0_PORTADATAOUT_bus),
	.portbdataout());
defparam ram_block1a0.data_interleave_offset_in_bits = 1;
defparam ram_block1a0.data_interleave_width_in_bits = 1;
defparam ram_block1a0.init_file = "NCO1_sin_f.hex";
defparam ram_block1a0.init_file_layout = "port_a";
defparam ram_block1a0.logical_ram_name = "NCO1_st:NCO1_st_inst|asj_nco_as_m_cen:ux0122|altsyncram:altsyncram_component0|altsyncram_ou81:auto_generated|ALTSYNCRAM";
defparam ram_block1a0.operation_mode = "rom";
defparam ram_block1a0.port_a_address_width = 8;
defparam ram_block1a0.port_a_data_out_clear = "none";
defparam ram_block1a0.port_a_data_out_clock = "clock0";
defparam ram_block1a0.port_a_data_width = 1;
defparam ram_block1a0.port_a_first_address = 0;
defparam ram_block1a0.port_a_first_bit_number = 0;
defparam ram_block1a0.port_a_last_address = 255;
defparam ram_block1a0.port_a_logical_ram_depth = 256;
defparam ram_block1a0.port_a_logical_ram_width = 14;
defparam ram_block1a0.ram_block_type = "auto";
defparam ram_block1a0.mem_init0 = 256'h694A5AD694A5AD694A5AD694B5AD294B5AD294B5AD294B5AD294B5AD294B5AD2;

stratixii_ram_block ram_block1a1(
	.portawe(gnd),
	.portaaddrstall(gnd),
	.portbrewe(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(clocken0),
	.ena1(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a1_PORTADATAOUT_bus),
	.portbdataout());
defparam ram_block1a1.data_interleave_offset_in_bits = 1;
defparam ram_block1a1.data_interleave_width_in_bits = 1;
defparam ram_block1a1.init_file = "NCO1_sin_f.hex";
defparam ram_block1a1.init_file_layout = "port_a";
defparam ram_block1a1.logical_ram_name = "NCO1_st:NCO1_st_inst|asj_nco_as_m_cen:ux0122|altsyncram:altsyncram_component0|altsyncram_ou81:auto_generated|ALTSYNCRAM";
defparam ram_block1a1.operation_mode = "rom";
defparam ram_block1a1.port_a_address_width = 8;
defparam ram_block1a1.port_a_data_out_clear = "none";
defparam ram_block1a1.port_a_data_out_clock = "clock0";
defparam ram_block1a1.port_a_data_width = 1;
defparam ram_block1a1.port_a_first_address = 0;
defparam ram_block1a1.port_a_first_bit_number = 1;
defparam ram_block1a1.port_a_last_address = 255;
defparam ram_block1a1.port_a_logical_ram_depth = 256;
defparam ram_block1a1.port_a_logical_ram_width = 14;
defparam ram_block1a1.ram_block_type = "auto";
defparam ram_block1a1.mem_init0 = 256'h718C6318E739CE718C6318E739CE318C631CE739CE318C631CE739CE318C631C;

stratixii_ram_block ram_block1a2(
	.portawe(gnd),
	.portaaddrstall(gnd),
	.portbrewe(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(clocken0),
	.ena1(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a2_PORTADATAOUT_bus),
	.portbdataout());
defparam ram_block1a2.data_interleave_offset_in_bits = 1;
defparam ram_block1a2.data_interleave_width_in_bits = 1;
defparam ram_block1a2.init_file = "NCO1_sin_f.hex";
defparam ram_block1a2.init_file_layout = "port_a";
defparam ram_block1a2.logical_ram_name = "NCO1_st:NCO1_st_inst|asj_nco_as_m_cen:ux0122|altsyncram:altsyncram_component0|altsyncram_ou81:auto_generated|ALTSYNCRAM";
defparam ram_block1a2.operation_mode = "rom";
defparam ram_block1a2.port_a_address_width = 8;
defparam ram_block1a2.port_a_data_out_clear = "none";
defparam ram_block1a2.port_a_data_out_clock = "clock0";
defparam ram_block1a2.port_a_data_width = 1;
defparam ram_block1a2.port_a_first_address = 0;
defparam ram_block1a2.port_a_first_bit_number = 2;
defparam ram_block1a2.port_a_last_address = 255;
defparam ram_block1a2.port_a_logical_ram_depth = 256;
defparam ram_block1a2.port_a_logical_ram_width = 14;
defparam ram_block1a2.ram_block_type = "auto";
defparam ram_block1a2.mem_init0 = 256'h7E0F83E0F83E0F81F07C1F07C1F03E0F83E0F83E0FC1F07C1F07C1F03E0F83E0;

stratixii_ram_block ram_block1a3(
	.portawe(gnd),
	.portaaddrstall(gnd),
	.portbrewe(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(clocken0),
	.ena1(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a3_PORTADATAOUT_bus),
	.portbdataout());
defparam ram_block1a3.data_interleave_offset_in_bits = 1;
defparam ram_block1a3.data_interleave_width_in_bits = 1;
defparam ram_block1a3.init_file = "NCO1_sin_f.hex";
defparam ram_block1a3.init_file_layout = "port_a";
defparam ram_block1a3.logical_ram_name = "NCO1_st:NCO1_st_inst|asj_nco_as_m_cen:ux0122|altsyncram:altsyncram_component0|altsyncram_ou81:auto_generated|ALTSYNCRAM";
defparam ram_block1a3.operation_mode = "rom";
defparam ram_block1a3.port_a_address_width = 8;
defparam ram_block1a3.port_a_data_out_clear = "none";
defparam ram_block1a3.port_a_data_out_clock = "clock0";
defparam ram_block1a3.port_a_data_width = 1;
defparam ram_block1a3.port_a_first_address = 0;
defparam ram_block1a3.port_a_first_bit_number = 3;
defparam ram_block1a3.port_a_last_address = 255;
defparam ram_block1a3.port_a_logical_ram_depth = 256;
defparam ram_block1a3.port_a_logical_ram_width = 14;
defparam ram_block1a3.ram_block_type = "auto";
defparam ram_block1a3.mem_init0 = 256'h800FFC00FFC00FFE007FE007FE003FF003FF003FF001FF801FF801FFC00FFC00;

stratixii_ram_block ram_block1a4(
	.portawe(gnd),
	.portaaddrstall(gnd),
	.portbrewe(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(clocken0),
	.ena1(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a4_PORTADATAOUT_bus),
	.portbdataout());
defparam ram_block1a4.data_interleave_offset_in_bits = 1;
defparam ram_block1a4.data_interleave_width_in_bits = 1;
defparam ram_block1a4.init_file = "NCO1_sin_f.hex";
defparam ram_block1a4.init_file_layout = "port_a";
defparam ram_block1a4.logical_ram_name = "NCO1_st:NCO1_st_inst|asj_nco_as_m_cen:ux0122|altsyncram:altsyncram_component0|altsyncram_ou81:auto_generated|ALTSYNCRAM";
defparam ram_block1a4.operation_mode = "rom";
defparam ram_block1a4.port_a_address_width = 8;
defparam ram_block1a4.port_a_data_out_clear = "none";
defparam ram_block1a4.port_a_data_out_clock = "clock0";
defparam ram_block1a4.port_a_data_width = 1;
defparam ram_block1a4.port_a_first_address = 0;
defparam ram_block1a4.port_a_first_bit_number = 4;
defparam ram_block1a4.port_a_last_address = 255;
defparam ram_block1a4.port_a_logical_ram_depth = 256;
defparam ram_block1a4.port_a_logical_ram_width = 14;
defparam ram_block1a4.ram_block_type = "auto";
defparam ram_block1a4.mem_init0 = 256'h000FFFFF00000FFFFF800007FFFFC00003FFFFC00001FFFFE00001FFFFF00000;

stratixii_ram_block ram_block1a5(
	.portawe(gnd),
	.portaaddrstall(gnd),
	.portbrewe(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(clocken0),
	.ena1(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a5_PORTADATAOUT_bus),
	.portbdataout());
defparam ram_block1a5.data_interleave_offset_in_bits = 1;
defparam ram_block1a5.data_interleave_width_in_bits = 1;
defparam ram_block1a5.init_file = "NCO1_sin_f.hex";
defparam ram_block1a5.init_file_layout = "port_a";
defparam ram_block1a5.logical_ram_name = "NCO1_st:NCO1_st_inst|asj_nco_as_m_cen:ux0122|altsyncram:altsyncram_component0|altsyncram_ou81:auto_generated|ALTSYNCRAM";
defparam ram_block1a5.operation_mode = "rom";
defparam ram_block1a5.port_a_address_width = 8;
defparam ram_block1a5.port_a_data_out_clear = "none";
defparam ram_block1a5.port_a_data_out_clock = "clock0";
defparam ram_block1a5.port_a_data_width = 1;
defparam ram_block1a5.port_a_first_address = 0;
defparam ram_block1a5.port_a_first_bit_number = 5;
defparam ram_block1a5.port_a_last_address = 255;
defparam ram_block1a5.port_a_logical_ram_depth = 256;
defparam ram_block1a5.port_a_logical_ram_width = 14;
defparam ram_block1a5.ram_block_type = "auto";
defparam ram_block1a5.mem_init0 = 256'h000FFFFFFFFFF00000000007FFFFFFFFFC0000000001FFFFFFFFFE0000000000;

stratixii_ram_block ram_block1a6(
	.portawe(gnd),
	.portaaddrstall(gnd),
	.portbrewe(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(clocken0),
	.ena1(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a6_PORTADATAOUT_bus),
	.portbdataout());
defparam ram_block1a6.data_interleave_offset_in_bits = 1;
defparam ram_block1a6.data_interleave_width_in_bits = 1;
defparam ram_block1a6.init_file = "NCO1_sin_f.hex";
defparam ram_block1a6.init_file_layout = "port_a";
defparam ram_block1a6.logical_ram_name = "NCO1_st:NCO1_st_inst|asj_nco_as_m_cen:ux0122|altsyncram:altsyncram_component0|altsyncram_ou81:auto_generated|ALTSYNCRAM";
defparam ram_block1a6.operation_mode = "rom";
defparam ram_block1a6.port_a_address_width = 8;
defparam ram_block1a6.port_a_data_out_clear = "none";
defparam ram_block1a6.port_a_data_out_clock = "clock0";
defparam ram_block1a6.port_a_data_width = 1;
defparam ram_block1a6.port_a_first_address = 0;
defparam ram_block1a6.port_a_first_bit_number = 6;
defparam ram_block1a6.port_a_last_address = 255;
defparam ram_block1a6.port_a_logical_ram_depth = 256;
defparam ram_block1a6.port_a_logical_ram_width = 14;
defparam ram_block1a6.ram_block_type = "auto";
defparam ram_block1a6.mem_init0 = 256'hFFF000000000000000000007FFFFFFFFFFFFFFFFFFFE00000000000000000000;

stratixii_ram_block ram_block1a7(
	.portawe(gnd),
	.portaaddrstall(gnd),
	.portbrewe(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(clocken0),
	.ena1(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a7_PORTADATAOUT_bus),
	.portbdataout());
defparam ram_block1a7.data_interleave_offset_in_bits = 1;
defparam ram_block1a7.data_interleave_width_in_bits = 1;
defparam ram_block1a7.init_file = "NCO1_sin_f.hex";
defparam ram_block1a7.init_file_layout = "port_a";
defparam ram_block1a7.logical_ram_name = "NCO1_st:NCO1_st_inst|asj_nco_as_m_cen:ux0122|altsyncram:altsyncram_component0|altsyncram_ou81:auto_generated|ALTSYNCRAM";
defparam ram_block1a7.operation_mode = "rom";
defparam ram_block1a7.port_a_address_width = 8;
defparam ram_block1a7.port_a_data_out_clear = "none";
defparam ram_block1a7.port_a_data_out_clock = "clock0";
defparam ram_block1a7.port_a_data_width = 1;
defparam ram_block1a7.port_a_first_address = 0;
defparam ram_block1a7.port_a_first_bit_number = 7;
defparam ram_block1a7.port_a_last_address = 255;
defparam ram_block1a7.port_a_logical_ram_depth = 256;
defparam ram_block1a7.port_a_logical_ram_width = 14;
defparam ram_block1a7.ram_block_type = "auto";
defparam ram_block1a7.mem_init0 = 256'hFFFFFFFFFFFFFFFFFFFFFFF80000000000000000000000000000000000000000;

stratixii_ram_block ram_block1a8(
	.portawe(gnd),
	.portaaddrstall(gnd),
	.portbrewe(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(clocken0),
	.ena1(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a8_PORTADATAOUT_bus),
	.portbdataout());
defparam ram_block1a8.data_interleave_offset_in_bits = 1;
defparam ram_block1a8.data_interleave_width_in_bits = 1;
defparam ram_block1a8.init_file = "NCO1_sin_f.hex";
defparam ram_block1a8.init_file_layout = "port_a";
defparam ram_block1a8.logical_ram_name = "NCO1_st:NCO1_st_inst|asj_nco_as_m_cen:ux0122|altsyncram:altsyncram_component0|altsyncram_ou81:auto_generated|ALTSYNCRAM";
defparam ram_block1a8.operation_mode = "rom";
defparam ram_block1a8.port_a_address_width = 8;
defparam ram_block1a8.port_a_data_out_clear = "none";
defparam ram_block1a8.port_a_data_out_clock = "clock0";
defparam ram_block1a8.port_a_data_width = 1;
defparam ram_block1a8.port_a_first_address = 0;
defparam ram_block1a8.port_a_first_bit_number = 8;
defparam ram_block1a8.port_a_last_address = 255;
defparam ram_block1a8.port_a_logical_ram_depth = 256;
defparam ram_block1a8.port_a_logical_ram_width = 14;
defparam ram_block1a8.ram_block_type = "auto";
defparam ram_block1a8.mem_init0 = 256'h0000000000000000000000000000000000000000000000000000000000000000;

stratixii_ram_block ram_block1a9(
	.portawe(gnd),
	.portaaddrstall(gnd),
	.portbrewe(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(clocken0),
	.ena1(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a9_PORTADATAOUT_bus),
	.portbdataout());
defparam ram_block1a9.data_interleave_offset_in_bits = 1;
defparam ram_block1a9.data_interleave_width_in_bits = 1;
defparam ram_block1a9.init_file = "NCO1_sin_f.hex";
defparam ram_block1a9.init_file_layout = "port_a";
defparam ram_block1a9.logical_ram_name = "NCO1_st:NCO1_st_inst|asj_nco_as_m_cen:ux0122|altsyncram:altsyncram_component0|altsyncram_ou81:auto_generated|ALTSYNCRAM";
defparam ram_block1a9.operation_mode = "rom";
defparam ram_block1a9.port_a_address_width = 8;
defparam ram_block1a9.port_a_data_out_clear = "none";
defparam ram_block1a9.port_a_data_out_clock = "clock0";
defparam ram_block1a9.port_a_data_width = 1;
defparam ram_block1a9.port_a_first_address = 0;
defparam ram_block1a9.port_a_first_bit_number = 9;
defparam ram_block1a9.port_a_last_address = 255;
defparam ram_block1a9.port_a_logical_ram_depth = 256;
defparam ram_block1a9.port_a_logical_ram_width = 14;
defparam ram_block1a9.ram_block_type = "auto";
defparam ram_block1a9.mem_init0 = 256'h0000000000000000000000000000000000000000000000000000000000000000;

stratixii_ram_block ram_block1a10(
	.portawe(gnd),
	.portaaddrstall(gnd),
	.portbrewe(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(clocken0),
	.ena1(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a10_PORTADATAOUT_bus),
	.portbdataout());
defparam ram_block1a10.data_interleave_offset_in_bits = 1;
defparam ram_block1a10.data_interleave_width_in_bits = 1;
defparam ram_block1a10.init_file = "NCO1_sin_f.hex";
defparam ram_block1a10.init_file_layout = "port_a";
defparam ram_block1a10.logical_ram_name = "NCO1_st:NCO1_st_inst|asj_nco_as_m_cen:ux0122|altsyncram:altsyncram_component0|altsyncram_ou81:auto_generated|ALTSYNCRAM";
defparam ram_block1a10.operation_mode = "rom";
defparam ram_block1a10.port_a_address_width = 8;
defparam ram_block1a10.port_a_data_out_clear = "none";
defparam ram_block1a10.port_a_data_out_clock = "clock0";
defparam ram_block1a10.port_a_data_width = 1;
defparam ram_block1a10.port_a_first_address = 0;
defparam ram_block1a10.port_a_first_bit_number = 10;
defparam ram_block1a10.port_a_last_address = 255;
defparam ram_block1a10.port_a_logical_ram_depth = 256;
defparam ram_block1a10.port_a_logical_ram_width = 14;
defparam ram_block1a10.ram_block_type = "auto";
defparam ram_block1a10.mem_init0 = 256'h0000000000000000000000000000000000000000000000000000000000000000;

stratixii_ram_block ram_block1a11(
	.portawe(gnd),
	.portaaddrstall(gnd),
	.portbrewe(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(clocken0),
	.ena1(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a11_PORTADATAOUT_bus),
	.portbdataout());
defparam ram_block1a11.data_interleave_offset_in_bits = 1;
defparam ram_block1a11.data_interleave_width_in_bits = 1;
defparam ram_block1a11.init_file = "NCO1_sin_f.hex";
defparam ram_block1a11.init_file_layout = "port_a";
defparam ram_block1a11.logical_ram_name = "NCO1_st:NCO1_st_inst|asj_nco_as_m_cen:ux0122|altsyncram:altsyncram_component0|altsyncram_ou81:auto_generated|ALTSYNCRAM";
defparam ram_block1a11.operation_mode = "rom";
defparam ram_block1a11.port_a_address_width = 8;
defparam ram_block1a11.port_a_data_out_clear = "none";
defparam ram_block1a11.port_a_data_out_clock = "clock0";
defparam ram_block1a11.port_a_data_width = 1;
defparam ram_block1a11.port_a_first_address = 0;
defparam ram_block1a11.port_a_first_bit_number = 11;
defparam ram_block1a11.port_a_last_address = 255;
defparam ram_block1a11.port_a_logical_ram_depth = 256;
defparam ram_block1a11.port_a_logical_ram_width = 14;
defparam ram_block1a11.ram_block_type = "auto";
defparam ram_block1a11.mem_init0 = 256'h0000000000000000000000000000000000000000000000000000000000000000;

stratixii_ram_block ram_block1a12(
	.portawe(gnd),
	.portaaddrstall(gnd),
	.portbrewe(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(clocken0),
	.ena1(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a12_PORTADATAOUT_bus),
	.portbdataout());
defparam ram_block1a12.data_interleave_offset_in_bits = 1;
defparam ram_block1a12.data_interleave_width_in_bits = 1;
defparam ram_block1a12.init_file = "NCO1_sin_f.hex";
defparam ram_block1a12.init_file_layout = "port_a";
defparam ram_block1a12.logical_ram_name = "NCO1_st:NCO1_st_inst|asj_nco_as_m_cen:ux0122|altsyncram:altsyncram_component0|altsyncram_ou81:auto_generated|ALTSYNCRAM";
defparam ram_block1a12.operation_mode = "rom";
defparam ram_block1a12.port_a_address_width = 8;
defparam ram_block1a12.port_a_data_out_clear = "none";
defparam ram_block1a12.port_a_data_out_clock = "clock0";
defparam ram_block1a12.port_a_data_width = 1;
defparam ram_block1a12.port_a_first_address = 0;
defparam ram_block1a12.port_a_first_bit_number = 12;
defparam ram_block1a12.port_a_last_address = 255;
defparam ram_block1a12.port_a_logical_ram_depth = 256;
defparam ram_block1a12.port_a_logical_ram_width = 14;
defparam ram_block1a12.ram_block_type = "auto";
defparam ram_block1a12.mem_init0 = 256'h0000000000000000000000000000000000000000000000000000000000000000;

stratixii_ram_block ram_block1a13(
	.portawe(gnd),
	.portaaddrstall(gnd),
	.portbrewe(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(clocken0),
	.ena1(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a13_PORTADATAOUT_bus),
	.portbdataout());
defparam ram_block1a13.data_interleave_offset_in_bits = 1;
defparam ram_block1a13.data_interleave_width_in_bits = 1;
defparam ram_block1a13.init_file = "NCO1_sin_f.hex";
defparam ram_block1a13.init_file_layout = "port_a";
defparam ram_block1a13.logical_ram_name = "NCO1_st:NCO1_st_inst|asj_nco_as_m_cen:ux0122|altsyncram:altsyncram_component0|altsyncram_ou81:auto_generated|ALTSYNCRAM";
defparam ram_block1a13.operation_mode = "rom";
defparam ram_block1a13.port_a_address_width = 8;
defparam ram_block1a13.port_a_data_out_clear = "none";
defparam ram_block1a13.port_a_data_out_clock = "clock0";
defparam ram_block1a13.port_a_data_width = 1;
defparam ram_block1a13.port_a_first_address = 0;
defparam ram_block1a13.port_a_first_bit_number = 13;
defparam ram_block1a13.port_a_last_address = 255;
defparam ram_block1a13.port_a_logical_ram_depth = 256;
defparam ram_block1a13.port_a_logical_ram_width = 14;
defparam ram_block1a13.ram_block_type = "auto";
defparam ram_block1a13.mem_init0 = 256'h0000000000000000000000000000000000000000000000000000000000000000;

endmodule

module NCO1_asj_nco_as_m_cen_1 (
	q_a_0,
	q_a_1,
	q_a_2,
	q_a_3,
	q_a_4,
	q_a_5,
	q_a_6,
	q_a_7,
	q_a_8,
	q_a_9,
	q_a_10,
	q_a_11,
	q_a_12,
	q_a_13,
	rom_add_f_0,
	rom_add_f_1,
	rom_add_f_2,
	rom_add_f_3,
	rom_add_f_4,
	rom_add_f_5,
	rom_add_f_6,
	rom_add_f_7,
	clk,
	clken)/* synthesis synthesis_greybox=1 */;
output 	q_a_0;
output 	q_a_1;
output 	q_a_2;
output 	q_a_3;
output 	q_a_4;
output 	q_a_5;
output 	q_a_6;
output 	q_a_7;
output 	q_a_8;
output 	q_a_9;
output 	q_a_10;
output 	q_a_11;
output 	q_a_12;
output 	q_a_13;
input 	rom_add_f_0;
input 	rom_add_f_1;
input 	rom_add_f_2;
input 	rom_add_f_3;
input 	rom_add_f_4;
input 	rom_add_f_5;
input 	rom_add_f_6;
input 	rom_add_f_7;
input 	clk;
input 	clken;

wire gnd;
wire vcc;

assign gnd = 1'b0;
assign vcc = 1'b1;



NCO1_altsyncram_2 altsyncram_component0(
	.q_a({q_a_13,q_a_12,q_a_11,q_a_10,q_a_9,q_a_8,q_a_7,q_a_6,q_a_5,q_a_4,q_a_3,q_a_2,q_a_1,q_a_0}),
	.address_a({rom_add_f_7,rom_add_f_6,rom_add_f_5,rom_add_f_4,rom_add_f_3,rom_add_f_2,rom_add_f_1,rom_add_f_0}),
	.clock0(clk),
	.clocken0(clken));

endmodule

module NCO1_altsyncram_2 (
	q_a,
	address_a,
	clock0,
	clocken0)/* synthesis synthesis_greybox=1 */;
output 	[13:0] q_a;
input 	[7:0] address_a;
input 	clock0;
input 	clocken0;

wire gnd;
wire vcc;

assign gnd = 1'b0;
assign vcc = 1'b1;



NCO1_altsyncram_ju81 auto_generated(
	.q_a({q_a[13],q_a[12],q_a[11],q_a[10],q_a[9],q_a[8],q_a[7],q_a[6],q_a[5],q_a[4],q_a[3],q_a[2],q_a[1],q_a[0]}),
	.address_a({address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.clock0(clock0),
	.clocken0(clocken0));

endmodule

module NCO1_altsyncram_ju81 (
	q_a,
	address_a,
	clock0,
	clocken0)/* synthesis synthesis_greybox=1 */;
output 	[13:0] q_a;
input 	[7:0] address_a;
input 	clock0;
input 	clocken0;

wire gnd;
wire vcc;

assign gnd = 1'b0;
assign vcc = 1'b1;


wire [143:0] ram_block1a0_PORTADATAOUT_bus;
wire [143:0] ram_block1a1_PORTADATAOUT_bus;
wire [143:0] ram_block1a2_PORTADATAOUT_bus;
wire [143:0] ram_block1a3_PORTADATAOUT_bus;
wire [143:0] ram_block1a4_PORTADATAOUT_bus;
wire [143:0] ram_block1a5_PORTADATAOUT_bus;
wire [143:0] ram_block1a6_PORTADATAOUT_bus;
wire [143:0] ram_block1a7_PORTADATAOUT_bus;
wire [143:0] ram_block1a8_PORTADATAOUT_bus;
wire [143:0] ram_block1a9_PORTADATAOUT_bus;
wire [143:0] ram_block1a10_PORTADATAOUT_bus;
wire [143:0] ram_block1a11_PORTADATAOUT_bus;
wire [143:0] ram_block1a12_PORTADATAOUT_bus;
wire [143:0] ram_block1a13_PORTADATAOUT_bus;

assign q_a[0] = ram_block1a0_PORTADATAOUT_bus[0];

assign q_a[1] = ram_block1a1_PORTADATAOUT_bus[0];

assign q_a[2] = ram_block1a2_PORTADATAOUT_bus[0];

assign q_a[3] = ram_block1a3_PORTADATAOUT_bus[0];

assign q_a[4] = ram_block1a4_PORTADATAOUT_bus[0];

assign q_a[5] = ram_block1a5_PORTADATAOUT_bus[0];

assign q_a[6] = ram_block1a6_PORTADATAOUT_bus[0];

assign q_a[7] = ram_block1a7_PORTADATAOUT_bus[0];

assign q_a[8] = ram_block1a8_PORTADATAOUT_bus[0];

assign q_a[9] = ram_block1a9_PORTADATAOUT_bus[0];

assign q_a[10] = ram_block1a10_PORTADATAOUT_bus[0];

assign q_a[11] = ram_block1a11_PORTADATAOUT_bus[0];

assign q_a[12] = ram_block1a12_PORTADATAOUT_bus[0];

assign q_a[13] = ram_block1a13_PORTADATAOUT_bus[0];

stratixii_ram_block ram_block1a0(
	.portawe(gnd),
	.portaaddrstall(gnd),
	.portbrewe(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(clocken0),
	.ena1(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a0_PORTADATAOUT_bus),
	.portbdataout());
defparam ram_block1a0.data_interleave_offset_in_bits = 1;
defparam ram_block1a0.data_interleave_width_in_bits = 1;
defparam ram_block1a0.init_file = "NCO1_cos_f.hex";
defparam ram_block1a0.init_file_layout = "port_a";
defparam ram_block1a0.logical_ram_name = "NCO1_st:NCO1_st_inst|asj_nco_as_m_cen:ux0123|altsyncram:altsyncram_component0|altsyncram_ju81:auto_generated|ALTSYNCRAM";
defparam ram_block1a0.operation_mode = "rom";
defparam ram_block1a0.port_a_address_width = 8;
defparam ram_block1a0.port_a_data_out_clear = "none";
defparam ram_block1a0.port_a_data_out_clock = "clock0";
defparam ram_block1a0.port_a_data_width = 1;
defparam ram_block1a0.port_a_first_address = 0;
defparam ram_block1a0.port_a_first_bit_number = 0;
defparam ram_block1a0.port_a_last_address = 255;
defparam ram_block1a0.port_a_logical_ram_depth = 256;
defparam ram_block1a0.port_a_logical_ram_width = 14;
defparam ram_block1a0.ram_block_type = "auto";
defparam ram_block1a0.mem_init0 = 256'hFFFFFFFFFFFFFF000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFF;

stratixii_ram_block ram_block1a1(
	.portawe(gnd),
	.portaaddrstall(gnd),
	.portbrewe(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(clocken0),
	.ena1(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a1_PORTADATAOUT_bus),
	.portbdataout());
defparam ram_block1a1.data_interleave_offset_in_bits = 1;
defparam ram_block1a1.data_interleave_width_in_bits = 1;
defparam ram_block1a1.init_file = "NCO1_cos_f.hex";
defparam ram_block1a1.init_file_layout = "port_a";
defparam ram_block1a1.logical_ram_name = "NCO1_st:NCO1_st_inst|asj_nco_as_m_cen:ux0123|altsyncram:altsyncram_component0|altsyncram_ju81:auto_generated|ALTSYNCRAM";
defparam ram_block1a1.operation_mode = "rom";
defparam ram_block1a1.port_a_address_width = 8;
defparam ram_block1a1.port_a_data_out_clear = "none";
defparam ram_block1a1.port_a_data_out_clock = "clock0";
defparam ram_block1a1.port_a_data_width = 1;
defparam ram_block1a1.port_a_first_address = 0;
defparam ram_block1a1.port_a_first_bit_number = 1;
defparam ram_block1a1.port_a_last_address = 255;
defparam ram_block1a1.port_a_logical_ram_depth = 256;
defparam ram_block1a1.port_a_logical_ram_width = 14;
defparam ram_block1a1.ram_block_type = "auto";
defparam ram_block1a1.mem_init0 = 256'h00000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;

stratixii_ram_block ram_block1a2(
	.portawe(gnd),
	.portaaddrstall(gnd),
	.portbrewe(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(clocken0),
	.ena1(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a2_PORTADATAOUT_bus),
	.portbdataout());
defparam ram_block1a2.data_interleave_offset_in_bits = 1;
defparam ram_block1a2.data_interleave_width_in_bits = 1;
defparam ram_block1a2.init_file = "NCO1_cos_f.hex";
defparam ram_block1a2.init_file_layout = "port_a";
defparam ram_block1a2.logical_ram_name = "NCO1_st:NCO1_st_inst|asj_nco_as_m_cen:ux0123|altsyncram:altsyncram_component0|altsyncram_ju81:auto_generated|ALTSYNCRAM";
defparam ram_block1a2.operation_mode = "rom";
defparam ram_block1a2.port_a_address_width = 8;
defparam ram_block1a2.port_a_data_out_clear = "none";
defparam ram_block1a2.port_a_data_out_clock = "clock0";
defparam ram_block1a2.port_a_data_width = 1;
defparam ram_block1a2.port_a_first_address = 0;
defparam ram_block1a2.port_a_first_bit_number = 2;
defparam ram_block1a2.port_a_last_address = 255;
defparam ram_block1a2.port_a_logical_ram_depth = 256;
defparam ram_block1a2.port_a_logical_ram_width = 14;
defparam ram_block1a2.ram_block_type = "auto";
defparam ram_block1a2.mem_init0 = 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;

stratixii_ram_block ram_block1a3(
	.portawe(gnd),
	.portaaddrstall(gnd),
	.portbrewe(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(clocken0),
	.ena1(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a3_PORTADATAOUT_bus),
	.portbdataout());
defparam ram_block1a3.data_interleave_offset_in_bits = 1;
defparam ram_block1a3.data_interleave_width_in_bits = 1;
defparam ram_block1a3.init_file = "NCO1_cos_f.hex";
defparam ram_block1a3.init_file_layout = "port_a";
defparam ram_block1a3.logical_ram_name = "NCO1_st:NCO1_st_inst|asj_nco_as_m_cen:ux0123|altsyncram:altsyncram_component0|altsyncram_ju81:auto_generated|ALTSYNCRAM";
defparam ram_block1a3.operation_mode = "rom";
defparam ram_block1a3.port_a_address_width = 8;
defparam ram_block1a3.port_a_data_out_clear = "none";
defparam ram_block1a3.port_a_data_out_clock = "clock0";
defparam ram_block1a3.port_a_data_width = 1;
defparam ram_block1a3.port_a_first_address = 0;
defparam ram_block1a3.port_a_first_bit_number = 3;
defparam ram_block1a3.port_a_last_address = 255;
defparam ram_block1a3.port_a_logical_ram_depth = 256;
defparam ram_block1a3.port_a_logical_ram_width = 14;
defparam ram_block1a3.ram_block_type = "auto";
defparam ram_block1a3.mem_init0 = 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;

stratixii_ram_block ram_block1a4(
	.portawe(gnd),
	.portaaddrstall(gnd),
	.portbrewe(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(clocken0),
	.ena1(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a4_PORTADATAOUT_bus),
	.portbdataout());
defparam ram_block1a4.data_interleave_offset_in_bits = 1;
defparam ram_block1a4.data_interleave_width_in_bits = 1;
defparam ram_block1a4.init_file = "NCO1_cos_f.hex";
defparam ram_block1a4.init_file_layout = "port_a";
defparam ram_block1a4.logical_ram_name = "NCO1_st:NCO1_st_inst|asj_nco_as_m_cen:ux0123|altsyncram:altsyncram_component0|altsyncram_ju81:auto_generated|ALTSYNCRAM";
defparam ram_block1a4.operation_mode = "rom";
defparam ram_block1a4.port_a_address_width = 8;
defparam ram_block1a4.port_a_data_out_clear = "none";
defparam ram_block1a4.port_a_data_out_clock = "clock0";
defparam ram_block1a4.port_a_data_width = 1;
defparam ram_block1a4.port_a_first_address = 0;
defparam ram_block1a4.port_a_first_bit_number = 4;
defparam ram_block1a4.port_a_last_address = 255;
defparam ram_block1a4.port_a_logical_ram_depth = 256;
defparam ram_block1a4.port_a_logical_ram_width = 14;
defparam ram_block1a4.ram_block_type = "auto";
defparam ram_block1a4.mem_init0 = 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;

stratixii_ram_block ram_block1a5(
	.portawe(gnd),
	.portaaddrstall(gnd),
	.portbrewe(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(clocken0),
	.ena1(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a5_PORTADATAOUT_bus),
	.portbdataout());
defparam ram_block1a5.data_interleave_offset_in_bits = 1;
defparam ram_block1a5.data_interleave_width_in_bits = 1;
defparam ram_block1a5.init_file = "NCO1_cos_f.hex";
defparam ram_block1a5.init_file_layout = "port_a";
defparam ram_block1a5.logical_ram_name = "NCO1_st:NCO1_st_inst|asj_nco_as_m_cen:ux0123|altsyncram:altsyncram_component0|altsyncram_ju81:auto_generated|ALTSYNCRAM";
defparam ram_block1a5.operation_mode = "rom";
defparam ram_block1a5.port_a_address_width = 8;
defparam ram_block1a5.port_a_data_out_clear = "none";
defparam ram_block1a5.port_a_data_out_clock = "clock0";
defparam ram_block1a5.port_a_data_width = 1;
defparam ram_block1a5.port_a_first_address = 0;
defparam ram_block1a5.port_a_first_bit_number = 5;
defparam ram_block1a5.port_a_last_address = 255;
defparam ram_block1a5.port_a_logical_ram_depth = 256;
defparam ram_block1a5.port_a_logical_ram_width = 14;
defparam ram_block1a5.ram_block_type = "auto";
defparam ram_block1a5.mem_init0 = 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;

stratixii_ram_block ram_block1a6(
	.portawe(gnd),
	.portaaddrstall(gnd),
	.portbrewe(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(clocken0),
	.ena1(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a6_PORTADATAOUT_bus),
	.portbdataout());
defparam ram_block1a6.data_interleave_offset_in_bits = 1;
defparam ram_block1a6.data_interleave_width_in_bits = 1;
defparam ram_block1a6.init_file = "NCO1_cos_f.hex";
defparam ram_block1a6.init_file_layout = "port_a";
defparam ram_block1a6.logical_ram_name = "NCO1_st:NCO1_st_inst|asj_nco_as_m_cen:ux0123|altsyncram:altsyncram_component0|altsyncram_ju81:auto_generated|ALTSYNCRAM";
defparam ram_block1a6.operation_mode = "rom";
defparam ram_block1a6.port_a_address_width = 8;
defparam ram_block1a6.port_a_data_out_clear = "none";
defparam ram_block1a6.port_a_data_out_clock = "clock0";
defparam ram_block1a6.port_a_data_width = 1;
defparam ram_block1a6.port_a_first_address = 0;
defparam ram_block1a6.port_a_first_bit_number = 6;
defparam ram_block1a6.port_a_last_address = 255;
defparam ram_block1a6.port_a_logical_ram_depth = 256;
defparam ram_block1a6.port_a_logical_ram_width = 14;
defparam ram_block1a6.ram_block_type = "auto";
defparam ram_block1a6.mem_init0 = 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;

stratixii_ram_block ram_block1a7(
	.portawe(gnd),
	.portaaddrstall(gnd),
	.portbrewe(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(clocken0),
	.ena1(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a7_PORTADATAOUT_bus),
	.portbdataout());
defparam ram_block1a7.data_interleave_offset_in_bits = 1;
defparam ram_block1a7.data_interleave_width_in_bits = 1;
defparam ram_block1a7.init_file = "NCO1_cos_f.hex";
defparam ram_block1a7.init_file_layout = "port_a";
defparam ram_block1a7.logical_ram_name = "NCO1_st:NCO1_st_inst|asj_nco_as_m_cen:ux0123|altsyncram:altsyncram_component0|altsyncram_ju81:auto_generated|ALTSYNCRAM";
defparam ram_block1a7.operation_mode = "rom";
defparam ram_block1a7.port_a_address_width = 8;
defparam ram_block1a7.port_a_data_out_clear = "none";
defparam ram_block1a7.port_a_data_out_clock = "clock0";
defparam ram_block1a7.port_a_data_width = 1;
defparam ram_block1a7.port_a_first_address = 0;
defparam ram_block1a7.port_a_first_bit_number = 7;
defparam ram_block1a7.port_a_last_address = 255;
defparam ram_block1a7.port_a_logical_ram_depth = 256;
defparam ram_block1a7.port_a_logical_ram_width = 14;
defparam ram_block1a7.ram_block_type = "auto";
defparam ram_block1a7.mem_init0 = 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;

stratixii_ram_block ram_block1a8(
	.portawe(gnd),
	.portaaddrstall(gnd),
	.portbrewe(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(clocken0),
	.ena1(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a8_PORTADATAOUT_bus),
	.portbdataout());
defparam ram_block1a8.data_interleave_offset_in_bits = 1;
defparam ram_block1a8.data_interleave_width_in_bits = 1;
defparam ram_block1a8.init_file = "NCO1_cos_f.hex";
defparam ram_block1a8.init_file_layout = "port_a";
defparam ram_block1a8.logical_ram_name = "NCO1_st:NCO1_st_inst|asj_nco_as_m_cen:ux0123|altsyncram:altsyncram_component0|altsyncram_ju81:auto_generated|ALTSYNCRAM";
defparam ram_block1a8.operation_mode = "rom";
defparam ram_block1a8.port_a_address_width = 8;
defparam ram_block1a8.port_a_data_out_clear = "none";
defparam ram_block1a8.port_a_data_out_clock = "clock0";
defparam ram_block1a8.port_a_data_width = 1;
defparam ram_block1a8.port_a_first_address = 0;
defparam ram_block1a8.port_a_first_bit_number = 8;
defparam ram_block1a8.port_a_last_address = 255;
defparam ram_block1a8.port_a_logical_ram_depth = 256;
defparam ram_block1a8.port_a_logical_ram_width = 14;
defparam ram_block1a8.ram_block_type = "auto";
defparam ram_block1a8.mem_init0 = 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;

stratixii_ram_block ram_block1a9(
	.portawe(gnd),
	.portaaddrstall(gnd),
	.portbrewe(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(clocken0),
	.ena1(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a9_PORTADATAOUT_bus),
	.portbdataout());
defparam ram_block1a9.data_interleave_offset_in_bits = 1;
defparam ram_block1a9.data_interleave_width_in_bits = 1;
defparam ram_block1a9.init_file = "NCO1_cos_f.hex";
defparam ram_block1a9.init_file_layout = "port_a";
defparam ram_block1a9.logical_ram_name = "NCO1_st:NCO1_st_inst|asj_nco_as_m_cen:ux0123|altsyncram:altsyncram_component0|altsyncram_ju81:auto_generated|ALTSYNCRAM";
defparam ram_block1a9.operation_mode = "rom";
defparam ram_block1a9.port_a_address_width = 8;
defparam ram_block1a9.port_a_data_out_clear = "none";
defparam ram_block1a9.port_a_data_out_clock = "clock0";
defparam ram_block1a9.port_a_data_width = 1;
defparam ram_block1a9.port_a_first_address = 0;
defparam ram_block1a9.port_a_first_bit_number = 9;
defparam ram_block1a9.port_a_last_address = 255;
defparam ram_block1a9.port_a_logical_ram_depth = 256;
defparam ram_block1a9.port_a_logical_ram_width = 14;
defparam ram_block1a9.ram_block_type = "auto";
defparam ram_block1a9.mem_init0 = 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;

stratixii_ram_block ram_block1a10(
	.portawe(gnd),
	.portaaddrstall(gnd),
	.portbrewe(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(clocken0),
	.ena1(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a10_PORTADATAOUT_bus),
	.portbdataout());
defparam ram_block1a10.data_interleave_offset_in_bits = 1;
defparam ram_block1a10.data_interleave_width_in_bits = 1;
defparam ram_block1a10.init_file = "NCO1_cos_f.hex";
defparam ram_block1a10.init_file_layout = "port_a";
defparam ram_block1a10.logical_ram_name = "NCO1_st:NCO1_st_inst|asj_nco_as_m_cen:ux0123|altsyncram:altsyncram_component0|altsyncram_ju81:auto_generated|ALTSYNCRAM";
defparam ram_block1a10.operation_mode = "rom";
defparam ram_block1a10.port_a_address_width = 8;
defparam ram_block1a10.port_a_data_out_clear = "none";
defparam ram_block1a10.port_a_data_out_clock = "clock0";
defparam ram_block1a10.port_a_data_width = 1;
defparam ram_block1a10.port_a_first_address = 0;
defparam ram_block1a10.port_a_first_bit_number = 10;
defparam ram_block1a10.port_a_last_address = 255;
defparam ram_block1a10.port_a_logical_ram_depth = 256;
defparam ram_block1a10.port_a_logical_ram_width = 14;
defparam ram_block1a10.ram_block_type = "auto";
defparam ram_block1a10.mem_init0 = 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;

stratixii_ram_block ram_block1a11(
	.portawe(gnd),
	.portaaddrstall(gnd),
	.portbrewe(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(clocken0),
	.ena1(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a11_PORTADATAOUT_bus),
	.portbdataout());
defparam ram_block1a11.data_interleave_offset_in_bits = 1;
defparam ram_block1a11.data_interleave_width_in_bits = 1;
defparam ram_block1a11.init_file = "NCO1_cos_f.hex";
defparam ram_block1a11.init_file_layout = "port_a";
defparam ram_block1a11.logical_ram_name = "NCO1_st:NCO1_st_inst|asj_nco_as_m_cen:ux0123|altsyncram:altsyncram_component0|altsyncram_ju81:auto_generated|ALTSYNCRAM";
defparam ram_block1a11.operation_mode = "rom";
defparam ram_block1a11.port_a_address_width = 8;
defparam ram_block1a11.port_a_data_out_clear = "none";
defparam ram_block1a11.port_a_data_out_clock = "clock0";
defparam ram_block1a11.port_a_data_width = 1;
defparam ram_block1a11.port_a_first_address = 0;
defparam ram_block1a11.port_a_first_bit_number = 11;
defparam ram_block1a11.port_a_last_address = 255;
defparam ram_block1a11.port_a_logical_ram_depth = 256;
defparam ram_block1a11.port_a_logical_ram_width = 14;
defparam ram_block1a11.ram_block_type = "auto";
defparam ram_block1a11.mem_init0 = 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;

stratixii_ram_block ram_block1a12(
	.portawe(gnd),
	.portaaddrstall(gnd),
	.portbrewe(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(clocken0),
	.ena1(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a12_PORTADATAOUT_bus),
	.portbdataout());
defparam ram_block1a12.data_interleave_offset_in_bits = 1;
defparam ram_block1a12.data_interleave_width_in_bits = 1;
defparam ram_block1a12.init_file = "NCO1_cos_f.hex";
defparam ram_block1a12.init_file_layout = "port_a";
defparam ram_block1a12.logical_ram_name = "NCO1_st:NCO1_st_inst|asj_nco_as_m_cen:ux0123|altsyncram:altsyncram_component0|altsyncram_ju81:auto_generated|ALTSYNCRAM";
defparam ram_block1a12.operation_mode = "rom";
defparam ram_block1a12.port_a_address_width = 8;
defparam ram_block1a12.port_a_data_out_clear = "none";
defparam ram_block1a12.port_a_data_out_clock = "clock0";
defparam ram_block1a12.port_a_data_width = 1;
defparam ram_block1a12.port_a_first_address = 0;
defparam ram_block1a12.port_a_first_bit_number = 12;
defparam ram_block1a12.port_a_last_address = 255;
defparam ram_block1a12.port_a_logical_ram_depth = 256;
defparam ram_block1a12.port_a_logical_ram_width = 14;
defparam ram_block1a12.ram_block_type = "auto";
defparam ram_block1a12.mem_init0 = 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;

stratixii_ram_block ram_block1a13(
	.portawe(gnd),
	.portaaddrstall(gnd),
	.portbrewe(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(clocken0),
	.ena1(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a13_PORTADATAOUT_bus),
	.portbdataout());
defparam ram_block1a13.data_interleave_offset_in_bits = 1;
defparam ram_block1a13.data_interleave_width_in_bits = 1;
defparam ram_block1a13.init_file = "NCO1_cos_f.hex";
defparam ram_block1a13.init_file_layout = "port_a";
defparam ram_block1a13.logical_ram_name = "NCO1_st:NCO1_st_inst|asj_nco_as_m_cen:ux0123|altsyncram:altsyncram_component0|altsyncram_ju81:auto_generated|ALTSYNCRAM";
defparam ram_block1a13.operation_mode = "rom";
defparam ram_block1a13.port_a_address_width = 8;
defparam ram_block1a13.port_a_data_out_clear = "none";
defparam ram_block1a13.port_a_data_out_clock = "clock0";
defparam ram_block1a13.port_a_data_width = 1;
defparam ram_block1a13.port_a_first_address = 0;
defparam ram_block1a13.port_a_first_bit_number = 13;
defparam ram_block1a13.port_a_last_address = 255;
defparam ram_block1a13.port_a_logical_ram_depth = 256;
defparam ram_block1a13.port_a_logical_ram_width = 14;
defparam ram_block1a13.ram_block_type = "auto";
defparam ram_block1a13.mem_init0 = 256'h0000000000000000000000000000000000000000000000000000000000000000;

endmodule

module NCO1_asj_nco_as_m_dp_cen (
	q_a_0,
	q_b_0,
	q_a_1,
	q_b_1,
	q_a_2,
	q_b_2,
	q_a_3,
	q_b_3,
	q_a_4,
	q_b_4,
	q_a_5,
	q_b_5,
	q_a_6,
	q_b_6,
	q_a_7,
	q_b_7,
	q_a_8,
	q_b_8,
	q_a_9,
	q_b_9,
	q_a_10,
	q_b_10,
	q_a_11,
	q_b_11,
	q_a_12,
	q_b_12,
	q_a_13,
	q_b_13,
	rom_add_cc_temp_0,
	rom_add_cc_temp_1,
	rom_add_cc_temp_2,
	rom_add_cc_temp_3,
	rom_add_cc_temp_4,
	rom_add_cc_temp_5,
	rom_add_cs_6,
	rom_add_cs_7,
	rom_add_cc_temp_6,
	rom_add_cc_temp_7,
	GND_port,
	clk,
	clken)/* synthesis synthesis_greybox=1 */;
output 	q_a_0;
output 	q_b_0;
output 	q_a_1;
output 	q_b_1;
output 	q_a_2;
output 	q_b_2;
output 	q_a_3;
output 	q_b_3;
output 	q_a_4;
output 	q_b_4;
output 	q_a_5;
output 	q_b_5;
output 	q_a_6;
output 	q_b_6;
output 	q_a_7;
output 	q_b_7;
output 	q_a_8;
output 	q_b_8;
output 	q_a_9;
output 	q_b_9;
output 	q_a_10;
output 	q_b_10;
output 	q_a_11;
output 	q_b_11;
output 	q_a_12;
output 	q_b_12;
output 	q_a_13;
output 	q_b_13;
input 	rom_add_cc_temp_0;
input 	rom_add_cc_temp_1;
input 	rom_add_cc_temp_2;
input 	rom_add_cc_temp_3;
input 	rom_add_cc_temp_4;
input 	rom_add_cc_temp_5;
input 	rom_add_cs_6;
input 	rom_add_cs_7;
input 	rom_add_cc_temp_6;
input 	rom_add_cc_temp_7;
input 	GND_port;
input 	clk;
input 	clken;

wire gnd;
wire vcc;

assign gnd = 1'b0;
assign vcc = 1'b1;



NCO1_altsyncram_3 altsyncram_component(
	.q_a({q_a_13,q_a_12,q_a_11,q_a_10,q_a_9,q_a_8,q_a_7,q_a_6,q_a_5,q_a_4,q_a_3,q_a_2,q_a_1,q_a_0}),
	.q_b({q_b_13,q_b_12,q_b_11,q_b_10,q_b_9,q_b_8,q_b_7,q_b_6,q_b_5,q_b_4,q_b_3,q_b_2,q_b_1,q_b_0}),
	.address_a({rom_add_cs_7,rom_add_cs_6,rom_add_cc_temp_5,rom_add_cc_temp_4,rom_add_cc_temp_3,rom_add_cc_temp_2,rom_add_cc_temp_1,rom_add_cc_temp_0}),
	.address_b({rom_add_cc_temp_7,rom_add_cc_temp_6,gnd,gnd,gnd,gnd,gnd,gnd}),
	.data_a({gnd,gnd,gnd,gnd,gnd,gnd,gnd,GND_port,gnd,gnd,gnd,gnd,gnd,gnd}),
	.clock0(clk),
	.clocken0(clken));

endmodule

module NCO1_altsyncram_3 (
	q_a,
	q_b,
	address_a,
	address_b,
	data_a,
	clock0,
	clocken0)/* synthesis synthesis_greybox=1 */;
output 	[13:0] q_a;
output 	[13:0] q_b;
input 	[7:0] address_a;
input 	[7:0] address_b;
input 	[13:0] data_a;
input 	clock0;
input 	clocken0;

wire gnd;
wire vcc;

assign gnd = 1'b0;
assign vcc = 1'b1;



NCO1_altsyncram_1772 auto_generated(
	.q_a({q_a[13],q_a[12],q_a[11],q_a[10],q_a[9],q_a[8],q_a[7],q_a[6],q_a[5],q_a[4],q_a[3],q_a[2],q_a[1],q_a[0]}),
	.q_b({q_b[13],q_b[12],q_b[11],q_b[10],q_b[9],q_b[8],q_b[7],q_b[6],q_b[5],q_b[4],q_b[3],q_b[2],q_b[1],q_b[0]}),
	.address_a({address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.address_b({address_b[7],address_b[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.data_a({data_a[6],data_a[6],data_a[6],data_a[6],data_a[6],data_a[6],data_a[6],data_a[6],data_a[6],data_a[6],data_a[6],data_a[6],data_a[6],data_a[6]}),
	.data_b({data_a[6],data_a[6],data_a[6],data_a[6],data_a[6],data_a[6],data_a[6],data_a[6],data_a[6],data_a[6],data_a[6],data_a[6],data_a[6],data_a[6]}),
	.clock0(clock0),
	.clocken0(clocken0));

endmodule

module NCO1_altsyncram_1772 (
	q_a,
	q_b,
	address_a,
	address_b,
	data_a,
	data_b,
	clock0,
	clocken0)/* synthesis synthesis_greybox=1 */;
output 	[13:0] q_a;
output 	[13:0] q_b;
input 	[7:0] address_a;
input 	[7:0] address_b;
input 	[13:0] data_a;
input 	[13:0] data_b;
input 	clock0;
input 	clocken0;

wire gnd;
wire vcc;

assign gnd = 1'b0;
assign vcc = 1'b1;


wire [143:0] ram_block1a0_PORTADATAOUT_bus;
wire [143:0] ram_block1a0_PORTBDATAOUT_bus;
wire [143:0] ram_block1a1_PORTADATAOUT_bus;
wire [143:0] ram_block1a1_PORTBDATAOUT_bus;
wire [143:0] ram_block1a2_PORTADATAOUT_bus;
wire [143:0] ram_block1a2_PORTBDATAOUT_bus;
wire [143:0] ram_block1a3_PORTADATAOUT_bus;
wire [143:0] ram_block1a3_PORTBDATAOUT_bus;
wire [143:0] ram_block1a4_PORTADATAOUT_bus;
wire [143:0] ram_block1a4_PORTBDATAOUT_bus;
wire [143:0] ram_block1a5_PORTADATAOUT_bus;
wire [143:0] ram_block1a5_PORTBDATAOUT_bus;
wire [143:0] ram_block1a6_PORTADATAOUT_bus;
wire [143:0] ram_block1a6_PORTBDATAOUT_bus;
wire [143:0] ram_block1a7_PORTADATAOUT_bus;
wire [143:0] ram_block1a7_PORTBDATAOUT_bus;
wire [143:0] ram_block1a8_PORTADATAOUT_bus;
wire [143:0] ram_block1a8_PORTBDATAOUT_bus;
wire [143:0] ram_block1a9_PORTADATAOUT_bus;
wire [143:0] ram_block1a9_PORTBDATAOUT_bus;
wire [143:0] ram_block1a10_PORTADATAOUT_bus;
wire [143:0] ram_block1a10_PORTBDATAOUT_bus;
wire [143:0] ram_block1a11_PORTADATAOUT_bus;
wire [143:0] ram_block1a11_PORTBDATAOUT_bus;
wire [143:0] ram_block1a12_PORTADATAOUT_bus;
wire [143:0] ram_block1a12_PORTBDATAOUT_bus;
wire [143:0] ram_block1a13_PORTADATAOUT_bus;
wire [143:0] ram_block1a13_PORTBDATAOUT_bus;

assign q_a[0] = ram_block1a0_PORTADATAOUT_bus[0];

assign q_b[0] = ram_block1a0_PORTBDATAOUT_bus[0];

assign q_a[1] = ram_block1a1_PORTADATAOUT_bus[0];

assign q_b[1] = ram_block1a1_PORTBDATAOUT_bus[0];

assign q_a[2] = ram_block1a2_PORTADATAOUT_bus[0];

assign q_b[2] = ram_block1a2_PORTBDATAOUT_bus[0];

assign q_a[3] = ram_block1a3_PORTADATAOUT_bus[0];

assign q_b[3] = ram_block1a3_PORTBDATAOUT_bus[0];

assign q_a[4] = ram_block1a4_PORTADATAOUT_bus[0];

assign q_b[4] = ram_block1a4_PORTBDATAOUT_bus[0];

assign q_a[5] = ram_block1a5_PORTADATAOUT_bus[0];

assign q_b[5] = ram_block1a5_PORTBDATAOUT_bus[0];

assign q_a[6] = ram_block1a6_PORTADATAOUT_bus[0];

assign q_b[6] = ram_block1a6_PORTBDATAOUT_bus[0];

assign q_a[7] = ram_block1a7_PORTADATAOUT_bus[0];

assign q_b[7] = ram_block1a7_PORTBDATAOUT_bus[0];

assign q_a[8] = ram_block1a8_PORTADATAOUT_bus[0];

assign q_b[8] = ram_block1a8_PORTBDATAOUT_bus[0];

assign q_a[9] = ram_block1a9_PORTADATAOUT_bus[0];

assign q_b[9] = ram_block1a9_PORTBDATAOUT_bus[0];

assign q_a[10] = ram_block1a10_PORTADATAOUT_bus[0];

assign q_b[10] = ram_block1a10_PORTBDATAOUT_bus[0];

assign q_a[11] = ram_block1a11_PORTADATAOUT_bus[0];

assign q_b[11] = ram_block1a11_PORTBDATAOUT_bus[0];

assign q_a[12] = ram_block1a12_PORTADATAOUT_bus[0];

assign q_b[12] = ram_block1a12_PORTBDATAOUT_bus[0];

assign q_a[13] = ram_block1a13_PORTADATAOUT_bus[0];

assign q_b[13] = ram_block1a13_PORTBDATAOUT_bus[0];

stratixii_ram_block ram_block1a0(
	.portawe(gnd),
	.portaaddrstall(gnd),
	.portbrewe(gnd),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(clocken0),
	.ena1(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[6]}),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[6]}),
	.portbaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_b[7],address_b[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a0_PORTADATAOUT_bus),
	.portbdataout(ram_block1a0_PORTBDATAOUT_bus));
defparam ram_block1a0.data_interleave_offset_in_bits = 1;
defparam ram_block1a0.data_interleave_width_in_bits = 1;
defparam ram_block1a0.init_file = "NCO1_sin_c.hex";
defparam ram_block1a0.init_file_layout = "port_a";
defparam ram_block1a0.logical_ram_name = "NCO1_st:NCO1_st_inst|asj_nco_as_m_dp_cen:ux0220|altsyncram:altsyncram_component|altsyncram_1772:auto_generated|ALTSYNCRAM";
defparam ram_block1a0.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a0.operation_mode = "bidir_dual_port";
defparam ram_block1a0.port_a_address_width = 8;
defparam ram_block1a0.port_a_data_out_clear = "none";
defparam ram_block1a0.port_a_data_out_clock = "clock0";
defparam ram_block1a0.port_a_data_width = 1;
defparam ram_block1a0.port_a_first_address = 0;
defparam ram_block1a0.port_a_first_bit_number = 0;
defparam ram_block1a0.port_a_last_address = 255;
defparam ram_block1a0.port_a_logical_ram_depth = 256;
defparam ram_block1a0.port_a_logical_ram_width = 14;
defparam ram_block1a0.port_b_address_clock = "clock0";
defparam ram_block1a0.port_b_address_width = 8;
defparam ram_block1a0.port_b_data_in_clock = "clock0";
defparam ram_block1a0.port_b_data_out_clear = "none";
defparam ram_block1a0.port_b_data_out_clock = "clock0";
defparam ram_block1a0.port_b_data_width = 1;
defparam ram_block1a0.port_b_first_address = 0;
defparam ram_block1a0.port_b_first_bit_number = 0;
defparam ram_block1a0.port_b_last_address = 255;
defparam ram_block1a0.port_b_logical_ram_depth = 256;
defparam ram_block1a0.port_b_logical_ram_width = 14;
defparam ram_block1a0.port_b_read_enable_write_enable_clock = "clock0";
defparam ram_block1a0.ram_block_type = "auto";
defparam ram_block1a0.mem_init0 = 256'hB8ADBD644F25002FE80149E44D7B6A3AB8ADBD644F25002FE80149E44D7B6A3A;

stratixii_ram_block ram_block1a1(
	.portawe(gnd),
	.portaaddrstall(gnd),
	.portbrewe(gnd),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(clocken0),
	.ena1(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[6]}),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[6]}),
	.portbaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_b[7],address_b[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a1_PORTADATAOUT_bus),
	.portbdataout(ram_block1a1_PORTBDATAOUT_bus));
defparam ram_block1a1.data_interleave_offset_in_bits = 1;
defparam ram_block1a1.data_interleave_width_in_bits = 1;
defparam ram_block1a1.init_file = "NCO1_sin_c.hex";
defparam ram_block1a1.init_file_layout = "port_a";
defparam ram_block1a1.logical_ram_name = "NCO1_st:NCO1_st_inst|asj_nco_as_m_dp_cen:ux0220|altsyncram:altsyncram_component|altsyncram_1772:auto_generated|ALTSYNCRAM";
defparam ram_block1a1.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a1.operation_mode = "bidir_dual_port";
defparam ram_block1a1.port_a_address_width = 8;
defparam ram_block1a1.port_a_data_out_clear = "none";
defparam ram_block1a1.port_a_data_out_clock = "clock0";
defparam ram_block1a1.port_a_data_width = 1;
defparam ram_block1a1.port_a_first_address = 0;
defparam ram_block1a1.port_a_first_bit_number = 1;
defparam ram_block1a1.port_a_last_address = 255;
defparam ram_block1a1.port_a_logical_ram_depth = 256;
defparam ram_block1a1.port_a_logical_ram_width = 14;
defparam ram_block1a1.port_b_address_clock = "clock0";
defparam ram_block1a1.port_b_address_width = 8;
defparam ram_block1a1.port_b_data_in_clock = "clock0";
defparam ram_block1a1.port_b_data_out_clear = "none";
defparam ram_block1a1.port_b_data_out_clock = "clock0";
defparam ram_block1a1.port_b_data_width = 1;
defparam ram_block1a1.port_b_first_address = 0;
defparam ram_block1a1.port_b_first_bit_number = 1;
defparam ram_block1a1.port_b_last_address = 255;
defparam ram_block1a1.port_b_logical_ram_depth = 256;
defparam ram_block1a1.port_b_logical_ram_width = 14;
defparam ram_block1a1.port_b_read_enable_write_enable_clock = "clock0";
defparam ram_block1a1.ram_block_type = "auto";
defparam ram_block1a1.mem_init0 = 256'hC5785A0C6A44BDEEEF7A44AC60B43D467DD5E7682561BDC1077B0D482DCF577C;

stratixii_ram_block ram_block1a2(
	.portawe(gnd),
	.portaaddrstall(gnd),
	.portbrewe(gnd),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(clocken0),
	.ena1(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[6]}),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[6]}),
	.portbaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_b[7],address_b[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a2_PORTADATAOUT_bus),
	.portbdataout(ram_block1a2_PORTBDATAOUT_bus));
defparam ram_block1a2.data_interleave_offset_in_bits = 1;
defparam ram_block1a2.data_interleave_width_in_bits = 1;
defparam ram_block1a2.init_file = "NCO1_sin_c.hex";
defparam ram_block1a2.init_file_layout = "port_a";
defparam ram_block1a2.logical_ram_name = "NCO1_st:NCO1_st_inst|asj_nco_as_m_dp_cen:ux0220|altsyncram:altsyncram_component|altsyncram_1772:auto_generated|ALTSYNCRAM";
defparam ram_block1a2.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a2.operation_mode = "bidir_dual_port";
defparam ram_block1a2.port_a_address_width = 8;
defparam ram_block1a2.port_a_data_out_clear = "none";
defparam ram_block1a2.port_a_data_out_clock = "clock0";
defparam ram_block1a2.port_a_data_width = 1;
defparam ram_block1a2.port_a_first_address = 0;
defparam ram_block1a2.port_a_first_bit_number = 2;
defparam ram_block1a2.port_a_last_address = 255;
defparam ram_block1a2.port_a_logical_ram_depth = 256;
defparam ram_block1a2.port_a_logical_ram_width = 14;
defparam ram_block1a2.port_b_address_clock = "clock0";
defparam ram_block1a2.port_b_address_width = 8;
defparam ram_block1a2.port_b_data_in_clock = "clock0";
defparam ram_block1a2.port_b_data_out_clear = "none";
defparam ram_block1a2.port_b_data_out_clock = "clock0";
defparam ram_block1a2.port_b_data_width = 1;
defparam ram_block1a2.port_b_first_address = 0;
defparam ram_block1a2.port_b_first_bit_number = 2;
defparam ram_block1a2.port_b_last_address = 255;
defparam ram_block1a2.port_b_logical_ram_depth = 256;
defparam ram_block1a2.port_b_logical_ram_width = 14;
defparam ram_block1a2.port_b_read_enable_write_enable_clock = "clock0";
defparam ram_block1a2.ram_block_type = "auto";
defparam ram_block1a2.mem_init0 = 256'hFCBA2490BF48A528294A25FA1248BA7E0147DBFCD02D18C7C63168167FB7C500;

stratixii_ram_block ram_block1a3(
	.portawe(gnd),
	.portaaddrstall(gnd),
	.portbrewe(gnd),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(clocken0),
	.ena1(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[6]}),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[6]}),
	.portbaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_b[7],address_b[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a3_PORTADATAOUT_bus),
	.portbdataout(ram_block1a3_PORTBDATAOUT_bus));
defparam ram_block1a3.data_interleave_offset_in_bits = 1;
defparam ram_block1a3.data_interleave_width_in_bits = 1;
defparam ram_block1a3.init_file = "NCO1_sin_c.hex";
defparam ram_block1a3.init_file_layout = "port_a";
defparam ram_block1a3.logical_ram_name = "NCO1_st:NCO1_st_inst|asj_nco_as_m_dp_cen:ux0220|altsyncram:altsyncram_component|altsyncram_1772:auto_generated|ALTSYNCRAM";
defparam ram_block1a3.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a3.operation_mode = "bidir_dual_port";
defparam ram_block1a3.port_a_address_width = 8;
defparam ram_block1a3.port_a_data_out_clear = "none";
defparam ram_block1a3.port_a_data_out_clock = "clock0";
defparam ram_block1a3.port_a_data_width = 1;
defparam ram_block1a3.port_a_first_address = 0;
defparam ram_block1a3.port_a_first_bit_number = 3;
defparam ram_block1a3.port_a_last_address = 255;
defparam ram_block1a3.port_a_logical_ram_depth = 256;
defparam ram_block1a3.port_a_logical_ram_width = 14;
defparam ram_block1a3.port_b_address_clock = "clock0";
defparam ram_block1a3.port_b_address_width = 8;
defparam ram_block1a3.port_b_data_in_clock = "clock0";
defparam ram_block1a3.port_b_data_out_clear = "none";
defparam ram_block1a3.port_b_data_out_clock = "clock0";
defparam ram_block1a3.port_b_data_width = 1;
defparam ram_block1a3.port_b_first_address = 0;
defparam ram_block1a3.port_b_first_bit_number = 3;
defparam ram_block1a3.port_b_last_address = 255;
defparam ram_block1a3.port_b_logical_ram_depth = 256;
defparam ram_block1a3.port_b_logical_ram_width = 14;
defparam ram_block1a3.port_b_read_enable_write_enable_clock = "clock0";
defparam ram_block1a3.ram_block_type = "auto";
defparam ram_block1a3.mem_init0 = 256'h56C6BD0844F82BF45FA83E44217AC6D4AB3942F4BB95961BB0D353BA5E8539AA;

stratixii_ram_block ram_block1a4(
	.portawe(gnd),
	.portaaddrstall(gnd),
	.portbrewe(gnd),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(clocken0),
	.ena1(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[6]}),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[6]}),
	.portbaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_b[7],address_b[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a4_PORTADATAOUT_bus),
	.portbdataout(ram_block1a4_PORTBDATAOUT_bus));
defparam ram_block1a4.data_interleave_offset_in_bits = 1;
defparam ram_block1a4.data_interleave_width_in_bits = 1;
defparam ram_block1a4.init_file = "NCO1_sin_c.hex";
defparam ram_block1a4.init_file_layout = "port_a";
defparam ram_block1a4.logical_ram_name = "NCO1_st:NCO1_st_inst|asj_nco_as_m_dp_cen:ux0220|altsyncram:altsyncram_component|altsyncram_1772:auto_generated|ALTSYNCRAM";
defparam ram_block1a4.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a4.operation_mode = "bidir_dual_port";
defparam ram_block1a4.port_a_address_width = 8;
defparam ram_block1a4.port_a_data_out_clear = "none";
defparam ram_block1a4.port_a_data_out_clock = "clock0";
defparam ram_block1a4.port_a_data_width = 1;
defparam ram_block1a4.port_a_first_address = 0;
defparam ram_block1a4.port_a_first_bit_number = 4;
defparam ram_block1a4.port_a_last_address = 255;
defparam ram_block1a4.port_a_logical_ram_depth = 256;
defparam ram_block1a4.port_a_logical_ram_width = 14;
defparam ram_block1a4.port_b_address_clock = "clock0";
defparam ram_block1a4.port_b_address_width = 8;
defparam ram_block1a4.port_b_data_in_clock = "clock0";
defparam ram_block1a4.port_b_data_out_clear = "none";
defparam ram_block1a4.port_b_data_out_clock = "clock0";
defparam ram_block1a4.port_b_data_width = 1;
defparam ram_block1a4.port_b_first_address = 0;
defparam ram_block1a4.port_b_first_bit_number = 4;
defparam ram_block1a4.port_b_last_address = 255;
defparam ram_block1a4.port_b_logical_ram_depth = 256;
defparam ram_block1a4.port_b_logical_ram_width = 14;
defparam ram_block1a4.port_b_read_enable_write_enable_clock = "clock0";
defparam ram_block1a4.ram_block_type = "auto";
defparam ram_block1a4.mem_init0 = 256'h98FE69FA828525E82F494282BF2CFE32670196067D789A17D0B23D7CC0D301CC;

stratixii_ram_block ram_block1a5(
	.portawe(gnd),
	.portaaddrstall(gnd),
	.portbrewe(gnd),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(clocken0),
	.ena1(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[6]}),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[6]}),
	.portbaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_b[7],address_b[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a5_PORTADATAOUT_bus),
	.portbdataout(ram_block1a5_PORTBDATAOUT_bus));
defparam ram_block1a5.data_interleave_offset_in_bits = 1;
defparam ram_block1a5.data_interleave_width_in_bits = 1;
defparam ram_block1a5.init_file = "NCO1_sin_c.hex";
defparam ram_block1a5.init_file_layout = "port_a";
defparam ram_block1a5.logical_ram_name = "NCO1_st:NCO1_st_inst|asj_nco_as_m_dp_cen:ux0220|altsyncram:altsyncram_component|altsyncram_1772:auto_generated|ALTSYNCRAM";
defparam ram_block1a5.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a5.operation_mode = "bidir_dual_port";
defparam ram_block1a5.port_a_address_width = 8;
defparam ram_block1a5.port_a_data_out_clear = "none";
defparam ram_block1a5.port_a_data_out_clock = "clock0";
defparam ram_block1a5.port_a_data_width = 1;
defparam ram_block1a5.port_a_first_address = 0;
defparam ram_block1a5.port_a_first_bit_number = 5;
defparam ram_block1a5.port_a_last_address = 255;
defparam ram_block1a5.port_a_logical_ram_depth = 256;
defparam ram_block1a5.port_a_logical_ram_width = 14;
defparam ram_block1a5.port_b_address_clock = "clock0";
defparam ram_block1a5.port_b_address_width = 8;
defparam ram_block1a5.port_b_data_in_clock = "clock0";
defparam ram_block1a5.port_b_data_out_clear = "none";
defparam ram_block1a5.port_b_data_out_clock = "clock0";
defparam ram_block1a5.port_b_data_width = 1;
defparam ram_block1a5.port_b_first_address = 0;
defparam ram_block1a5.port_b_first_bit_number = 5;
defparam ram_block1a5.port_b_last_address = 255;
defparam ram_block1a5.port_b_logical_ram_depth = 256;
defparam ram_block1a5.port_b_logical_ram_width = 14;
defparam ram_block1a5.port_b_read_enable_write_enable_clock = "clock0";
defparam ram_block1a5.ram_block_type = "auto";
defparam ram_block1a5.mem_init0 = 256'hE0FE1B5301A9DCB01A772B0195B0FE0E1F01E4ADFE54634FE58C54FF6A4F01F0;

stratixii_ram_block ram_block1a6(
	.portawe(gnd),
	.portaaddrstall(gnd),
	.portbrewe(gnd),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(clocken0),
	.ena1(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[6]}),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[6]}),
	.portbaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_b[7],address_b[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a6_PORTADATAOUT_bus),
	.portbdataout(ram_block1a6_PORTBDATAOUT_bus));
defparam ram_block1a6.data_interleave_offset_in_bits = 1;
defparam ram_block1a6.data_interleave_width_in_bits = 1;
defparam ram_block1a6.init_file = "NCO1_sin_c.hex";
defparam ram_block1a6.init_file_layout = "port_a";
defparam ram_block1a6.logical_ram_name = "NCO1_st:NCO1_st_inst|asj_nco_as_m_dp_cen:ux0220|altsyncram:altsyncram_component|altsyncram_1772:auto_generated|ALTSYNCRAM";
defparam ram_block1a6.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a6.operation_mode = "bidir_dual_port";
defparam ram_block1a6.port_a_address_width = 8;
defparam ram_block1a6.port_a_data_out_clear = "none";
defparam ram_block1a6.port_a_data_out_clock = "clock0";
defparam ram_block1a6.port_a_data_width = 1;
defparam ram_block1a6.port_a_first_address = 0;
defparam ram_block1a6.port_a_first_bit_number = 6;
defparam ram_block1a6.port_a_last_address = 255;
defparam ram_block1a6.port_a_logical_ram_depth = 256;
defparam ram_block1a6.port_a_logical_ram_width = 14;
defparam ram_block1a6.port_b_address_clock = "clock0";
defparam ram_block1a6.port_b_address_width = 8;
defparam ram_block1a6.port_b_data_in_clock = "clock0";
defparam ram_block1a6.port_b_data_out_clear = "none";
defparam ram_block1a6.port_b_data_out_clock = "clock0";
defparam ram_block1a6.port_b_data_width = 1;
defparam ram_block1a6.port_b_first_address = 0;
defparam ram_block1a6.port_b_first_bit_number = 6;
defparam ram_block1a6.port_b_last_address = 255;
defparam ram_block1a6.port_b_logical_ram_depth = 256;
defparam ram_block1a6.port_b_logical_ram_width = 14;
defparam ram_block1a6.port_b_read_enable_write_enable_clock = "clock0";
defparam ram_block1a6.ram_block_type = "auto";
defparam ram_block1a6.mem_init0 = 256'h55AB5263FF9B56C006D5B3FF8C95AB54AA54AD9C0066A93FF92ACC00736A54AA;

stratixii_ram_block ram_block1a7(
	.portawe(gnd),
	.portaaddrstall(gnd),
	.portbrewe(gnd),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(clocken0),
	.ena1(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[6]}),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[6]}),
	.portbaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_b[7],address_b[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a7_PORTADATAOUT_bus),
	.portbdataout(ram_block1a7_PORTBDATAOUT_bus));
defparam ram_block1a7.data_interleave_offset_in_bits = 1;
defparam ram_block1a7.data_interleave_width_in_bits = 1;
defparam ram_block1a7.init_file = "NCO1_sin_c.hex";
defparam ram_block1a7.init_file_layout = "port_a";
defparam ram_block1a7.logical_ram_name = "NCO1_st:NCO1_st_inst|asj_nco_as_m_dp_cen:ux0220|altsyncram:altsyncram_component|altsyncram_1772:auto_generated|ALTSYNCRAM";
defparam ram_block1a7.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a7.operation_mode = "bidir_dual_port";
defparam ram_block1a7.port_a_address_width = 8;
defparam ram_block1a7.port_a_data_out_clear = "none";
defparam ram_block1a7.port_a_data_out_clock = "clock0";
defparam ram_block1a7.port_a_data_width = 1;
defparam ram_block1a7.port_a_first_address = 0;
defparam ram_block1a7.port_a_first_bit_number = 7;
defparam ram_block1a7.port_a_last_address = 255;
defparam ram_block1a7.port_a_logical_ram_depth = 256;
defparam ram_block1a7.port_a_logical_ram_width = 14;
defparam ram_block1a7.port_b_address_clock = "clock0";
defparam ram_block1a7.port_b_address_width = 8;
defparam ram_block1a7.port_b_data_in_clock = "clock0";
defparam ram_block1a7.port_b_data_out_clear = "none";
defparam ram_block1a7.port_b_data_out_clock = "clock0";
defparam ram_block1a7.port_b_data_width = 1;
defparam ram_block1a7.port_b_first_address = 0;
defparam ram_block1a7.port_b_first_bit_number = 7;
defparam ram_block1a7.port_b_last_address = 255;
defparam ram_block1a7.port_b_logical_ram_depth = 256;
defparam ram_block1a7.port_b_logical_ram_width = 14;
defparam ram_block1a7.port_b_read_enable_write_enable_clock = "clock0";
defparam ram_block1a7.ram_block_type = "auto";
defparam ram_block1a7.mem_init0 = 256'h339936D6AAD2670001CC96AAD6D93398CC66C929552D98FFFE3369552926CC66;

stratixii_ram_block ram_block1a8(
	.portawe(gnd),
	.portaaddrstall(gnd),
	.portbrewe(gnd),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(clocken0),
	.ena1(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[6]}),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[6]}),
	.portbaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_b[7],address_b[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a8_PORTADATAOUT_bus),
	.portbdataout(ram_block1a8_PORTBDATAOUT_bus));
defparam ram_block1a8.data_interleave_offset_in_bits = 1;
defparam ram_block1a8.data_interleave_width_in_bits = 1;
defparam ram_block1a8.init_file = "NCO1_sin_c.hex";
defparam ram_block1a8.init_file_layout = "port_a";
defparam ram_block1a8.logical_ram_name = "NCO1_st:NCO1_st_inst|asj_nco_as_m_dp_cen:ux0220|altsyncram:altsyncram_component|altsyncram_1772:auto_generated|ALTSYNCRAM";
defparam ram_block1a8.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a8.operation_mode = "bidir_dual_port";
defparam ram_block1a8.port_a_address_width = 8;
defparam ram_block1a8.port_a_data_out_clear = "none";
defparam ram_block1a8.port_a_data_out_clock = "clock0";
defparam ram_block1a8.port_a_data_width = 1;
defparam ram_block1a8.port_a_first_address = 0;
defparam ram_block1a8.port_a_first_bit_number = 8;
defparam ram_block1a8.port_a_last_address = 255;
defparam ram_block1a8.port_a_logical_ram_depth = 256;
defparam ram_block1a8.port_a_logical_ram_width = 14;
defparam ram_block1a8.port_b_address_clock = "clock0";
defparam ram_block1a8.port_b_address_width = 8;
defparam ram_block1a8.port_b_data_in_clock = "clock0";
defparam ram_block1a8.port_b_data_out_clear = "none";
defparam ram_block1a8.port_b_data_out_clock = "clock0";
defparam ram_block1a8.port_b_data_width = 1;
defparam ram_block1a8.port_b_first_address = 0;
defparam ram_block1a8.port_b_first_bit_number = 8;
defparam ram_block1a8.port_b_last_address = 255;
defparam ram_block1a8.port_b_logical_ram_depth = 256;
defparam ram_block1a8.port_b_logical_ram_width = 14;
defparam ram_block1a8.port_b_read_enable_write_enable_clock = "clock0";
defparam ram_block1a8.ram_block_type = "auto";
defparam ram_block1a8.mem_init0 = 256'hA52DA49B331C7800003C7199B24B694A5AD25B64CCE387FFFFC38E664DB496B4;

stratixii_ram_block ram_block1a9(
	.portawe(gnd),
	.portaaddrstall(gnd),
	.portbrewe(gnd),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(clocken0),
	.ena1(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[6]}),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[6]}),
	.portbaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_b[7],address_b[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a9_PORTADATAOUT_bus),
	.portbdataout(ram_block1a9_PORTBDATAOUT_bus));
defparam ram_block1a9.data_interleave_offset_in_bits = 1;
defparam ram_block1a9.data_interleave_width_in_bits = 1;
defparam ram_block1a9.init_file = "NCO1_sin_c.hex";
defparam ram_block1a9.init_file_layout = "port_a";
defparam ram_block1a9.logical_ram_name = "NCO1_st:NCO1_st_inst|asj_nco_as_m_dp_cen:ux0220|altsyncram:altsyncram_component|altsyncram_1772:auto_generated|ALTSYNCRAM";
defparam ram_block1a9.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a9.operation_mode = "bidir_dual_port";
defparam ram_block1a9.port_a_address_width = 8;
defparam ram_block1a9.port_a_data_out_clear = "none";
defparam ram_block1a9.port_a_data_out_clock = "clock0";
defparam ram_block1a9.port_a_data_width = 1;
defparam ram_block1a9.port_a_first_address = 0;
defparam ram_block1a9.port_a_first_bit_number = 9;
defparam ram_block1a9.port_a_last_address = 255;
defparam ram_block1a9.port_a_logical_ram_depth = 256;
defparam ram_block1a9.port_a_logical_ram_width = 14;
defparam ram_block1a9.port_b_address_clock = "clock0";
defparam ram_block1a9.port_b_address_width = 8;
defparam ram_block1a9.port_b_data_in_clock = "clock0";
defparam ram_block1a9.port_b_data_out_clear = "none";
defparam ram_block1a9.port_b_data_out_clock = "clock0";
defparam ram_block1a9.port_b_data_width = 1;
defparam ram_block1a9.port_b_first_address = 0;
defparam ram_block1a9.port_b_first_bit_number = 9;
defparam ram_block1a9.port_b_last_address = 255;
defparam ram_block1a9.port_b_logical_ram_depth = 256;
defparam ram_block1a9.port_b_logical_ram_width = 14;
defparam ram_block1a9.port_b_read_enable_write_enable_clock = "clock0";
defparam ram_block1a9.ram_block_type = "auto";
defparam ram_block1a9.mem_init0 = 256'hC631C71C3C1F80000003F07871C718C639CE38E3C3E07FFFFFFC0F878E38E738;

stratixii_ram_block ram_block1a10(
	.portawe(gnd),
	.portaaddrstall(gnd),
	.portbrewe(gnd),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(clocken0),
	.ena1(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[6]}),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[6]}),
	.portbaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_b[7],address_b[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a10_PORTADATAOUT_bus),
	.portbdataout(ram_block1a10_PORTBDATAOUT_bus));
defparam ram_block1a10.data_interleave_offset_in_bits = 1;
defparam ram_block1a10.data_interleave_width_in_bits = 1;
defparam ram_block1a10.init_file = "NCO1_sin_c.hex";
defparam ram_block1a10.init_file_layout = "port_a";
defparam ram_block1a10.logical_ram_name = "NCO1_st:NCO1_st_inst|asj_nco_as_m_dp_cen:ux0220|altsyncram:altsyncram_component|altsyncram_1772:auto_generated|ALTSYNCRAM";
defparam ram_block1a10.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a10.operation_mode = "bidir_dual_port";
defparam ram_block1a10.port_a_address_width = 8;
defparam ram_block1a10.port_a_data_out_clear = "none";
defparam ram_block1a10.port_a_data_out_clock = "clock0";
defparam ram_block1a10.port_a_data_width = 1;
defparam ram_block1a10.port_a_first_address = 0;
defparam ram_block1a10.port_a_first_bit_number = 10;
defparam ram_block1a10.port_a_last_address = 255;
defparam ram_block1a10.port_a_logical_ram_depth = 256;
defparam ram_block1a10.port_a_logical_ram_width = 14;
defparam ram_block1a10.port_b_address_clock = "clock0";
defparam ram_block1a10.port_b_address_width = 8;
defparam ram_block1a10.port_b_data_in_clock = "clock0";
defparam ram_block1a10.port_b_data_out_clear = "none";
defparam ram_block1a10.port_b_data_out_clock = "clock0";
defparam ram_block1a10.port_b_data_width = 1;
defparam ram_block1a10.port_b_first_address = 0;
defparam ram_block1a10.port_b_first_bit_number = 10;
defparam ram_block1a10.port_b_last_address = 255;
defparam ram_block1a10.port_b_logical_ram_depth = 256;
defparam ram_block1a10.port_b_logical_ram_width = 14;
defparam ram_block1a10.port_b_read_enable_write_enable_clock = "clock0";
defparam ram_block1a10.ram_block_type = "auto";
defparam ram_block1a10.mem_init0 = 256'hF83E07E03FE0000000000FF80FC0F83E07C1F81FC01FFFFFFFFFF007F03F07C0;

stratixii_ram_block ram_block1a11(
	.portawe(gnd),
	.portaaddrstall(gnd),
	.portbrewe(gnd),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(clocken0),
	.ena1(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[6]}),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[6]}),
	.portbaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_b[7],address_b[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a11_PORTADATAOUT_bus),
	.portbdataout(ram_block1a11_PORTBDATAOUT_bus));
defparam ram_block1a11.data_interleave_offset_in_bits = 1;
defparam ram_block1a11.data_interleave_width_in_bits = 1;
defparam ram_block1a11.init_file = "NCO1_sin_c.hex";
defparam ram_block1a11.init_file_layout = "port_a";
defparam ram_block1a11.logical_ram_name = "NCO1_st:NCO1_st_inst|asj_nco_as_m_dp_cen:ux0220|altsyncram:altsyncram_component|altsyncram_1772:auto_generated|ALTSYNCRAM";
defparam ram_block1a11.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a11.operation_mode = "bidir_dual_port";
defparam ram_block1a11.port_a_address_width = 8;
defparam ram_block1a11.port_a_data_out_clear = "none";
defparam ram_block1a11.port_a_data_out_clock = "clock0";
defparam ram_block1a11.port_a_data_width = 1;
defparam ram_block1a11.port_a_first_address = 0;
defparam ram_block1a11.port_a_first_bit_number = 11;
defparam ram_block1a11.port_a_last_address = 255;
defparam ram_block1a11.port_a_logical_ram_depth = 256;
defparam ram_block1a11.port_a_logical_ram_width = 14;
defparam ram_block1a11.port_b_address_clock = "clock0";
defparam ram_block1a11.port_b_address_width = 8;
defparam ram_block1a11.port_b_data_in_clock = "clock0";
defparam ram_block1a11.port_b_data_out_clear = "none";
defparam ram_block1a11.port_b_data_out_clock = "clock0";
defparam ram_block1a11.port_b_data_width = 1;
defparam ram_block1a11.port_b_first_address = 0;
defparam ram_block1a11.port_b_first_bit_number = 11;
defparam ram_block1a11.port_b_last_address = 255;
defparam ram_block1a11.port_b_logical_ram_depth = 256;
defparam ram_block1a11.port_b_logical_ram_width = 14;
defparam ram_block1a11.port_b_read_enable_write_enable_clock = "clock0";
defparam ram_block1a11.ram_block_type = "auto";
defparam ram_block1a11.mem_init0 = 256'hFFC007FFC000000000000007FFC007FE003FF8003FFFFFFFFFFFFFF8003FF800;

stratixii_ram_block ram_block1a12(
	.portawe(gnd),
	.portaaddrstall(gnd),
	.portbrewe(gnd),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(clocken0),
	.ena1(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[6]}),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[6]}),
	.portbaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_b[7],address_b[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a12_PORTADATAOUT_bus),
	.portbdataout(ram_block1a12_PORTBDATAOUT_bus));
defparam ram_block1a12.data_interleave_offset_in_bits = 1;
defparam ram_block1a12.data_interleave_width_in_bits = 1;
defparam ram_block1a12.init_file = "NCO1_sin_c.hex";
defparam ram_block1a12.init_file_layout = "port_a";
defparam ram_block1a12.logical_ram_name = "NCO1_st:NCO1_st_inst|asj_nco_as_m_dp_cen:ux0220|altsyncram:altsyncram_component|altsyncram_1772:auto_generated|ALTSYNCRAM";
defparam ram_block1a12.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a12.operation_mode = "bidir_dual_port";
defparam ram_block1a12.port_a_address_width = 8;
defparam ram_block1a12.port_a_data_out_clear = "none";
defparam ram_block1a12.port_a_data_out_clock = "clock0";
defparam ram_block1a12.port_a_data_width = 1;
defparam ram_block1a12.port_a_first_address = 0;
defparam ram_block1a12.port_a_first_bit_number = 12;
defparam ram_block1a12.port_a_last_address = 255;
defparam ram_block1a12.port_a_logical_ram_depth = 256;
defparam ram_block1a12.port_a_logical_ram_width = 14;
defparam ram_block1a12.port_b_address_clock = "clock0";
defparam ram_block1a12.port_b_address_width = 8;
defparam ram_block1a12.port_b_data_in_clock = "clock0";
defparam ram_block1a12.port_b_data_out_clear = "none";
defparam ram_block1a12.port_b_data_out_clock = "clock0";
defparam ram_block1a12.port_b_data_width = 1;
defparam ram_block1a12.port_b_first_address = 0;
defparam ram_block1a12.port_b_first_bit_number = 12;
defparam ram_block1a12.port_b_last_address = 255;
defparam ram_block1a12.port_b_logical_ram_depth = 256;
defparam ram_block1a12.port_b_logical_ram_width = 14;
defparam ram_block1a12.port_b_read_enable_write_enable_clock = "clock0";
defparam ram_block1a12.ram_block_type = "auto";
defparam ram_block1a12.mem_init0 = 256'hFFFFF8000000000000000000003FFFFE000007FFFFFFFFFFFFFFFFFFFFC00000;

stratixii_ram_block ram_block1a13(
	.portawe(gnd),
	.portaaddrstall(gnd),
	.portbrewe(gnd),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(clocken0),
	.ena1(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[6]}),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[6]}),
	.portbaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_b[7],address_b[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a13_PORTADATAOUT_bus),
	.portbdataout(ram_block1a13_PORTBDATAOUT_bus));
defparam ram_block1a13.data_interleave_offset_in_bits = 1;
defparam ram_block1a13.data_interleave_width_in_bits = 1;
defparam ram_block1a13.init_file = "NCO1_sin_c.hex";
defparam ram_block1a13.init_file_layout = "port_a";
defparam ram_block1a13.logical_ram_name = "NCO1_st:NCO1_st_inst|asj_nco_as_m_dp_cen:ux0220|altsyncram:altsyncram_component|altsyncram_1772:auto_generated|ALTSYNCRAM";
defparam ram_block1a13.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a13.operation_mode = "bidir_dual_port";
defparam ram_block1a13.port_a_address_width = 8;
defparam ram_block1a13.port_a_data_out_clear = "none";
defparam ram_block1a13.port_a_data_out_clock = "clock0";
defparam ram_block1a13.port_a_data_width = 1;
defparam ram_block1a13.port_a_first_address = 0;
defparam ram_block1a13.port_a_first_bit_number = 13;
defparam ram_block1a13.port_a_last_address = 255;
defparam ram_block1a13.port_a_logical_ram_depth = 256;
defparam ram_block1a13.port_a_logical_ram_width = 14;
defparam ram_block1a13.port_b_address_clock = "clock0";
defparam ram_block1a13.port_b_address_width = 8;
defparam ram_block1a13.port_b_data_in_clock = "clock0";
defparam ram_block1a13.port_b_data_out_clear = "none";
defparam ram_block1a13.port_b_data_out_clock = "clock0";
defparam ram_block1a13.port_b_data_width = 1;
defparam ram_block1a13.port_b_first_address = 0;
defparam ram_block1a13.port_b_first_bit_number = 13;
defparam ram_block1a13.port_b_last_address = 255;
defparam ram_block1a13.port_b_logical_ram_depth = 256;
defparam ram_block1a13.port_b_logical_ram_width = 14;
defparam ram_block1a13.port_b_read_enable_write_enable_clock = "clock0";
defparam ram_block1a13.ram_block_type = "auto";
defparam ram_block1a13.mem_init0 = 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE00000000000000000000000000000000;

endmodule

module NCO1_asj_nco_isdr (
	data_ready1,
	clk,
	reset_n,
	clken)/* synthesis synthesis_greybox=1 */;
output 	data_ready1;
input 	clk;
input 	reset_n;
input 	clken;

wire gnd;
wire vcc;

assign gnd = 1'b0;
assign vcc = 1'b1;

wire \lpm_counter_component|auto_generated|safe_q[3] ;
wire \lpm_counter_component|auto_generated|safe_q[1] ;
wire \lpm_counter_component|auto_generated|safe_q[0] ;
wire \lpm_counter_component|auto_generated|safe_q[2] ;
wire \data_ready~12_combout ;


NCO1_lpm_counter_1 lpm_counter_component(
	.q({\lpm_counter_component|auto_generated|safe_q[3] ,\lpm_counter_component|auto_generated|safe_q[2] ,\lpm_counter_component|auto_generated|safe_q[1] ,\lpm_counter_component|auto_generated|safe_q[0] }),
	.clock(clk),
	.aclr(reset_n),
	.clken(clken));

stratixii_lcell_ff data_ready(
	.clk(clk),
	.datain(\data_ready~12_combout ),
	.adatasdata(gnd),
	.aclr(gnd),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(vcc),
	.regout(data_ready1));

stratixii_lcell_comb \data_ready~12 (
	.dataa(!data_ready1),
	.datab(!clken),
	.datac(!\lpm_counter_component|auto_generated|safe_q[3] ),
	.datad(!\lpm_counter_component|auto_generated|safe_q[1] ),
	.datae(!\lpm_counter_component|auto_generated|safe_q[0] ),
	.dataf(!\lpm_counter_component|auto_generated|safe_q[2] ),
	.datag(vcc),
	.cin(gnd),
	.sharein(gnd),
	.combout(\data_ready~12_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \data_ready~12 .extended_lut = "off";
defparam \data_ready~12 .lut_mask = 64'h8000000000000000;
defparam \data_ready~12 .shared_arith = "off";

endmodule

module NCO1_lpm_counter_1 (
	q,
	clock,
	aclr,
	clken)/* synthesis synthesis_greybox=1 */;
output 	[3:0] q;
input 	clock;
input 	aclr;
input 	clken;

wire gnd;
wire vcc;

assign gnd = 1'b0;
assign vcc = 1'b1;



NCO1_cntr_8oi auto_generated(
	.q({q[3],q[2],q[1],q[0]}),
	.clock(clock),
	.aclr(aclr),
	.clken(clken));

endmodule

module NCO1_cntr_8oi (
	q,
	clock,
	aclr,
	clken)/* synthesis synthesis_greybox=1 */;
output 	[3:0] q;
input 	clock;
input 	aclr;
input 	clken;

wire gnd;
wire vcc;

assign gnd = 1'b0;
assign vcc = 1'b1;

wire \counter_comb_bita0~COUT ;
wire \counter_comb_bita1~COUT ;
wire \counter_comb_bita2~COUT ;
wire \counter_comb_bita3~sumout ;
wire \counter_comb_bita1~sumout ;
wire \counter_comb_bita0~sumout ;
wire \counter_comb_bita2~sumout ;


stratixii_lcell_ff \counter_reg_bit1a[3] (
	.clk(clock),
	.datain(\counter_comb_bita3~sumout ),
	.adatasdata(gnd),
	.aclr(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.regout(q[3]));

stratixii_lcell_ff \counter_reg_bit1a[1] (
	.clk(clock),
	.datain(\counter_comb_bita1~sumout ),
	.adatasdata(gnd),
	.aclr(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.regout(q[1]));

stratixii_lcell_ff \counter_reg_bit1a[0] (
	.clk(clock),
	.datain(\counter_comb_bita0~sumout ),
	.adatasdata(gnd),
	.aclr(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.regout(q[0]));

stratixii_lcell_ff \counter_reg_bit1a[2] (
	.clk(clock),
	.datain(\counter_comb_bita2~sumout ),
	.adatasdata(gnd),
	.aclr(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.regout(q[2]));

stratixii_lcell_comb counter_comb_bita0(
	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(!q[0]),
	.datae(vcc),
	.dataf(vcc),
	.datag(vcc),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(\counter_comb_bita0~sumout ),
	.cout(\counter_comb_bita0~COUT ),
	.shareout());
defparam counter_comb_bita0.extended_lut = "off";
defparam counter_comb_bita0.lut_mask = 64'h000000000000ff00;
defparam counter_comb_bita0.shared_arith = "off";

stratixii_lcell_comb counter_comb_bita1(
	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(!q[1]),
	.datae(vcc),
	.dataf(vcc),
	.datag(vcc),
	.cin(\counter_comb_bita0~COUT ),
	.sharein(gnd),
	.combout(),
	.sumout(\counter_comb_bita1~sumout ),
	.cout(\counter_comb_bita1~COUT ),
	.shareout());
defparam counter_comb_bita1.extended_lut = "off";
defparam counter_comb_bita1.lut_mask = 64'h000000000000ff00;
defparam counter_comb_bita1.shared_arith = "off";

stratixii_lcell_comb counter_comb_bita2(
	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(!q[2]),
	.datae(vcc),
	.dataf(vcc),
	.datag(vcc),
	.cin(\counter_comb_bita1~COUT ),
	.sharein(gnd),
	.combout(),
	.sumout(\counter_comb_bita2~sumout ),
	.cout(\counter_comb_bita2~COUT ),
	.shareout());
defparam counter_comb_bita2.extended_lut = "off";
defparam counter_comb_bita2.lut_mask = 64'h000000000000ff00;
defparam counter_comb_bita2.shared_arith = "off";

stratixii_lcell_comb counter_comb_bita3(
	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(!q[3]),
	.datae(vcc),
	.dataf(vcc),
	.datag(vcc),
	.cin(\counter_comb_bita2~COUT ),
	.sharein(gnd),
	.combout(),
	.sumout(\counter_comb_bita3~sumout ),
	.cout(),
	.shareout());
defparam counter_comb_bita3.extended_lut = "off";
defparam counter_comb_bita3.lut_mask = 64'h000000000000ff00;
defparam counter_comb_bita3.shared_arith = "off";

endmodule

module NCO1_asj_nco_madx_cen (
	result_13,
	result_14,
	result_15,
	result_16,
	result_17,
	result_18,
	result_19,
	result_20,
	result_21,
	result_22,
	result_23,
	result_24,
	result_25,
	result_26,
	result_27,
	q_a_0,
	q_b_0,
	q_a_1,
	q_b_1,
	q_a_2,
	q_b_2,
	q_a_3,
	q_b_3,
	q_a_4,
	q_b_4,
	q_a_5,
	q_b_5,
	q_a_6,
	q_b_6,
	q_a_7,
	q_b_7,
	q_a_8,
	q_b_8,
	q_a_9,
	q_b_9,
	q_a_10,
	q_b_10,
	q_a_11,
	q_b_11,
	q_a_12,
	q_b_12,
	q_a_13,
	q_b_13,
	q_a_01,
	q_a_14,
	q_a_21,
	q_a_31,
	q_a_41,
	q_a_51,
	q_a_61,
	q_a_71,
	q_a_81,
	q_a_91,
	q_a_101,
	q_a_111,
	q_a_121,
	q_a_131,
	q_a_02,
	q_a_15,
	q_a_22,
	q_a_32,
	q_a_42,
	q_a_52,
	q_a_62,
	q_a_72,
	q_a_82,
	q_a_92,
	q_a_102,
	q_a_112,
	q_a_122,
	q_a_132,
	clk,
	clken)/* synthesis synthesis_greybox=1 */;
output 	result_13;
output 	result_14;
output 	result_15;
output 	result_16;
output 	result_17;
output 	result_18;
output 	result_19;
output 	result_20;
output 	result_21;
output 	result_22;
output 	result_23;
output 	result_24;
output 	result_25;
output 	result_26;
output 	result_27;
input 	q_a_0;
input 	q_b_0;
input 	q_a_1;
input 	q_b_1;
input 	q_a_2;
input 	q_b_2;
input 	q_a_3;
input 	q_b_3;
input 	q_a_4;
input 	q_b_4;
input 	q_a_5;
input 	q_b_5;
input 	q_a_6;
input 	q_b_6;
input 	q_a_7;
input 	q_b_7;
input 	q_a_8;
input 	q_b_8;
input 	q_a_9;
input 	q_b_9;
input 	q_a_10;
input 	q_b_10;
input 	q_a_11;
input 	q_b_11;
input 	q_a_12;
input 	q_b_12;
input 	q_a_13;
input 	q_b_13;
input 	q_a_01;
input 	q_a_14;
input 	q_a_21;
input 	q_a_31;
input 	q_a_41;
input 	q_a_51;
input 	q_a_61;
input 	q_a_71;
input 	q_a_81;
input 	q_a_91;
input 	q_a_101;
input 	q_a_111;
input 	q_a_121;
input 	q_a_131;
input 	q_a_02;
input 	q_a_15;
input 	q_a_22;
input 	q_a_32;
input 	q_a_42;
input 	q_a_52;
input 	q_a_62;
input 	q_a_72;
input 	q_a_82;
input 	q_a_92;
input 	q_a_102;
input 	q_a_112;
input 	q_a_122;
input 	q_a_132;
input 	clk;
input 	clken;

wire gnd;
wire vcc;

assign gnd = 1'b0;
assign vcc = 1'b1;



NCO1_altmult_add_1 ALTMULT_ADD_component(
	.result({result_unconnected_wire_28,result_27,result_26,result_25,result_24,result_23,result_22,result_21,result_20,result_19,result_18,result_17,result_16,result_15,result_14,result_13,result_unconnected_wire_12,result_unconnected_wire_11,result_unconnected_wire_10,
result_unconnected_wire_9,result_unconnected_wire_8,result_unconnected_wire_7,result_unconnected_wire_6,result_unconnected_wire_5,result_unconnected_wire_4,result_unconnected_wire_3,result_unconnected_wire_2,result_unconnected_wire_1,result_unconnected_wire_0}),
	.dataa({q_a_13,q_a_12,q_a_11,q_a_10,q_a_9,q_a_8,q_a_7,q_a_6,q_a_5,q_a_4,q_a_3,q_a_2,q_a_1,q_a_0,q_b_13,q_b_12,q_b_11,q_b_10,q_b_9,q_b_8,q_b_7,q_b_6,q_b_5,q_b_4,q_b_3,q_b_2,q_b_1,q_b_0}),
	.datab({q_a_132,q_a_122,q_a_112,q_a_102,q_a_92,q_a_82,q_a_72,q_a_62,q_a_52,q_a_42,q_a_32,q_a_22,q_a_15,q_a_02,q_a_131,q_a_121,q_a_111,q_a_101,q_a_91,q_a_81,q_a_71,q_a_61,q_a_51,q_a_41,q_a_31,q_a_21,q_a_14,q_a_01}),
	.clock0(clk),
	.ena0(clken));

endmodule

module NCO1_altmult_add_1 (
	result,
	dataa,
	datab,
	clock0,
	ena0)/* synthesis synthesis_greybox=1 */;
output 	[28:0] result;
input 	[27:0] dataa;
input 	[27:0] datab;
input 	clock0;
input 	ena0;

wire gnd;
wire vcc;

assign gnd = 1'b0;
assign vcc = 1'b1;



NCO1_mult_add_5nb2 auto_generated(
	.result({result_unconnected_wire_28,result[27],result[26],result[25],result[24],result[23],result[22],result[21],result[20],result[19],result[18],result[17],result[16],result[15],result[14],result[13],result_unconnected_wire_12,result_unconnected_wire_11,result_unconnected_wire_10,result_unconnected_wire_9,result_unconnected_wire_8,
result_unconnected_wire_7,result_unconnected_wire_6,result_unconnected_wire_5,result_unconnected_wire_4,result_unconnected_wire_3,result_unconnected_wire_2,result_unconnected_wire_1,result_unconnected_wire_0}),
	.dataa({dataa[27],dataa[26],dataa[25],dataa[24],dataa[23],dataa[22],dataa[21],dataa[20],dataa[19],dataa[18],dataa[17],dataa[16],dataa[15],dataa[14],dataa[13],dataa[12],dataa[11],dataa[10],dataa[9],dataa[8],dataa[7],dataa[6],dataa[5],dataa[4],dataa[3],dataa[2],dataa[1],dataa[0]}),
	.datab({datab[27],datab[26],datab[25],datab[24],datab[23],datab[22],datab[21],datab[20],datab[19],datab[18],datab[17],datab[16],datab[15],datab[14],datab[13],datab[12],datab[11],datab[10],datab[9],datab[8],datab[7],datab[6],datab[5],datab[4],datab[3],datab[2],datab[1],datab[0]}),
	.clock0(clock0),
	.ena0(ena0));

endmodule

module NCO1_mult_add_5nb2 (
	result,
	dataa,
	datab,
	clock0,
	ena0)/* synthesis synthesis_greybox=1 */;
output 	[28:0] result;
input 	[27:0] dataa;
input 	[27:0] datab;
input 	clock0;
input 	ena0;

wire gnd;
wire vcc;

assign gnd = 1'b0;
assign vcc = 1'b1;

wire \result[0] ;
wire \result[1] ;
wire \result[2] ;
wire \result[3] ;
wire \result[4] ;
wire \result[5] ;
wire \result[6] ;
wire \result[7] ;
wire \result[8] ;
wire \result[9] ;
wire \result[10] ;
wire \result[11] ;
wire \result[12] ;
wire \result[28] ;
wire \mac_mult1~dataout ;
wire \mac_mult1~DATAOUT1 ;
wire \mac_mult1~DATAOUT2 ;
wire \mac_mult1~DATAOUT3 ;
wire \mac_mult1~DATAOUT4 ;
wire \mac_mult1~DATAOUT5 ;
wire \mac_mult1~DATAOUT6 ;
wire \mac_mult1~DATAOUT7 ;
wire \mac_mult1~DATAOUT8 ;
wire \mac_mult1~DATAOUT9 ;
wire \mac_mult1~DATAOUT10 ;
wire \mac_mult1~DATAOUT11 ;
wire \mac_mult1~DATAOUT12 ;
wire \mac_mult1~DATAOUT13 ;
wire \mac_mult1~DATAOUT14 ;
wire \mac_mult1~DATAOUT15 ;
wire \mac_mult1~DATAOUT16 ;
wire \mac_mult1~DATAOUT17 ;
wire \mac_mult1~DATAOUT18 ;
wire \mac_mult1~DATAOUT19 ;
wire \mac_mult1~DATAOUT20 ;
wire \mac_mult1~DATAOUT21 ;
wire \mac_mult1~DATAOUT22 ;
wire \mac_mult1~DATAOUT23 ;
wire \mac_mult1~DATAOUT24 ;
wire \mac_mult1~DATAOUT25 ;
wire \mac_mult1~DATAOUT26 ;
wire \mac_mult1~DATAOUT27 ;
wire \mac_mult2~dataout ;
wire \mac_mult2~DATAOUT1 ;
wire \mac_mult2~DATAOUT2 ;
wire \mac_mult2~DATAOUT3 ;
wire \mac_mult2~DATAOUT4 ;
wire \mac_mult2~DATAOUT5 ;
wire \mac_mult2~DATAOUT6 ;
wire \mac_mult2~DATAOUT7 ;
wire \mac_mult2~DATAOUT8 ;
wire \mac_mult2~DATAOUT9 ;
wire \mac_mult2~DATAOUT10 ;
wire \mac_mult2~DATAOUT11 ;
wire \mac_mult2~DATAOUT12 ;
wire \mac_mult2~DATAOUT13 ;
wire \mac_mult2~DATAOUT14 ;
wire \mac_mult2~DATAOUT15 ;
wire \mac_mult2~DATAOUT16 ;
wire \mac_mult2~DATAOUT17 ;
wire \mac_mult2~DATAOUT18 ;
wire \mac_mult2~DATAOUT19 ;
wire \mac_mult2~DATAOUT20 ;
wire \mac_mult2~DATAOUT21 ;
wire \mac_mult2~DATAOUT22 ;
wire \mac_mult2~DATAOUT23 ;
wire \mac_mult2~DATAOUT24 ;
wire \mac_mult2~DATAOUT25 ;
wire \mac_mult2~DATAOUT26 ;
wire \mac_mult2~DATAOUT27 ;

wire [143:0] mac_out3_DATAOUT_bus;
wire [35:0] mac_mult1_DATAOUT_bus;
wire [35:0] mac_mult2_DATAOUT_bus;

assign \result[0]  = mac_out3_DATAOUT_bus[0];
assign \result[1]  = mac_out3_DATAOUT_bus[1];
assign \result[2]  = mac_out3_DATAOUT_bus[2];
assign \result[3]  = mac_out3_DATAOUT_bus[3];
assign \result[4]  = mac_out3_DATAOUT_bus[4];
assign \result[5]  = mac_out3_DATAOUT_bus[5];
assign \result[6]  = mac_out3_DATAOUT_bus[6];
assign \result[7]  = mac_out3_DATAOUT_bus[7];
assign \result[8]  = mac_out3_DATAOUT_bus[8];
assign \result[9]  = mac_out3_DATAOUT_bus[9];
assign \result[10]  = mac_out3_DATAOUT_bus[10];
assign \result[11]  = mac_out3_DATAOUT_bus[11];
assign \result[12]  = mac_out3_DATAOUT_bus[12];
assign result[13] = mac_out3_DATAOUT_bus[13];
assign result[14] = mac_out3_DATAOUT_bus[14];
assign result[15] = mac_out3_DATAOUT_bus[15];
assign result[16] = mac_out3_DATAOUT_bus[16];
assign result[17] = mac_out3_DATAOUT_bus[17];
assign result[18] = mac_out3_DATAOUT_bus[18];
assign result[19] = mac_out3_DATAOUT_bus[19];
assign result[20] = mac_out3_DATAOUT_bus[20];
assign result[21] = mac_out3_DATAOUT_bus[21];
assign result[22] = mac_out3_DATAOUT_bus[22];
assign result[23] = mac_out3_DATAOUT_bus[23];
assign result[24] = mac_out3_DATAOUT_bus[24];
assign result[25] = mac_out3_DATAOUT_bus[25];
assign result[26] = mac_out3_DATAOUT_bus[26];
assign result[27] = mac_out3_DATAOUT_bus[27];
assign \result[28]  = mac_out3_DATAOUT_bus[28];

assign \mac_mult1~dataout  = mac_mult1_DATAOUT_bus[0];
assign \mac_mult1~DATAOUT1  = mac_mult1_DATAOUT_bus[1];
assign \mac_mult1~DATAOUT2  = mac_mult1_DATAOUT_bus[2];
assign \mac_mult1~DATAOUT3  = mac_mult1_DATAOUT_bus[3];
assign \mac_mult1~DATAOUT4  = mac_mult1_DATAOUT_bus[4];
assign \mac_mult1~DATAOUT5  = mac_mult1_DATAOUT_bus[5];
assign \mac_mult1~DATAOUT6  = mac_mult1_DATAOUT_bus[6];
assign \mac_mult1~DATAOUT7  = mac_mult1_DATAOUT_bus[7];
assign \mac_mult1~DATAOUT8  = mac_mult1_DATAOUT_bus[8];
assign \mac_mult1~DATAOUT9  = mac_mult1_DATAOUT_bus[9];
assign \mac_mult1~DATAOUT10  = mac_mult1_DATAOUT_bus[10];
assign \mac_mult1~DATAOUT11  = mac_mult1_DATAOUT_bus[11];
assign \mac_mult1~DATAOUT12  = mac_mult1_DATAOUT_bus[12];
assign \mac_mult1~DATAOUT13  = mac_mult1_DATAOUT_bus[13];
assign \mac_mult1~DATAOUT14  = mac_mult1_DATAOUT_bus[14];
assign \mac_mult1~DATAOUT15  = mac_mult1_DATAOUT_bus[15];
assign \mac_mult1~DATAOUT16  = mac_mult1_DATAOUT_bus[16];
assign \mac_mult1~DATAOUT17  = mac_mult1_DATAOUT_bus[17];
assign \mac_mult1~DATAOUT18  = mac_mult1_DATAOUT_bus[18];
assign \mac_mult1~DATAOUT19  = mac_mult1_DATAOUT_bus[19];
assign \mac_mult1~DATAOUT20  = mac_mult1_DATAOUT_bus[20];
assign \mac_mult1~DATAOUT21  = mac_mult1_DATAOUT_bus[21];
assign \mac_mult1~DATAOUT22  = mac_mult1_DATAOUT_bus[22];
assign \mac_mult1~DATAOUT23  = mac_mult1_DATAOUT_bus[23];
assign \mac_mult1~DATAOUT24  = mac_mult1_DATAOUT_bus[24];
assign \mac_mult1~DATAOUT25  = mac_mult1_DATAOUT_bus[25];
assign \mac_mult1~DATAOUT26  = mac_mult1_DATAOUT_bus[26];
assign \mac_mult1~DATAOUT27  = mac_mult1_DATAOUT_bus[27];

assign \mac_mult2~dataout  = mac_mult2_DATAOUT_bus[0];
assign \mac_mult2~DATAOUT1  = mac_mult2_DATAOUT_bus[1];
assign \mac_mult2~DATAOUT2  = mac_mult2_DATAOUT_bus[2];
assign \mac_mult2~DATAOUT3  = mac_mult2_DATAOUT_bus[3];
assign \mac_mult2~DATAOUT4  = mac_mult2_DATAOUT_bus[4];
assign \mac_mult2~DATAOUT5  = mac_mult2_DATAOUT_bus[5];
assign \mac_mult2~DATAOUT6  = mac_mult2_DATAOUT_bus[6];
assign \mac_mult2~DATAOUT7  = mac_mult2_DATAOUT_bus[7];
assign \mac_mult2~DATAOUT8  = mac_mult2_DATAOUT_bus[8];
assign \mac_mult2~DATAOUT9  = mac_mult2_DATAOUT_bus[9];
assign \mac_mult2~DATAOUT10  = mac_mult2_DATAOUT_bus[10];
assign \mac_mult2~DATAOUT11  = mac_mult2_DATAOUT_bus[11];
assign \mac_mult2~DATAOUT12  = mac_mult2_DATAOUT_bus[12];
assign \mac_mult2~DATAOUT13  = mac_mult2_DATAOUT_bus[13];
assign \mac_mult2~DATAOUT14  = mac_mult2_DATAOUT_bus[14];
assign \mac_mult2~DATAOUT15  = mac_mult2_DATAOUT_bus[15];
assign \mac_mult2~DATAOUT16  = mac_mult2_DATAOUT_bus[16];
assign \mac_mult2~DATAOUT17  = mac_mult2_DATAOUT_bus[17];
assign \mac_mult2~DATAOUT18  = mac_mult2_DATAOUT_bus[18];
assign \mac_mult2~DATAOUT19  = mac_mult2_DATAOUT_bus[19];
assign \mac_mult2~DATAOUT20  = mac_mult2_DATAOUT_bus[20];
assign \mac_mult2~DATAOUT21  = mac_mult2_DATAOUT_bus[21];
assign \mac_mult2~DATAOUT22  = mac_mult2_DATAOUT_bus[22];
assign \mac_mult2~DATAOUT23  = mac_mult2_DATAOUT_bus[23];
assign \mac_mult2~DATAOUT24  = mac_mult2_DATAOUT_bus[24];
assign \mac_mult2~DATAOUT25  = mac_mult2_DATAOUT_bus[25];
assign \mac_mult2~DATAOUT26  = mac_mult2_DATAOUT_bus[26];
assign \mac_mult2~DATAOUT27  = mac_mult2_DATAOUT_bus[27];

stratixii_mac_out mac_out3(
	.zeroacc(gnd),
	.zeroacc1(gnd),
	.addnsub0(gnd),
	.addnsub1(vcc),
	.round0(gnd),
	.round1(gnd),
	.saturate(gnd),
	.saturate1(gnd),
	.multabsaturate(gnd),
	.multcdsaturate(gnd),
	.signa(vcc),
	.signb(vcc),
	.mode0(gnd),
	.mode1(gnd),
	.dataa({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,\mac_mult1~DATAOUT27 ,\mac_mult1~DATAOUT26 ,\mac_mult1~DATAOUT25 ,\mac_mult1~DATAOUT24 ,\mac_mult1~DATAOUT23 ,\mac_mult1~DATAOUT22 ,\mac_mult1~DATAOUT21 ,\mac_mult1~DATAOUT20 ,\mac_mult1~DATAOUT19 ,\mac_mult1~DATAOUT18 ,\mac_mult1~DATAOUT17 ,
\mac_mult1~DATAOUT16 ,\mac_mult1~DATAOUT15 ,\mac_mult1~DATAOUT14 ,\mac_mult1~DATAOUT13 ,\mac_mult1~DATAOUT12 ,\mac_mult1~DATAOUT11 ,\mac_mult1~DATAOUT10 ,\mac_mult1~DATAOUT9 ,\mac_mult1~DATAOUT8 ,\mac_mult1~DATAOUT7 ,\mac_mult1~DATAOUT6 ,\mac_mult1~DATAOUT5 ,
\mac_mult1~DATAOUT4 ,\mac_mult1~DATAOUT3 ,\mac_mult1~DATAOUT2 ,\mac_mult1~DATAOUT1 ,\mac_mult1~dataout }),
	.datab({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,\mac_mult2~DATAOUT27 ,\mac_mult2~DATAOUT26 ,\mac_mult2~DATAOUT25 ,\mac_mult2~DATAOUT24 ,\mac_mult2~DATAOUT23 ,\mac_mult2~DATAOUT22 ,\mac_mult2~DATAOUT21 ,\mac_mult2~DATAOUT20 ,\mac_mult2~DATAOUT19 ,\mac_mult2~DATAOUT18 ,\mac_mult2~DATAOUT17 ,
\mac_mult2~DATAOUT16 ,\mac_mult2~DATAOUT15 ,\mac_mult2~DATAOUT14 ,\mac_mult2~DATAOUT13 ,\mac_mult2~DATAOUT12 ,\mac_mult2~DATAOUT11 ,\mac_mult2~DATAOUT10 ,\mac_mult2~DATAOUT9 ,\mac_mult2~DATAOUT8 ,\mac_mult2~DATAOUT7 ,\mac_mult2~DATAOUT6 ,\mac_mult2~DATAOUT5 ,
\mac_mult2~DATAOUT4 ,\mac_mult2~DATAOUT3 ,\mac_mult2~DATAOUT2 ,\mac_mult2~DATAOUT1 ,\mac_mult2~dataout }),
	.datac(1'b1),
	.datad(1'b1),
	.clk({gnd,gnd,gnd,clock0}),
	.aclr({gnd,gnd,gnd,gnd}),
	.ena({vcc,vcc,vcc,ena0}),
	.accoverflow(),
	.dataout(mac_out3_DATAOUT_bus));
defparam mac_out3.addnsub0_clear = "none";
defparam mac_out3.addnsub0_clock = "none";
defparam mac_out3.addnsub0_pipeline_clear = "none";
defparam mac_out3.addnsub0_pipeline_clock = "none";
defparam mac_out3.addnsub1_clear = "none";
defparam mac_out3.addnsub1_clock = "none";
defparam mac_out3.addnsub1_pipeline_clear = "none";
defparam mac_out3.addnsub1_pipeline_clock = "none";
defparam mac_out3.dataa_forced_to_zero = "no";
defparam mac_out3.dataa_width = 28;
defparam mac_out3.datab_width = 28;
defparam mac_out3.datac_forced_to_zero = "no";
defparam mac_out3.dataout_width = 29;
defparam mac_out3.mode0_clear = "none";
defparam mac_out3.mode0_clock = "none";
defparam mac_out3.mode0_pipeline_clear = "none";
defparam mac_out3.mode0_pipeline_clock = "none";
defparam mac_out3.mode1_clear = "none";
defparam mac_out3.mode1_clock = "none";
defparam mac_out3.mode1_pipeline_clear = "none";
defparam mac_out3.mode1_pipeline_clock = "none";
defparam mac_out3.multabsaturate_clear = "none";
defparam mac_out3.multabsaturate_clock = "none";
defparam mac_out3.multabsaturate_pipeline_clear = "none";
defparam mac_out3.multabsaturate_pipeline_clock = "none";
defparam mac_out3.multcdsaturate_clear = "none";
defparam mac_out3.multcdsaturate_clock = "none";
defparam mac_out3.multcdsaturate_pipeline_clear = "none";
defparam mac_out3.multcdsaturate_pipeline_clock = "none";
defparam mac_out3.operation_mode = "one_level_adder";
defparam mac_out3.output1_clear = "none";
defparam mac_out3.output1_clock = "none";
defparam mac_out3.output2_clear = "none";
defparam mac_out3.output2_clock = "none";
defparam mac_out3.output3_clear = "none";
defparam mac_out3.output3_clock = "none";
defparam mac_out3.output4_clear = "none";
defparam mac_out3.output4_clock = "none";
defparam mac_out3.output5_clear = "none";
defparam mac_out3.output5_clock = "none";
defparam mac_out3.output6_clear = "none";
defparam mac_out3.output6_clock = "none";
defparam mac_out3.output7_clear = "none";
defparam mac_out3.output7_clock = "none";
defparam mac_out3.output_clear = "3";
defparam mac_out3.output_clock = "0";
defparam mac_out3.round0_clear = "none";
defparam mac_out3.round0_clock = "none";
defparam mac_out3.round0_pipeline_clear = "none";
defparam mac_out3.round0_pipeline_clock = "none";
defparam mac_out3.round1_clear = "none";
defparam mac_out3.round1_clock = "none";
defparam mac_out3.round1_pipeline_clear = "none";
defparam mac_out3.round1_pipeline_clock = "none";
defparam mac_out3.saturate1_clear = "none";
defparam mac_out3.saturate1_clock = "none";
defparam mac_out3.saturate1_pipeline_clear = "none";
defparam mac_out3.saturate1_pipeline_clock = "none";
defparam mac_out3.saturate_clear = "none";
defparam mac_out3.saturate_clock = "none";
defparam mac_out3.saturate_pipeline_clear = "none";
defparam mac_out3.saturate_pipeline_clock = "none";
defparam mac_out3.signa_clear = "none";
defparam mac_out3.signa_clock = "none";
defparam mac_out3.signa_pipeline_clear = "none";
defparam mac_out3.signa_pipeline_clock = "none";
defparam mac_out3.signb_clear = "none";
defparam mac_out3.signb_clock = "none";
defparam mac_out3.signb_pipeline_clear = "none";
defparam mac_out3.signb_pipeline_clock = "none";
defparam mac_out3.zeroacc1_clear = "none";
defparam mac_out3.zeroacc1_clock = "none";
defparam mac_out3.zeroacc1_pipeline_clear = "none";
defparam mac_out3.zeroacc1_pipeline_clock = "none";
defparam mac_out3.zeroacc_clear = "none";
defparam mac_out3.zeroacc_clock = "none";
defparam mac_out3.zeroacc_pipeline_clear = "none";
defparam mac_out3.zeroacc_pipeline_clock = "none";

stratixii_mac_mult mac_mult1(
	.signa(vcc),
	.signb(vcc),
	.sourcea(gnd),
	.sourceb(gnd),
	.round(gnd),
	.saturate(gnd),
	.mode(gnd),
	.zeroacc(gnd),
	.dataa({gnd,gnd,gnd,gnd,dataa[13],dataa[12],dataa[11],dataa[10],dataa[9],dataa[8],dataa[7],dataa[6],dataa[5],dataa[4],dataa[3],dataa[2],dataa[1],dataa[0]}),
	.datab({gnd,gnd,gnd,gnd,datab[13],datab[12],datab[11],datab[10],datab[9],datab[8],datab[7],datab[6],datab[5],datab[4],datab[3],datab[2],datab[1],datab[0]}),
	.scanina(14'b00000000000000),
	.scaninb(14'b00000000000000),
	.clk({gnd,gnd,gnd,clock0}),
	.aclr({gnd,gnd,gnd,gnd}),
	.ena({vcc,vcc,vcc,ena0}),
	.dataout(mac_mult1_DATAOUT_bus),
	.scanouta(),
	.scanoutb());
defparam mac_mult1.bypass_multiplier = "no";
defparam mac_mult1.dataa_clear = "3";
defparam mac_mult1.dataa_clock = "0";
defparam mac_mult1.dataa_width = 14;
defparam mac_mult1.datab_clear = "3";
defparam mac_mult1.datab_clock = "0";
defparam mac_mult1.datab_width = 14;
defparam mac_mult1.dynamic_mode = "no";
defparam mac_mult1.mode_clear = "none";
defparam mac_mult1.mode_clock = "none";
defparam mac_mult1.output_clear = "3";
defparam mac_mult1.output_clock = "0";
defparam mac_mult1.round_clear = "none";
defparam mac_mult1.round_clock = "none";
defparam mac_mult1.saturate_clear = "none";
defparam mac_mult1.saturate_clock = "none";
defparam mac_mult1.signa_clear = "none";
defparam mac_mult1.signa_clock = "none";
defparam mac_mult1.signa_internally_grounded = "false";
defparam mac_mult1.signb_clear = "none";
defparam mac_mult1.signb_clock = "none";
defparam mac_mult1.signb_internally_grounded = "false";
defparam mac_mult1.zeroacc_clear = "none";
defparam mac_mult1.zeroacc_clock = "none";

stratixii_mac_mult mac_mult2(
	.signa(vcc),
	.signb(vcc),
	.sourcea(gnd),
	.sourceb(gnd),
	.round(gnd),
	.saturate(gnd),
	.mode(gnd),
	.zeroacc(gnd),
	.dataa({gnd,gnd,gnd,gnd,dataa[27],dataa[26],dataa[25],dataa[24],dataa[23],dataa[22],dataa[21],dataa[20],dataa[19],dataa[18],dataa[17],dataa[16],dataa[15],dataa[14]}),
	.datab({gnd,gnd,gnd,gnd,datab[27],datab[26],datab[25],datab[24],datab[23],datab[22],datab[21],datab[20],datab[19],datab[18],datab[17],datab[16],datab[15],datab[14]}),
	.scanina(14'b00000000000000),
	.scaninb(14'b00000000000000),
	.clk({gnd,gnd,gnd,clock0}),
	.aclr({gnd,gnd,gnd,gnd}),
	.ena({vcc,vcc,vcc,ena0}),
	.dataout(mac_mult2_DATAOUT_bus),
	.scanouta(),
	.scanoutb());
defparam mac_mult2.bypass_multiplier = "no";
defparam mac_mult2.dataa_clear = "3";
defparam mac_mult2.dataa_clock = "0";
defparam mac_mult2.dataa_width = 14;
defparam mac_mult2.datab_clear = "3";
defparam mac_mult2.datab_clock = "0";
defparam mac_mult2.datab_width = 14;
defparam mac_mult2.dynamic_mode = "no";
defparam mac_mult2.mode_clear = "none";
defparam mac_mult2.mode_clock = "none";
defparam mac_mult2.output_clear = "3";
defparam mac_mult2.output_clock = "0";
defparam mac_mult2.round_clear = "none";
defparam mac_mult2.round_clock = "none";
defparam mac_mult2.saturate_clear = "none";
defparam mac_mult2.saturate_clock = "none";
defparam mac_mult2.signa_clear = "none";
defparam mac_mult2.signa_clock = "none";
defparam mac_mult2.signa_internally_grounded = "false";
defparam mac_mult2.signb_clear = "none";
defparam mac_mult2.signb_clock = "none";
defparam mac_mult2.signb_internally_grounded = "false";
defparam mac_mult2.zeroacc_clear = "none";
defparam mac_mult2.zeroacc_clock = "none";

endmodule

module NCO1_asj_nco_mady_cen (
	result_13,
	result_14,
	result_15,
	result_16,
	result_17,
	result_18,
	result_19,
	result_20,
	result_21,
	result_22,
	result_23,
	result_24,
	result_25,
	result_26,
	result_27,
	q_a_0,
	q_b_0,
	q_a_1,
	q_b_1,
	q_a_2,
	q_b_2,
	q_a_3,
	q_b_3,
	q_a_4,
	q_b_4,
	q_a_5,
	q_b_5,
	q_a_6,
	q_b_6,
	q_a_7,
	q_b_7,
	q_a_8,
	q_b_8,
	q_a_9,
	q_b_9,
	q_a_10,
	q_b_10,
	q_a_11,
	q_b_11,
	q_a_12,
	q_b_12,
	q_a_13,
	q_b_13,
	q_a_01,
	q_a_14,
	q_a_21,
	q_a_31,
	q_a_41,
	q_a_51,
	q_a_61,
	q_a_71,
	q_a_81,
	q_a_91,
	q_a_101,
	q_a_111,
	q_a_121,
	q_a_131,
	q_a_02,
	q_a_15,
	q_a_22,
	q_a_32,
	q_a_42,
	q_a_52,
	q_a_62,
	q_a_72,
	q_a_82,
	q_a_92,
	q_a_102,
	q_a_112,
	q_a_122,
	q_a_132,
	clk,
	clken)/* synthesis synthesis_greybox=1 */;
output 	result_13;
output 	result_14;
output 	result_15;
output 	result_16;
output 	result_17;
output 	result_18;
output 	result_19;
output 	result_20;
output 	result_21;
output 	result_22;
output 	result_23;
output 	result_24;
output 	result_25;
output 	result_26;
output 	result_27;
input 	q_a_0;
input 	q_b_0;
input 	q_a_1;
input 	q_b_1;
input 	q_a_2;
input 	q_b_2;
input 	q_a_3;
input 	q_b_3;
input 	q_a_4;
input 	q_b_4;
input 	q_a_5;
input 	q_b_5;
input 	q_a_6;
input 	q_b_6;
input 	q_a_7;
input 	q_b_7;
input 	q_a_8;
input 	q_b_8;
input 	q_a_9;
input 	q_b_9;
input 	q_a_10;
input 	q_b_10;
input 	q_a_11;
input 	q_b_11;
input 	q_a_12;
input 	q_b_12;
input 	q_a_13;
input 	q_b_13;
input 	q_a_01;
input 	q_a_14;
input 	q_a_21;
input 	q_a_31;
input 	q_a_41;
input 	q_a_51;
input 	q_a_61;
input 	q_a_71;
input 	q_a_81;
input 	q_a_91;
input 	q_a_101;
input 	q_a_111;
input 	q_a_121;
input 	q_a_131;
input 	q_a_02;
input 	q_a_15;
input 	q_a_22;
input 	q_a_32;
input 	q_a_42;
input 	q_a_52;
input 	q_a_62;
input 	q_a_72;
input 	q_a_82;
input 	q_a_92;
input 	q_a_102;
input 	q_a_112;
input 	q_a_122;
input 	q_a_132;
input 	clk;
input 	clken;

wire gnd;
wire vcc;

assign gnd = 1'b0;
assign vcc = 1'b1;



NCO1_altmult_add_2 ALTMULT_ADD_component(
	.result({result_unconnected_wire_28,result_27,result_26,result_25,result_24,result_23,result_22,result_21,result_20,result_19,result_18,result_17,result_16,result_15,result_14,result_13,result_unconnected_wire_12,result_unconnected_wire_11,result_unconnected_wire_10,
result_unconnected_wire_9,result_unconnected_wire_8,result_unconnected_wire_7,result_unconnected_wire_6,result_unconnected_wire_5,result_unconnected_wire_4,result_unconnected_wire_3,result_unconnected_wire_2,result_unconnected_wire_1,result_unconnected_wire_0}),
	.dataa({q_a_132,q_a_122,q_a_112,q_a_102,q_a_92,q_a_82,q_a_72,q_a_62,q_a_52,q_a_42,q_a_32,q_a_22,q_a_15,q_a_02,q_a_13,q_a_12,q_a_11,q_a_10,q_a_9,q_a_8,q_a_7,q_a_6,q_a_5,q_a_4,q_a_3,q_a_2,q_a_1,q_a_0}),
	.datab({q_b_13,q_b_12,q_b_11,q_b_10,q_b_9,q_b_8,q_b_7,q_b_6,q_b_5,q_b_4,q_b_3,q_b_2,q_b_1,q_b_0,q_a_131,q_a_121,q_a_111,q_a_101,q_a_91,q_a_81,q_a_71,q_a_61,q_a_51,q_a_41,q_a_31,q_a_21,q_a_14,q_a_01}),
	.clock0(clk),
	.ena0(clken));

endmodule

module NCO1_altmult_add_2 (
	result,
	dataa,
	datab,
	clock0,
	ena0)/* synthesis synthesis_greybox=1 */;
output 	[28:0] result;
input 	[27:0] dataa;
input 	[27:0] datab;
input 	clock0;
input 	ena0;

wire gnd;
wire vcc;

assign gnd = 1'b0;
assign vcc = 1'b1;



NCO1_mult_add_4mb2 auto_generated(
	.result({result_unconnected_wire_28,result[27],result[26],result[25],result[24],result[23],result[22],result[21],result[20],result[19],result[18],result[17],result[16],result[15],result[14],result[13],result_unconnected_wire_12,result_unconnected_wire_11,result_unconnected_wire_10,result_unconnected_wire_9,result_unconnected_wire_8,
result_unconnected_wire_7,result_unconnected_wire_6,result_unconnected_wire_5,result_unconnected_wire_4,result_unconnected_wire_3,result_unconnected_wire_2,result_unconnected_wire_1,result_unconnected_wire_0}),
	.dataa({dataa[27],dataa[26],dataa[25],dataa[24],dataa[23],dataa[22],dataa[21],dataa[20],dataa[19],dataa[18],dataa[17],dataa[16],dataa[15],dataa[14],dataa[13],dataa[12],dataa[11],dataa[10],dataa[9],dataa[8],dataa[7],dataa[6],dataa[5],dataa[4],dataa[3],dataa[2],dataa[1],dataa[0]}),
	.datab({datab[27],datab[26],datab[25],datab[24],datab[23],datab[22],datab[21],datab[20],datab[19],datab[18],datab[17],datab[16],datab[15],datab[14],datab[13],datab[12],datab[11],datab[10],datab[9],datab[8],datab[7],datab[6],datab[5],datab[4],datab[3],datab[2],datab[1],datab[0]}),
	.clock0(clock0),
	.ena0(ena0));

endmodule

module NCO1_mult_add_4mb2 (
	result,
	dataa,
	datab,
	clock0,
	ena0)/* synthesis synthesis_greybox=1 */;
output 	[28:0] result;
input 	[27:0] dataa;
input 	[27:0] datab;
input 	clock0;
input 	ena0;

wire gnd;
wire vcc;

assign gnd = 1'b0;
assign vcc = 1'b1;

wire \result[0] ;
wire \result[1] ;
wire \result[2] ;
wire \result[3] ;
wire \result[4] ;
wire \result[5] ;
wire \result[6] ;
wire \result[7] ;
wire \result[8] ;
wire \result[9] ;
wire \result[10] ;
wire \result[11] ;
wire \result[12] ;
wire \result[28] ;
wire \mac_mult1~dataout ;
wire \mac_mult1~DATAOUT1 ;
wire \mac_mult1~DATAOUT2 ;
wire \mac_mult1~DATAOUT3 ;
wire \mac_mult1~DATAOUT4 ;
wire \mac_mult1~DATAOUT5 ;
wire \mac_mult1~DATAOUT6 ;
wire \mac_mult1~DATAOUT7 ;
wire \mac_mult1~DATAOUT8 ;
wire \mac_mult1~DATAOUT9 ;
wire \mac_mult1~DATAOUT10 ;
wire \mac_mult1~DATAOUT11 ;
wire \mac_mult1~DATAOUT12 ;
wire \mac_mult1~DATAOUT13 ;
wire \mac_mult1~DATAOUT14 ;
wire \mac_mult1~DATAOUT15 ;
wire \mac_mult1~DATAOUT16 ;
wire \mac_mult1~DATAOUT17 ;
wire \mac_mult1~DATAOUT18 ;
wire \mac_mult1~DATAOUT19 ;
wire \mac_mult1~DATAOUT20 ;
wire \mac_mult1~DATAOUT21 ;
wire \mac_mult1~DATAOUT22 ;
wire \mac_mult1~DATAOUT23 ;
wire \mac_mult1~DATAOUT24 ;
wire \mac_mult1~DATAOUT25 ;
wire \mac_mult1~DATAOUT26 ;
wire \mac_mult1~DATAOUT27 ;
wire \mac_mult2~dataout ;
wire \mac_mult2~DATAOUT1 ;
wire \mac_mult2~DATAOUT2 ;
wire \mac_mult2~DATAOUT3 ;
wire \mac_mult2~DATAOUT4 ;
wire \mac_mult2~DATAOUT5 ;
wire \mac_mult2~DATAOUT6 ;
wire \mac_mult2~DATAOUT7 ;
wire \mac_mult2~DATAOUT8 ;
wire \mac_mult2~DATAOUT9 ;
wire \mac_mult2~DATAOUT10 ;
wire \mac_mult2~DATAOUT11 ;
wire \mac_mult2~DATAOUT12 ;
wire \mac_mult2~DATAOUT13 ;
wire \mac_mult2~DATAOUT14 ;
wire \mac_mult2~DATAOUT15 ;
wire \mac_mult2~DATAOUT16 ;
wire \mac_mult2~DATAOUT17 ;
wire \mac_mult2~DATAOUT18 ;
wire \mac_mult2~DATAOUT19 ;
wire \mac_mult2~DATAOUT20 ;
wire \mac_mult2~DATAOUT21 ;
wire \mac_mult2~DATAOUT22 ;
wire \mac_mult2~DATAOUT23 ;
wire \mac_mult2~DATAOUT24 ;
wire \mac_mult2~DATAOUT25 ;
wire \mac_mult2~DATAOUT26 ;
wire \mac_mult2~DATAOUT27 ;

wire [143:0] mac_out3_DATAOUT_bus;
wire [35:0] mac_mult1_DATAOUT_bus;
wire [35:0] mac_mult2_DATAOUT_bus;

assign \result[0]  = mac_out3_DATAOUT_bus[0];
assign \result[1]  = mac_out3_DATAOUT_bus[1];
assign \result[2]  = mac_out3_DATAOUT_bus[2];
assign \result[3]  = mac_out3_DATAOUT_bus[3];
assign \result[4]  = mac_out3_DATAOUT_bus[4];
assign \result[5]  = mac_out3_DATAOUT_bus[5];
assign \result[6]  = mac_out3_DATAOUT_bus[6];
assign \result[7]  = mac_out3_DATAOUT_bus[7];
assign \result[8]  = mac_out3_DATAOUT_bus[8];
assign \result[9]  = mac_out3_DATAOUT_bus[9];
assign \result[10]  = mac_out3_DATAOUT_bus[10];
assign \result[11]  = mac_out3_DATAOUT_bus[11];
assign \result[12]  = mac_out3_DATAOUT_bus[12];
assign result[13] = mac_out3_DATAOUT_bus[13];
assign result[14] = mac_out3_DATAOUT_bus[14];
assign result[15] = mac_out3_DATAOUT_bus[15];
assign result[16] = mac_out3_DATAOUT_bus[16];
assign result[17] = mac_out3_DATAOUT_bus[17];
assign result[18] = mac_out3_DATAOUT_bus[18];
assign result[19] = mac_out3_DATAOUT_bus[19];
assign result[20] = mac_out3_DATAOUT_bus[20];
assign result[21] = mac_out3_DATAOUT_bus[21];
assign result[22] = mac_out3_DATAOUT_bus[22];
assign result[23] = mac_out3_DATAOUT_bus[23];
assign result[24] = mac_out3_DATAOUT_bus[24];
assign result[25] = mac_out3_DATAOUT_bus[25];
assign result[26] = mac_out3_DATAOUT_bus[26];
assign result[27] = mac_out3_DATAOUT_bus[27];
assign \result[28]  = mac_out3_DATAOUT_bus[28];

assign \mac_mult1~dataout  = mac_mult1_DATAOUT_bus[0];
assign \mac_mult1~DATAOUT1  = mac_mult1_DATAOUT_bus[1];
assign \mac_mult1~DATAOUT2  = mac_mult1_DATAOUT_bus[2];
assign \mac_mult1~DATAOUT3  = mac_mult1_DATAOUT_bus[3];
assign \mac_mult1~DATAOUT4  = mac_mult1_DATAOUT_bus[4];
assign \mac_mult1~DATAOUT5  = mac_mult1_DATAOUT_bus[5];
assign \mac_mult1~DATAOUT6  = mac_mult1_DATAOUT_bus[6];
assign \mac_mult1~DATAOUT7  = mac_mult1_DATAOUT_bus[7];
assign \mac_mult1~DATAOUT8  = mac_mult1_DATAOUT_bus[8];
assign \mac_mult1~DATAOUT9  = mac_mult1_DATAOUT_bus[9];
assign \mac_mult1~DATAOUT10  = mac_mult1_DATAOUT_bus[10];
assign \mac_mult1~DATAOUT11  = mac_mult1_DATAOUT_bus[11];
assign \mac_mult1~DATAOUT12  = mac_mult1_DATAOUT_bus[12];
assign \mac_mult1~DATAOUT13  = mac_mult1_DATAOUT_bus[13];
assign \mac_mult1~DATAOUT14  = mac_mult1_DATAOUT_bus[14];
assign \mac_mult1~DATAOUT15  = mac_mult1_DATAOUT_bus[15];
assign \mac_mult1~DATAOUT16  = mac_mult1_DATAOUT_bus[16];
assign \mac_mult1~DATAOUT17  = mac_mult1_DATAOUT_bus[17];
assign \mac_mult1~DATAOUT18  = mac_mult1_DATAOUT_bus[18];
assign \mac_mult1~DATAOUT19  = mac_mult1_DATAOUT_bus[19];
assign \mac_mult1~DATAOUT20  = mac_mult1_DATAOUT_bus[20];
assign \mac_mult1~DATAOUT21  = mac_mult1_DATAOUT_bus[21];
assign \mac_mult1~DATAOUT22  = mac_mult1_DATAOUT_bus[22];
assign \mac_mult1~DATAOUT23  = mac_mult1_DATAOUT_bus[23];
assign \mac_mult1~DATAOUT24  = mac_mult1_DATAOUT_bus[24];
assign \mac_mult1~DATAOUT25  = mac_mult1_DATAOUT_bus[25];
assign \mac_mult1~DATAOUT26  = mac_mult1_DATAOUT_bus[26];
assign \mac_mult1~DATAOUT27  = mac_mult1_DATAOUT_bus[27];

assign \mac_mult2~dataout  = mac_mult2_DATAOUT_bus[0];
assign \mac_mult2~DATAOUT1  = mac_mult2_DATAOUT_bus[1];
assign \mac_mult2~DATAOUT2  = mac_mult2_DATAOUT_bus[2];
assign \mac_mult2~DATAOUT3  = mac_mult2_DATAOUT_bus[3];
assign \mac_mult2~DATAOUT4  = mac_mult2_DATAOUT_bus[4];
assign \mac_mult2~DATAOUT5  = mac_mult2_DATAOUT_bus[5];
assign \mac_mult2~DATAOUT6  = mac_mult2_DATAOUT_bus[6];
assign \mac_mult2~DATAOUT7  = mac_mult2_DATAOUT_bus[7];
assign \mac_mult2~DATAOUT8  = mac_mult2_DATAOUT_bus[8];
assign \mac_mult2~DATAOUT9  = mac_mult2_DATAOUT_bus[9];
assign \mac_mult2~DATAOUT10  = mac_mult2_DATAOUT_bus[10];
assign \mac_mult2~DATAOUT11  = mac_mult2_DATAOUT_bus[11];
assign \mac_mult2~DATAOUT12  = mac_mult2_DATAOUT_bus[12];
assign \mac_mult2~DATAOUT13  = mac_mult2_DATAOUT_bus[13];
assign \mac_mult2~DATAOUT14  = mac_mult2_DATAOUT_bus[14];
assign \mac_mult2~DATAOUT15  = mac_mult2_DATAOUT_bus[15];
assign \mac_mult2~DATAOUT16  = mac_mult2_DATAOUT_bus[16];
assign \mac_mult2~DATAOUT17  = mac_mult2_DATAOUT_bus[17];
assign \mac_mult2~DATAOUT18  = mac_mult2_DATAOUT_bus[18];
assign \mac_mult2~DATAOUT19  = mac_mult2_DATAOUT_bus[19];
assign \mac_mult2~DATAOUT20  = mac_mult2_DATAOUT_bus[20];
assign \mac_mult2~DATAOUT21  = mac_mult2_DATAOUT_bus[21];
assign \mac_mult2~DATAOUT22  = mac_mult2_DATAOUT_bus[22];
assign \mac_mult2~DATAOUT23  = mac_mult2_DATAOUT_bus[23];
assign \mac_mult2~DATAOUT24  = mac_mult2_DATAOUT_bus[24];
assign \mac_mult2~DATAOUT25  = mac_mult2_DATAOUT_bus[25];
assign \mac_mult2~DATAOUT26  = mac_mult2_DATAOUT_bus[26];
assign \mac_mult2~DATAOUT27  = mac_mult2_DATAOUT_bus[27];

stratixii_mac_out mac_out3(
	.zeroacc(gnd),
	.zeroacc1(gnd),
	.addnsub0(vcc),
	.addnsub1(vcc),
	.round0(gnd),
	.round1(gnd),
	.saturate(gnd),
	.saturate1(gnd),
	.multabsaturate(gnd),
	.multcdsaturate(gnd),
	.signa(vcc),
	.signb(vcc),
	.mode0(gnd),
	.mode1(gnd),
	.dataa({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,\mac_mult1~DATAOUT27 ,\mac_mult1~DATAOUT26 ,\mac_mult1~DATAOUT25 ,\mac_mult1~DATAOUT24 ,\mac_mult1~DATAOUT23 ,\mac_mult1~DATAOUT22 ,\mac_mult1~DATAOUT21 ,\mac_mult1~DATAOUT20 ,\mac_mult1~DATAOUT19 ,\mac_mult1~DATAOUT18 ,\mac_mult1~DATAOUT17 ,
\mac_mult1~DATAOUT16 ,\mac_mult1~DATAOUT15 ,\mac_mult1~DATAOUT14 ,\mac_mult1~DATAOUT13 ,\mac_mult1~DATAOUT12 ,\mac_mult1~DATAOUT11 ,\mac_mult1~DATAOUT10 ,\mac_mult1~DATAOUT9 ,\mac_mult1~DATAOUT8 ,\mac_mult1~DATAOUT7 ,\mac_mult1~DATAOUT6 ,\mac_mult1~DATAOUT5 ,
\mac_mult1~DATAOUT4 ,\mac_mult1~DATAOUT3 ,\mac_mult1~DATAOUT2 ,\mac_mult1~DATAOUT1 ,\mac_mult1~dataout }),
	.datab({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,\mac_mult2~DATAOUT27 ,\mac_mult2~DATAOUT26 ,\mac_mult2~DATAOUT25 ,\mac_mult2~DATAOUT24 ,\mac_mult2~DATAOUT23 ,\mac_mult2~DATAOUT22 ,\mac_mult2~DATAOUT21 ,\mac_mult2~DATAOUT20 ,\mac_mult2~DATAOUT19 ,\mac_mult2~DATAOUT18 ,\mac_mult2~DATAOUT17 ,
\mac_mult2~DATAOUT16 ,\mac_mult2~DATAOUT15 ,\mac_mult2~DATAOUT14 ,\mac_mult2~DATAOUT13 ,\mac_mult2~DATAOUT12 ,\mac_mult2~DATAOUT11 ,\mac_mult2~DATAOUT10 ,\mac_mult2~DATAOUT9 ,\mac_mult2~DATAOUT8 ,\mac_mult2~DATAOUT7 ,\mac_mult2~DATAOUT6 ,\mac_mult2~DATAOUT5 ,
\mac_mult2~DATAOUT4 ,\mac_mult2~DATAOUT3 ,\mac_mult2~DATAOUT2 ,\mac_mult2~DATAOUT1 ,\mac_mult2~dataout }),
	.datac(1'b1),
	.datad(1'b1),
	.clk({gnd,gnd,gnd,clock0}),
	.aclr({gnd,gnd,gnd,gnd}),
	.ena({vcc,vcc,vcc,ena0}),
	.accoverflow(),
	.dataout(mac_out3_DATAOUT_bus));
defparam mac_out3.addnsub0_clear = "none";
defparam mac_out3.addnsub0_clock = "none";
defparam mac_out3.addnsub0_pipeline_clear = "none";
defparam mac_out3.addnsub0_pipeline_clock = "none";
defparam mac_out3.addnsub1_clear = "none";
defparam mac_out3.addnsub1_clock = "none";
defparam mac_out3.addnsub1_pipeline_clear = "none";
defparam mac_out3.addnsub1_pipeline_clock = "none";
defparam mac_out3.dataa_forced_to_zero = "no";
defparam mac_out3.dataa_width = 28;
defparam mac_out3.datab_width = 28;
defparam mac_out3.datac_forced_to_zero = "no";
defparam mac_out3.dataout_width = 29;
defparam mac_out3.mode0_clear = "none";
defparam mac_out3.mode0_clock = "none";
defparam mac_out3.mode0_pipeline_clear = "none";
defparam mac_out3.mode0_pipeline_clock = "none";
defparam mac_out3.mode1_clear = "none";
defparam mac_out3.mode1_clock = "none";
defparam mac_out3.mode1_pipeline_clear = "none";
defparam mac_out3.mode1_pipeline_clock = "none";
defparam mac_out3.multabsaturate_clear = "none";
defparam mac_out3.multabsaturate_clock = "none";
defparam mac_out3.multabsaturate_pipeline_clear = "none";
defparam mac_out3.multabsaturate_pipeline_clock = "none";
defparam mac_out3.multcdsaturate_clear = "none";
defparam mac_out3.multcdsaturate_clock = "none";
defparam mac_out3.multcdsaturate_pipeline_clear = "none";
defparam mac_out3.multcdsaturate_pipeline_clock = "none";
defparam mac_out3.operation_mode = "one_level_adder";
defparam mac_out3.output1_clear = "none";
defparam mac_out3.output1_clock = "none";
defparam mac_out3.output2_clear = "none";
defparam mac_out3.output2_clock = "none";
defparam mac_out3.output3_clear = "none";
defparam mac_out3.output3_clock = "none";
defparam mac_out3.output4_clear = "none";
defparam mac_out3.output4_clock = "none";
defparam mac_out3.output5_clear = "none";
defparam mac_out3.output5_clock = "none";
defparam mac_out3.output6_clear = "none";
defparam mac_out3.output6_clock = "none";
defparam mac_out3.output7_clear = "none";
defparam mac_out3.output7_clock = "none";
defparam mac_out3.output_clear = "3";
defparam mac_out3.output_clock = "0";
defparam mac_out3.round0_clear = "none";
defparam mac_out3.round0_clock = "none";
defparam mac_out3.round0_pipeline_clear = "none";
defparam mac_out3.round0_pipeline_clock = "none";
defparam mac_out3.round1_clear = "none";
defparam mac_out3.round1_clock = "none";
defparam mac_out3.round1_pipeline_clear = "none";
defparam mac_out3.round1_pipeline_clock = "none";
defparam mac_out3.saturate1_clear = "none";
defparam mac_out3.saturate1_clock = "none";
defparam mac_out3.saturate1_pipeline_clear = "none";
defparam mac_out3.saturate1_pipeline_clock = "none";
defparam mac_out3.saturate_clear = "none";
defparam mac_out3.saturate_clock = "none";
defparam mac_out3.saturate_pipeline_clear = "none";
defparam mac_out3.saturate_pipeline_clock = "none";
defparam mac_out3.signa_clear = "none";
defparam mac_out3.signa_clock = "none";
defparam mac_out3.signa_pipeline_clear = "none";
defparam mac_out3.signa_pipeline_clock = "none";
defparam mac_out3.signb_clear = "none";
defparam mac_out3.signb_clock = "none";
defparam mac_out3.signb_pipeline_clear = "none";
defparam mac_out3.signb_pipeline_clock = "none";
defparam mac_out3.zeroacc1_clear = "none";
defparam mac_out3.zeroacc1_clock = "none";
defparam mac_out3.zeroacc1_pipeline_clear = "none";
defparam mac_out3.zeroacc1_pipeline_clock = "none";
defparam mac_out3.zeroacc_clear = "none";
defparam mac_out3.zeroacc_clock = "none";
defparam mac_out3.zeroacc_pipeline_clear = "none";
defparam mac_out3.zeroacc_pipeline_clock = "none";

stratixii_mac_mult mac_mult1(
	.signa(vcc),
	.signb(vcc),
	.sourcea(gnd),
	.sourceb(gnd),
	.round(gnd),
	.saturate(gnd),
	.mode(gnd),
	.zeroacc(gnd),
	.dataa({gnd,gnd,gnd,gnd,dataa[13],dataa[12],dataa[11],dataa[10],dataa[9],dataa[8],dataa[7],dataa[6],dataa[5],dataa[4],dataa[3],dataa[2],dataa[1],dataa[0]}),
	.datab({gnd,gnd,gnd,gnd,datab[13],datab[12],datab[11],datab[10],datab[9],datab[8],datab[7],datab[6],datab[5],datab[4],datab[3],datab[2],datab[1],datab[0]}),
	.scanina(14'b00000000000000),
	.scaninb(14'b00000000000000),
	.clk({gnd,gnd,gnd,clock0}),
	.aclr({gnd,gnd,gnd,gnd}),
	.ena({vcc,vcc,vcc,ena0}),
	.dataout(mac_mult1_DATAOUT_bus),
	.scanouta(),
	.scanoutb());
defparam mac_mult1.bypass_multiplier = "no";
defparam mac_mult1.dataa_clear = "3";
defparam mac_mult1.dataa_clock = "0";
defparam mac_mult1.dataa_width = 14;
defparam mac_mult1.datab_clear = "3";
defparam mac_mult1.datab_clock = "0";
defparam mac_mult1.datab_width = 14;
defparam mac_mult1.dynamic_mode = "no";
defparam mac_mult1.mode_clear = "none";
defparam mac_mult1.mode_clock = "none";
defparam mac_mult1.output_clear = "3";
defparam mac_mult1.output_clock = "0";
defparam mac_mult1.round_clear = "none";
defparam mac_mult1.round_clock = "none";
defparam mac_mult1.saturate_clear = "none";
defparam mac_mult1.saturate_clock = "none";
defparam mac_mult1.signa_clear = "none";
defparam mac_mult1.signa_clock = "none";
defparam mac_mult1.signa_internally_grounded = "false";
defparam mac_mult1.signb_clear = "none";
defparam mac_mult1.signb_clock = "none";
defparam mac_mult1.signb_internally_grounded = "false";
defparam mac_mult1.zeroacc_clear = "none";
defparam mac_mult1.zeroacc_clock = "none";

stratixii_mac_mult mac_mult2(
	.signa(vcc),
	.signb(vcc),
	.sourcea(gnd),
	.sourceb(gnd),
	.round(gnd),
	.saturate(gnd),
	.mode(gnd),
	.zeroacc(gnd),
	.dataa({gnd,gnd,gnd,gnd,dataa[27],dataa[26],dataa[25],dataa[24],dataa[23],dataa[22],dataa[21],dataa[20],dataa[19],dataa[18],dataa[17],dataa[16],dataa[15],dataa[14]}),
	.datab({gnd,gnd,gnd,gnd,datab[27],datab[26],datab[25],datab[24],datab[23],datab[22],datab[21],datab[20],datab[19],datab[18],datab[17],datab[16],datab[15],datab[14]}),
	.scanina(14'b00000000000000),
	.scaninb(14'b00000000000000),
	.clk({gnd,gnd,gnd,clock0}),
	.aclr({gnd,gnd,gnd,gnd}),
	.ena({vcc,vcc,vcc,ena0}),
	.dataout(mac_mult2_DATAOUT_bus),
	.scanouta(),
	.scanoutb());
defparam mac_mult2.bypass_multiplier = "no";
defparam mac_mult2.dataa_clear = "3";
defparam mac_mult2.dataa_clock = "0";
defparam mac_mult2.dataa_width = 14;
defparam mac_mult2.datab_clear = "3";
defparam mac_mult2.datab_clock = "0";
defparam mac_mult2.datab_width = 14;
defparam mac_mult2.dynamic_mode = "no";
defparam mac_mult2.mode_clear = "none";
defparam mac_mult2.mode_clock = "none";
defparam mac_mult2.output_clear = "3";
defparam mac_mult2.output_clock = "0";
defparam mac_mult2.round_clear = "none";
defparam mac_mult2.round_clock = "none";
defparam mac_mult2.saturate_clear = "none";
defparam mac_mult2.saturate_clock = "none";
defparam mac_mult2.signa_clear = "none";
defparam mac_mult2.signa_clock = "none";
defparam mac_mult2.signa_internally_grounded = "false";
defparam mac_mult2.signb_clear = "none";
defparam mac_mult2.signb_clock = "none";
defparam mac_mult2.signb_internally_grounded = "false";
defparam mac_mult2.zeroacc_clear = "none";
defparam mac_mult2.zeroacc_clock = "none";

endmodule

module NCO1_asj_nco_mob_w (
	result_13,
	result_14,
	result_15,
	result_16,
	result_17,
	result_18,
	result_19,
	result_20,
	result_21,
	result_22,
	result_23,
	result_24,
	result_25,
	result_26,
	result_27,
	pipeline_dffe_0,
	pipeline_dffe_1,
	pipeline_dffe_2,
	pipeline_dffe_3,
	pipeline_dffe_4,
	pipeline_dffe_5,
	pipeline_dffe_6,
	pipeline_dffe_7,
	pipeline_dffe_8,
	pipeline_dffe_9,
	pipeline_dffe_10,
	pipeline_dffe_11,
	pipeline_dffe_12,
	pipeline_dffe_13,
	data_tmp_11,
	clk,
	reset_n,
	clken)/* synthesis synthesis_greybox=1 */;
input 	result_13;
input 	result_14;
input 	result_15;
input 	result_16;
input 	result_17;
input 	result_18;
input 	result_19;
input 	result_20;
input 	result_21;
input 	result_22;
input 	result_23;
input 	result_24;
input 	result_25;
input 	result_26;
input 	result_27;
output 	pipeline_dffe_0;
output 	pipeline_dffe_1;
output 	pipeline_dffe_2;
output 	pipeline_dffe_3;
output 	pipeline_dffe_4;
output 	pipeline_dffe_5;
output 	pipeline_dffe_6;
output 	pipeline_dffe_7;
output 	pipeline_dffe_8;
output 	pipeline_dffe_9;
output 	pipeline_dffe_10;
output 	pipeline_dffe_11;
output 	pipeline_dffe_12;
output 	pipeline_dffe_13;
output 	data_tmp_11;
input 	clk;
input 	reset_n;
input 	clken;

wire gnd;
wire vcc;

assign gnd = 1'b0;
assign vcc = 1'b1;

wire \data_tmp[13]~regout ;
wire \data_tmp[0]~regout ;
wire \data_tmp[1]~regout ;
wire \data_tmp[2]~regout ;
wire \data_tmp[3]~regout ;
wire \data_tmp[4]~regout ;
wire \data_tmp[5]~regout ;
wire \data_tmp[6]~regout ;
wire \data_tmp[7]~regout ;
wire \data_tmp[8]~regout ;
wire \data_tmp[9]~regout ;
wire \data_tmp[10]~regout ;
wire \data_tmp[11]~regout ;
wire \data_tmp[12]~regout ;
wire \is_zero~regout ;
wire \Equal0~118_combout ;
wire \Equal0~119_combout ;
wire \Equal0~120_combout ;
wire \Equal0~121_combout ;


NCO1_lpm_add_sub_3 lpm_add_sub_component(
	.data_tmp_13(\data_tmp[13]~regout ),
	.data_tmp_0(\data_tmp[0]~regout ),
	.data_tmp_1(\data_tmp[1]~regout ),
	.data_tmp_2(\data_tmp[2]~regout ),
	.data_tmp_3(\data_tmp[3]~regout ),
	.data_tmp_4(\data_tmp[4]~regout ),
	.data_tmp_5(\data_tmp[5]~regout ),
	.data_tmp_6(\data_tmp[6]~regout ),
	.data_tmp_7(\data_tmp[7]~regout ),
	.data_tmp_8(\data_tmp[8]~regout ),
	.data_tmp_9(\data_tmp[9]~regout ),
	.data_tmp_10(\data_tmp[10]~regout ),
	.data_tmp_11(\data_tmp[11]~regout ),
	.data_tmp_12(\data_tmp[12]~regout ),
	.pipeline_dffe_0(pipeline_dffe_0),
	.pipeline_dffe_1(pipeline_dffe_1),
	.pipeline_dffe_2(pipeline_dffe_2),
	.pipeline_dffe_3(pipeline_dffe_3),
	.pipeline_dffe_4(pipeline_dffe_4),
	.pipeline_dffe_5(pipeline_dffe_5),
	.pipeline_dffe_6(pipeline_dffe_6),
	.pipeline_dffe_7(pipeline_dffe_7),
	.pipeline_dffe_8(pipeline_dffe_8),
	.pipeline_dffe_9(pipeline_dffe_9),
	.pipeline_dffe_10(pipeline_dffe_10),
	.pipeline_dffe_11(pipeline_dffe_11),
	.pipeline_dffe_12(pipeline_dffe_12),
	.pipeline_dffe_13(pipeline_dffe_13),
	.is_zero(\is_zero~regout ),
	.clock(clk),
	.reset_n(reset_n),
	.clken(clken));

stratixii_lcell_ff \data_tmp[13] (
	.clk(clk),
	.datain(result_26),
	.adatasdata(gnd),
	.aclr(gnd),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_tmp_11),
	.regout(\data_tmp[13]~regout ));

stratixii_lcell_ff \data_tmp[0] (
	.clk(clk),
	.datain(result_13),
	.adatasdata(gnd),
	.aclr(gnd),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_tmp_11),
	.regout(\data_tmp[0]~regout ));

stratixii_lcell_ff \data_tmp[1] (
	.clk(clk),
	.datain(result_14),
	.adatasdata(gnd),
	.aclr(gnd),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_tmp_11),
	.regout(\data_tmp[1]~regout ));

stratixii_lcell_ff \data_tmp[2] (
	.clk(clk),
	.datain(result_15),
	.adatasdata(gnd),
	.aclr(gnd),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_tmp_11),
	.regout(\data_tmp[2]~regout ));

stratixii_lcell_ff \data_tmp[3] (
	.clk(clk),
	.datain(result_16),
	.adatasdata(gnd),
	.aclr(gnd),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_tmp_11),
	.regout(\data_tmp[3]~regout ));

stratixii_lcell_ff \data_tmp[4] (
	.clk(clk),
	.datain(result_17),
	.adatasdata(gnd),
	.aclr(gnd),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_tmp_11),
	.regout(\data_tmp[4]~regout ));

stratixii_lcell_ff \data_tmp[5] (
	.clk(clk),
	.datain(result_18),
	.adatasdata(gnd),
	.aclr(gnd),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_tmp_11),
	.regout(\data_tmp[5]~regout ));

stratixii_lcell_ff \data_tmp[6] (
	.clk(clk),
	.datain(result_19),
	.adatasdata(gnd),
	.aclr(gnd),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_tmp_11),
	.regout(\data_tmp[6]~regout ));

stratixii_lcell_ff \data_tmp[7] (
	.clk(clk),
	.datain(result_20),
	.adatasdata(gnd),
	.aclr(gnd),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_tmp_11),
	.regout(\data_tmp[7]~regout ));

stratixii_lcell_ff \data_tmp[8] (
	.clk(clk),
	.datain(result_21),
	.adatasdata(gnd),
	.aclr(gnd),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_tmp_11),
	.regout(\data_tmp[8]~regout ));

stratixii_lcell_ff \data_tmp[9] (
	.clk(clk),
	.datain(result_22),
	.adatasdata(gnd),
	.aclr(gnd),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_tmp_11),
	.regout(\data_tmp[9]~regout ));

stratixii_lcell_ff \data_tmp[10] (
	.clk(clk),
	.datain(result_23),
	.adatasdata(gnd),
	.aclr(gnd),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_tmp_11),
	.regout(\data_tmp[10]~regout ));

stratixii_lcell_ff \data_tmp[11] (
	.clk(clk),
	.datain(result_24),
	.adatasdata(gnd),
	.aclr(gnd),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_tmp_11),
	.regout(\data_tmp[11]~regout ));

stratixii_lcell_ff \data_tmp[12] (
	.clk(clk),
	.datain(result_25),
	.adatasdata(gnd),
	.aclr(gnd),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_tmp_11),
	.regout(\data_tmp[12]~regout ));

stratixii_lcell_ff is_zero(
	.clk(clk),
	.datain(\Equal0~121_combout ),
	.adatasdata(gnd),
	.aclr(gnd),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.regout(\is_zero~regout ));

stratixii_lcell_comb \Equal0~118 (
	.dataa(!result_14),
	.datab(!result_18),
	.datac(!result_25),
	.datad(!result_26),
	.datae(!result_27),
	.dataf(vcc),
	.datag(vcc),
	.cin(gnd),
	.sharein(gnd),
	.combout(\Equal0~118_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \Equal0~118 .extended_lut = "off";
defparam \Equal0~118 .lut_mask = 64'h8000000080000000;
defparam \Equal0~118 .shared_arith = "off";

stratixii_lcell_comb \Equal0~119 (
	.dataa(!result_16),
	.datab(!result_19),
	.datac(!result_20),
	.datad(!result_22),
	.datae(vcc),
	.dataf(vcc),
	.datag(vcc),
	.cin(gnd),
	.sharein(gnd),
	.combout(\Equal0~119_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \Equal0~119 .extended_lut = "off";
defparam \Equal0~119 .lut_mask = 64'h8000800080008000;
defparam \Equal0~119 .shared_arith = "off";

stratixii_lcell_comb \Equal0~120 (
	.dataa(!result_13),
	.datab(!result_15),
	.datac(!result_17),
	.datad(!result_23),
	.datae(vcc),
	.dataf(vcc),
	.datag(vcc),
	.cin(gnd),
	.sharein(gnd),
	.combout(\Equal0~120_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \Equal0~120 .extended_lut = "off";
defparam \Equal0~120 .lut_mask = 64'h8000800080008000;
defparam \Equal0~120 .shared_arith = "off";

stratixii_lcell_comb \Equal0~121 (
	.dataa(!result_21),
	.datab(!result_24),
	.datac(!\Equal0~118_combout ),
	.datad(!\Equal0~119_combout ),
	.datae(!\Equal0~120_combout ),
	.dataf(vcc),
	.datag(vcc),
	.cin(gnd),
	.sharein(gnd),
	.combout(\Equal0~121_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \Equal0~121 .extended_lut = "off";
defparam \Equal0~121 .lut_mask = 64'h8000000080000000;
defparam \Equal0~121 .shared_arith = "off";

stratixii_lcell_comb \data_tmp[11]~105 (
	.dataa(!reset_n),
	.datab(!clken),
	.datac(vcc),
	.datad(vcc),
	.datae(vcc),
	.dataf(vcc),
	.datag(vcc),
	.cin(gnd),
	.sharein(gnd),
	.combout(data_tmp_11),
	.sumout(),
	.cout(),
	.shareout());
defparam \data_tmp[11]~105 .extended_lut = "off";
defparam \data_tmp[11]~105 .lut_mask = 64'h8888888888888888;
defparam \data_tmp[11]~105 .shared_arith = "off";

endmodule

module NCO1_lpm_add_sub_3 (
	data_tmp_13,
	data_tmp_0,
	data_tmp_1,
	data_tmp_2,
	data_tmp_3,
	data_tmp_4,
	data_tmp_5,
	data_tmp_6,
	data_tmp_7,
	data_tmp_8,
	data_tmp_9,
	data_tmp_10,
	data_tmp_11,
	data_tmp_12,
	pipeline_dffe_0,
	pipeline_dffe_1,
	pipeline_dffe_2,
	pipeline_dffe_3,
	pipeline_dffe_4,
	pipeline_dffe_5,
	pipeline_dffe_6,
	pipeline_dffe_7,
	pipeline_dffe_8,
	pipeline_dffe_9,
	pipeline_dffe_10,
	pipeline_dffe_11,
	pipeline_dffe_12,
	pipeline_dffe_13,
	is_zero,
	clock,
	reset_n,
	clken)/* synthesis synthesis_greybox=1 */;
input 	data_tmp_13;
input 	data_tmp_0;
input 	data_tmp_1;
input 	data_tmp_2;
input 	data_tmp_3;
input 	data_tmp_4;
input 	data_tmp_5;
input 	data_tmp_6;
input 	data_tmp_7;
input 	data_tmp_8;
input 	data_tmp_9;
input 	data_tmp_10;
input 	data_tmp_11;
input 	data_tmp_12;
output 	pipeline_dffe_0;
output 	pipeline_dffe_1;
output 	pipeline_dffe_2;
output 	pipeline_dffe_3;
output 	pipeline_dffe_4;
output 	pipeline_dffe_5;
output 	pipeline_dffe_6;
output 	pipeline_dffe_7;
output 	pipeline_dffe_8;
output 	pipeline_dffe_9;
output 	pipeline_dffe_10;
output 	pipeline_dffe_11;
output 	pipeline_dffe_12;
output 	pipeline_dffe_13;
input 	is_zero;
input 	clock;
input 	reset_n;
input 	clken;

wire gnd;
wire vcc;

assign gnd = 1'b0;
assign vcc = 1'b1;



NCO1_add_sub_fek auto_generated(
	.data_tmp_13(data_tmp_13),
	.data_tmp_0(data_tmp_0),
	.data_tmp_1(data_tmp_1),
	.data_tmp_2(data_tmp_2),
	.data_tmp_3(data_tmp_3),
	.data_tmp_4(data_tmp_4),
	.data_tmp_5(data_tmp_5),
	.data_tmp_6(data_tmp_6),
	.data_tmp_7(data_tmp_7),
	.data_tmp_8(data_tmp_8),
	.data_tmp_9(data_tmp_9),
	.data_tmp_10(data_tmp_10),
	.data_tmp_11(data_tmp_11),
	.data_tmp_12(data_tmp_12),
	.pipeline_dffe_0(pipeline_dffe_0),
	.pipeline_dffe_1(pipeline_dffe_1),
	.pipeline_dffe_2(pipeline_dffe_2),
	.pipeline_dffe_3(pipeline_dffe_3),
	.pipeline_dffe_4(pipeline_dffe_4),
	.pipeline_dffe_5(pipeline_dffe_5),
	.pipeline_dffe_6(pipeline_dffe_6),
	.pipeline_dffe_7(pipeline_dffe_7),
	.pipeline_dffe_8(pipeline_dffe_8),
	.pipeline_dffe_9(pipeline_dffe_9),
	.pipeline_dffe_10(pipeline_dffe_10),
	.pipeline_dffe_11(pipeline_dffe_11),
	.pipeline_dffe_12(pipeline_dffe_12),
	.pipeline_dffe_13(pipeline_dffe_13),
	.is_zero(is_zero),
	.clock(clock),
	.reset_n(reset_n),
	.clken(clken));

endmodule

module NCO1_add_sub_fek (
	data_tmp_13,
	data_tmp_0,
	data_tmp_1,
	data_tmp_2,
	data_tmp_3,
	data_tmp_4,
	data_tmp_5,
	data_tmp_6,
	data_tmp_7,
	data_tmp_8,
	data_tmp_9,
	data_tmp_10,
	data_tmp_11,
	data_tmp_12,
	pipeline_dffe_0,
	pipeline_dffe_1,
	pipeline_dffe_2,
	pipeline_dffe_3,
	pipeline_dffe_4,
	pipeline_dffe_5,
	pipeline_dffe_6,
	pipeline_dffe_7,
	pipeline_dffe_8,
	pipeline_dffe_9,
	pipeline_dffe_10,
	pipeline_dffe_11,
	pipeline_dffe_12,
	pipeline_dffe_13,
	is_zero,
	clock,
	reset_n,
	clken)/* synthesis synthesis_greybox=1 */;
input 	data_tmp_13;
input 	data_tmp_0;
input 	data_tmp_1;
input 	data_tmp_2;
input 	data_tmp_3;
input 	data_tmp_4;
input 	data_tmp_5;
input 	data_tmp_6;
input 	data_tmp_7;
input 	data_tmp_8;
input 	data_tmp_9;
input 	data_tmp_10;
input 	data_tmp_11;
input 	data_tmp_12;
output 	pipeline_dffe_0;
output 	pipeline_dffe_1;
output 	pipeline_dffe_2;
output 	pipeline_dffe_3;
output 	pipeline_dffe_4;
output 	pipeline_dffe_5;
output 	pipeline_dffe_6;
output 	pipeline_dffe_7;
output 	pipeline_dffe_8;
output 	pipeline_dffe_9;
output 	pipeline_dffe_10;
output 	pipeline_dffe_11;
output 	pipeline_dffe_12;
output 	pipeline_dffe_13;
input 	is_zero;
input 	clock;
input 	reset_n;
input 	clken;

wire gnd;
wire vcc;

assign gnd = 1'b0;
assign vcc = 1'b1;

wire \op_1~224_sumout ;
wire \op_1~225 ;
wire \op_1~228_sumout ;
wire \op_1~229 ;
wire \op_1~232_sumout ;
wire \op_1~233 ;
wire \op_1~236_sumout ;
wire \op_1~237 ;
wire \op_1~240_sumout ;
wire \op_1~241 ;
wire \op_1~244_sumout ;
wire \op_1~245 ;
wire \op_1~248_sumout ;
wire \op_1~249 ;
wire \op_1~252_sumout ;
wire \op_1~253 ;
wire \op_1~256_sumout ;
wire \op_1~257 ;
wire \op_1~260_sumout ;
wire \op_1~261 ;
wire \op_1~264_sumout ;
wire \op_1~265 ;
wire \op_1~268_sumout ;
wire \op_1~269 ;
wire \op_1~272_sumout ;
wire \op_1~273 ;
wire \op_1~276_sumout ;


stratixii_lcell_ff \pipeline_dffe[0] (
	.clk(clock),
	.datain(\op_1~224_sumout ),
	.adatasdata(gnd),
	.aclr(!reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.regout(pipeline_dffe_0));

stratixii_lcell_ff \pipeline_dffe[1] (
	.clk(clock),
	.datain(\op_1~228_sumout ),
	.adatasdata(gnd),
	.aclr(!reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.regout(pipeline_dffe_1));

stratixii_lcell_ff \pipeline_dffe[2] (
	.clk(clock),
	.datain(\op_1~232_sumout ),
	.adatasdata(gnd),
	.aclr(!reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.regout(pipeline_dffe_2));

stratixii_lcell_ff \pipeline_dffe[3] (
	.clk(clock),
	.datain(\op_1~236_sumout ),
	.adatasdata(gnd),
	.aclr(!reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.regout(pipeline_dffe_3));

stratixii_lcell_ff \pipeline_dffe[4] (
	.clk(clock),
	.datain(\op_1~240_sumout ),
	.adatasdata(gnd),
	.aclr(!reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.regout(pipeline_dffe_4));

stratixii_lcell_ff \pipeline_dffe[5] (
	.clk(clock),
	.datain(\op_1~244_sumout ),
	.adatasdata(gnd),
	.aclr(!reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.regout(pipeline_dffe_5));

stratixii_lcell_ff \pipeline_dffe[6] (
	.clk(clock),
	.datain(\op_1~248_sumout ),
	.adatasdata(gnd),
	.aclr(!reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.regout(pipeline_dffe_6));

stratixii_lcell_ff \pipeline_dffe[7] (
	.clk(clock),
	.datain(\op_1~252_sumout ),
	.adatasdata(gnd),
	.aclr(!reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.regout(pipeline_dffe_7));

stratixii_lcell_ff \pipeline_dffe[8] (
	.clk(clock),
	.datain(\op_1~256_sumout ),
	.adatasdata(gnd),
	.aclr(!reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.regout(pipeline_dffe_8));

stratixii_lcell_ff \pipeline_dffe[9] (
	.clk(clock),
	.datain(\op_1~260_sumout ),
	.adatasdata(gnd),
	.aclr(!reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.regout(pipeline_dffe_9));

stratixii_lcell_ff \pipeline_dffe[10] (
	.clk(clock),
	.datain(\op_1~264_sumout ),
	.adatasdata(gnd),
	.aclr(!reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.regout(pipeline_dffe_10));

stratixii_lcell_ff \pipeline_dffe[11] (
	.clk(clock),
	.datain(\op_1~268_sumout ),
	.adatasdata(gnd),
	.aclr(!reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.regout(pipeline_dffe_11));

stratixii_lcell_ff \pipeline_dffe[12] (
	.clk(clock),
	.datain(\op_1~272_sumout ),
	.adatasdata(gnd),
	.aclr(!reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.regout(pipeline_dffe_12));

stratixii_lcell_ff \pipeline_dffe[13] (
	.clk(clock),
	.datain(\op_1~276_sumout ),
	.adatasdata(gnd),
	.aclr(!reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.regout(pipeline_dffe_13));

stratixii_lcell_comb \op_1~224 (
	.dataa(!data_tmp_13),
	.datab(vcc),
	.datac(vcc),
	.datad(!data_tmp_0),
	.datae(vcc),
	.dataf(!is_zero),
	.datag(vcc),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(\op_1~224_sumout ),
	.cout(\op_1~225 ),
	.shareout());
defparam \op_1~224 .extended_lut = "off";
defparam \op_1~224 .lut_mask = 64'h0000aaaa0000aa00;
defparam \op_1~224 .shared_arith = "off";

stratixii_lcell_comb \op_1~228 (
	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(!data_tmp_1),
	.datae(vcc),
	.dataf(vcc),
	.datag(vcc),
	.cin(\op_1~225 ),
	.sharein(gnd),
	.combout(),
	.sumout(\op_1~228_sumout ),
	.cout(\op_1~229 ),
	.shareout());
defparam \op_1~228 .extended_lut = "off";
defparam \op_1~228 .lut_mask = 64'h000000000000ff00;
defparam \op_1~228 .shared_arith = "off";

stratixii_lcell_comb \op_1~232 (
	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(!data_tmp_2),
	.datae(vcc),
	.dataf(vcc),
	.datag(vcc),
	.cin(\op_1~229 ),
	.sharein(gnd),
	.combout(),
	.sumout(\op_1~232_sumout ),
	.cout(\op_1~233 ),
	.shareout());
defparam \op_1~232 .extended_lut = "off";
defparam \op_1~232 .lut_mask = 64'h000000000000ff00;
defparam \op_1~232 .shared_arith = "off";

stratixii_lcell_comb \op_1~236 (
	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(!data_tmp_3),
	.datae(vcc),
	.dataf(vcc),
	.datag(vcc),
	.cin(\op_1~233 ),
	.sharein(gnd),
	.combout(),
	.sumout(\op_1~236_sumout ),
	.cout(\op_1~237 ),
	.shareout());
defparam \op_1~236 .extended_lut = "off";
defparam \op_1~236 .lut_mask = 64'h000000000000ff00;
defparam \op_1~236 .shared_arith = "off";

stratixii_lcell_comb \op_1~240 (
	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(!data_tmp_4),
	.datae(vcc),
	.dataf(vcc),
	.datag(vcc),
	.cin(\op_1~237 ),
	.sharein(gnd),
	.combout(),
	.sumout(\op_1~240_sumout ),
	.cout(\op_1~241 ),
	.shareout());
defparam \op_1~240 .extended_lut = "off";
defparam \op_1~240 .lut_mask = 64'h000000000000ff00;
defparam \op_1~240 .shared_arith = "off";

stratixii_lcell_comb \op_1~244 (
	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(!data_tmp_5),
	.datae(vcc),
	.dataf(vcc),
	.datag(vcc),
	.cin(\op_1~241 ),
	.sharein(gnd),
	.combout(),
	.sumout(\op_1~244_sumout ),
	.cout(\op_1~245 ),
	.shareout());
defparam \op_1~244 .extended_lut = "off";
defparam \op_1~244 .lut_mask = 64'h000000000000ff00;
defparam \op_1~244 .shared_arith = "off";

stratixii_lcell_comb \op_1~248 (
	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(!data_tmp_6),
	.datae(vcc),
	.dataf(vcc),
	.datag(vcc),
	.cin(\op_1~245 ),
	.sharein(gnd),
	.combout(),
	.sumout(\op_1~248_sumout ),
	.cout(\op_1~249 ),
	.shareout());
defparam \op_1~248 .extended_lut = "off";
defparam \op_1~248 .lut_mask = 64'h000000000000ff00;
defparam \op_1~248 .shared_arith = "off";

stratixii_lcell_comb \op_1~252 (
	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(!data_tmp_7),
	.datae(vcc),
	.dataf(vcc),
	.datag(vcc),
	.cin(\op_1~249 ),
	.sharein(gnd),
	.combout(),
	.sumout(\op_1~252_sumout ),
	.cout(\op_1~253 ),
	.shareout());
defparam \op_1~252 .extended_lut = "off";
defparam \op_1~252 .lut_mask = 64'h000000000000ff00;
defparam \op_1~252 .shared_arith = "off";

stratixii_lcell_comb \op_1~256 (
	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(!data_tmp_8),
	.datae(vcc),
	.dataf(vcc),
	.datag(vcc),
	.cin(\op_1~253 ),
	.sharein(gnd),
	.combout(),
	.sumout(\op_1~256_sumout ),
	.cout(\op_1~257 ),
	.shareout());
defparam \op_1~256 .extended_lut = "off";
defparam \op_1~256 .lut_mask = 64'h000000000000ff00;
defparam \op_1~256 .shared_arith = "off";

stratixii_lcell_comb \op_1~260 (
	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(!data_tmp_9),
	.datae(vcc),
	.dataf(vcc),
	.datag(vcc),
	.cin(\op_1~257 ),
	.sharein(gnd),
	.combout(),
	.sumout(\op_1~260_sumout ),
	.cout(\op_1~261 ),
	.shareout());
defparam \op_1~260 .extended_lut = "off";
defparam \op_1~260 .lut_mask = 64'h000000000000ff00;
defparam \op_1~260 .shared_arith = "off";

stratixii_lcell_comb \op_1~264 (
	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(!data_tmp_10),
	.datae(vcc),
	.dataf(vcc),
	.datag(vcc),
	.cin(\op_1~261 ),
	.sharein(gnd),
	.combout(),
	.sumout(\op_1~264_sumout ),
	.cout(\op_1~265 ),
	.shareout());
defparam \op_1~264 .extended_lut = "off";
defparam \op_1~264 .lut_mask = 64'h000000000000ff00;
defparam \op_1~264 .shared_arith = "off";

stratixii_lcell_comb \op_1~268 (
	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(!data_tmp_11),
	.datae(vcc),
	.dataf(vcc),
	.datag(vcc),
	.cin(\op_1~265 ),
	.sharein(gnd),
	.combout(),
	.sumout(\op_1~268_sumout ),
	.cout(\op_1~269 ),
	.shareout());
defparam \op_1~268 .extended_lut = "off";
defparam \op_1~268 .lut_mask = 64'h000000000000ff00;
defparam \op_1~268 .shared_arith = "off";

stratixii_lcell_comb \op_1~272 (
	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(!data_tmp_12),
	.datae(vcc),
	.dataf(vcc),
	.datag(vcc),
	.cin(\op_1~269 ),
	.sharein(gnd),
	.combout(),
	.sumout(\op_1~272_sumout ),
	.cout(\op_1~273 ),
	.shareout());
defparam \op_1~272 .extended_lut = "off";
defparam \op_1~272 .lut_mask = 64'h000000000000ff00;
defparam \op_1~272 .shared_arith = "off";

stratixii_lcell_comb \op_1~276 (
	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(!data_tmp_13),
	.datae(vcc),
	.dataf(vcc),
	.datag(vcc),
	.cin(\op_1~273 ),
	.sharein(gnd),
	.combout(),
	.sumout(\op_1~276_sumout ),
	.cout(),
	.shareout());
defparam \op_1~276 .extended_lut = "off";
defparam \op_1~276 .lut_mask = 64'h000000000000ff00;
defparam \op_1~276 .shared_arith = "off";

endmodule

module NCO1_asj_nco_mob_w_1 (
	result_13,
	result_14,
	result_15,
	result_16,
	result_17,
	result_18,
	result_19,
	result_20,
	result_21,
	result_22,
	result_23,
	result_24,
	result_25,
	result_26,
	result_27,
	pipeline_dffe_0,
	pipeline_dffe_1,
	pipeline_dffe_2,
	pipeline_dffe_3,
	pipeline_dffe_4,
	pipeline_dffe_5,
	pipeline_dffe_6,
	pipeline_dffe_7,
	pipeline_dffe_8,
	pipeline_dffe_9,
	pipeline_dffe_10,
	pipeline_dffe_11,
	pipeline_dffe_12,
	pipeline_dffe_13,
	data_tmp_11,
	clk,
	reset_n,
	clken)/* synthesis synthesis_greybox=1 */;
input 	result_13;
input 	result_14;
input 	result_15;
input 	result_16;
input 	result_17;
input 	result_18;
input 	result_19;
input 	result_20;
input 	result_21;
input 	result_22;
input 	result_23;
input 	result_24;
input 	result_25;
input 	result_26;
input 	result_27;
output 	pipeline_dffe_0;
output 	pipeline_dffe_1;
output 	pipeline_dffe_2;
output 	pipeline_dffe_3;
output 	pipeline_dffe_4;
output 	pipeline_dffe_5;
output 	pipeline_dffe_6;
output 	pipeline_dffe_7;
output 	pipeline_dffe_8;
output 	pipeline_dffe_9;
output 	pipeline_dffe_10;
output 	pipeline_dffe_11;
output 	pipeline_dffe_12;
output 	pipeline_dffe_13;
input 	data_tmp_11;
input 	clk;
input 	reset_n;
input 	clken;

wire gnd;
wire vcc;

assign gnd = 1'b0;
assign vcc = 1'b1;

wire \data_tmp[13]~regout ;
wire \data_tmp[0]~regout ;
wire \data_tmp[1]~regout ;
wire \data_tmp[2]~regout ;
wire \data_tmp[3]~regout ;
wire \data_tmp[4]~regout ;
wire \data_tmp[5]~regout ;
wire \data_tmp[6]~regout ;
wire \data_tmp[7]~regout ;
wire \data_tmp[8]~regout ;
wire \data_tmp[9]~regout ;
wire \data_tmp[10]~regout ;
wire \data_tmp[11]~regout ;
wire \data_tmp[12]~regout ;
wire \is_zero~regout ;
wire \Equal0~118_combout ;
wire \Equal0~119_combout ;
wire \Equal0~120_combout ;
wire \Equal0~121_combout ;


NCO1_lpm_add_sub_4 lpm_add_sub_component(
	.data_tmp_13(\data_tmp[13]~regout ),
	.data_tmp_0(\data_tmp[0]~regout ),
	.data_tmp_1(\data_tmp[1]~regout ),
	.data_tmp_2(\data_tmp[2]~regout ),
	.data_tmp_3(\data_tmp[3]~regout ),
	.data_tmp_4(\data_tmp[4]~regout ),
	.data_tmp_5(\data_tmp[5]~regout ),
	.data_tmp_6(\data_tmp[6]~regout ),
	.data_tmp_7(\data_tmp[7]~regout ),
	.data_tmp_8(\data_tmp[8]~regout ),
	.data_tmp_9(\data_tmp[9]~regout ),
	.data_tmp_10(\data_tmp[10]~regout ),
	.data_tmp_11(\data_tmp[11]~regout ),
	.data_tmp_12(\data_tmp[12]~regout ),
	.pipeline_dffe_0(pipeline_dffe_0),
	.pipeline_dffe_1(pipeline_dffe_1),
	.pipeline_dffe_2(pipeline_dffe_2),
	.pipeline_dffe_3(pipeline_dffe_3),
	.pipeline_dffe_4(pipeline_dffe_4),
	.pipeline_dffe_5(pipeline_dffe_5),
	.pipeline_dffe_6(pipeline_dffe_6),
	.pipeline_dffe_7(pipeline_dffe_7),
	.pipeline_dffe_8(pipeline_dffe_8),
	.pipeline_dffe_9(pipeline_dffe_9),
	.pipeline_dffe_10(pipeline_dffe_10),
	.pipeline_dffe_11(pipeline_dffe_11),
	.pipeline_dffe_12(pipeline_dffe_12),
	.pipeline_dffe_13(pipeline_dffe_13),
	.is_zero(\is_zero~regout ),
	.clock(clk),
	.reset_n(reset_n),
	.clken(clken));

stratixii_lcell_ff \data_tmp[13] (
	.clk(clk),
	.datain(result_26),
	.adatasdata(gnd),
	.aclr(gnd),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_tmp_11),
	.regout(\data_tmp[13]~regout ));

stratixii_lcell_ff \data_tmp[0] (
	.clk(clk),
	.datain(result_13),
	.adatasdata(gnd),
	.aclr(gnd),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_tmp_11),
	.regout(\data_tmp[0]~regout ));

stratixii_lcell_ff \data_tmp[1] (
	.clk(clk),
	.datain(result_14),
	.adatasdata(gnd),
	.aclr(gnd),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_tmp_11),
	.regout(\data_tmp[1]~regout ));

stratixii_lcell_ff \data_tmp[2] (
	.clk(clk),
	.datain(result_15),
	.adatasdata(gnd),
	.aclr(gnd),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_tmp_11),
	.regout(\data_tmp[2]~regout ));

stratixii_lcell_ff \data_tmp[3] (
	.clk(clk),
	.datain(result_16),
	.adatasdata(gnd),
	.aclr(gnd),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_tmp_11),
	.regout(\data_tmp[3]~regout ));

stratixii_lcell_ff \data_tmp[4] (
	.clk(clk),
	.datain(result_17),
	.adatasdata(gnd),
	.aclr(gnd),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_tmp_11),
	.regout(\data_tmp[4]~regout ));

stratixii_lcell_ff \data_tmp[5] (
	.clk(clk),
	.datain(result_18),
	.adatasdata(gnd),
	.aclr(gnd),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_tmp_11),
	.regout(\data_tmp[5]~regout ));

stratixii_lcell_ff \data_tmp[6] (
	.clk(clk),
	.datain(result_19),
	.adatasdata(gnd),
	.aclr(gnd),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_tmp_11),
	.regout(\data_tmp[6]~regout ));

stratixii_lcell_ff \data_tmp[7] (
	.clk(clk),
	.datain(result_20),
	.adatasdata(gnd),
	.aclr(gnd),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_tmp_11),
	.regout(\data_tmp[7]~regout ));

stratixii_lcell_ff \data_tmp[8] (
	.clk(clk),
	.datain(result_21),
	.adatasdata(gnd),
	.aclr(gnd),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_tmp_11),
	.regout(\data_tmp[8]~regout ));

stratixii_lcell_ff \data_tmp[9] (
	.clk(clk),
	.datain(result_22),
	.adatasdata(gnd),
	.aclr(gnd),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_tmp_11),
	.regout(\data_tmp[9]~regout ));

stratixii_lcell_ff \data_tmp[10] (
	.clk(clk),
	.datain(result_23),
	.adatasdata(gnd),
	.aclr(gnd),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_tmp_11),
	.regout(\data_tmp[10]~regout ));

stratixii_lcell_ff \data_tmp[11] (
	.clk(clk),
	.datain(result_24),
	.adatasdata(gnd),
	.aclr(gnd),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_tmp_11),
	.regout(\data_tmp[11]~regout ));

stratixii_lcell_ff \data_tmp[12] (
	.clk(clk),
	.datain(result_25),
	.adatasdata(gnd),
	.aclr(gnd),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_tmp_11),
	.regout(\data_tmp[12]~regout ));

stratixii_lcell_ff is_zero(
	.clk(clk),
	.datain(\Equal0~121_combout ),
	.adatasdata(gnd),
	.aclr(gnd),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.regout(\is_zero~regout ));

stratixii_lcell_comb \Equal0~118 (
	.dataa(!result_14),
	.datab(!result_18),
	.datac(!result_25),
	.datad(!result_26),
	.datae(!result_27),
	.dataf(vcc),
	.datag(vcc),
	.cin(gnd),
	.sharein(gnd),
	.combout(\Equal0~118_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \Equal0~118 .extended_lut = "off";
defparam \Equal0~118 .lut_mask = 64'h8000000080000000;
defparam \Equal0~118 .shared_arith = "off";

stratixii_lcell_comb \Equal0~119 (
	.dataa(!result_16),
	.datab(!result_19),
	.datac(!result_20),
	.datad(!result_22),
	.datae(vcc),
	.dataf(vcc),
	.datag(vcc),
	.cin(gnd),
	.sharein(gnd),
	.combout(\Equal0~119_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \Equal0~119 .extended_lut = "off";
defparam \Equal0~119 .lut_mask = 64'h8000800080008000;
defparam \Equal0~119 .shared_arith = "off";

stratixii_lcell_comb \Equal0~120 (
	.dataa(!result_13),
	.datab(!result_15),
	.datac(!result_17),
	.datad(!result_23),
	.datae(vcc),
	.dataf(vcc),
	.datag(vcc),
	.cin(gnd),
	.sharein(gnd),
	.combout(\Equal0~120_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \Equal0~120 .extended_lut = "off";
defparam \Equal0~120 .lut_mask = 64'h8000800080008000;
defparam \Equal0~120 .shared_arith = "off";

stratixii_lcell_comb \Equal0~121 (
	.dataa(!result_21),
	.datab(!result_24),
	.datac(!\Equal0~118_combout ),
	.datad(!\Equal0~119_combout ),
	.datae(!\Equal0~120_combout ),
	.dataf(vcc),
	.datag(vcc),
	.cin(gnd),
	.sharein(gnd),
	.combout(\Equal0~121_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \Equal0~121 .extended_lut = "off";
defparam \Equal0~121 .lut_mask = 64'h8000000080000000;
defparam \Equal0~121 .shared_arith = "off";

endmodule

module NCO1_lpm_add_sub_4 (
	data_tmp_13,
	data_tmp_0,
	data_tmp_1,
	data_tmp_2,
	data_tmp_3,
	data_tmp_4,
	data_tmp_5,
	data_tmp_6,
	data_tmp_7,
	data_tmp_8,
	data_tmp_9,
	data_tmp_10,
	data_tmp_11,
	data_tmp_12,
	pipeline_dffe_0,
	pipeline_dffe_1,
	pipeline_dffe_2,
	pipeline_dffe_3,
	pipeline_dffe_4,
	pipeline_dffe_5,
	pipeline_dffe_6,
	pipeline_dffe_7,
	pipeline_dffe_8,
	pipeline_dffe_9,
	pipeline_dffe_10,
	pipeline_dffe_11,
	pipeline_dffe_12,
	pipeline_dffe_13,
	is_zero,
	clock,
	reset_n,
	clken)/* synthesis synthesis_greybox=1 */;
input 	data_tmp_13;
input 	data_tmp_0;
input 	data_tmp_1;
input 	data_tmp_2;
input 	data_tmp_3;
input 	data_tmp_4;
input 	data_tmp_5;
input 	data_tmp_6;
input 	data_tmp_7;
input 	data_tmp_8;
input 	data_tmp_9;
input 	data_tmp_10;
input 	data_tmp_11;
input 	data_tmp_12;
output 	pipeline_dffe_0;
output 	pipeline_dffe_1;
output 	pipeline_dffe_2;
output 	pipeline_dffe_3;
output 	pipeline_dffe_4;
output 	pipeline_dffe_5;
output 	pipeline_dffe_6;
output 	pipeline_dffe_7;
output 	pipeline_dffe_8;
output 	pipeline_dffe_9;
output 	pipeline_dffe_10;
output 	pipeline_dffe_11;
output 	pipeline_dffe_12;
output 	pipeline_dffe_13;
input 	is_zero;
input 	clock;
input 	reset_n;
input 	clken;

wire gnd;
wire vcc;

assign gnd = 1'b0;
assign vcc = 1'b1;



NCO1_add_sub_fek_1 auto_generated(
	.data_tmp_13(data_tmp_13),
	.data_tmp_0(data_tmp_0),
	.data_tmp_1(data_tmp_1),
	.data_tmp_2(data_tmp_2),
	.data_tmp_3(data_tmp_3),
	.data_tmp_4(data_tmp_4),
	.data_tmp_5(data_tmp_5),
	.data_tmp_6(data_tmp_6),
	.data_tmp_7(data_tmp_7),
	.data_tmp_8(data_tmp_8),
	.data_tmp_9(data_tmp_9),
	.data_tmp_10(data_tmp_10),
	.data_tmp_11(data_tmp_11),
	.data_tmp_12(data_tmp_12),
	.pipeline_dffe_0(pipeline_dffe_0),
	.pipeline_dffe_1(pipeline_dffe_1),
	.pipeline_dffe_2(pipeline_dffe_2),
	.pipeline_dffe_3(pipeline_dffe_3),
	.pipeline_dffe_4(pipeline_dffe_4),
	.pipeline_dffe_5(pipeline_dffe_5),
	.pipeline_dffe_6(pipeline_dffe_6),
	.pipeline_dffe_7(pipeline_dffe_7),
	.pipeline_dffe_8(pipeline_dffe_8),
	.pipeline_dffe_9(pipeline_dffe_9),
	.pipeline_dffe_10(pipeline_dffe_10),
	.pipeline_dffe_11(pipeline_dffe_11),
	.pipeline_dffe_12(pipeline_dffe_12),
	.pipeline_dffe_13(pipeline_dffe_13),
	.is_zero(is_zero),
	.clock(clock),
	.reset_n(reset_n),
	.clken(clken));

endmodule

module NCO1_add_sub_fek_1 (
	data_tmp_13,
	data_tmp_0,
	data_tmp_1,
	data_tmp_2,
	data_tmp_3,
	data_tmp_4,
	data_tmp_5,
	data_tmp_6,
	data_tmp_7,
	data_tmp_8,
	data_tmp_9,
	data_tmp_10,
	data_tmp_11,
	data_tmp_12,
	pipeline_dffe_0,
	pipeline_dffe_1,
	pipeline_dffe_2,
	pipeline_dffe_3,
	pipeline_dffe_4,
	pipeline_dffe_5,
	pipeline_dffe_6,
	pipeline_dffe_7,
	pipeline_dffe_8,
	pipeline_dffe_9,
	pipeline_dffe_10,
	pipeline_dffe_11,
	pipeline_dffe_12,
	pipeline_dffe_13,
	is_zero,
	clock,
	reset_n,
	clken)/* synthesis synthesis_greybox=1 */;
input 	data_tmp_13;
input 	data_tmp_0;
input 	data_tmp_1;
input 	data_tmp_2;
input 	data_tmp_3;
input 	data_tmp_4;
input 	data_tmp_5;
input 	data_tmp_6;
input 	data_tmp_7;
input 	data_tmp_8;
input 	data_tmp_9;
input 	data_tmp_10;
input 	data_tmp_11;
input 	data_tmp_12;
output 	pipeline_dffe_0;
output 	pipeline_dffe_1;
output 	pipeline_dffe_2;
output 	pipeline_dffe_3;
output 	pipeline_dffe_4;
output 	pipeline_dffe_5;
output 	pipeline_dffe_6;
output 	pipeline_dffe_7;
output 	pipeline_dffe_8;
output 	pipeline_dffe_9;
output 	pipeline_dffe_10;
output 	pipeline_dffe_11;
output 	pipeline_dffe_12;
output 	pipeline_dffe_13;
input 	is_zero;
input 	clock;
input 	reset_n;
input 	clken;

wire gnd;
wire vcc;

assign gnd = 1'b0;
assign vcc = 1'b1;

wire \op_1~224_sumout ;
wire \op_1~225 ;
wire \op_1~228_sumout ;
wire \op_1~229 ;
wire \op_1~232_sumout ;
wire \op_1~233 ;
wire \op_1~236_sumout ;
wire \op_1~237 ;
wire \op_1~240_sumout ;
wire \op_1~241 ;
wire \op_1~244_sumout ;
wire \op_1~245 ;
wire \op_1~248_sumout ;
wire \op_1~249 ;
wire \op_1~252_sumout ;
wire \op_1~253 ;
wire \op_1~256_sumout ;
wire \op_1~257 ;
wire \op_1~260_sumout ;
wire \op_1~261 ;
wire \op_1~264_sumout ;
wire \op_1~265 ;
wire \op_1~268_sumout ;
wire \op_1~269 ;
wire \op_1~272_sumout ;
wire \op_1~273 ;
wire \op_1~276_sumout ;


stratixii_lcell_ff \pipeline_dffe[0] (
	.clk(clock),
	.datain(\op_1~224_sumout ),
	.adatasdata(gnd),
	.aclr(!reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.regout(pipeline_dffe_0));

stratixii_lcell_ff \pipeline_dffe[1] (
	.clk(clock),
	.datain(\op_1~228_sumout ),
	.adatasdata(gnd),
	.aclr(!reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.regout(pipeline_dffe_1));

stratixii_lcell_ff \pipeline_dffe[2] (
	.clk(clock),
	.datain(\op_1~232_sumout ),
	.adatasdata(gnd),
	.aclr(!reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.regout(pipeline_dffe_2));

stratixii_lcell_ff \pipeline_dffe[3] (
	.clk(clock),
	.datain(\op_1~236_sumout ),
	.adatasdata(gnd),
	.aclr(!reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.regout(pipeline_dffe_3));

stratixii_lcell_ff \pipeline_dffe[4] (
	.clk(clock),
	.datain(\op_1~240_sumout ),
	.adatasdata(gnd),
	.aclr(!reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.regout(pipeline_dffe_4));

stratixii_lcell_ff \pipeline_dffe[5] (
	.clk(clock),
	.datain(\op_1~244_sumout ),
	.adatasdata(gnd),
	.aclr(!reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.regout(pipeline_dffe_5));

stratixii_lcell_ff \pipeline_dffe[6] (
	.clk(clock),
	.datain(\op_1~248_sumout ),
	.adatasdata(gnd),
	.aclr(!reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.regout(pipeline_dffe_6));

stratixii_lcell_ff \pipeline_dffe[7] (
	.clk(clock),
	.datain(\op_1~252_sumout ),
	.adatasdata(gnd),
	.aclr(!reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.regout(pipeline_dffe_7));

stratixii_lcell_ff \pipeline_dffe[8] (
	.clk(clock),
	.datain(\op_1~256_sumout ),
	.adatasdata(gnd),
	.aclr(!reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.regout(pipeline_dffe_8));

stratixii_lcell_ff \pipeline_dffe[9] (
	.clk(clock),
	.datain(\op_1~260_sumout ),
	.adatasdata(gnd),
	.aclr(!reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.regout(pipeline_dffe_9));

stratixii_lcell_ff \pipeline_dffe[10] (
	.clk(clock),
	.datain(\op_1~264_sumout ),
	.adatasdata(gnd),
	.aclr(!reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.regout(pipeline_dffe_10));

stratixii_lcell_ff \pipeline_dffe[11] (
	.clk(clock),
	.datain(\op_1~268_sumout ),
	.adatasdata(gnd),
	.aclr(!reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.regout(pipeline_dffe_11));

stratixii_lcell_ff \pipeline_dffe[12] (
	.clk(clock),
	.datain(\op_1~272_sumout ),
	.adatasdata(gnd),
	.aclr(!reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.regout(pipeline_dffe_12));

stratixii_lcell_ff \pipeline_dffe[13] (
	.clk(clock),
	.datain(\op_1~276_sumout ),
	.adatasdata(gnd),
	.aclr(!reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.regout(pipeline_dffe_13));

stratixii_lcell_comb \op_1~224 (
	.dataa(!data_tmp_13),
	.datab(vcc),
	.datac(vcc),
	.datad(!data_tmp_0),
	.datae(vcc),
	.dataf(!is_zero),
	.datag(vcc),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(\op_1~224_sumout ),
	.cout(\op_1~225 ),
	.shareout());
defparam \op_1~224 .extended_lut = "off";
defparam \op_1~224 .lut_mask = 64'h0000aaaa0000aa00;
defparam \op_1~224 .shared_arith = "off";

stratixii_lcell_comb \op_1~228 (
	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(!data_tmp_1),
	.datae(vcc),
	.dataf(vcc),
	.datag(vcc),
	.cin(\op_1~225 ),
	.sharein(gnd),
	.combout(),
	.sumout(\op_1~228_sumout ),
	.cout(\op_1~229 ),
	.shareout());
defparam \op_1~228 .extended_lut = "off";
defparam \op_1~228 .lut_mask = 64'h000000000000ff00;
defparam \op_1~228 .shared_arith = "off";

stratixii_lcell_comb \op_1~232 (
	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(!data_tmp_2),
	.datae(vcc),
	.dataf(vcc),
	.datag(vcc),
	.cin(\op_1~229 ),
	.sharein(gnd),
	.combout(),
	.sumout(\op_1~232_sumout ),
	.cout(\op_1~233 ),
	.shareout());
defparam \op_1~232 .extended_lut = "off";
defparam \op_1~232 .lut_mask = 64'h000000000000ff00;
defparam \op_1~232 .shared_arith = "off";

stratixii_lcell_comb \op_1~236 (
	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(!data_tmp_3),
	.datae(vcc),
	.dataf(vcc),
	.datag(vcc),
	.cin(\op_1~233 ),
	.sharein(gnd),
	.combout(),
	.sumout(\op_1~236_sumout ),
	.cout(\op_1~237 ),
	.shareout());
defparam \op_1~236 .extended_lut = "off";
defparam \op_1~236 .lut_mask = 64'h000000000000ff00;
defparam \op_1~236 .shared_arith = "off";

stratixii_lcell_comb \op_1~240 (
	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(!data_tmp_4),
	.datae(vcc),
	.dataf(vcc),
	.datag(vcc),
	.cin(\op_1~237 ),
	.sharein(gnd),
	.combout(),
	.sumout(\op_1~240_sumout ),
	.cout(\op_1~241 ),
	.shareout());
defparam \op_1~240 .extended_lut = "off";
defparam \op_1~240 .lut_mask = 64'h000000000000ff00;
defparam \op_1~240 .shared_arith = "off";

stratixii_lcell_comb \op_1~244 (
	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(!data_tmp_5),
	.datae(vcc),
	.dataf(vcc),
	.datag(vcc),
	.cin(\op_1~241 ),
	.sharein(gnd),
	.combout(),
	.sumout(\op_1~244_sumout ),
	.cout(\op_1~245 ),
	.shareout());
defparam \op_1~244 .extended_lut = "off";
defparam \op_1~244 .lut_mask = 64'h000000000000ff00;
defparam \op_1~244 .shared_arith = "off";

stratixii_lcell_comb \op_1~248 (
	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(!data_tmp_6),
	.datae(vcc),
	.dataf(vcc),
	.datag(vcc),
	.cin(\op_1~245 ),
	.sharein(gnd),
	.combout(),
	.sumout(\op_1~248_sumout ),
	.cout(\op_1~249 ),
	.shareout());
defparam \op_1~248 .extended_lut = "off";
defparam \op_1~248 .lut_mask = 64'h000000000000ff00;
defparam \op_1~248 .shared_arith = "off";

stratixii_lcell_comb \op_1~252 (
	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(!data_tmp_7),
	.datae(vcc),
	.dataf(vcc),
	.datag(vcc),
	.cin(\op_1~249 ),
	.sharein(gnd),
	.combout(),
	.sumout(\op_1~252_sumout ),
	.cout(\op_1~253 ),
	.shareout());
defparam \op_1~252 .extended_lut = "off";
defparam \op_1~252 .lut_mask = 64'h000000000000ff00;
defparam \op_1~252 .shared_arith = "off";

stratixii_lcell_comb \op_1~256 (
	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(!data_tmp_8),
	.datae(vcc),
	.dataf(vcc),
	.datag(vcc),
	.cin(\op_1~253 ),
	.sharein(gnd),
	.combout(),
	.sumout(\op_1~256_sumout ),
	.cout(\op_1~257 ),
	.shareout());
defparam \op_1~256 .extended_lut = "off";
defparam \op_1~256 .lut_mask = 64'h000000000000ff00;
defparam \op_1~256 .shared_arith = "off";

stratixii_lcell_comb \op_1~260 (
	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(!data_tmp_9),
	.datae(vcc),
	.dataf(vcc),
	.datag(vcc),
	.cin(\op_1~257 ),
	.sharein(gnd),
	.combout(),
	.sumout(\op_1~260_sumout ),
	.cout(\op_1~261 ),
	.shareout());
defparam \op_1~260 .extended_lut = "off";
defparam \op_1~260 .lut_mask = 64'h000000000000ff00;
defparam \op_1~260 .shared_arith = "off";

stratixii_lcell_comb \op_1~264 (
	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(!data_tmp_10),
	.datae(vcc),
	.dataf(vcc),
	.datag(vcc),
	.cin(\op_1~261 ),
	.sharein(gnd),
	.combout(),
	.sumout(\op_1~264_sumout ),
	.cout(\op_1~265 ),
	.shareout());
defparam \op_1~264 .extended_lut = "off";
defparam \op_1~264 .lut_mask = 64'h000000000000ff00;
defparam \op_1~264 .shared_arith = "off";

stratixii_lcell_comb \op_1~268 (
	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(!data_tmp_11),
	.datae(vcc),
	.dataf(vcc),
	.datag(vcc),
	.cin(\op_1~265 ),
	.sharein(gnd),
	.combout(),
	.sumout(\op_1~268_sumout ),
	.cout(\op_1~269 ),
	.shareout());
defparam \op_1~268 .extended_lut = "off";
defparam \op_1~268 .lut_mask = 64'h000000000000ff00;
defparam \op_1~268 .shared_arith = "off";

stratixii_lcell_comb \op_1~272 (
	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(!data_tmp_12),
	.datae(vcc),
	.dataf(vcc),
	.datag(vcc),
	.cin(\op_1~269 ),
	.sharein(gnd),
	.combout(),
	.sumout(\op_1~272_sumout ),
	.cout(\op_1~273 ),
	.shareout());
defparam \op_1~272 .extended_lut = "off";
defparam \op_1~272 .lut_mask = 64'h000000000000ff00;
defparam \op_1~272 .shared_arith = "off";

stratixii_lcell_comb \op_1~276 (
	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(!data_tmp_13),
	.datae(vcc),
	.dataf(vcc),
	.datag(vcc),
	.cin(\op_1~273 ),
	.sharein(gnd),
	.combout(),
	.sumout(\op_1~276_sumout ),
	.cout(),
	.shareout());
defparam \op_1~276 .extended_lut = "off";
defparam \op_1~276 .lut_mask = 64'h000000000000ff00;
defparam \op_1~276 .shared_arith = "off";

endmodule
