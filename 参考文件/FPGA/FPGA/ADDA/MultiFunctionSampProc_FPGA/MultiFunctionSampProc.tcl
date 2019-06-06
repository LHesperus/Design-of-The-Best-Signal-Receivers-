# Copyright (C) 1991-2007 Altera Corporation
# Your use of Altera Corporation's design tools, logic functions 
# and other software and tools, and its AMPP partner logic 
# functions, and any output files from any of the foregoing 
# (including device programming or simulation files), and any 
# associated documentation or information are expressly subject 
# to the terms and conditions of the Altera Program License 
# Subscription Agreement, Altera MegaCore Function License 
# Agreement, or other applicable license agreement, including, 
# without limitation, that your use is for the sole purpose of 
# programming logic devices manufactured by Altera and sold by 
# Altera or its authorized distributors.  Please refer to the 
# applicable agreement for further details.

# Quartus II: Generate Tcl File for Project
# File: MultiFunctionSampProc.tcl
# Generated on: Wed Sep 12 00:57:26 2012

# Load Quartus II Tcl Project package
package require ::quartus::project

set need_to_close_project 0
set make_assignments 1

# Check that the right project is open
if {[is_project_open]} {
	if {[string compare $quartus(project) "MultiFunctionSampProc"]} {
		puts "Project MultiFunctionSampProc is not open"
		set make_assignments 0
	}
} else {
	# Only open if not already open
	if {[project_exists MultiFunctionSampProc]} {
		project_open -revision MultiFunctionSampProc MultiFunctionSampProc
	} else {
		project_new -revision MultiFunctionSampProc MultiFunctionSampProc
	}
	set need_to_close_project 1
}

