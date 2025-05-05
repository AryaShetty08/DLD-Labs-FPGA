-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 15.0.2 Build 153 07/15/2015 SJ Web Edition"

-- DATE "11/13/2024 13:04:31"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	top IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	sw : IN std_logic_vector(1 DOWNTO 0);
	ReadData : BUFFER std_logic_vector(31 DOWNTO 0);
	prode_data_memory : BUFFER std_logic_vector(31 DOWNTO 0);
	prode_register_file : BUFFER std_logic_vector(31 DOWNTO 0);
	RegDst_out : BUFFER std_logic_vector(4 DOWNTO 0);
	MemtoReg_out : BUFFER std_logic_vector(31 DOWNTO 0);
	ALUResult : BUFFER std_logic_vector(31 DOWNTO 0);
	ALUSrc_out : BUFFER std_logic_vector(31 DOWNTO 0);
	display_ledsource : BUFFER std_logic_vector(6 DOWNTO 0);
	display_ledlwRF : BUFFER std_logic_vector(6 DOWNTO 0);
	display_ledswDM : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END top;

-- Design Ports Information
-- ReadData[0]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ReadData[1]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ReadData[2]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ReadData[3]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ReadData[4]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ReadData[5]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ReadData[6]	=>  Location: PIN_AH25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ReadData[7]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ReadData[8]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ReadData[9]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ReadData[10]	=>  Location: PIN_U3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ReadData[11]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ReadData[12]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ReadData[13]	=>  Location: PIN_AD2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ReadData[14]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ReadData[15]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ReadData[16]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ReadData[17]	=>  Location: PIN_R23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ReadData[18]	=>  Location: PIN_E26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ReadData[19]	=>  Location: PIN_AD7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ReadData[20]	=>  Location: PIN_H25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ReadData[21]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ReadData[22]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ReadData[23]	=>  Location: PIN_AE8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ReadData[24]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ReadData[25]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ReadData[26]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ReadData[27]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ReadData[28]	=>  Location: PIN_C27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ReadData[29]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ReadData[30]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ReadData[31]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_data_memory[0]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_data_memory[1]	=>  Location: PIN_AD28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_data_memory[2]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_data_memory[3]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_data_memory[4]	=>  Location: PIN_AF8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_data_memory[5]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_data_memory[6]	=>  Location: PIN_AE24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_data_memory[7]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_data_memory[8]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_data_memory[9]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_data_memory[10]	=>  Location: PIN_AE21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_data_memory[11]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_data_memory[12]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_data_memory[13]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_data_memory[14]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_data_memory[15]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_data_memory[16]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_data_memory[17]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_data_memory[18]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_data_memory[19]	=>  Location: PIN_AC21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_data_memory[20]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_data_memory[21]	=>  Location: PIN_AF2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_data_memory[22]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_data_memory[23]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_data_memory[24]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_data_memory[25]	=>  Location: PIN_AH3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_data_memory[26]	=>  Location: PIN_AF22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_data_memory[27]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_data_memory[28]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_data_memory[29]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_data_memory[30]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_data_memory[31]	=>  Location: PIN_AH23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_register_file[0]	=>  Location: PIN_AC11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_register_file[1]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_register_file[2]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_register_file[3]	=>  Location: PIN_Y5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_register_file[4]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_register_file[5]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_register_file[6]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_register_file[7]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_register_file[8]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_register_file[9]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_register_file[10]	=>  Location: PIN_B25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_register_file[11]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_register_file[12]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_register_file[13]	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_register_file[14]	=>  Location: PIN_AD22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_register_file[15]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_register_file[16]	=>  Location: PIN_AE23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_register_file[17]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_register_file[18]	=>  Location: PIN_AG26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_register_file[19]	=>  Location: PIN_AD4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_register_file[20]	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_register_file[21]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_register_file[22]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_register_file[23]	=>  Location: PIN_F26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_register_file[24]	=>  Location: PIN_AE20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_register_file[25]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_register_file[26]	=>  Location: PIN_AC10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_register_file[27]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_register_file[28]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_register_file[29]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_register_file[30]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_register_file[31]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegDst_out[0]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegDst_out[1]	=>  Location: PIN_AG3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegDst_out[2]	=>  Location: PIN_T25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegDst_out[3]	=>  Location: PIN_AF27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegDst_out[4]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MemtoReg_out[0]	=>  Location: PIN_V24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MemtoReg_out[1]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MemtoReg_out[2]	=>  Location: PIN_V26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MemtoReg_out[3]	=>  Location: PIN_AE22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MemtoReg_out[4]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MemtoReg_out[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MemtoReg_out[6]	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MemtoReg_out[7]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MemtoReg_out[8]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MemtoReg_out[9]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MemtoReg_out[10]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MemtoReg_out[11]	=>  Location: PIN_AC22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MemtoReg_out[12]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MemtoReg_out[13]	=>  Location: PIN_G28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MemtoReg_out[14]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MemtoReg_out[15]	=>  Location: PIN_AE10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MemtoReg_out[16]	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MemtoReg_out[17]	=>  Location: PIN_C25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MemtoReg_out[18]	=>  Location: PIN_D25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MemtoReg_out[19]	=>  Location: PIN_F28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MemtoReg_out[20]	=>  Location: PIN_AF20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MemtoReg_out[21]	=>  Location: PIN_C26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MemtoReg_out[22]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MemtoReg_out[23]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MemtoReg_out[24]	=>  Location: PIN_AG25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MemtoReg_out[25]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MemtoReg_out[26]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MemtoReg_out[27]	=>  Location: PIN_AD19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MemtoReg_out[28]	=>  Location: PIN_A23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MemtoReg_out[29]	=>  Location: PIN_AE5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MemtoReg_out[30]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MemtoReg_out[31]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUResult[0]	=>  Location: PIN_V28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUResult[1]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUResult[2]	=>  Location: PIN_V27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUResult[3]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUResult[4]	=>  Location: PIN_M28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUResult[5]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUResult[6]	=>  Location: PIN_AH6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUResult[7]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUResult[8]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUResult[9]	=>  Location: PIN_AC4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUResult[10]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUResult[11]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUResult[12]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUResult[13]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUResult[14]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUResult[15]	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUResult[16]	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUResult[17]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUResult[18]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUResult[19]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUResult[20]	=>  Location: PIN_L23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUResult[21]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUResult[22]	=>  Location: PIN_AF7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUResult[23]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUResult[24]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUResult[25]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUResult[26]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUResult[27]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUResult[28]	=>  Location: PIN_AE9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUResult[29]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUResult[30]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUResult[31]	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUSrc_out[0]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUSrc_out[1]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUSrc_out[2]	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUSrc_out[3]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUSrc_out[4]	=>  Location: PIN_AF25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUSrc_out[5]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUSrc_out[6]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUSrc_out[7]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUSrc_out[8]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUSrc_out[9]	=>  Location: PIN_K28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUSrc_out[10]	=>  Location: PIN_R27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUSrc_out[11]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUSrc_out[12]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUSrc_out[13]	=>  Location: PIN_AH10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUSrc_out[14]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUSrc_out[15]	=>  Location: PIN_F25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUSrc_out[16]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUSrc_out[17]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUSrc_out[18]	=>  Location: PIN_AH26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUSrc_out[19]	=>  Location: PIN_L21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUSrc_out[20]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUSrc_out[21]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUSrc_out[22]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUSrc_out[23]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUSrc_out[24]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUSrc_out[25]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUSrc_out[26]	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUSrc_out[27]	=>  Location: PIN_AE7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUSrc_out[28]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUSrc_out[29]	=>  Location: PIN_AD5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUSrc_out[30]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUSrc_out[31]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_ledsource[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_ledsource[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_ledsource[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_ledsource[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_ledsource[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_ledsource[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_ledsource[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_ledlwRF[0]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_ledlwRF[1]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_ledlwRF[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_ledlwRF[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_ledlwRF[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_ledlwRF[5]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_ledlwRF[6]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_ledswDM[0]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_ledswDM[1]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_ledswDM[2]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_ledswDM[3]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_ledswDM[4]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_ledswDM[5]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_ledswDM[6]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[0]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[1]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_sw : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_ReadData : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_prode_data_memory : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_prode_register_file : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_RegDst_out : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_MemtoReg_out : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_ALUResult : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_ALUSrc_out : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_display_ledsource : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_display_ledlwRF : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_display_ledswDM : std_logic_vector(6 DOWNTO 0);
SIGNAL \ReadData[0]~output_o\ : std_logic;
SIGNAL \ReadData[1]~output_o\ : std_logic;
SIGNAL \ReadData[2]~output_o\ : std_logic;
SIGNAL \ReadData[3]~output_o\ : std_logic;
SIGNAL \ReadData[4]~output_o\ : std_logic;
SIGNAL \ReadData[5]~output_o\ : std_logic;
SIGNAL \ReadData[6]~output_o\ : std_logic;
SIGNAL \ReadData[7]~output_o\ : std_logic;
SIGNAL \ReadData[8]~output_o\ : std_logic;
SIGNAL \ReadData[9]~output_o\ : std_logic;
SIGNAL \ReadData[10]~output_o\ : std_logic;
SIGNAL \ReadData[11]~output_o\ : std_logic;
SIGNAL \ReadData[12]~output_o\ : std_logic;
SIGNAL \ReadData[13]~output_o\ : std_logic;
SIGNAL \ReadData[14]~output_o\ : std_logic;
SIGNAL \ReadData[15]~output_o\ : std_logic;
SIGNAL \ReadData[16]~output_o\ : std_logic;
SIGNAL \ReadData[17]~output_o\ : std_logic;
SIGNAL \ReadData[18]~output_o\ : std_logic;
SIGNAL \ReadData[19]~output_o\ : std_logic;
SIGNAL \ReadData[20]~output_o\ : std_logic;
SIGNAL \ReadData[21]~output_o\ : std_logic;
SIGNAL \ReadData[22]~output_o\ : std_logic;
SIGNAL \ReadData[23]~output_o\ : std_logic;
SIGNAL \ReadData[24]~output_o\ : std_logic;
SIGNAL \ReadData[25]~output_o\ : std_logic;
SIGNAL \ReadData[26]~output_o\ : std_logic;
SIGNAL \ReadData[27]~output_o\ : std_logic;
SIGNAL \ReadData[28]~output_o\ : std_logic;
SIGNAL \ReadData[29]~output_o\ : std_logic;
SIGNAL \ReadData[30]~output_o\ : std_logic;
SIGNAL \ReadData[31]~output_o\ : std_logic;
SIGNAL \prode_data_memory[0]~output_o\ : std_logic;
SIGNAL \prode_data_memory[1]~output_o\ : std_logic;
SIGNAL \prode_data_memory[2]~output_o\ : std_logic;
SIGNAL \prode_data_memory[3]~output_o\ : std_logic;
SIGNAL \prode_data_memory[4]~output_o\ : std_logic;
SIGNAL \prode_data_memory[5]~output_o\ : std_logic;
SIGNAL \prode_data_memory[6]~output_o\ : std_logic;
SIGNAL \prode_data_memory[7]~output_o\ : std_logic;
SIGNAL \prode_data_memory[8]~output_o\ : std_logic;
SIGNAL \prode_data_memory[9]~output_o\ : std_logic;
SIGNAL \prode_data_memory[10]~output_o\ : std_logic;
SIGNAL \prode_data_memory[11]~output_o\ : std_logic;
SIGNAL \prode_data_memory[12]~output_o\ : std_logic;
SIGNAL \prode_data_memory[13]~output_o\ : std_logic;
SIGNAL \prode_data_memory[14]~output_o\ : std_logic;
SIGNAL \prode_data_memory[15]~output_o\ : std_logic;
SIGNAL \prode_data_memory[16]~output_o\ : std_logic;
SIGNAL \prode_data_memory[17]~output_o\ : std_logic;
SIGNAL \prode_data_memory[18]~output_o\ : std_logic;
SIGNAL \prode_data_memory[19]~output_o\ : std_logic;
SIGNAL \prode_data_memory[20]~output_o\ : std_logic;
SIGNAL \prode_data_memory[21]~output_o\ : std_logic;
SIGNAL \prode_data_memory[22]~output_o\ : std_logic;
SIGNAL \prode_data_memory[23]~output_o\ : std_logic;
SIGNAL \prode_data_memory[24]~output_o\ : std_logic;
SIGNAL \prode_data_memory[25]~output_o\ : std_logic;
SIGNAL \prode_data_memory[26]~output_o\ : std_logic;
SIGNAL \prode_data_memory[27]~output_o\ : std_logic;
SIGNAL \prode_data_memory[28]~output_o\ : std_logic;
SIGNAL \prode_data_memory[29]~output_o\ : std_logic;
SIGNAL \prode_data_memory[30]~output_o\ : std_logic;
SIGNAL \prode_data_memory[31]~output_o\ : std_logic;
SIGNAL \prode_register_file[0]~output_o\ : std_logic;
SIGNAL \prode_register_file[1]~output_o\ : std_logic;
SIGNAL \prode_register_file[2]~output_o\ : std_logic;
SIGNAL \prode_register_file[3]~output_o\ : std_logic;
SIGNAL \prode_register_file[4]~output_o\ : std_logic;
SIGNAL \prode_register_file[5]~output_o\ : std_logic;
SIGNAL \prode_register_file[6]~output_o\ : std_logic;
SIGNAL \prode_register_file[7]~output_o\ : std_logic;
SIGNAL \prode_register_file[8]~output_o\ : std_logic;
SIGNAL \prode_register_file[9]~output_o\ : std_logic;
SIGNAL \prode_register_file[10]~output_o\ : std_logic;
SIGNAL \prode_register_file[11]~output_o\ : std_logic;
SIGNAL \prode_register_file[12]~output_o\ : std_logic;
SIGNAL \prode_register_file[13]~output_o\ : std_logic;
SIGNAL \prode_register_file[14]~output_o\ : std_logic;
SIGNAL \prode_register_file[15]~output_o\ : std_logic;
SIGNAL \prode_register_file[16]~output_o\ : std_logic;
SIGNAL \prode_register_file[17]~output_o\ : std_logic;
SIGNAL \prode_register_file[18]~output_o\ : std_logic;
SIGNAL \prode_register_file[19]~output_o\ : std_logic;
SIGNAL \prode_register_file[20]~output_o\ : std_logic;
SIGNAL \prode_register_file[21]~output_o\ : std_logic;
SIGNAL \prode_register_file[22]~output_o\ : std_logic;
SIGNAL \prode_register_file[23]~output_o\ : std_logic;
SIGNAL \prode_register_file[24]~output_o\ : std_logic;
SIGNAL \prode_register_file[25]~output_o\ : std_logic;
SIGNAL \prode_register_file[26]~output_o\ : std_logic;
SIGNAL \prode_register_file[27]~output_o\ : std_logic;
SIGNAL \prode_register_file[28]~output_o\ : std_logic;
SIGNAL \prode_register_file[29]~output_o\ : std_logic;
SIGNAL \prode_register_file[30]~output_o\ : std_logic;
SIGNAL \prode_register_file[31]~output_o\ : std_logic;
SIGNAL \RegDst_out[0]~output_o\ : std_logic;
SIGNAL \RegDst_out[1]~output_o\ : std_logic;
SIGNAL \RegDst_out[2]~output_o\ : std_logic;
SIGNAL \RegDst_out[3]~output_o\ : std_logic;
SIGNAL \RegDst_out[4]~output_o\ : std_logic;
SIGNAL \MemtoReg_out[0]~output_o\ : std_logic;
SIGNAL \MemtoReg_out[1]~output_o\ : std_logic;
SIGNAL \MemtoReg_out[2]~output_o\ : std_logic;
SIGNAL \MemtoReg_out[3]~output_o\ : std_logic;
SIGNAL \MemtoReg_out[4]~output_o\ : std_logic;
SIGNAL \MemtoReg_out[5]~output_o\ : std_logic;
SIGNAL \MemtoReg_out[6]~output_o\ : std_logic;
SIGNAL \MemtoReg_out[7]~output_o\ : std_logic;
SIGNAL \MemtoReg_out[8]~output_o\ : std_logic;
SIGNAL \MemtoReg_out[9]~output_o\ : std_logic;
SIGNAL \MemtoReg_out[10]~output_o\ : std_logic;
SIGNAL \MemtoReg_out[11]~output_o\ : std_logic;
SIGNAL \MemtoReg_out[12]~output_o\ : std_logic;
SIGNAL \MemtoReg_out[13]~output_o\ : std_logic;
SIGNAL \MemtoReg_out[14]~output_o\ : std_logic;
SIGNAL \MemtoReg_out[15]~output_o\ : std_logic;
SIGNAL \MemtoReg_out[16]~output_o\ : std_logic;
SIGNAL \MemtoReg_out[17]~output_o\ : std_logic;
SIGNAL \MemtoReg_out[18]~output_o\ : std_logic;
SIGNAL \MemtoReg_out[19]~output_o\ : std_logic;
SIGNAL \MemtoReg_out[20]~output_o\ : std_logic;
SIGNAL \MemtoReg_out[21]~output_o\ : std_logic;
SIGNAL \MemtoReg_out[22]~output_o\ : std_logic;
SIGNAL \MemtoReg_out[23]~output_o\ : std_logic;
SIGNAL \MemtoReg_out[24]~output_o\ : std_logic;
SIGNAL \MemtoReg_out[25]~output_o\ : std_logic;
SIGNAL \MemtoReg_out[26]~output_o\ : std_logic;
SIGNAL \MemtoReg_out[27]~output_o\ : std_logic;
SIGNAL \MemtoReg_out[28]~output_o\ : std_logic;
SIGNAL \MemtoReg_out[29]~output_o\ : std_logic;
SIGNAL \MemtoReg_out[30]~output_o\ : std_logic;
SIGNAL \MemtoReg_out[31]~output_o\ : std_logic;
SIGNAL \ALUResult[0]~output_o\ : std_logic;
SIGNAL \ALUResult[1]~output_o\ : std_logic;
SIGNAL \ALUResult[2]~output_o\ : std_logic;
SIGNAL \ALUResult[3]~output_o\ : std_logic;
SIGNAL \ALUResult[4]~output_o\ : std_logic;
SIGNAL \ALUResult[5]~output_o\ : std_logic;
SIGNAL \ALUResult[6]~output_o\ : std_logic;
SIGNAL \ALUResult[7]~output_o\ : std_logic;
SIGNAL \ALUResult[8]~output_o\ : std_logic;
SIGNAL \ALUResult[9]~output_o\ : std_logic;
SIGNAL \ALUResult[10]~output_o\ : std_logic;
SIGNAL \ALUResult[11]~output_o\ : std_logic;
SIGNAL \ALUResult[12]~output_o\ : std_logic;
SIGNAL \ALUResult[13]~output_o\ : std_logic;
SIGNAL \ALUResult[14]~output_o\ : std_logic;
SIGNAL \ALUResult[15]~output_o\ : std_logic;
SIGNAL \ALUResult[16]~output_o\ : std_logic;
SIGNAL \ALUResult[17]~output_o\ : std_logic;
SIGNAL \ALUResult[18]~output_o\ : std_logic;
SIGNAL \ALUResult[19]~output_o\ : std_logic;
SIGNAL \ALUResult[20]~output_o\ : std_logic;
SIGNAL \ALUResult[21]~output_o\ : std_logic;
SIGNAL \ALUResult[22]~output_o\ : std_logic;
SIGNAL \ALUResult[23]~output_o\ : std_logic;
SIGNAL \ALUResult[24]~output_o\ : std_logic;
SIGNAL \ALUResult[25]~output_o\ : std_logic;
SIGNAL \ALUResult[26]~output_o\ : std_logic;
SIGNAL \ALUResult[27]~output_o\ : std_logic;
SIGNAL \ALUResult[28]~output_o\ : std_logic;
SIGNAL \ALUResult[29]~output_o\ : std_logic;
SIGNAL \ALUResult[30]~output_o\ : std_logic;
SIGNAL \ALUResult[31]~output_o\ : std_logic;
SIGNAL \ALUSrc_out[0]~output_o\ : std_logic;
SIGNAL \ALUSrc_out[1]~output_o\ : std_logic;
SIGNAL \ALUSrc_out[2]~output_o\ : std_logic;
SIGNAL \ALUSrc_out[3]~output_o\ : std_logic;
SIGNAL \ALUSrc_out[4]~output_o\ : std_logic;
SIGNAL \ALUSrc_out[5]~output_o\ : std_logic;
SIGNAL \ALUSrc_out[6]~output_o\ : std_logic;
SIGNAL \ALUSrc_out[7]~output_o\ : std_logic;
SIGNAL \ALUSrc_out[8]~output_o\ : std_logic;
SIGNAL \ALUSrc_out[9]~output_o\ : std_logic;
SIGNAL \ALUSrc_out[10]~output_o\ : std_logic;
SIGNAL \ALUSrc_out[11]~output_o\ : std_logic;
SIGNAL \ALUSrc_out[12]~output_o\ : std_logic;
SIGNAL \ALUSrc_out[13]~output_o\ : std_logic;
SIGNAL \ALUSrc_out[14]~output_o\ : std_logic;
SIGNAL \ALUSrc_out[15]~output_o\ : std_logic;
SIGNAL \ALUSrc_out[16]~output_o\ : std_logic;
SIGNAL \ALUSrc_out[17]~output_o\ : std_logic;
SIGNAL \ALUSrc_out[18]~output_o\ : std_logic;
SIGNAL \ALUSrc_out[19]~output_o\ : std_logic;
SIGNAL \ALUSrc_out[20]~output_o\ : std_logic;
SIGNAL \ALUSrc_out[21]~output_o\ : std_logic;
SIGNAL \ALUSrc_out[22]~output_o\ : std_logic;
SIGNAL \ALUSrc_out[23]~output_o\ : std_logic;
SIGNAL \ALUSrc_out[24]~output_o\ : std_logic;
SIGNAL \ALUSrc_out[25]~output_o\ : std_logic;
SIGNAL \ALUSrc_out[26]~output_o\ : std_logic;
SIGNAL \ALUSrc_out[27]~output_o\ : std_logic;
SIGNAL \ALUSrc_out[28]~output_o\ : std_logic;
SIGNAL \ALUSrc_out[29]~output_o\ : std_logic;
SIGNAL \ALUSrc_out[30]~output_o\ : std_logic;
SIGNAL \ALUSrc_out[31]~output_o\ : std_logic;
SIGNAL \display_ledsource[0]~output_o\ : std_logic;
SIGNAL \display_ledsource[1]~output_o\ : std_logic;
SIGNAL \display_ledsource[2]~output_o\ : std_logic;
SIGNAL \display_ledsource[3]~output_o\ : std_logic;
SIGNAL \display_ledsource[4]~output_o\ : std_logic;
SIGNAL \display_ledsource[5]~output_o\ : std_logic;
SIGNAL \display_ledsource[6]~output_o\ : std_logic;
SIGNAL \display_ledlwRF[0]~output_o\ : std_logic;
SIGNAL \display_ledlwRF[1]~output_o\ : std_logic;
SIGNAL \display_ledlwRF[2]~output_o\ : std_logic;
SIGNAL \display_ledlwRF[3]~output_o\ : std_logic;
SIGNAL \display_ledlwRF[4]~output_o\ : std_logic;
SIGNAL \display_ledlwRF[5]~output_o\ : std_logic;
SIGNAL \display_ledlwRF[6]~output_o\ : std_logic;
SIGNAL \display_ledswDM[0]~output_o\ : std_logic;
SIGNAL \display_ledswDM[1]~output_o\ : std_logic;
SIGNAL \display_ledswDM[2]~output_o\ : std_logic;
SIGNAL \display_ledswDM[3]~output_o\ : std_logic;
SIGNAL \display_ledswDM[4]~output_o\ : std_logic;
SIGNAL \display_ledswDM[5]~output_o\ : std_logic;
SIGNAL \display_ledswDM[6]~output_o\ : std_logic;
SIGNAL \sw[1]~input_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \sw[0]~input_o\ : std_logic;
SIGNAL \inst_ex[16]~0_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \data_mem|dm_regs[0][0]~q\ : std_logic;
SIGNAL \data_mem|dm_regs[2][0]~feeder_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \data_mem|dm_regs[2][0]~q\ : std_logic;
SIGNAL \data_mem|Mux31~0_combout\ : std_logic;
SIGNAL \r_f|rf_regs[1][1]~feeder_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \r_f|rf_regs[1][1]~q\ : std_logic;
SIGNAL \r_f|Mux62~0_combout\ : std_logic;
SIGNAL \data_mem|dm_regs[2][1]~0_combout\ : std_logic;
SIGNAL \data_mem|dm_regs[2][1]~q\ : std_logic;
SIGNAL \data_mem|dm_regs[0][1]~feeder_combout\ : std_logic;
SIGNAL \data_mem|dm_regs[0][1]~q\ : std_logic;
SIGNAL \data_mem|Mux30~0_combout\ : std_logic;
SIGNAL \r_f|rf_regs[1][2]~feeder_combout\ : std_logic;
SIGNAL \r_f|rf_regs[1][2]~q\ : std_logic;
SIGNAL \r_f|Mux61~0_combout\ : std_logic;
SIGNAL \data_mem|dm_regs[2][2]~feeder_combout\ : std_logic;
SIGNAL \data_mem|dm_regs[2][2]~q\ : std_logic;
SIGNAL \data_mem|dm_regs[0][2]~feeder_combout\ : std_logic;
SIGNAL \data_mem|dm_regs[0][2]~q\ : std_logic;
SIGNAL \data_mem|Mux29~0_combout\ : std_logic;
SIGNAL \data_mem|dm_regs[2][3]~feeder_combout\ : std_logic;
SIGNAL \data_mem|dm_regs[2][3]~q\ : std_logic;
SIGNAL \data_mem|dm_regs[0][3]~q\ : std_logic;
SIGNAL \data_mem|Mux28~0_combout\ : std_logic;
SIGNAL \t2|WideOr6~0_combout\ : std_logic;
SIGNAL \t2|WideOr5~0_combout\ : std_logic;
SIGNAL \t2|WideOr4~0_combout\ : std_logic;
SIGNAL \t2|WideOr3~0_combout\ : std_logic;
SIGNAL \t2|WideOr2~0_combout\ : std_logic;
SIGNAL \t2|WideOr1~0_combout\ : std_logic;
SIGNAL \t2|WideOr0~0_combout\ : std_logic;
SIGNAL \t3|WideOr6~0_combout\ : std_logic;
SIGNAL \t3|WideOr5~0_combout\ : std_logic;
SIGNAL \t3|WideOr3~0_combout\ : std_logic;
SIGNAL \t4|WideOr6~0_combout\ : std_logic;
SIGNAL \t4|WideOr5~0_combout\ : std_logic;
SIGNAL \t4|WideOr4~0_combout\ : std_logic;
SIGNAL \t4|WideOr3~0_combout\ : std_logic;
SIGNAL \t4|WideOr2~0_combout\ : std_logic;
SIGNAL \t4|WideOr1~0_combout\ : std_logic;
SIGNAL \t4|WideOr0~0_combout\ : std_logic;
SIGNAL \ALT_INV_rst~input_o\ : std_logic;
SIGNAL \t4|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \t3|ALT_INV_WideOr3~0_combout\ : std_logic;
SIGNAL \t3|ALT_INV_WideOr5~0_combout\ : std_logic;
SIGNAL \t2|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \ALT_INV_inst_ex[16]~0_combout\ : std_logic;
SIGNAL \data_mem|ALT_INV_dm_regs[2][1]~q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_sw <= sw;
ReadData <= ww_ReadData;
prode_data_memory <= ww_prode_data_memory;
prode_register_file <= ww_prode_register_file;
RegDst_out <= ww_RegDst_out;
MemtoReg_out <= ww_MemtoReg_out;
ALUResult <= ww_ALUResult;
ALUSrc_out <= ww_ALUSrc_out;
display_ledsource <= ww_display_ledsource;
display_ledlwRF <= ww_display_ledlwRF;
display_ledswDM <= ww_display_ledswDM;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_rst~input_o\ <= NOT \rst~input_o\;
\t4|ALT_INV_WideOr0~0_combout\ <= NOT \t4|WideOr0~0_combout\;
\t3|ALT_INV_WideOr3~0_combout\ <= NOT \t3|WideOr3~0_combout\;
\t3|ALT_INV_WideOr5~0_combout\ <= NOT \t3|WideOr5~0_combout\;
\t2|ALT_INV_WideOr0~0_combout\ <= NOT \t2|WideOr0~0_combout\;
\ALT_INV_inst_ex[16]~0_combout\ <= NOT \inst_ex[16]~0_combout\;
\data_mem|ALT_INV_dm_regs[2][1]~q\ <= NOT \data_mem|dm_regs[2][1]~q\;

-- Location: IOOBUF_X115_Y10_N9
\ReadData[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_mem|Mux31~0_combout\,
	devoe => ww_devoe,
	o => \ReadData[0]~output_o\);

-- Location: IOOBUF_X115_Y18_N9
\ReadData[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_mem|Mux30~0_combout\,
	devoe => ww_devoe,
	o => \ReadData[1]~output_o\);

-- Location: IOOBUF_X115_Y11_N2
\ReadData[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_mem|Mux29~0_combout\,
	devoe => ww_devoe,
	o => \ReadData[2]~output_o\);

-- Location: IOOBUF_X115_Y10_N2
\ReadData[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_mem|Mux28~0_combout\,
	devoe => ww_devoe,
	o => \ReadData[3]~output_o\);

-- Location: IOOBUF_X11_Y0_N2
\ReadData[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ReadData[4]~output_o\);

-- Location: IOOBUF_X29_Y73_N2
\ReadData[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ReadData[5]~output_o\);

-- Location: IOOBUF_X91_Y0_N16
\ReadData[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ReadData[6]~output_o\);

-- Location: IOOBUF_X52_Y0_N9
\ReadData[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ReadData[7]~output_o\);

-- Location: IOOBUF_X27_Y73_N16
\ReadData[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ReadData[8]~output_o\);

-- Location: IOOBUF_X0_Y63_N23
\ReadData[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ReadData[9]~output_o\);

-- Location: IOOBUF_X0_Y34_N9
\ReadData[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ReadData[10]~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\ReadData[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ReadData[11]~output_o\);

-- Location: IOOBUF_X0_Y45_N23
\ReadData[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ReadData[12]~output_o\);

-- Location: IOOBUF_X0_Y22_N23
\ReadData[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ReadData[13]~output_o\);

-- Location: IOOBUF_X1_Y73_N9
\ReadData[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ReadData[14]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\ReadData[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ReadData[15]~output_o\);

-- Location: IOOBUF_X47_Y73_N16
\ReadData[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ReadData[16]~output_o\);

-- Location: IOOBUF_X115_Y35_N16
\ReadData[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ReadData[17]~output_o\);

-- Location: IOOBUF_X115_Y59_N23
\ReadData[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ReadData[18]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\ReadData[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ReadData[19]~output_o\);

-- Location: IOOBUF_X115_Y58_N16
\ReadData[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ReadData[20]~output_o\);

-- Location: IOOBUF_X0_Y67_N16
\ReadData[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ReadData[21]~output_o\);

-- Location: IOOBUF_X89_Y73_N9
\ReadData[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ReadData[22]~output_o\);

-- Location: IOOBUF_X23_Y0_N23
\ReadData[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ReadData[23]~output_o\);

-- Location: IOOBUF_X89_Y73_N16
\ReadData[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ReadData[24]~output_o\);

-- Location: IOOBUF_X0_Y29_N23
\ReadData[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ReadData[25]~output_o\);

-- Location: IOOBUF_X115_Y42_N16
\ReadData[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ReadData[26]~output_o\);

-- Location: IOOBUF_X13_Y73_N23
\ReadData[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ReadData[27]~output_o\);

-- Location: IOOBUF_X115_Y61_N16
\ReadData[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ReadData[28]~output_o\);

-- Location: IOOBUF_X0_Y28_N23
\ReadData[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ReadData[29]~output_o\);

-- Location: IOOBUF_X115_Y29_N2
\ReadData[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ReadData[30]~output_o\);

-- Location: IOOBUF_X23_Y73_N16
\ReadData[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ReadData[31]~output_o\);

-- Location: IOOBUF_X115_Y16_N9
\prode_data_memory[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_mem|dm_regs[2][0]~q\,
	devoe => ww_devoe,
	o => \prode_data_memory[0]~output_o\);

-- Location: IOOBUF_X115_Y12_N2
\prode_data_memory[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_mem|ALT_INV_dm_regs[2][1]~q\,
	devoe => ww_devoe,
	o => \prode_data_memory[1]~output_o\);

-- Location: IOOBUF_X115_Y15_N2
\prode_data_memory[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_mem|dm_regs[2][2]~q\,
	devoe => ww_devoe,
	o => \prode_data_memory[2]~output_o\);

-- Location: IOOBUF_X115_Y11_N9
\prode_data_memory[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_mem|dm_regs[2][3]~q\,
	devoe => ww_devoe,
	o => \prode_data_memory[3]~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\prode_data_memory[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \prode_data_memory[4]~output_o\);

-- Location: IOOBUF_X58_Y73_N16
\prode_data_memory[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \prode_data_memory[5]~output_o\);

-- Location: IOOBUF_X100_Y0_N16
\prode_data_memory[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \prode_data_memory[6]~output_o\);

-- Location: IOOBUF_X52_Y73_N2
\prode_data_memory[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \prode_data_memory[7]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\prode_data_memory[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \prode_data_memory[8]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\prode_data_memory[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \prode_data_memory[9]~output_o\);

-- Location: IOOBUF_X85_Y0_N2
\prode_data_memory[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \prode_data_memory[10]~output_o\);

-- Location: IOOBUF_X3_Y73_N9
\prode_data_memory[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \prode_data_memory[11]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\prode_data_memory[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \prode_data_memory[12]~output_o\);

-- Location: IOOBUF_X13_Y0_N23
\prode_data_memory[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \prode_data_memory[13]~output_o\);

-- Location: IOOBUF_X0_Y53_N2
\prode_data_memory[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \prode_data_memory[14]~output_o\);

-- Location: IOOBUF_X0_Y25_N16
\prode_data_memory[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \prode_data_memory[15]~output_o\);

-- Location: IOOBUF_X89_Y0_N23
\prode_data_memory[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \prode_data_memory[16]~output_o\);

-- Location: IOOBUF_X0_Y66_N23
\prode_data_memory[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \prode_data_memory[17]~output_o\);

-- Location: IOOBUF_X107_Y0_N2
\prode_data_memory[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \prode_data_memory[18]~output_o\);

-- Location: IOOBUF_X102_Y0_N23
\prode_data_memory[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \prode_data_memory[19]~output_o\);

-- Location: IOOBUF_X0_Y12_N23
\prode_data_memory[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \prode_data_memory[20]~output_o\);

-- Location: IOOBUF_X0_Y6_N2
\prode_data_memory[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \prode_data_memory[21]~output_o\);

-- Location: IOOBUF_X0_Y9_N16
\prode_data_memory[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \prode_data_memory[22]~output_o\);

-- Location: IOOBUF_X72_Y0_N2
\prode_data_memory[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \prode_data_memory[23]~output_o\);

-- Location: IOOBUF_X87_Y73_N2
\prode_data_memory[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \prode_data_memory[24]~output_o\);

-- Location: IOOBUF_X5_Y0_N9
\prode_data_memory[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \prode_data_memory[25]~output_o\);

-- Location: IOOBUF_X96_Y0_N2
\prode_data_memory[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \prode_data_memory[26]~output_o\);

-- Location: IOOBUF_X0_Y18_N23
\prode_data_memory[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \prode_data_memory[27]~output_o\);

-- Location: IOOBUF_X60_Y0_N2
\prode_data_memory[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \prode_data_memory[28]~output_o\);

-- Location: IOOBUF_X96_Y73_N16
\prode_data_memory[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \prode_data_memory[29]~output_o\);

-- Location: IOOBUF_X56_Y0_N23
\prode_data_memory[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \prode_data_memory[30]~output_o\);

-- Location: IOOBUF_X81_Y0_N16
\prode_data_memory[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \prode_data_memory[31]~output_o\);

-- Location: IOOBUF_X49_Y0_N9
\prode_register_file[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \prode_register_file[0]~output_o\);

-- Location: IOOBUF_X115_Y13_N2
\prode_register_file[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_f|rf_regs[1][1]~q\,
	devoe => ww_devoe,
	o => \prode_register_file[1]~output_o\);

-- Location: IOOBUF_X115_Y13_N9
\prode_register_file[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_f|rf_regs[1][2]~q\,
	devoe => ww_devoe,
	o => \prode_register_file[2]~output_o\);

-- Location: IOOBUF_X0_Y12_N16
\prode_register_file[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \prode_register_file[3]~output_o\);

-- Location: IOOBUF_X42_Y0_N16
\prode_register_file[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \prode_register_file[4]~output_o\);

-- Location: IOOBUF_X67_Y0_N16
\prode_register_file[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \prode_register_file[5]~output_o\);

-- Location: IOOBUF_X79_Y73_N9
\prode_register_file[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \prode_register_file[6]~output_o\);

-- Location: IOOBUF_X0_Y33_N16
\prode_register_file[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \prode_register_file[7]~output_o\);

-- Location: IOOBUF_X49_Y73_N23
\prode_register_file[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \prode_register_file[8]~output_o\);

-- Location: IOOBUF_X27_Y73_N23
\prode_register_file[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \prode_register_file[9]~output_o\);

-- Location: IOOBUF_X107_Y73_N2
\prode_register_file[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \prode_register_file[10]~output_o\);

-- Location: IOOBUF_X107_Y73_N9
\prode_register_file[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \prode_register_file[11]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\prode_register_file[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \prode_register_file[12]~output_o\);

-- Location: IOOBUF_X52_Y0_N23
\prode_register_file[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \prode_register_file[13]~output_o\);

-- Location: IOOBUF_X111_Y0_N9
\prode_register_file[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \prode_register_file[14]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\prode_register_file[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \prode_register_file[15]~output_o\);

-- Location: IOOBUF_X105_Y0_N16
\prode_register_file[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \prode_register_file[16]~output_o\);

-- Location: IOOBUF_X98_Y0_N16
\prode_register_file[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \prode_register_file[17]~output_o\);

-- Location: IOOBUF_X113_Y0_N9
\prode_register_file[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \prode_register_file[18]~output_o\);

-- Location: IOOBUF_X1_Y0_N9
\prode_register_file[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \prode_register_file[19]~output_o\);

-- Location: IOOBUF_X35_Y0_N16
\prode_register_file[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \prode_register_file[20]~output_o\);

-- Location: IOOBUF_X115_Y25_N16
\prode_register_file[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \prode_register_file[21]~output_o\);

-- Location: IOOBUF_X47_Y0_N9
\prode_register_file[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \prode_register_file[22]~output_o\);

-- Location: IOOBUF_X115_Y59_N16
\prode_register_file[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \prode_register_file[23]~output_o\);

-- Location: IOOBUF_X85_Y0_N23
\prode_register_file[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \prode_register_file[24]~output_o\);

-- Location: IOOBUF_X65_Y0_N2
\prode_register_file[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \prode_register_file[25]~output_o\);

-- Location: IOOBUF_X38_Y0_N2
\prode_register_file[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \prode_register_file[26]~output_o\);

-- Location: IOOBUF_X58_Y73_N23
\prode_register_file[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \prode_register_file[27]~output_o\);

-- Location: IOOBUF_X65_Y73_N16
\prode_register_file[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \prode_register_file[28]~output_o\);

-- Location: IOOBUF_X33_Y73_N2
\prode_register_file[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \prode_register_file[29]~output_o\);

-- Location: IOOBUF_X33_Y73_N9
\prode_register_file[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \prode_register_file[30]~output_o\);

-- Location: IOOBUF_X105_Y0_N23
\prode_register_file[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \prode_register_file[31]~output_o\);

-- Location: IOOBUF_X115_Y12_N9
\RegDst_out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_ex[16]~0_combout\,
	devoe => ww_devoe,
	o => \RegDst_out[0]~output_o\);

-- Location: IOOBUF_X3_Y0_N16
\RegDst_out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RegDst_out[1]~output_o\);

-- Location: IOOBUF_X115_Y31_N2
\RegDst_out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RegDst_out[2]~output_o\);

-- Location: IOOBUF_X115_Y8_N23
\RegDst_out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal1~0_combout\,
	devoe => ww_devoe,
	o => \RegDst_out[3]~output_o\);

-- Location: IOOBUF_X62_Y73_N16
\RegDst_out[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RegDst_out[4]~output_o\);

-- Location: IOOBUF_X115_Y24_N9
\MemtoReg_out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal0~0_combout\,
	devoe => ww_devoe,
	o => \MemtoReg_out[0]~output_o\);

-- Location: IOOBUF_X115_Y7_N16
\MemtoReg_out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal1~0_combout\,
	devoe => ww_devoe,
	o => \MemtoReg_out[1]~output_o\);

-- Location: IOOBUF_X115_Y23_N9
\MemtoReg_out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal0~0_combout\,
	devoe => ww_devoe,
	o => \MemtoReg_out[2]~output_o\);

-- Location: IOOBUF_X96_Y0_N9
\MemtoReg_out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \MemtoReg_out[3]~output_o\);

-- Location: IOOBUF_X35_Y0_N23
\MemtoReg_out[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \MemtoReg_out[4]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\MemtoReg_out[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \MemtoReg_out[5]~output_o\);

-- Location: IOOBUF_X0_Y62_N23
\MemtoReg_out[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \MemtoReg_out[6]~output_o\);

-- Location: IOOBUF_X85_Y73_N2
\MemtoReg_out[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \MemtoReg_out[7]~output_o\);

-- Location: IOOBUF_X0_Y52_N16
\MemtoReg_out[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \MemtoReg_out[8]~output_o\);

-- Location: IOOBUF_X7_Y73_N23
\MemtoReg_out[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \MemtoReg_out[9]~output_o\);

-- Location: IOOBUF_X11_Y73_N16
\MemtoReg_out[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \MemtoReg_out[10]~output_o\);

-- Location: IOOBUF_X109_Y0_N2
\MemtoReg_out[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \MemtoReg_out[11]~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\MemtoReg_out[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \MemtoReg_out[12]~output_o\);

-- Location: IOOBUF_X115_Y52_N9
\MemtoReg_out[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \MemtoReg_out[13]~output_o\);

-- Location: IOOBUF_X111_Y73_N9
\MemtoReg_out[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \MemtoReg_out[14]~output_o\);

-- Location: IOOBUF_X29_Y0_N23
\MemtoReg_out[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \MemtoReg_out[15]~output_o\);

-- Location: IOOBUF_X85_Y0_N9
\MemtoReg_out[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \MemtoReg_out[16]~output_o\);

-- Location: IOOBUF_X105_Y73_N9
\MemtoReg_out[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \MemtoReg_out[17]~output_o\);

-- Location: IOOBUF_X105_Y73_N2
\MemtoReg_out[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \MemtoReg_out[18]~output_o\);

-- Location: IOOBUF_X115_Y56_N23
\MemtoReg_out[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \MemtoReg_out[19]~output_o\);

-- Location: IOOBUF_X85_Y0_N16
\MemtoReg_out[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \MemtoReg_out[20]~output_o\);

-- Location: IOOBUF_X113_Y73_N2
\MemtoReg_out[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \MemtoReg_out[21]~output_o\);

-- Location: IOOBUF_X105_Y0_N2
\MemtoReg_out[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \MemtoReg_out[22]~output_o\);

-- Location: IOOBUF_X49_Y0_N23
\MemtoReg_out[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \MemtoReg_out[23]~output_o\);

-- Location: IOOBUF_X91_Y0_N23
\MemtoReg_out[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \MemtoReg_out[24]~output_o\);

-- Location: IOOBUF_X67_Y0_N2
\MemtoReg_out[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \MemtoReg_out[25]~output_o\);

-- Location: IOOBUF_X0_Y57_N16
\MemtoReg_out[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \MemtoReg_out[26]~output_o\);

-- Location: IOOBUF_X94_Y0_N2
\MemtoReg_out[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \MemtoReg_out[27]~output_o\);

-- Location: IOOBUF_X102_Y73_N2
\MemtoReg_out[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \MemtoReg_out[28]~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\MemtoReg_out[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \MemtoReg_out[29]~output_o\);

-- Location: IOOBUF_X56_Y0_N9
\MemtoReg_out[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \MemtoReg_out[30]~output_o\);

-- Location: IOOBUF_X67_Y0_N23
\MemtoReg_out[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \MemtoReg_out[31]~output_o\);

-- Location: IOOBUF_X115_Y22_N23
\ALUResult[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal0~0_combout\,
	devoe => ww_devoe,
	o => \ALUResult[0]~output_o\);

-- Location: IOOBUF_X115_Y9_N23
\ALUResult[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal1~0_combout\,
	devoe => ww_devoe,
	o => \ALUResult[1]~output_o\);

-- Location: IOOBUF_X115_Y22_N16
\ALUResult[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal0~0_combout\,
	devoe => ww_devoe,
	o => \ALUResult[2]~output_o\);

-- Location: IOOBUF_X85_Y73_N9
\ALUResult[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALUResult[3]~output_o\);

-- Location: IOOBUF_X115_Y45_N16
\ALUResult[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALUResult[4]~output_o\);

-- Location: IOOBUF_X52_Y0_N2
\ALUResult[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALUResult[5]~output_o\);

-- Location: IOOBUF_X11_Y0_N16
\ALUResult[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALUResult[6]~output_o\);

-- Location: IOOBUF_X83_Y73_N16
\ALUResult[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALUResult[7]~output_o\);

-- Location: IOOBUF_X23_Y73_N9
\ALUResult[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALUResult[8]~output_o\);

-- Location: IOOBUF_X0_Y4_N2
\ALUResult[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALUResult[9]~output_o\);

-- Location: IOOBUF_X9_Y73_N9
\ALUResult[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALUResult[10]~output_o\);

-- Location: IOOBUF_X52_Y73_N9
\ALUResult[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALUResult[11]~output_o\);

-- Location: IOOBUF_X72_Y73_N16
\ALUResult[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALUResult[12]~output_o\);

-- Location: IOOBUF_X54_Y73_N2
\ALUResult[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALUResult[13]~output_o\);

-- Location: IOOBUF_X25_Y73_N16
\ALUResult[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALUResult[14]~output_o\);

-- Location: IOOBUF_X0_Y62_N16
\ALUResult[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALUResult[15]~output_o\);

-- Location: IOOBUF_X0_Y27_N16
\ALUResult[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALUResult[16]~output_o\);

-- Location: IOOBUF_X85_Y73_N23
\ALUResult[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALUResult[17]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\ALUResult[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALUResult[18]~output_o\);

-- Location: IOOBUF_X52_Y73_N23
\ALUResult[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALUResult[19]~output_o\);

-- Location: IOOBUF_X115_Y49_N9
\ALUResult[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALUResult[20]~output_o\);

-- Location: IOOBUF_X23_Y73_N23
\ALUResult[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALUResult[21]~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\ALUResult[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALUResult[22]~output_o\);

-- Location: IOOBUF_X111_Y0_N2
\ALUResult[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALUResult[23]~output_o\);

-- Location: IOOBUF_X83_Y73_N9
\ALUResult[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALUResult[24]~output_o\);

-- Location: IOOBUF_X7_Y0_N16
\ALUResult[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALUResult[25]~output_o\);

-- Location: IOOBUF_X45_Y0_N23
\ALUResult[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALUResult[26]~output_o\);

-- Location: IOOBUF_X11_Y73_N2
\ALUResult[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALUResult[27]~output_o\);

-- Location: IOOBUF_X27_Y0_N23
\ALUResult[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALUResult[28]~output_o\);

-- Location: IOOBUF_X16_Y73_N16
\ALUResult[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALUResult[29]~output_o\);

-- Location: IOOBUF_X0_Y46_N23
\ALUResult[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALUResult[30]~output_o\);

-- Location: IOOBUF_X49_Y0_N16
\ALUResult[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALUResult[31]~output_o\);

-- Location: IOOBUF_X115_Y23_N2
\ALUSrc_out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal0~0_combout\,
	devoe => ww_devoe,
	o => \ALUSrc_out[0]~output_o\);

-- Location: IOOBUF_X115_Y8_N16
\ALUSrc_out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal1~0_combout\,
	devoe => ww_devoe,
	o => \ALUSrc_out[1]~output_o\);

-- Location: IOOBUF_X115_Y24_N2
\ALUSrc_out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal0~0_combout\,
	devoe => ww_devoe,
	o => \ALUSrc_out[2]~output_o\);

-- Location: IOOBUF_X0_Y31_N16
\ALUSrc_out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALUSrc_out[3]~output_o\);

-- Location: IOOBUF_X83_Y0_N2
\ALUSrc_out[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALUSrc_out[4]~output_o\);

-- Location: IOOBUF_X27_Y0_N9
\ALUSrc_out[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALUSrc_out[5]~output_o\);

-- Location: IOOBUF_X52_Y0_N16
\ALUSrc_out[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALUSrc_out[6]~output_o\);

-- Location: IOOBUF_X23_Y73_N2
\ALUSrc_out[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALUSrc_out[7]~output_o\);

-- Location: IOOBUF_X0_Y14_N2
\ALUSrc_out[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALUSrc_out[8]~output_o\);

-- Location: IOOBUF_X115_Y49_N2
\ALUSrc_out[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALUSrc_out[9]~output_o\);

-- Location: IOOBUF_X115_Y34_N16
\ALUSrc_out[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALUSrc_out[10]~output_o\);

-- Location: IOOBUF_X0_Y55_N9
\ALUSrc_out[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALUSrc_out[11]~output_o\);

-- Location: IOOBUF_X111_Y73_N2
\ALUSrc_out[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALUSrc_out[12]~output_o\);

-- Location: IOOBUF_X31_Y0_N2
\ALUSrc_out[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALUSrc_out[13]~output_o\);

-- Location: IOOBUF_X0_Y47_N23
\ALUSrc_out[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALUSrc_out[14]~output_o\);

-- Location: IOOBUF_X115_Y68_N23
\ALUSrc_out[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALUSrc_out[15]~output_o\);

-- Location: IOOBUF_X62_Y73_N23
\ALUSrc_out[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALUSrc_out[16]~output_o\);

-- Location: IOOBUF_X18_Y73_N16
\ALUSrc_out[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALUSrc_out[17]~output_o\);

-- Location: IOOBUF_X113_Y0_N2
\ALUSrc_out[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALUSrc_out[18]~output_o\);

-- Location: IOOBUF_X115_Y62_N9
\ALUSrc_out[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALUSrc_out[19]~output_o\);

-- Location: IOOBUF_X20_Y73_N23
\ALUSrc_out[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALUSrc_out[20]~output_o\);

-- Location: IOOBUF_X0_Y35_N9
\ALUSrc_out[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALUSrc_out[21]~output_o\);

-- Location: IOOBUF_X27_Y73_N9
\ALUSrc_out[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALUSrc_out[22]~output_o\);

-- Location: IOOBUF_X60_Y73_N9
\ALUSrc_out[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALUSrc_out[23]~output_o\);

-- Location: IOOBUF_X49_Y0_N2
\ALUSrc_out[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALUSrc_out[24]~output_o\);

-- Location: IOOBUF_X54_Y73_N9
\ALUSrc_out[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALUSrc_out[25]~output_o\);

-- Location: IOOBUF_X81_Y0_N23
\ALUSrc_out[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALUSrc_out[26]~output_o\);

-- Location: IOOBUF_X20_Y0_N16
\ALUSrc_out[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALUSrc_out[27]~output_o\);

-- Location: IOOBUF_X109_Y0_N9
\ALUSrc_out[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALUSrc_out[28]~output_o\);

-- Location: IOOBUF_X1_Y0_N23
\ALUSrc_out[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALUSrc_out[29]~output_o\);

-- Location: IOOBUF_X79_Y73_N2
\ALUSrc_out[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALUSrc_out[30]~output_o\);

-- Location: IOOBUF_X0_Y35_N16
\ALUSrc_out[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALUSrc_out[31]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\display_ledsource[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \t2|WideOr6~0_combout\,
	devoe => ww_devoe,
	o => \display_ledsource[0]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\display_ledsource[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \t2|WideOr5~0_combout\,
	devoe => ww_devoe,
	o => \display_ledsource[1]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\display_ledsource[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \t2|WideOr4~0_combout\,
	devoe => ww_devoe,
	o => \display_ledsource[2]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\display_ledsource[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \t2|WideOr3~0_combout\,
	devoe => ww_devoe,
	o => \display_ledsource[3]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\display_ledsource[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \t2|WideOr2~0_combout\,
	devoe => ww_devoe,
	o => \display_ledsource[4]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\display_ledsource[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \t2|WideOr1~0_combout\,
	devoe => ww_devoe,
	o => \display_ledsource[5]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\display_ledsource[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \t2|ALT_INV_WideOr0~0_combout\,
	devoe => ww_devoe,
	o => \display_ledsource[6]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\display_ledlwRF[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \t3|WideOr6~0_combout\,
	devoe => ww_devoe,
	o => \display_ledlwRF[0]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\display_ledlwRF[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \t3|WideOr5~0_combout\,
	devoe => ww_devoe,
	o => \display_ledlwRF[1]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\display_ledlwRF[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \display_ledlwRF[2]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\display_ledlwRF[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \t3|ALT_INV_WideOr3~0_combout\,
	devoe => ww_devoe,
	o => \display_ledlwRF[3]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\display_ledlwRF[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \display_ledlwRF[4]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\display_ledlwRF[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \t3|ALT_INV_WideOr5~0_combout\,
	devoe => ww_devoe,
	o => \display_ledlwRF[5]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\display_ledlwRF[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \t3|ALT_INV_WideOr3~0_combout\,
	devoe => ww_devoe,
	o => \display_ledlwRF[6]~output_o\);

-- Location: IOOBUF_X115_Y17_N9
\display_ledswDM[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \t4|WideOr6~0_combout\,
	devoe => ww_devoe,
	o => \display_ledswDM[0]~output_o\);

-- Location: IOOBUF_X115_Y16_N2
\display_ledswDM[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \t4|WideOr5~0_combout\,
	devoe => ww_devoe,
	o => \display_ledswDM[1]~output_o\);

-- Location: IOOBUF_X115_Y19_N9
\display_ledswDM[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \t4|WideOr4~0_combout\,
	devoe => ww_devoe,
	o => \display_ledswDM[2]~output_o\);

-- Location: IOOBUF_X115_Y19_N2
\display_ledswDM[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \t4|WideOr3~0_combout\,
	devoe => ww_devoe,
	o => \display_ledswDM[3]~output_o\);

-- Location: IOOBUF_X115_Y18_N2
\display_ledswDM[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \t4|WideOr2~0_combout\,
	devoe => ww_devoe,
	o => \display_ledswDM[4]~output_o\);

-- Location: IOOBUF_X115_Y20_N2
\display_ledswDM[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \t4|WideOr1~0_combout\,
	devoe => ww_devoe,
	o => \display_ledswDM[5]~output_o\);

-- Location: IOOBUF_X115_Y21_N16
\display_ledswDM[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \t4|ALT_INV_WideOr0~0_combout\,
	devoe => ww_devoe,
	o => \display_ledswDM[6]~output_o\);

-- Location: IOIBUF_X115_Y15_N8
\sw[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(1),
	o => \sw[1]~input_o\);

-- Location: IOIBUF_X115_Y14_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: IOIBUF_X115_Y14_N1
\sw[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(0),
	o => \sw[0]~input_o\);

-- Location: LCCOMB_X114_Y14_N22
\inst_ex[16]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_ex[16]~0_combout\ = \sw[0]~input_o\ $ (\sw[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sw[0]~input_o\,
	datad => \sw[1]~input_o\,
	combout => \inst_ex[16]~0_combout\);

-- Location: IOIBUF_X115_Y17_N1
\rst~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: FF_X114_Y14_N1
\data_mem|dm_regs[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \inst_ex[16]~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \ALT_INV_inst_ex[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_mem|dm_regs[0][0]~q\);

-- Location: LCCOMB_X113_Y14_N24
\data_mem|dm_regs[2][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_mem|dm_regs[2][0]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \data_mem|dm_regs[2][0]~feeder_combout\);

-- Location: LCCOMB_X114_Y14_N12
\Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!\sw[0]~input_o\ & \sw[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sw[0]~input_o\,
	datad => \sw[1]~input_o\,
	combout => \Equal1~0_combout\);

-- Location: FF_X113_Y14_N25
\data_mem|dm_regs[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \data_mem|dm_regs[2][0]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_mem|dm_regs[2][0]~q\);

-- Location: LCCOMB_X114_Y14_N30
\data_mem|Mux31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_mem|Mux31~0_combout\ = (\sw[1]~input_o\ & ((\sw[0]~input_o\ & (\data_mem|dm_regs[0][0]~q\)) # (!\sw[0]~input_o\ & ((\data_mem|dm_regs[2][0]~q\))))) # (!\sw[1]~input_o\ & ((\data_mem|dm_regs[0][0]~q\) # ((\sw[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datab => \data_mem|dm_regs[0][0]~q\,
	datac => \sw[0]~input_o\,
	datad => \data_mem|dm_regs[2][0]~q\,
	combout => \data_mem|Mux31~0_combout\);

-- Location: LCCOMB_X112_Y14_N20
\r_f|rf_regs[1][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_f|rf_regs[1][1]~feeder_combout\ = \Equal1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Equal1~0_combout\,
	combout => \r_f|rf_regs[1][1]~feeder_combout\);

-- Location: LCCOMB_X112_Y14_N24
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (\sw[0]~input_o\ & !\sw[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sw[0]~input_o\,
	datad => \sw[1]~input_o\,
	combout => \Equal0~0_combout\);

-- Location: FF_X112_Y14_N21
\r_f|rf_regs[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \r_f|rf_regs[1][1]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_f|rf_regs[1][1]~q\);

-- Location: LCCOMB_X112_Y14_N18
\r_f|Mux62~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_f|Mux62~0_combout\ = (!\sw[1]~input_o\ & (\sw[0]~input_o\ & \r_f|rf_regs[1][1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sw[1]~input_o\,
	datac => \sw[0]~input_o\,
	datad => \r_f|rf_regs[1][1]~q\,
	combout => \r_f|Mux62~0_combout\);

-- Location: LCCOMB_X113_Y14_N14
\data_mem|dm_regs[2][1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_mem|dm_regs[2][1]~0_combout\ = !\r_f|Mux62~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_f|Mux62~0_combout\,
	combout => \data_mem|dm_regs[2][1]~0_combout\);

-- Location: FF_X113_Y14_N15
\data_mem|dm_regs[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \data_mem|dm_regs[2][1]~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_mem|dm_regs[2][1]~q\);

-- Location: LCCOMB_X111_Y14_N16
\data_mem|dm_regs[0][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_mem|dm_regs[0][1]~feeder_combout\ = \r_f|Mux62~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_f|Mux62~0_combout\,
	combout => \data_mem|dm_regs[0][1]~feeder_combout\);

-- Location: FF_X111_Y14_N17
\data_mem|dm_regs[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \data_mem|dm_regs[0][1]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \ALT_INV_inst_ex[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_mem|dm_regs[0][1]~q\);

-- Location: LCCOMB_X114_Y14_N8
\data_mem|Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_mem|Mux30~0_combout\ = (\sw[0]~input_o\ & (((\data_mem|dm_regs[0][1]~q\ & \sw[1]~input_o\)))) # (!\sw[0]~input_o\ & ((\sw[1]~input_o\ & (!\data_mem|dm_regs[2][1]~q\)) # (!\sw[1]~input_o\ & ((\data_mem|dm_regs[0][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_mem|dm_regs[2][1]~q\,
	datab => \sw[0]~input_o\,
	datac => \data_mem|dm_regs[0][1]~q\,
	datad => \sw[1]~input_o\,
	combout => \data_mem|Mux30~0_combout\);

-- Location: LCCOMB_X112_Y14_N6
\r_f|rf_regs[1][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_f|rf_regs[1][2]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \r_f|rf_regs[1][2]~feeder_combout\);

-- Location: FF_X112_Y14_N7
\r_f|rf_regs[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \r_f|rf_regs[1][2]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_f|rf_regs[1][2]~q\);

-- Location: LCCOMB_X112_Y14_N28
\r_f|Mux61~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_f|Mux61~0_combout\ = (!\sw[1]~input_o\ & (\sw[0]~input_o\ & \r_f|rf_regs[1][2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sw[1]~input_o\,
	datac => \sw[0]~input_o\,
	datad => \r_f|rf_regs[1][2]~q\,
	combout => \r_f|Mux61~0_combout\);

-- Location: LCCOMB_X113_Y14_N0
\data_mem|dm_regs[2][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_mem|dm_regs[2][2]~feeder_combout\ = \r_f|Mux61~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_f|Mux61~0_combout\,
	combout => \data_mem|dm_regs[2][2]~feeder_combout\);

-- Location: FF_X113_Y14_N1
\data_mem|dm_regs[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \data_mem|dm_regs[2][2]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_mem|dm_regs[2][2]~q\);

-- Location: LCCOMB_X111_Y14_N14
\data_mem|dm_regs[0][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_mem|dm_regs[0][2]~feeder_combout\ = \r_f|Mux61~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_f|Mux61~0_combout\,
	combout => \data_mem|dm_regs[0][2]~feeder_combout\);

-- Location: FF_X111_Y14_N15
\data_mem|dm_regs[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \data_mem|dm_regs[0][2]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \ALT_INV_inst_ex[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_mem|dm_regs[0][2]~q\);

-- Location: LCCOMB_X114_Y14_N10
\data_mem|Mux29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_mem|Mux29~0_combout\ = (\sw[0]~input_o\ & (((\data_mem|dm_regs[0][2]~q\) # (!\sw[1]~input_o\)))) # (!\sw[0]~input_o\ & ((\sw[1]~input_o\ & (\data_mem|dm_regs[2][2]~q\)) # (!\sw[1]~input_o\ & ((\data_mem|dm_regs[0][2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_mem|dm_regs[2][2]~q\,
	datab => \sw[0]~input_o\,
	datac => \data_mem|dm_regs[0][2]~q\,
	datad => \sw[1]~input_o\,
	combout => \data_mem|Mux29~0_combout\);

-- Location: LCCOMB_X113_Y14_N10
\data_mem|dm_regs[2][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_mem|dm_regs[2][3]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \data_mem|dm_regs[2][3]~feeder_combout\);

-- Location: FF_X113_Y14_N11
\data_mem|dm_regs[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \data_mem|dm_regs[2][3]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_mem|dm_regs[2][3]~q\);

-- Location: FF_X114_Y14_N29
\data_mem|dm_regs[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \Equal1~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \ALT_INV_inst_ex[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_mem|dm_regs[0][3]~q\);

-- Location: LCCOMB_X114_Y14_N28
\data_mem|Mux28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_mem|Mux28~0_combout\ = (\sw[0]~input_o\ & (((\data_mem|dm_regs[0][3]~q\ & \sw[1]~input_o\)))) # (!\sw[0]~input_o\ & ((\sw[1]~input_o\ & (\data_mem|dm_regs[2][3]~q\)) # (!\sw[1]~input_o\ & ((\data_mem|dm_regs[0][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_mem|dm_regs[2][3]~q\,
	datab => \sw[0]~input_o\,
	datac => \data_mem|dm_regs[0][3]~q\,
	datad => \sw[1]~input_o\,
	combout => \data_mem|Mux28~0_combout\);

-- Location: LCCOMB_X114_Y14_N26
\t2|WideOr6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|WideOr6~0_combout\ = (\data_mem|Mux29~0_combout\ & (!\data_mem|Mux30~0_combout\ & (\data_mem|Mux28~0_combout\ $ (!\data_mem|Mux31~0_combout\)))) # (!\data_mem|Mux29~0_combout\ & (\data_mem|Mux31~0_combout\ & (\data_mem|Mux28~0_combout\ $ 
-- (!\data_mem|Mux30~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_mem|Mux29~0_combout\,
	datab => \data_mem|Mux28~0_combout\,
	datac => \data_mem|Mux31~0_combout\,
	datad => \data_mem|Mux30~0_combout\,
	combout => \t2|WideOr6~0_combout\);

-- Location: LCCOMB_X114_Y14_N4
\t2|WideOr5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|WideOr5~0_combout\ = (\data_mem|Mux28~0_combout\ & ((\data_mem|Mux31~0_combout\ & ((\data_mem|Mux30~0_combout\))) # (!\data_mem|Mux31~0_combout\ & (\data_mem|Mux29~0_combout\)))) # (!\data_mem|Mux28~0_combout\ & (\data_mem|Mux29~0_combout\ & 
-- (\data_mem|Mux31~0_combout\ $ (\data_mem|Mux30~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_mem|Mux29~0_combout\,
	datab => \data_mem|Mux28~0_combout\,
	datac => \data_mem|Mux31~0_combout\,
	datad => \data_mem|Mux30~0_combout\,
	combout => \t2|WideOr5~0_combout\);

-- Location: LCCOMB_X114_Y14_N18
\t2|WideOr4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|WideOr4~0_combout\ = (\data_mem|Mux29~0_combout\ & (\data_mem|Mux28~0_combout\ & ((\data_mem|Mux30~0_combout\) # (!\data_mem|Mux31~0_combout\)))) # (!\data_mem|Mux29~0_combout\ & (!\data_mem|Mux28~0_combout\ & (!\data_mem|Mux31~0_combout\ & 
-- \data_mem|Mux30~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_mem|Mux29~0_combout\,
	datab => \data_mem|Mux28~0_combout\,
	datac => \data_mem|Mux31~0_combout\,
	datad => \data_mem|Mux30~0_combout\,
	combout => \t2|WideOr4~0_combout\);

-- Location: LCCOMB_X114_Y14_N20
\t2|WideOr3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|WideOr3~0_combout\ = (\data_mem|Mux30~0_combout\ & ((\data_mem|Mux29~0_combout\ & ((\data_mem|Mux31~0_combout\))) # (!\data_mem|Mux29~0_combout\ & (\data_mem|Mux28~0_combout\ & !\data_mem|Mux31~0_combout\)))) # (!\data_mem|Mux30~0_combout\ & 
-- (!\data_mem|Mux28~0_combout\ & (\data_mem|Mux29~0_combout\ $ (\data_mem|Mux31~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_mem|Mux29~0_combout\,
	datab => \data_mem|Mux28~0_combout\,
	datac => \data_mem|Mux31~0_combout\,
	datad => \data_mem|Mux30~0_combout\,
	combout => \t2|WideOr3~0_combout\);

-- Location: LCCOMB_X114_Y14_N14
\t2|WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|WideOr2~0_combout\ = (\data_mem|Mux30~0_combout\ & (((!\data_mem|Mux28~0_combout\ & \data_mem|Mux31~0_combout\)))) # (!\data_mem|Mux30~0_combout\ & ((\data_mem|Mux29~0_combout\ & (!\data_mem|Mux28~0_combout\)) # (!\data_mem|Mux29~0_combout\ & 
-- ((\data_mem|Mux31~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_mem|Mux29~0_combout\,
	datab => \data_mem|Mux28~0_combout\,
	datac => \data_mem|Mux31~0_combout\,
	datad => \data_mem|Mux30~0_combout\,
	combout => \t2|WideOr2~0_combout\);

-- Location: LCCOMB_X114_Y14_N24
\t2|WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|WideOr1~0_combout\ = (\data_mem|Mux29~0_combout\ & (\data_mem|Mux31~0_combout\ & (\data_mem|Mux28~0_combout\ $ (\data_mem|Mux30~0_combout\)))) # (!\data_mem|Mux29~0_combout\ & (!\data_mem|Mux28~0_combout\ & ((\data_mem|Mux31~0_combout\) # 
-- (\data_mem|Mux30~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_mem|Mux29~0_combout\,
	datab => \data_mem|Mux28~0_combout\,
	datac => \data_mem|Mux31~0_combout\,
	datad => \data_mem|Mux30~0_combout\,
	combout => \t2|WideOr1~0_combout\);

-- Location: LCCOMB_X114_Y14_N6
\t2|WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|WideOr0~0_combout\ = (\data_mem|Mux31~0_combout\ & ((\data_mem|Mux28~0_combout\) # (\data_mem|Mux29~0_combout\ $ (\data_mem|Mux30~0_combout\)))) # (!\data_mem|Mux31~0_combout\ & ((\data_mem|Mux30~0_combout\) # (\data_mem|Mux29~0_combout\ $ 
-- (\data_mem|Mux28~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_mem|Mux29~0_combout\,
	datab => \data_mem|Mux28~0_combout\,
	datac => \data_mem|Mux31~0_combout\,
	datad => \data_mem|Mux30~0_combout\,
	combout => \t2|WideOr0~0_combout\);

-- Location: LCCOMB_X114_Y13_N4
\t3|WideOr6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t3|WideOr6~0_combout\ = (!\r_f|rf_regs[1][1]~q\ & !\r_f|rf_regs[1][2]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r_f|rf_regs[1][1]~q\,
	datad => \r_f|rf_regs[1][2]~q\,
	combout => \t3|WideOr6~0_combout\);

-- Location: LCCOMB_X114_Y14_N0
\t3|WideOr5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t3|WideOr5~0_combout\ = (\r_f|rf_regs[1][2]~q\ & !\r_f|rf_regs[1][1]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_f|rf_regs[1][2]~q\,
	datad => \r_f|rf_regs[1][1]~q\,
	combout => \t3|WideOr5~0_combout\);

-- Location: LCCOMB_X113_Y14_N16
\t3|WideOr3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t3|WideOr3~0_combout\ = \r_f|rf_regs[1][2]~q\ $ (\r_f|rf_regs[1][1]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r_f|rf_regs[1][2]~q\,
	datad => \r_f|rf_regs[1][1]~q\,
	combout => \t3|WideOr3~0_combout\);

-- Location: LCCOMB_X113_Y14_N22
\t4|WideOr6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t4|WideOr6~0_combout\ = (\data_mem|dm_regs[2][3]~q\ & (\data_mem|dm_regs[2][0]~q\ & (\data_mem|dm_regs[2][2]~q\ $ (!\data_mem|dm_regs[2][1]~q\)))) # (!\data_mem|dm_regs[2][3]~q\ & (\data_mem|dm_regs[2][1]~q\ & (\data_mem|dm_regs[2][2]~q\ $ 
-- (\data_mem|dm_regs[2][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_mem|dm_regs[2][3]~q\,
	datab => \data_mem|dm_regs[2][2]~q\,
	datac => \data_mem|dm_regs[2][1]~q\,
	datad => \data_mem|dm_regs[2][0]~q\,
	combout => \t4|WideOr6~0_combout\);

-- Location: LCCOMB_X113_Y14_N12
\t4|WideOr5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t4|WideOr5~0_combout\ = (\data_mem|dm_regs[2][3]~q\ & ((\data_mem|dm_regs[2][0]~q\ & ((!\data_mem|dm_regs[2][1]~q\))) # (!\data_mem|dm_regs[2][0]~q\ & (\data_mem|dm_regs[2][2]~q\)))) # (!\data_mem|dm_regs[2][3]~q\ & (\data_mem|dm_regs[2][2]~q\ & 
-- (\data_mem|dm_regs[2][1]~q\ $ (!\data_mem|dm_regs[2][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_mem|dm_regs[2][3]~q\,
	datab => \data_mem|dm_regs[2][2]~q\,
	datac => \data_mem|dm_regs[2][1]~q\,
	datad => \data_mem|dm_regs[2][0]~q\,
	combout => \t4|WideOr5~0_combout\);

-- Location: LCCOMB_X114_Y14_N16
\t4|WideOr4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t4|WideOr4~0_combout\ = (\data_mem|dm_regs[2][2]~q\ & (\data_mem|dm_regs[2][3]~q\ & ((!\data_mem|dm_regs[2][0]~q\) # (!\data_mem|dm_regs[2][1]~q\)))) # (!\data_mem|dm_regs[2][2]~q\ & (!\data_mem|dm_regs[2][1]~q\ & (!\data_mem|dm_regs[2][0]~q\ & 
-- !\data_mem|dm_regs[2][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_mem|dm_regs[2][1]~q\,
	datab => \data_mem|dm_regs[2][0]~q\,
	datac => \data_mem|dm_regs[2][2]~q\,
	datad => \data_mem|dm_regs[2][3]~q\,
	combout => \t4|WideOr4~0_combout\);

-- Location: LCCOMB_X114_Y14_N2
\t4|WideOr3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t4|WideOr3~0_combout\ = (\data_mem|dm_regs[2][1]~q\ & (!\data_mem|dm_regs[2][3]~q\ & (\data_mem|dm_regs[2][0]~q\ $ (\data_mem|dm_regs[2][2]~q\)))) # (!\data_mem|dm_regs[2][1]~q\ & ((\data_mem|dm_regs[2][0]~q\ & (\data_mem|dm_regs[2][2]~q\)) # 
-- (!\data_mem|dm_regs[2][0]~q\ & (!\data_mem|dm_regs[2][2]~q\ & \data_mem|dm_regs[2][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000101101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_mem|dm_regs[2][1]~q\,
	datab => \data_mem|dm_regs[2][0]~q\,
	datac => \data_mem|dm_regs[2][2]~q\,
	datad => \data_mem|dm_regs[2][3]~q\,
	combout => \t4|WideOr3~0_combout\);

-- Location: LCCOMB_X113_Y14_N2
\t4|WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t4|WideOr2~0_combout\ = (\data_mem|dm_regs[2][1]~q\ & ((\data_mem|dm_regs[2][2]~q\ & (!\data_mem|dm_regs[2][3]~q\)) # (!\data_mem|dm_regs[2][2]~q\ & ((\data_mem|dm_regs[2][0]~q\))))) # (!\data_mem|dm_regs[2][1]~q\ & (!\data_mem|dm_regs[2][3]~q\ & 
-- ((\data_mem|dm_regs[2][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_mem|dm_regs[2][3]~q\,
	datab => \data_mem|dm_regs[2][2]~q\,
	datac => \data_mem|dm_regs[2][1]~q\,
	datad => \data_mem|dm_regs[2][0]~q\,
	combout => \t4|WideOr2~0_combout\);

-- Location: LCCOMB_X113_Y14_N20
\t4|WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t4|WideOr1~0_combout\ = (\data_mem|dm_regs[2][2]~q\ & (\data_mem|dm_regs[2][0]~q\ & (\data_mem|dm_regs[2][3]~q\ $ (!\data_mem|dm_regs[2][1]~q\)))) # (!\data_mem|dm_regs[2][2]~q\ & (!\data_mem|dm_regs[2][3]~q\ & ((\data_mem|dm_regs[2][0]~q\) # 
-- (!\data_mem|dm_regs[2][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_mem|dm_regs[2][3]~q\,
	datab => \data_mem|dm_regs[2][2]~q\,
	datac => \data_mem|dm_regs[2][1]~q\,
	datad => \data_mem|dm_regs[2][0]~q\,
	combout => \t4|WideOr1~0_combout\);

-- Location: LCCOMB_X113_Y14_N6
\t4|WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t4|WideOr0~0_combout\ = (\data_mem|dm_regs[2][0]~q\ & ((\data_mem|dm_regs[2][3]~q\) # (\data_mem|dm_regs[2][2]~q\ $ (!\data_mem|dm_regs[2][1]~q\)))) # (!\data_mem|dm_regs[2][0]~q\ & ((\data_mem|dm_regs[2][3]~q\ $ (\data_mem|dm_regs[2][2]~q\)) # 
-- (!\data_mem|dm_regs[2][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101101101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_mem|dm_regs[2][3]~q\,
	datab => \data_mem|dm_regs[2][2]~q\,
	datac => \data_mem|dm_regs[2][1]~q\,
	datad => \data_mem|dm_regs[2][0]~q\,
	combout => \t4|WideOr0~0_combout\);

ww_ReadData(0) <= \ReadData[0]~output_o\;

ww_ReadData(1) <= \ReadData[1]~output_o\;

ww_ReadData(2) <= \ReadData[2]~output_o\;

ww_ReadData(3) <= \ReadData[3]~output_o\;

ww_ReadData(4) <= \ReadData[4]~output_o\;

ww_ReadData(5) <= \ReadData[5]~output_o\;

ww_ReadData(6) <= \ReadData[6]~output_o\;

ww_ReadData(7) <= \ReadData[7]~output_o\;

ww_ReadData(8) <= \ReadData[8]~output_o\;

ww_ReadData(9) <= \ReadData[9]~output_o\;

ww_ReadData(10) <= \ReadData[10]~output_o\;

ww_ReadData(11) <= \ReadData[11]~output_o\;

ww_ReadData(12) <= \ReadData[12]~output_o\;

ww_ReadData(13) <= \ReadData[13]~output_o\;

ww_ReadData(14) <= \ReadData[14]~output_o\;

ww_ReadData(15) <= \ReadData[15]~output_o\;

ww_ReadData(16) <= \ReadData[16]~output_o\;

ww_ReadData(17) <= \ReadData[17]~output_o\;

ww_ReadData(18) <= \ReadData[18]~output_o\;

ww_ReadData(19) <= \ReadData[19]~output_o\;

ww_ReadData(20) <= \ReadData[20]~output_o\;

ww_ReadData(21) <= \ReadData[21]~output_o\;

ww_ReadData(22) <= \ReadData[22]~output_o\;

ww_ReadData(23) <= \ReadData[23]~output_o\;

ww_ReadData(24) <= \ReadData[24]~output_o\;

ww_ReadData(25) <= \ReadData[25]~output_o\;

ww_ReadData(26) <= \ReadData[26]~output_o\;

ww_ReadData(27) <= \ReadData[27]~output_o\;

ww_ReadData(28) <= \ReadData[28]~output_o\;

ww_ReadData(29) <= \ReadData[29]~output_o\;

ww_ReadData(30) <= \ReadData[30]~output_o\;

ww_ReadData(31) <= \ReadData[31]~output_o\;

ww_prode_data_memory(0) <= \prode_data_memory[0]~output_o\;

ww_prode_data_memory(1) <= \prode_data_memory[1]~output_o\;

ww_prode_data_memory(2) <= \prode_data_memory[2]~output_o\;

ww_prode_data_memory(3) <= \prode_data_memory[3]~output_o\;

ww_prode_data_memory(4) <= \prode_data_memory[4]~output_o\;

ww_prode_data_memory(5) <= \prode_data_memory[5]~output_o\;

ww_prode_data_memory(6) <= \prode_data_memory[6]~output_o\;

ww_prode_data_memory(7) <= \prode_data_memory[7]~output_o\;

ww_prode_data_memory(8) <= \prode_data_memory[8]~output_o\;

ww_prode_data_memory(9) <= \prode_data_memory[9]~output_o\;

ww_prode_data_memory(10) <= \prode_data_memory[10]~output_o\;

ww_prode_data_memory(11) <= \prode_data_memory[11]~output_o\;

ww_prode_data_memory(12) <= \prode_data_memory[12]~output_o\;

ww_prode_data_memory(13) <= \prode_data_memory[13]~output_o\;

ww_prode_data_memory(14) <= \prode_data_memory[14]~output_o\;

ww_prode_data_memory(15) <= \prode_data_memory[15]~output_o\;

ww_prode_data_memory(16) <= \prode_data_memory[16]~output_o\;

ww_prode_data_memory(17) <= \prode_data_memory[17]~output_o\;

ww_prode_data_memory(18) <= \prode_data_memory[18]~output_o\;

ww_prode_data_memory(19) <= \prode_data_memory[19]~output_o\;

ww_prode_data_memory(20) <= \prode_data_memory[20]~output_o\;

ww_prode_data_memory(21) <= \prode_data_memory[21]~output_o\;

ww_prode_data_memory(22) <= \prode_data_memory[22]~output_o\;

ww_prode_data_memory(23) <= \prode_data_memory[23]~output_o\;

ww_prode_data_memory(24) <= \prode_data_memory[24]~output_o\;

ww_prode_data_memory(25) <= \prode_data_memory[25]~output_o\;

ww_prode_data_memory(26) <= \prode_data_memory[26]~output_o\;

ww_prode_data_memory(27) <= \prode_data_memory[27]~output_o\;

ww_prode_data_memory(28) <= \prode_data_memory[28]~output_o\;

ww_prode_data_memory(29) <= \prode_data_memory[29]~output_o\;

ww_prode_data_memory(30) <= \prode_data_memory[30]~output_o\;

ww_prode_data_memory(31) <= \prode_data_memory[31]~output_o\;

ww_prode_register_file(0) <= \prode_register_file[0]~output_o\;

ww_prode_register_file(1) <= \prode_register_file[1]~output_o\;

ww_prode_register_file(2) <= \prode_register_file[2]~output_o\;

ww_prode_register_file(3) <= \prode_register_file[3]~output_o\;

ww_prode_register_file(4) <= \prode_register_file[4]~output_o\;

ww_prode_register_file(5) <= \prode_register_file[5]~output_o\;

ww_prode_register_file(6) <= \prode_register_file[6]~output_o\;

ww_prode_register_file(7) <= \prode_register_file[7]~output_o\;

ww_prode_register_file(8) <= \prode_register_file[8]~output_o\;

ww_prode_register_file(9) <= \prode_register_file[9]~output_o\;

ww_prode_register_file(10) <= \prode_register_file[10]~output_o\;

ww_prode_register_file(11) <= \prode_register_file[11]~output_o\;

ww_prode_register_file(12) <= \prode_register_file[12]~output_o\;

ww_prode_register_file(13) <= \prode_register_file[13]~output_o\;

ww_prode_register_file(14) <= \prode_register_file[14]~output_o\;

ww_prode_register_file(15) <= \prode_register_file[15]~output_o\;

ww_prode_register_file(16) <= \prode_register_file[16]~output_o\;

ww_prode_register_file(17) <= \prode_register_file[17]~output_o\;

ww_prode_register_file(18) <= \prode_register_file[18]~output_o\;

ww_prode_register_file(19) <= \prode_register_file[19]~output_o\;

ww_prode_register_file(20) <= \prode_register_file[20]~output_o\;

ww_prode_register_file(21) <= \prode_register_file[21]~output_o\;

ww_prode_register_file(22) <= \prode_register_file[22]~output_o\;

ww_prode_register_file(23) <= \prode_register_file[23]~output_o\;

ww_prode_register_file(24) <= \prode_register_file[24]~output_o\;

ww_prode_register_file(25) <= \prode_register_file[25]~output_o\;

ww_prode_register_file(26) <= \prode_register_file[26]~output_o\;

ww_prode_register_file(27) <= \prode_register_file[27]~output_o\;

ww_prode_register_file(28) <= \prode_register_file[28]~output_o\;

ww_prode_register_file(29) <= \prode_register_file[29]~output_o\;

ww_prode_register_file(30) <= \prode_register_file[30]~output_o\;

ww_prode_register_file(31) <= \prode_register_file[31]~output_o\;

ww_RegDst_out(0) <= \RegDst_out[0]~output_o\;

ww_RegDst_out(1) <= \RegDst_out[1]~output_o\;

ww_RegDst_out(2) <= \RegDst_out[2]~output_o\;

ww_RegDst_out(3) <= \RegDst_out[3]~output_o\;

ww_RegDst_out(4) <= \RegDst_out[4]~output_o\;

ww_MemtoReg_out(0) <= \MemtoReg_out[0]~output_o\;

ww_MemtoReg_out(1) <= \MemtoReg_out[1]~output_o\;

ww_MemtoReg_out(2) <= \MemtoReg_out[2]~output_o\;

ww_MemtoReg_out(3) <= \MemtoReg_out[3]~output_o\;

ww_MemtoReg_out(4) <= \MemtoReg_out[4]~output_o\;

ww_MemtoReg_out(5) <= \MemtoReg_out[5]~output_o\;

ww_MemtoReg_out(6) <= \MemtoReg_out[6]~output_o\;

ww_MemtoReg_out(7) <= \MemtoReg_out[7]~output_o\;

ww_MemtoReg_out(8) <= \MemtoReg_out[8]~output_o\;

ww_MemtoReg_out(9) <= \MemtoReg_out[9]~output_o\;

ww_MemtoReg_out(10) <= \MemtoReg_out[10]~output_o\;

ww_MemtoReg_out(11) <= \MemtoReg_out[11]~output_o\;

ww_MemtoReg_out(12) <= \MemtoReg_out[12]~output_o\;

ww_MemtoReg_out(13) <= \MemtoReg_out[13]~output_o\;

ww_MemtoReg_out(14) <= \MemtoReg_out[14]~output_o\;

ww_MemtoReg_out(15) <= \MemtoReg_out[15]~output_o\;

ww_MemtoReg_out(16) <= \MemtoReg_out[16]~output_o\;

ww_MemtoReg_out(17) <= \MemtoReg_out[17]~output_o\;

ww_MemtoReg_out(18) <= \MemtoReg_out[18]~output_o\;

ww_MemtoReg_out(19) <= \MemtoReg_out[19]~output_o\;

ww_MemtoReg_out(20) <= \MemtoReg_out[20]~output_o\;

ww_MemtoReg_out(21) <= \MemtoReg_out[21]~output_o\;

ww_MemtoReg_out(22) <= \MemtoReg_out[22]~output_o\;

ww_MemtoReg_out(23) <= \MemtoReg_out[23]~output_o\;

ww_MemtoReg_out(24) <= \MemtoReg_out[24]~output_o\;

ww_MemtoReg_out(25) <= \MemtoReg_out[25]~output_o\;

ww_MemtoReg_out(26) <= \MemtoReg_out[26]~output_o\;

ww_MemtoReg_out(27) <= \MemtoReg_out[27]~output_o\;

ww_MemtoReg_out(28) <= \MemtoReg_out[28]~output_o\;

ww_MemtoReg_out(29) <= \MemtoReg_out[29]~output_o\;

ww_MemtoReg_out(30) <= \MemtoReg_out[30]~output_o\;

ww_MemtoReg_out(31) <= \MemtoReg_out[31]~output_o\;

ww_ALUResult(0) <= \ALUResult[0]~output_o\;

ww_ALUResult(1) <= \ALUResult[1]~output_o\;

ww_ALUResult(2) <= \ALUResult[2]~output_o\;

ww_ALUResult(3) <= \ALUResult[3]~output_o\;

ww_ALUResult(4) <= \ALUResult[4]~output_o\;

ww_ALUResult(5) <= \ALUResult[5]~output_o\;

ww_ALUResult(6) <= \ALUResult[6]~output_o\;

ww_ALUResult(7) <= \ALUResult[7]~output_o\;

ww_ALUResult(8) <= \ALUResult[8]~output_o\;

ww_ALUResult(9) <= \ALUResult[9]~output_o\;

ww_ALUResult(10) <= \ALUResult[10]~output_o\;

ww_ALUResult(11) <= \ALUResult[11]~output_o\;

ww_ALUResult(12) <= \ALUResult[12]~output_o\;

ww_ALUResult(13) <= \ALUResult[13]~output_o\;

ww_ALUResult(14) <= \ALUResult[14]~output_o\;

ww_ALUResult(15) <= \ALUResult[15]~output_o\;

ww_ALUResult(16) <= \ALUResult[16]~output_o\;

ww_ALUResult(17) <= \ALUResult[17]~output_o\;

ww_ALUResult(18) <= \ALUResult[18]~output_o\;

ww_ALUResult(19) <= \ALUResult[19]~output_o\;

ww_ALUResult(20) <= \ALUResult[20]~output_o\;

ww_ALUResult(21) <= \ALUResult[21]~output_o\;

ww_ALUResult(22) <= \ALUResult[22]~output_o\;

ww_ALUResult(23) <= \ALUResult[23]~output_o\;

ww_ALUResult(24) <= \ALUResult[24]~output_o\;

ww_ALUResult(25) <= \ALUResult[25]~output_o\;

ww_ALUResult(26) <= \ALUResult[26]~output_o\;

ww_ALUResult(27) <= \ALUResult[27]~output_o\;

ww_ALUResult(28) <= \ALUResult[28]~output_o\;

ww_ALUResult(29) <= \ALUResult[29]~output_o\;

ww_ALUResult(30) <= \ALUResult[30]~output_o\;

ww_ALUResult(31) <= \ALUResult[31]~output_o\;

ww_ALUSrc_out(0) <= \ALUSrc_out[0]~output_o\;

ww_ALUSrc_out(1) <= \ALUSrc_out[1]~output_o\;

ww_ALUSrc_out(2) <= \ALUSrc_out[2]~output_o\;

ww_ALUSrc_out(3) <= \ALUSrc_out[3]~output_o\;

ww_ALUSrc_out(4) <= \ALUSrc_out[4]~output_o\;

ww_ALUSrc_out(5) <= \ALUSrc_out[5]~output_o\;

ww_ALUSrc_out(6) <= \ALUSrc_out[6]~output_o\;

ww_ALUSrc_out(7) <= \ALUSrc_out[7]~output_o\;

ww_ALUSrc_out(8) <= \ALUSrc_out[8]~output_o\;

ww_ALUSrc_out(9) <= \ALUSrc_out[9]~output_o\;

ww_ALUSrc_out(10) <= \ALUSrc_out[10]~output_o\;

ww_ALUSrc_out(11) <= \ALUSrc_out[11]~output_o\;

ww_ALUSrc_out(12) <= \ALUSrc_out[12]~output_o\;

ww_ALUSrc_out(13) <= \ALUSrc_out[13]~output_o\;

ww_ALUSrc_out(14) <= \ALUSrc_out[14]~output_o\;

ww_ALUSrc_out(15) <= \ALUSrc_out[15]~output_o\;

ww_ALUSrc_out(16) <= \ALUSrc_out[16]~output_o\;

ww_ALUSrc_out(17) <= \ALUSrc_out[17]~output_o\;

ww_ALUSrc_out(18) <= \ALUSrc_out[18]~output_o\;

ww_ALUSrc_out(19) <= \ALUSrc_out[19]~output_o\;

ww_ALUSrc_out(20) <= \ALUSrc_out[20]~output_o\;

ww_ALUSrc_out(21) <= \ALUSrc_out[21]~output_o\;

ww_ALUSrc_out(22) <= \ALUSrc_out[22]~output_o\;

ww_ALUSrc_out(23) <= \ALUSrc_out[23]~output_o\;

ww_ALUSrc_out(24) <= \ALUSrc_out[24]~output_o\;

ww_ALUSrc_out(25) <= \ALUSrc_out[25]~output_o\;

ww_ALUSrc_out(26) <= \ALUSrc_out[26]~output_o\;

ww_ALUSrc_out(27) <= \ALUSrc_out[27]~output_o\;

ww_ALUSrc_out(28) <= \ALUSrc_out[28]~output_o\;

ww_ALUSrc_out(29) <= \ALUSrc_out[29]~output_o\;

ww_ALUSrc_out(30) <= \ALUSrc_out[30]~output_o\;

ww_ALUSrc_out(31) <= \ALUSrc_out[31]~output_o\;

ww_display_ledsource(0) <= \display_ledsource[0]~output_o\;

ww_display_ledsource(1) <= \display_ledsource[1]~output_o\;

ww_display_ledsource(2) <= \display_ledsource[2]~output_o\;

ww_display_ledsource(3) <= \display_ledsource[3]~output_o\;

ww_display_ledsource(4) <= \display_ledsource[4]~output_o\;

ww_display_ledsource(5) <= \display_ledsource[5]~output_o\;

ww_display_ledsource(6) <= \display_ledsource[6]~output_o\;

ww_display_ledlwRF(0) <= \display_ledlwRF[0]~output_o\;

ww_display_ledlwRF(1) <= \display_ledlwRF[1]~output_o\;

ww_display_ledlwRF(2) <= \display_ledlwRF[2]~output_o\;

ww_display_ledlwRF(3) <= \display_ledlwRF[3]~output_o\;

ww_display_ledlwRF(4) <= \display_ledlwRF[4]~output_o\;

ww_display_ledlwRF(5) <= \display_ledlwRF[5]~output_o\;

ww_display_ledlwRF(6) <= \display_ledlwRF[6]~output_o\;

ww_display_ledswDM(0) <= \display_ledswDM[0]~output_o\;

ww_display_ledswDM(1) <= \display_ledswDM[1]~output_o\;

ww_display_ledswDM(2) <= \display_ledswDM[2]~output_o\;

ww_display_ledswDM(3) <= \display_ledswDM[3]~output_o\;

ww_display_ledswDM(4) <= \display_ledswDM[4]~output_o\;

ww_display_ledswDM(5) <= \display_ledswDM[5]~output_o\;

ww_display_ledswDM(6) <= \display_ledswDM[6]~output_o\;
END structure;