# Make assignments
if {$make_assignments} {
	set_global_assignment -name FAMILY "Stratix II"
	set_global_assignment -name DEVICE EP2S90F1020I4
	set_global_assignment -name ORIGINAL_QUARTUS_VERSION 7.2
	set_global_assignment -name PROJECT_CREATION_TIME_DATE "12:00:01  SEPTEMBER 25, 2011"
	set_global_assignment -name LAST_QUARTUS_VERSION 7.2
	set_global_assignment -name USE_GENERATED_PHYSICAL_CONSTRAINTS OFF -section_id eda_palace
	set_global_assignment -name VERILOG_FILE MultiFunctionSampProc.v
	set_global_assignment -name PARTITION_NETLIST_TYPE SOURCE -section_id Top
	set_global_assignment -name PARTITION_COLOR 2147039 -section_id Top
	set_global_assignment -name LL_ROOT_REGION ON -section_id "Root Region"
	set_global_assignment -name LL_MEMBER_STATE LOCKED -section_id "Root Region"
	set_global_assignment -name SIGNALTAP_FILE stp1.stp
	set_global_assignment -name ENABLE_SIGNALTAP ON
	set_global_assignment -name USE_SIGNALTAP_FILE stp1.stp
	set_global_assignment -name STRATIXII_CONFIGURATION_SCHEME "ACTIVE SERIAL"
	set_global_assignment -name STRATIXII_CONFIGURATION_DEVICE EPCS64
	set_global_assignment -name GENERATE_TTF_FILE ON
	set_global_assignment -name RESERVE_ALL_UNUSED_PINS "AS INPUT TRI-STATED"
	set_global_assignment -name RESERVE_ASDO_AFTER_CONFIGURATION "AS INPUT TRI-STATED"
	set_global_assignment -name SLD_NODE_CREATOR_ID 110 -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_ENTITY_NAME sld_signaltap -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_RAM_BLOCK_TYPE=M4K" -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_NODE_INFO=805334528" -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_POWER_UP_TRIGGER=0" -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_SEGMENT_SIZE=2048" -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_STATE_FLOW_USE_GENERATED=0" -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_STATE_BITS=11" -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_BUFFER_FULL_STOP=1" -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_CURRENT_RESOURCE_WIDTH=1" -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_TRIGGER_LEVEL=1" -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_SAMPLE_DEPTH=2048" -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_TRIGGER_IN_ENABLED=0" -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_ADVANCED_TRIGGER_ENTITY=basic,1," -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_TRIGGER_LEVEL_PIPELINE=1" -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_ENABLE_ADVANCED_TRIGGER=0" -section_id auto_signaltap_0
	set_global_assignment -name VERILOG_FILE DATA_LATCH.v
	set_global_assignment -name MIN_CORE_JUNCTION_TEMP "-40"
	set_global_assignment -name MAX_CORE_JUNCTION_TEMP 100
	set_global_assignment -name RESERVE_ALL_UNUSED_PINS_NO_OUTPUT_GND "AS INPUT TRI-STATED"
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_DATA_BITS=56" -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_TRIGGER_BITS=56" -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_INVERSION_MASK=0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_INVERSION_MASK_LENGTH=193" -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_NODE_CRC_LOWORD=38502" -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_NODE_CRC_HIWORD=64797" -section_id auto_signaltap_0
	set_instance_assignment -name PARTITION_HIERARCHY no_file_for_top_partition -to | -section_id Top
	set_location_assignment PIN_H1 -to ADC1_CLK
	set_location_assignment PIN_D2 -to ADC1_D[13]
	set_location_assignment PIN_E1 -to ADC1_D[12]
	set_location_assignment PIN_E2 -to ADC1_D[11]
	set_location_assignment PIN_E3 -to ADC1_D[10]
	set_location_assignment PIN_E4 -to ADC1_D[9]
	set_location_assignment PIN_F1 -to ADC1_D[8]
	set_location_assignment PIN_F2 -to ADC1_D[7]
	set_location_assignment PIN_F3 -to ADC1_D[6]
	set_location_assignment PIN_F4 -to ADC1_D[5]
	set_location_assignment PIN_G1 -to ADC1_D[4]
	set_location_assignment PIN_G2 -to ADC1_D[3]
	set_location_assignment PIN_G3 -to ADC1_D[2]
	set_location_assignment PIN_G5 -to ADC1_D[1]
	set_location_assignment PIN_G6 -to ADC1_D[0]
	set_location_assignment PIN_G4 -to ADC1_PDWN
	set_location_assignment PIN_K4 -to ADC2_CLK
	set_location_assignment PIN_H3 -to ADC2_D[13]
	set_location_assignment PIN_H4 -to ADC2_D[12]
	set_location_assignment PIN_H5 -to ADC2_D[11]
	set_location_assignment PIN_H6 -to ADC2_D[10]
	set_location_assignment PIN_J1 -to ADC2_D[9]
	set_location_assignment PIN_J2 -to ADC2_D[8]
	set_location_assignment PIN_J3 -to ADC2_D[7]
	set_location_assignment PIN_J4 -to ADC2_D[6]
	set_location_assignment PIN_J6 -to ADC2_D[5]
	set_location_assignment PIN_J7 -to ADC2_D[4]
	set_location_assignment PIN_J8 -to ADC2_D[3]
	set_location_assignment PIN_J9 -to ADC2_D[2]
	set_location_assignment PIN_K2 -to ADC2_D[1]
	set_location_assignment PIN_K3 -to ADC2_D[0]
	set_location_assignment PIN_K1 -to ADC2_PDWN
	set_location_assignment PIN_M6 -to ADC3_CLK
	set_location_assignment PIN_K7 -to ADC3_D[13]
	set_location_assignment PIN_K8 -to ADC3_D[12]
	set_location_assignment PIN_K9 -to ADC3_D[11]
	set_location_assignment PIN_L1 -to ADC3_D[10]
	set_location_assignment PIN_L2 -to ADC3_D[9]
	set_location_assignment PIN_L3 -to ADC3_D[8]
	set_location_assignment PIN_L4 -to ADC3_D[7]
	set_location_assignment PIN_L5 -to ADC3_D[6]
	set_location_assignment PIN_L6 -to ADC3_D[5]
	set_location_assignment PIN_L7 -to ADC3_D[4]
	set_location_assignment PIN_L8 -to ADC3_D[3]
	set_location_assignment PIN_M1 -to ADC3_D[2]
	set_location_assignment PIN_M3 -to ADC3_D[1]
	set_location_assignment PIN_M4 -to ADC3_D[0]
	set_location_assignment PIN_M2 -to ADC3_PDWN
	set_location_assignment PIN_R5 -to ADC4_CLK
	set_location_assignment PIN_M8 -to ADC4_D[13]
	set_location_assignment PIN_M9 -to ADC4_D[12]
	set_location_assignment PIN_N2 -to ADC4_D[11]
	set_location_assignment PIN_N3 -to ADC4_D[10]
	set_location_assignment PIN_N4 -to ADC4_D[9]
	set_location_assignment PIN_N5 -to ADC4_D[8]
	set_location_assignment PIN_P1 -to ADC4_D[7]
	set_location_assignment PIN_P2 -to ADC4_D[6]
	set_location_assignment PIN_P4 -to ADC4_D[5]
	set_location_assignment PIN_P5 -to ADC4_D[4]
	set_location_assignment PIN_P6 -to ADC4_D[3]
	set_location_assignment PIN_P7 -to ADC4_D[2]
	set_location_assignment PIN_R3 -to ADC4_D[1]
	set_location_assignment PIN_R4 -to ADC4_D[0]
	set_location_assignment PIN_R2 -to ADC4_PDWN
	set_location_assignment PIN_T5 -to ADC_CLOCK
	set_location_assignment PIN_AM16 -to CLK_NX
	set_location_assignment PIN_V2 -to DAC1_CLK
	set_location_assignment PIN_Y3 -to DAC1_D[13]
	set_location_assignment PIN_Y2 -to DAC1_D[12]
	set_location_assignment PIN_W8 -to DAC1_D[11]
	set_location_assignment PIN_W7 -to DAC1_D[10]
	set_location_assignment PIN_W6 -to DAC1_D[9]
	set_location_assignment PIN_W5 -to DAC1_D[8]
	set_location_assignment PIN_W4 -to DAC1_D[7]
	set_location_assignment PIN_W2 -to DAC1_D[6]
	set_location_assignment PIN_W1 -to DAC1_D[5]
	set_location_assignment PIN_V7 -to DAC1_D[4]
	set_location_assignment PIN_V6 -to DAC1_D[3]
	set_location_assignment PIN_V5 -to DAC1_D[2]
	set_location_assignment PIN_V4 -to DAC1_D[1]
	set_location_assignment PIN_V3 -to DAC1_D[0]
	set_location_assignment PIN_Y4 -to DAC1_PDWN
	set_location_assignment PIN_Y5 -to DAC2_CLK
	set_location_assignment PIN_AB5 -to DAC2_D[13]
	set_location_assignment PIN_AB4 -to DAC2_D[12]
	set_location_assignment PIN_AB3 -to DAC2_D[11]
	set_location_assignment PIN_AB2 -to DAC2_D[10]
	set_location_assignment PIN_AB1 -to DAC2_D[9]
	set_location_assignment PIN_AA9 -to DAC2_D[8]
	set_location_assignment PIN_AA8 -to DAC2_D[7]
	set_location_assignment PIN_AA7 -to DAC2_D[6]
	set_location_assignment PIN_AA6 -to DAC2_D[5]
	set_location_assignment PIN_AA4 -to DAC2_D[4]
	set_location_assignment PIN_AA3 -to DAC2_D[3]
	set_location_assignment PIN_AA2 -to DAC2_D[2]
	set_location_assignment PIN_AA1 -to DAC2_D[1]
	set_location_assignment PIN_Y6 -to DAC2_D[0]
	set_location_assignment PIN_AB6 -to DAC2_PDWN
	set_location_assignment PIN_AB7 -to DAC3_CLK
	set_location_assignment PIN_AD6 -to DAC3_D[13]
	set_location_assignment PIN_AD4 -to DAC3_D[12]
	set_location_assignment PIN_AD3 -to DAC3_D[11]
	set_location_assignment PIN_AD2 -to DAC3_D[10]
	set_location_assignment PIN_AD1 -to DAC3_D[9]
	set_location_assignment PIN_AC9 -to DAC3_D[8]
	set_location_assignment PIN_AC8 -to DAC3_D[7]
	set_location_assignment PIN_AC7 -to DAC3_D[6]
	set_location_assignment PIN_AC6 -to DAC3_D[5]
	set_location_assignment PIN_AC4 -to DAC3_D[4]
	set_location_assignment PIN_AC3 -to DAC3_D[3]
	set_location_assignment PIN_AC2 -to DAC3_D[2]
	set_location_assignment PIN_AC1 -to DAC3_D[1]
	set_location_assignment PIN_AB8 -to DAC3_D[0]
	set_location_assignment PIN_AD7 -to DAC3_PDWN
	set_location_assignment PIN_AD8 -to DAC4_CLK
	set_location_assignment PIN_AG1 -to DAC4_D[13]
	set_location_assignment PIN_AF6 -to DAC4_D[12]
	set_location_assignment PIN_AF5 -to DAC4_D[11]
	set_location_assignment PIN_AF4 -to DAC4_D[10]
	set_location_assignment PIN_AF3 -to DAC4_D[9]
	set_location_assignment PIN_AF2 -to DAC4_D[8]
	set_location_assignment PIN_AF1 -to DAC4_D[7]
	set_location_assignment PIN_AE6 -to DAC4_D[6]
	set_location_assignment PIN_AE5 -to DAC4_D[5]
	set_location_assignment PIN_AE4 -to DAC4_D[4]
	set_location_assignment PIN_AE3 -to DAC4_D[3]
	set_location_assignment PIN_AE2 -to DAC4_D[2]
	set_location_assignment PIN_AE1 -to DAC4_D[1]
	set_location_assignment PIN_AD9 -to DAC4_D[0]
	set_location_assignment PIN_AG2 -to DAC4_PDWN
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_clk -to ADC_CLOCK -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[0] -to ADC1_D[0] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[1] -to ADC1_D[10] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[2] -to ADC1_D[11] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[3] -to ADC1_D[12] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[4] -to ADC1_D[13] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[5] -to ADC1_D[1] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[6] -to ADC1_D[2] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[7] -to ADC1_D[3] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[8] -to ADC1_D[4] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[9] -to ADC1_D[5] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[10] -to ADC1_D[6] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[11] -to ADC1_D[7] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[12] -to ADC1_D[8] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[13] -to ADC1_D[9] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[14] -to ADC2_D[0] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[15] -to ADC2_D[10] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[16] -to ADC2_D[11] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[17] -to ADC2_D[12] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[18] -to ADC2_D[13] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[19] -to ADC2_D[1] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[20] -to ADC2_D[2] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[21] -to ADC2_D[3] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[22] -to ADC2_D[4] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[23] -to ADC2_D[5] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[24] -to ADC2_D[6] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[25] -to ADC2_D[7] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[26] -to ADC2_D[8] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[27] -to ADC2_D[9] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[28] -to ADC3_D[0] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[29] -to ADC3_D[10] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[30] -to ADC3_D[11] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[31] -to ADC3_D[12] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[32] -to ADC3_D[13] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[33] -to ADC3_D[1] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[34] -to ADC3_D[2] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[35] -to ADC3_D[3] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[36] -to ADC3_D[4] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[37] -to ADC3_D[5] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[38] -to ADC3_D[6] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[39] -to ADC3_D[7] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[40] -to ADC3_D[8] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[41] -to ADC3_D[9] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[42] -to ADC4_D[0] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[43] -to ADC4_D[10] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[44] -to ADC4_D[11] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[45] -to ADC4_D[12] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[46] -to ADC4_D[13] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[47] -to ADC4_D[1] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[48] -to ADC4_D[2] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[49] -to ADC4_D[3] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[50] -to ADC4_D[4] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[51] -to ADC4_D[5] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[52] -to ADC4_D[6] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[53] -to ADC4_D[7] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[54] -to ADC4_D[8] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[55] -to ADC4_D[9] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[0] -to ADC1_D[0] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[1] -to ADC1_D[10] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[2] -to ADC1_D[11] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[3] -to ADC1_D[12] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[4] -to ADC1_D[13] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[5] -to ADC1_D[1] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[6] -to ADC1_D[2] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[7] -to ADC1_D[3] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[8] -to ADC1_D[4] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[9] -to ADC1_D[5] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[10] -to ADC1_D[6] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[11] -to ADC1_D[7] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[12] -to ADC1_D[8] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[13] -to ADC1_D[9] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[14] -to ADC2_D[0] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[15] -to ADC2_D[10] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[16] -to ADC2_D[11] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[17] -to ADC2_D[12] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[18] -to ADC2_D[13] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[19] -to ADC2_D[1] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[20] -to ADC2_D[2] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[21] -to ADC2_D[3] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[22] -to ADC2_D[4] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[23] -to ADC2_D[5] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[24] -to ADC2_D[6] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[25] -to ADC2_D[7] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[26] -to ADC2_D[8] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[27] -to ADC2_D[9] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[28] -to ADC3_D[0] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[29] -to ADC3_D[10] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[30] -to ADC3_D[11] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[31] -to ADC3_D[12] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[32] -to ADC3_D[13] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[33] -to ADC3_D[1] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[34] -to ADC3_D[2] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[35] -to ADC3_D[3] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[36] -to ADC3_D[4] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[37] -to ADC3_D[5] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[38] -to ADC3_D[6] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[39] -to ADC3_D[7] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[40] -to ADC3_D[8] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[41] -to ADC3_D[9] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[42] -to ADC4_D[0] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[43] -to ADC4_D[10] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[44] -to ADC4_D[11] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[45] -to ADC4_D[12] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[46] -to ADC4_D[13] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[47] -to ADC4_D[1] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[48] -to ADC4_D[2] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[49] -to ADC4_D[3] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[50] -to ADC4_D[4] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[51] -to ADC4_D[5] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[52] -to ADC4_D[6] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[53] -to ADC4_D[7] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[54] -to ADC4_D[8] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[55] -to ADC4_D[9] -section_id auto_signaltap_0
	set_location_assignment PIN_K24 -to TEA[7]
	set_location_assignment PIN_L32 -to TEA[6]
	set_location_assignment PIN_L31 -to TEA[5]
	set_location_assignment PIN_K26 -to TEA[4]
	set_location_assignment PIN_K25 -to TEA[3]
	set_location_assignment PIN_K30 -to TEA[2]
	set_location_assignment PIN_M32 -to TEA[11]
	set_location_assignment PIN_L25 -to TSDWEn
	set_location_assignment PIN_L28 -to TSDRASn
	set_location_assignment PIN_L27 -to TEA[10]
	set_location_assignment PIN_L30 -to TEA[9]
	set_location_assignment PIN_L29 -to TEA[8]
	set_location_assignment PIN_M25 -to TEA[18]
	set_location_assignment PIN_M24 -to TEA[17]
	set_location_assignment PIN_M27 -to TEA[16]
	set_location_assignment PIN_M26 -to TEA[15]
	set_location_assignment PIN_M31 -to TEA[14]
	set_location_assignment PIN_M30 -to TEA[13]
	set_location_assignment PIN_N29 -to TEA[21]
	set_location_assignment PIN_N30 -to TEA[20]
	set_location_assignment PIN_N31 -to TEA[19]
	set_location_assignment PIN_P32 -to TED[14]
	set_location_assignment PIN_P31 -to TED[15]
	set_location_assignment PIN_R31 -to TED[8]
	set_location_assignment PIN_P25 -to TED[9]
	set_location_assignment PIN_P26 -to TED[10]
	set_location_assignment PIN_P27 -to TED[11]
	set_location_assignment PIN_T27 -to TED[2]
	set_location_assignment PIN_T28 -to TED[3]
	set_location_assignment PIN_R27 -to TED[4]
	set_location_assignment PIN_R28 -to TED[5]
	set_location_assignment PIN_T22 -to TED[0]
	set_location_assignment PIN_E32 -to EXTINT7
	set_location_assignment PIN_E31 -to EXTINT6
	set_location_assignment PIN_D32 -to EXTINT5
	set_location_assignment PIN_D31 -to EXTINT4
	set_location_assignment PIN_H32 -to TED[26]
	set_location_assignment PIN_G27 -to TED[27]
	set_location_assignment PIN_G30 -to TED[28]
	set_location_assignment PIN_G29 -to TED[29]
	set_location_assignment PIN_G28 -to TED[30]
	set_location_assignment PIN_G31 -to TED[31]
	set_location_assignment PIN_J29 -to TED[17]
	set_location_assignment PIN_J30 -to TED[18]
	set_location_assignment PIN_J31 -to TED[19]
	set_location_assignment PIN_J32 -to TED[20]
	set_location_assignment PIN_H28 -to TED[21]
	set_location_assignment PIN_H29 -to TED[22]
	set_location_assignment PIN_H27 -to TED[23]
	set_location_assignment PIN_H31 -to TED[24]
	set_location_assignment PIN_J27 -to TED[16]
	set_location_assignment PIN_H30 -to TED[25]
	set_location_assignment PIN_M29 -to TEA[12]
	set_location_assignment PIN_P28 -to TED[12]
	set_location_assignment PIN_R29 -to TED[6]
	set_location_assignment PIN_T23 -to TED[1]
	set_location_assignment PIN_U32 -to TECLKOUT
	set_location_assignment PIN_P29 -to TED[13]
	set_location_assignment PIN_R30 -to TED[7]
	set_location_assignment PIN_K29 -to TCE2n
	set_location_assignment PIN_U23 -to RXD_232[0]
	set_location_assignment PIN_V30 -to RXD_232[1]
	set_location_assignment PIN_U22 -to TXD_232[0]
	set_location_assignment PIN_V31 -to TXD_232[1]

	# Commit assignments
	export_assignments

	# Close project
	if {$need_to_close_project} {
		project_close
	}
}
