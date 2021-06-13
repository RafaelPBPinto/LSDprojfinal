-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 17.1.0 Build 590 10/25/2017 SJ Lite Edition"

-- DATE "06/13/2021 15:38:00"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Fase2 IS
    PORT (
	CLOCK_50 : IN std_logic;
	SW : IN std_logic_vector(17 DOWNTO 0);
	KEY : IN std_logic_vector(3 DOWNTO 0);
	LEDR : BUFFER std_logic_vector(17 DOWNTO 0);
	LEDG : BUFFER std_logic_vector(7 DOWNTO 0);
	HEX0 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX1 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX2 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX3 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX4 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX5 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX6 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX7 : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END Fase2;

-- Design Ports Information
-- SW[1]	=>  Location: PIN_P25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AF3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_V24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AH10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_K26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[10]	=>  Location: PIN_AF25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[11]	=>  Location: PIN_AG3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[12]	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[13]	=>  Location: PIN_AC1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[14]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_D23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[8]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[9]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[10]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[11]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[12]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[13]	=>  Location: PIN_AH26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[14]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[15]	=>  Location: PIN_AC19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[16]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[17]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[0]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[1]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[2]	=>  Location: PIN_AC7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[3]	=>  Location: PIN_B26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[4]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[5]	=>  Location: PIN_AD5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[6]	=>  Location: PIN_AF12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[7]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_AD25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_C25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_C27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_AD19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_AE7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_L24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[0]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[1]	=>  Location: PIN_U28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[2]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[3]	=>  Location: PIN_F27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[4]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[5]	=>  Location: PIN_AG8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[6]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[0]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[1]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[2]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[3]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[4]	=>  Location: PIN_D4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[5]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[6]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[0]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[1]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[2]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[3]	=>  Location: PIN_L28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[4]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[5]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[6]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[0]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[1]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[2]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[3]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[4]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[5]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[6]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[16]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[17]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[15]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Fase2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_SW : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX6 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX7 : std_logic_vector(6 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \SW[10]~input_o\ : std_logic;
SIGNAL \SW[11]~input_o\ : std_logic;
SIGNAL \SW[12]~input_o\ : std_logic;
SIGNAL \SW[13]~input_o\ : std_logic;
SIGNAL \SW[14]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \LEDR[8]~output_o\ : std_logic;
SIGNAL \LEDR[9]~output_o\ : std_logic;
SIGNAL \LEDR[10]~output_o\ : std_logic;
SIGNAL \LEDR[11]~output_o\ : std_logic;
SIGNAL \LEDR[12]~output_o\ : std_logic;
SIGNAL \LEDR[13]~output_o\ : std_logic;
SIGNAL \LEDR[14]~output_o\ : std_logic;
SIGNAL \LEDR[15]~output_o\ : std_logic;
SIGNAL \LEDR[16]~output_o\ : std_logic;
SIGNAL \LEDR[17]~output_o\ : std_logic;
SIGNAL \LEDG[0]~output_o\ : std_logic;
SIGNAL \LEDG[1]~output_o\ : std_logic;
SIGNAL \LEDG[2]~output_o\ : std_logic;
SIGNAL \LEDG[3]~output_o\ : std_logic;
SIGNAL \LEDG[4]~output_o\ : std_logic;
SIGNAL \LEDG[5]~output_o\ : std_logic;
SIGNAL \LEDG[6]~output_o\ : std_logic;
SIGNAL \LEDG[7]~output_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX3[0]~output_o\ : std_logic;
SIGNAL \HEX3[1]~output_o\ : std_logic;
SIGNAL \HEX3[2]~output_o\ : std_logic;
SIGNAL \HEX3[3]~output_o\ : std_logic;
SIGNAL \HEX3[4]~output_o\ : std_logic;
SIGNAL \HEX3[5]~output_o\ : std_logic;
SIGNAL \HEX3[6]~output_o\ : std_logic;
SIGNAL \HEX4[0]~output_o\ : std_logic;
SIGNAL \HEX4[1]~output_o\ : std_logic;
SIGNAL \HEX4[2]~output_o\ : std_logic;
SIGNAL \HEX4[3]~output_o\ : std_logic;
SIGNAL \HEX4[4]~output_o\ : std_logic;
SIGNAL \HEX4[5]~output_o\ : std_logic;
SIGNAL \HEX4[6]~output_o\ : std_logic;
SIGNAL \HEX5[0]~output_o\ : std_logic;
SIGNAL \HEX5[1]~output_o\ : std_logic;
SIGNAL \HEX5[2]~output_o\ : std_logic;
SIGNAL \HEX5[3]~output_o\ : std_logic;
SIGNAL \HEX5[4]~output_o\ : std_logic;
SIGNAL \HEX5[5]~output_o\ : std_logic;
SIGNAL \HEX5[6]~output_o\ : std_logic;
SIGNAL \HEX6[0]~output_o\ : std_logic;
SIGNAL \HEX6[1]~output_o\ : std_logic;
SIGNAL \HEX6[2]~output_o\ : std_logic;
SIGNAL \HEX6[3]~output_o\ : std_logic;
SIGNAL \HEX6[4]~output_o\ : std_logic;
SIGNAL \HEX6[5]~output_o\ : std_logic;
SIGNAL \HEX6[6]~output_o\ : std_logic;
SIGNAL \HEX7[0]~output_o\ : std_logic;
SIGNAL \HEX7[1]~output_o\ : std_logic;
SIGNAL \HEX7[2]~output_o\ : std_logic;
SIGNAL \HEX7[3]~output_o\ : std_logic;
SIGNAL \HEX7[4]~output_o\ : std_logic;
SIGNAL \HEX7[5]~output_o\ : std_logic;
SIGNAL \HEX7[6]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \u3|enable_timer~0_combout\ : std_logic;
SIGNAL \u3|enable_timer~feeder_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \u3|enable_timer~q\ : std_logic;
SIGNAL \u2|Add1~0_combout\ : std_logic;
SIGNAL \u2|s_counter~0_combout\ : std_logic;
SIGNAL \u2|Add1~1\ : std_logic;
SIGNAL \u2|Add1~2_combout\ : std_logic;
SIGNAL \u2|s_counter~2_combout\ : std_logic;
SIGNAL \u2|Add1~3\ : std_logic;
SIGNAL \u2|Add1~4_combout\ : std_logic;
SIGNAL \u2|s_counter~3_combout\ : std_logic;
SIGNAL \u2|Add1~5\ : std_logic;
SIGNAL \u2|Add1~6_combout\ : std_logic;
SIGNAL \u2|s_counter~4_combout\ : std_logic;
SIGNAL \u2|Add1~7\ : std_logic;
SIGNAL \u2|Add1~8_combout\ : std_logic;
SIGNAL \u2|s_counter~5_combout\ : std_logic;
SIGNAL \u2|Add1~9\ : std_logic;
SIGNAL \u2|Add1~10_combout\ : std_logic;
SIGNAL \u2|s_counter~6_combout\ : std_logic;
SIGNAL \u2|Add1~11\ : std_logic;
SIGNAL \u2|Add1~12_combout\ : std_logic;
SIGNAL \u2|s_counter~7_combout\ : std_logic;
SIGNAL \u2|Add1~13\ : std_logic;
SIGNAL \u2|Add1~14_combout\ : std_logic;
SIGNAL \u2|s_counter~8_combout\ : std_logic;
SIGNAL \u2|s_cntZero~1_combout\ : std_logic;
SIGNAL \u2|s_counter[3]~1_combout\ : std_logic;
SIGNAL \u2|s_cntZero~0_combout\ : std_logic;
SIGNAL \u2|s_cntZero~2_combout\ : std_logic;
SIGNAL \u2|s_cntZero~q\ : std_logic;
SIGNAL \u3|s_state~25_combout\ : std_logic;
SIGNAL \u3|s_state.E0~q\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[16]~input_o\ : std_logic;
SIGNAL \SW[17]~input_o\ : std_logic;
SIGNAL \SW[15]~input_o\ : std_logic;
SIGNAL \u3|s_state~17_combout\ : std_logic;
SIGNAL \u3|s_state~21_combout\ : std_logic;
SIGNAL \u3|s_state~16_combout\ : std_logic;
SIGNAL \u3|s_state~12_combout\ : std_logic;
SIGNAL \u3|s_state~19_combout\ : std_logic;
SIGNAL \u3|s_state~22_combout\ : std_logic;
SIGNAL \u3|s_state.E3~q\ : std_logic;
SIGNAL \u3|s_state~18_combout\ : std_logic;
SIGNAL \u3|s_state~23_combout\ : std_logic;
SIGNAL \u3|s_state~24_combout\ : std_logic;
SIGNAL \u3|s_state.E1~q\ : std_logic;
SIGNAL \u3|s_state~14_combout\ : std_logic;
SIGNAL \u3|s_state~13_combout\ : std_logic;
SIGNAL \u3|s_state~15_combout\ : std_logic;
SIGNAL \u3|s_state.E2~q\ : std_logic;
SIGNAL \u5|b50cl_d~0_combout\ : std_logic;
SIGNAL \u3|s_state~20_combout\ : std_logic;
SIGNAL \u3|s_state.MEG~q\ : std_logic;
SIGNAL \u3|ledr~0_combout\ : std_logic;
SIGNAL \u3|ledr~q\ : std_logic;
SIGNAL \u3|ledg~q\ : std_logic;
SIGNAL \u3|ola~0_combout\ : std_logic;
SIGNAL \u3|ola~q\ : std_logic;
SIGNAL \u0|s_count[0]~32_combout\ : std_logic;
SIGNAL \u0|s_count[22]~77\ : std_logic;
SIGNAL \u0|s_count[23]~78_combout\ : std_logic;
SIGNAL \u0|s_count[23]~79\ : std_logic;
SIGNAL \u0|s_count[24]~80_combout\ : std_logic;
SIGNAL \u0|s_count[24]~81\ : std_logic;
SIGNAL \u0|s_count[25]~82_combout\ : std_logic;
SIGNAL \u0|s_count[25]~83\ : std_logic;
SIGNAL \u0|s_count[26]~84_combout\ : std_logic;
SIGNAL \u0|s_count[26]~85\ : std_logic;
SIGNAL \u0|s_count[27]~86_combout\ : std_logic;
SIGNAL \u0|s_count[27]~87\ : std_logic;
SIGNAL \u0|s_count[28]~88_combout\ : std_logic;
SIGNAL \u0|s_count[28]~89\ : std_logic;
SIGNAL \u0|s_count[29]~90_combout\ : std_logic;
SIGNAL \u0|s_count[29]~91\ : std_logic;
SIGNAL \u0|s_count[30]~92_combout\ : std_logic;
SIGNAL \u0|s_count[30]~93\ : std_logic;
SIGNAL \u0|s_count[31]~94_combout\ : std_logic;
SIGNAL \u0|LessThan0~1_combout\ : std_logic;
SIGNAL \u0|LessThan0~2_combout\ : std_logic;
SIGNAL \u0|LessThan0~0_combout\ : std_logic;
SIGNAL \u0|LessThan0~3_combout\ : std_logic;
SIGNAL \u0|LessThan0~5_combout\ : std_logic;
SIGNAL \u0|LessThan0~4_combout\ : std_logic;
SIGNAL \u0|LessThan0~6_combout\ : std_logic;
SIGNAL \u0|LessThan0~13_combout\ : std_logic;
SIGNAL \u0|LessThan0~7_combout\ : std_logic;
SIGNAL \u0|LessThan0~8_combout\ : std_logic;
SIGNAL \u0|LessThan0~9_combout\ : std_logic;
SIGNAL \u0|LessThan0~10_combout\ : std_logic;
SIGNAL \u0|LessThan0~11_combout\ : std_logic;
SIGNAL \u0|LessThan0~12_combout\ : std_logic;
SIGNAL \u0|LessThan0~14_combout\ : std_logic;
SIGNAL \u0|LessThan0~15_combout\ : std_logic;
SIGNAL \u0|s_count[0]~33\ : std_logic;
SIGNAL \u0|s_count[1]~34_combout\ : std_logic;
SIGNAL \u0|s_count[1]~35\ : std_logic;
SIGNAL \u0|s_count[2]~36_combout\ : std_logic;
SIGNAL \u0|s_count[2]~37\ : std_logic;
SIGNAL \u0|s_count[3]~38_combout\ : std_logic;
SIGNAL \u0|s_count[3]~39\ : std_logic;
SIGNAL \u0|s_count[4]~40_combout\ : std_logic;
SIGNAL \u0|s_count[4]~41\ : std_logic;
SIGNAL \u0|s_count[5]~42_combout\ : std_logic;
SIGNAL \u0|s_count[5]~43\ : std_logic;
SIGNAL \u0|s_count[6]~44_combout\ : std_logic;
SIGNAL \u0|s_count[6]~45\ : std_logic;
SIGNAL \u0|s_count[7]~46_combout\ : std_logic;
SIGNAL \u0|s_count[7]~47\ : std_logic;
SIGNAL \u0|s_count[8]~48_combout\ : std_logic;
SIGNAL \u0|s_count[8]~49\ : std_logic;
SIGNAL \u0|s_count[9]~50_combout\ : std_logic;
SIGNAL \u0|s_count[9]~51\ : std_logic;
SIGNAL \u0|s_count[10]~52_combout\ : std_logic;
SIGNAL \u0|s_count[10]~53\ : std_logic;
SIGNAL \u0|s_count[11]~54_combout\ : std_logic;
SIGNAL \u0|s_count[11]~55\ : std_logic;
SIGNAL \u0|s_count[12]~56_combout\ : std_logic;
SIGNAL \u0|s_count[12]~57\ : std_logic;
SIGNAL \u0|s_count[13]~58_combout\ : std_logic;
SIGNAL \u0|s_count[13]~59\ : std_logic;
SIGNAL \u0|s_count[14]~60_combout\ : std_logic;
SIGNAL \u0|s_count[14]~61\ : std_logic;
SIGNAL \u0|s_count[15]~62_combout\ : std_logic;
SIGNAL \u0|s_count[15]~63\ : std_logic;
SIGNAL \u0|s_count[16]~64_combout\ : std_logic;
SIGNAL \u0|s_count[16]~65\ : std_logic;
SIGNAL \u0|s_count[17]~66_combout\ : std_logic;
SIGNAL \u0|s_count[17]~67\ : std_logic;
SIGNAL \u0|s_count[18]~68_combout\ : std_logic;
SIGNAL \u0|s_count[18]~69\ : std_logic;
SIGNAL \u0|s_count[19]~70_combout\ : std_logic;
SIGNAL \u0|s_count[19]~71\ : std_logic;
SIGNAL \u0|s_count[20]~72_combout\ : std_logic;
SIGNAL \u0|s_count[20]~73\ : std_logic;
SIGNAL \u0|s_count[21]~74_combout\ : std_logic;
SIGNAL \u0|s_count[21]~75\ : std_logic;
SIGNAL \u0|s_count[22]~76_combout\ : std_logic;
SIGNAL \u0|clkOut~0_combout\ : std_logic;
SIGNAL \u0|clkOut~1_combout\ : std_logic;
SIGNAL \u0|LessThan1~3_combout\ : std_logic;
SIGNAL \u0|LessThan1~4_combout\ : std_logic;
SIGNAL \u0|LessThan1~0_combout\ : std_logic;
SIGNAL \u0|LessThan1~1_combout\ : std_logic;
SIGNAL \u0|LessThan1~2_combout\ : std_logic;
SIGNAL \u0|clkOut~2_combout\ : std_logic;
SIGNAL \u0|clkOut~q\ : std_logic;
SIGNAL \u1|mask[0]~0_combout\ : std_logic;
SIGNAL \u3|epro~q\ : std_logic;
SIGNAL \u1|visor_uni~0_combout\ : std_logic;
SIGNAL \u1|visor_uni~1_combout\ : std_logic;
SIGNAL \u1|visor_uni[6]~feeder_combout\ : std_logic;
SIGNAL \u1|visor_cen~0_combout\ : std_logic;
SIGNAL \u1|visor_dez~0_combout\ : std_logic;
SIGNAL \u1|visor_dez~1_combout\ : std_logic;
SIGNAL \u1|visor_dez[1]~feeder_combout\ : std_logic;
SIGNAL \u1|visor_dez~2_combout\ : std_logic;
SIGNAL \u1|visor_dez[3]~feeder_combout\ : std_logic;
SIGNAL \u1|visor_dez~3_combout\ : std_logic;
SIGNAL \u1|visor_cen~1_combout\ : std_logic;
SIGNAL \u1|visor_mil[1]~0_combout\ : std_logic;
SIGNAL \u1|visor_cen[2]~feeder_combout\ : std_logic;
SIGNAL \u1|visor_cen~2_combout\ : std_logic;
SIGNAL \u1|visor_mil[1]~1_combout\ : std_logic;
SIGNAL \u1|visor_mil[2]~2_combout\ : std_logic;
SIGNAL \u1|visor_mil[3]~3_combout\ : std_logic;
SIGNAL \u1|visor_mil[4]~4_combout\ : std_logic;
SIGNAL \u1|visor_mil[4]~5_combout\ : std_logic;
SIGNAL \u1|visor_mil[6]~6_combout\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \u6|s_dirtyIn~q\ : std_logic;
SIGNAL \u6|s_previousIn~q\ : std_logic;
SIGNAL \u6|Add0~0_combout\ : std_logic;
SIGNAL \u6|s_debounceCnt~24_combout\ : std_logic;
SIGNAL \u6|Add0~1\ : std_logic;
SIGNAL \u6|Add0~2_combout\ : std_logic;
SIGNAL \u6|s_debounceCnt~20_combout\ : std_logic;
SIGNAL \u6|Add0~3\ : std_logic;
SIGNAL \u6|Add0~4_combout\ : std_logic;
SIGNAL \u6|s_debounceCnt~21_combout\ : std_logic;
SIGNAL \u6|Add0~5\ : std_logic;
SIGNAL \u6|Add0~6_combout\ : std_logic;
SIGNAL \u6|s_debounceCnt~22_combout\ : std_logic;
SIGNAL \u6|s_pulsedOut~5_combout\ : std_logic;
SIGNAL \u6|Add0~11\ : std_logic;
SIGNAL \u6|Add0~12_combout\ : std_logic;
SIGNAL \u6|s_debounceCnt~1_combout\ : std_logic;
SIGNAL \u6|Add0~13\ : std_logic;
SIGNAL \u6|Add0~14_combout\ : std_logic;
SIGNAL \u6|s_debounceCnt~12_combout\ : std_logic;
SIGNAL \u6|Add0~15\ : std_logic;
SIGNAL \u6|Add0~16_combout\ : std_logic;
SIGNAL \u6|s_debounceCnt~13_combout\ : std_logic;
SIGNAL \u6|Add0~17\ : std_logic;
SIGNAL \u6|Add0~18_combout\ : std_logic;
SIGNAL \u6|s_debounceCnt~14_combout\ : std_logic;
SIGNAL \u6|LessThan0~1_combout\ : std_logic;
SIGNAL \u6|Add0~27\ : std_logic;
SIGNAL \u6|Add0~28_combout\ : std_logic;
SIGNAL \u6|s_debounceCnt~17_combout\ : std_logic;
SIGNAL \u6|LessThan0~0_combout\ : std_logic;
SIGNAL \u6|LessThan0~2_combout\ : std_logic;
SIGNAL \u6|LessThan0~3_combout\ : std_logic;
SIGNAL \u6|Add0~29\ : std_logic;
SIGNAL \u6|Add0~30_combout\ : std_logic;
SIGNAL \u6|s_debounceCnt~5_combout\ : std_logic;
SIGNAL \u6|Add0~31\ : std_logic;
SIGNAL \u6|Add0~32_combout\ : std_logic;
SIGNAL \u6|s_debounceCnt~6_combout\ : std_logic;
SIGNAL \u6|Add0~33\ : std_logic;
SIGNAL \u6|Add0~34_combout\ : std_logic;
SIGNAL \u6|s_debounceCnt~7_combout\ : std_logic;
SIGNAL \u6|Add0~19\ : std_logic;
SIGNAL \u6|Add0~20_combout\ : std_logic;
SIGNAL \u6|s_debounceCnt~15_combout\ : std_logic;
SIGNAL \u6|LessThan0~4_combout\ : std_logic;
SIGNAL \u6|LessThan0~5_combout\ : std_logic;
SIGNAL \u6|LessThan0~6_combout\ : std_logic;
SIGNAL \u6|LessThan0~7_combout\ : std_logic;
SIGNAL \u6|s_debounceCnt[18]~0_combout\ : std_logic;
SIGNAL \u6|Add0~21\ : std_logic;
SIGNAL \u6|Add0~22_combout\ : std_logic;
SIGNAL \u6|s_debounceCnt~16_combout\ : std_logic;
SIGNAL \u6|Add0~23\ : std_logic;
SIGNAL \u6|Add0~24_combout\ : std_logic;
SIGNAL \u6|s_debounceCnt~8_combout\ : std_logic;
SIGNAL \u6|Add0~25\ : std_logic;
SIGNAL \u6|Add0~26_combout\ : std_logic;
SIGNAL \u6|s_debounceCnt~9_combout\ : std_logic;
SIGNAL \u6|s_pulsedOut~1_combout\ : std_logic;
SIGNAL \u6|s_pulsedOut~0_combout\ : std_logic;
SIGNAL \u6|s_pulsedOut~2_combout\ : std_logic;
SIGNAL \u6|s_pulsedOut~3_combout\ : std_logic;
SIGNAL \u6|s_pulsedOut~4_combout\ : std_logic;
SIGNAL \u6|s_debounceCnt[18]~2_combout\ : std_logic;
SIGNAL \u6|s_debounceCnt[18]~3_combout\ : std_logic;
SIGNAL \u6|Add0~35\ : std_logic;
SIGNAL \u6|Add0~36_combout\ : std_logic;
SIGNAL \u6|s_debounceCnt[18]~18_combout\ : std_logic;
SIGNAL \u6|Add0~37\ : std_logic;
SIGNAL \u6|Add0~38_combout\ : std_logic;
SIGNAL \u6|s_debounceCnt[19]~19_combout\ : std_logic;
SIGNAL \u6|Add0~39\ : std_logic;
SIGNAL \u6|Add0~40_combout\ : std_logic;
SIGNAL \u6|s_debounceCnt[20]~10_combout\ : std_logic;
SIGNAL \u6|Add0~41\ : std_logic;
SIGNAL \u6|Add0~42_combout\ : std_logic;
SIGNAL \u6|s_debounceCnt[21]~11_combout\ : std_logic;
SIGNAL \u6|Add0~43\ : std_logic;
SIGNAL \u6|Add0~44_combout\ : std_logic;
SIGNAL \u6|s_debounceCnt[22]~25_combout\ : std_logic;
SIGNAL \u6|s_debounceCnt[22]~26_combout\ : std_logic;
SIGNAL \u6|s_debounceCnt[18]~4_combout\ : std_logic;
SIGNAL \u6|Add0~7\ : std_logic;
SIGNAL \u6|Add0~8_combout\ : std_logic;
SIGNAL \u6|s_debounceCnt~23_combout\ : std_logic;
SIGNAL \u6|Add0~9\ : std_logic;
SIGNAL \u6|Add0~10_combout\ : std_logic;
SIGNAL \u6|s_debounceCnt~27_combout\ : std_logic;
SIGNAL \u6|s_pulsedOut~6_combout\ : std_logic;
SIGNAL \u6|s_pulsedOut~7_combout\ : std_logic;
SIGNAL \u6|s_pulsedOut~q\ : std_logic;
SIGNAL \u5|Selector2~0_combout\ : std_logic;
SIGNAL \u5|s_state.B50CL~q\ : std_logic;
SIGNAL \u5|Selector3~0_combout\ : std_logic;
SIGNAL \u5|s_state.B10DL~q\ : std_logic;
SIGNAL \u5|Selector0~0_combout\ : std_logic;
SIGNAL \u5|s_state.B33CL~q\ : std_logic;
SIGNAL \u5|Selector1~0_combout\ : std_logic;
SIGNAL \u5|s_state.B25CL~q\ : std_logic;
SIGNAL \u5|b25cl_d~feeder_combout\ : std_logic;
SIGNAL \u5|b25cl_d~q\ : std_logic;
SIGNAL \u5|b50cl_d~q\ : std_logic;
SIGNAL \u5|b33cl_d~0_combout\ : std_logic;
SIGNAL \u5|b33cl_d~q\ : std_logic;
SIGNAL \u4|visor_dez~0_combout\ : std_logic;
SIGNAL \u4|visor_dez[0]~feeder_combout\ : std_logic;
SIGNAL \u4|visor_dez[1]~2_combout\ : std_logic;
SIGNAL \u4|visor_dez[2]~3_combout\ : std_logic;
SIGNAL \u4|visor_dez[5]~feeder_combout\ : std_logic;
SIGNAL \u4|visor_dez[6]~4_combout\ : std_logic;
SIGNAL \u4|visor_cen~0_combout\ : std_logic;
SIGNAL \u4|visor_cen[1]~feeder_combout\ : std_logic;
SIGNAL \u4|visor_dez~1_combout\ : std_logic;
SIGNAL \u4|visor_cen[4]~1_combout\ : std_logic;
SIGNAL \u4|visor_cen[5]~2_combout\ : std_logic;
SIGNAL \u4|visor_mil~0_combout\ : std_logic;
SIGNAL \u4|visor_mil[2]~feeder_combout\ : std_logic;
SIGNAL \u4|visor_mil[3]~feeder_combout\ : std_logic;
SIGNAL \u4|visor_mil[4]~1_combout\ : std_logic;
SIGNAL \u4|visor_mil[5]~2_combout\ : std_logic;
SIGNAL \u4|visor_mil[6]~feeder_combout\ : std_logic;
SIGNAL \u0|s_count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \u4|visor_dez\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \u1|visor_uni\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \u1|visor_dez\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \u1|visor_cen\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \u1|visor_mil\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \u4|visor_cen\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \u1|mask\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \u4|visor_mil\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \u2|s_counter\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u3|timeVal\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u6|s_debounceCnt\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \ALT_INV_KEY[0]~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_SW <= SW;
ww_KEY <= KEY;
LEDR <= ww_LEDR;
LEDG <= ww_LEDG;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
HEX6 <= ww_HEX6;
HEX7 <= ww_HEX7;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);
\ALT_INV_KEY[0]~input_o\ <= NOT \KEY[0]~input_o\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X42_Y73_N9
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u3|ledr~q\,
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOOBUF_X0_Y62_N16
\LEDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

-- Location: IOOBUF_X100_Y73_N16
\LEDR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

-- Location: IOOBUF_X67_Y73_N16
\LEDR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

-- Location: IOOBUF_X0_Y30_N9
\LEDR[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[4]~output_o\);

-- Location: IOOBUF_X96_Y73_N23
\LEDR[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[5]~output_o\);

-- Location: IOOBUF_X13_Y73_N9
\LEDR[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[6]~output_o\);

-- Location: IOOBUF_X7_Y0_N16
\LEDR[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[7]~output_o\);

-- Location: IOOBUF_X111_Y73_N2
\LEDR[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[8]~output_o\);

-- Location: IOOBUF_X0_Y4_N23
\LEDR[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[9]~output_o\);

-- Location: IOOBUF_X0_Y18_N16
\LEDR[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[10]~output_o\);

-- Location: IOOBUF_X45_Y0_N23
\LEDR[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[11]~output_o\);

-- Location: IOOBUF_X0_Y57_N23
\LEDR[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[12]~output_o\);

-- Location: IOOBUF_X113_Y0_N2
\LEDR[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[13]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\LEDR[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[14]~output_o\);

-- Location: IOOBUF_X94_Y0_N9
\LEDR[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[15]~output_o\);

-- Location: IOOBUF_X42_Y0_N16
\LEDR[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[16]~output_o\);

-- Location: IOOBUF_X33_Y0_N9
\LEDR[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[17]~output_o\);

-- Location: IOOBUF_X35_Y0_N23
\LEDG[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[0]~output_o\);

-- Location: IOOBUF_X52_Y0_N2
\LEDG[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[1]~output_o\);

-- Location: IOOBUF_X9_Y0_N2
\LEDG[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[2]~output_o\);

-- Location: IOOBUF_X113_Y73_N9
\LEDG[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[3]~output_o\);

-- Location: IOOBUF_X0_Y35_N2
\LEDG[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[4]~output_o\);

-- Location: IOOBUF_X1_Y0_N23
\LEDG[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[5]~output_o\);

-- Location: IOOBUF_X33_Y0_N2
\LEDG[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[6]~output_o\);

-- Location: IOOBUF_X45_Y73_N9
\LEDG[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u3|ledg~q\,
	devoe => ww_devoe,
	o => \LEDG[7]~output_o\);

-- Location: IOOBUF_X100_Y0_N23
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X105_Y73_N9
\HEX0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X115_Y61_N16
\HEX0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X25_Y73_N23
\HEX0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|visor_uni\(3),
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X69_Y73_N2
\HEX0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X94_Y0_N2
\HEX0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X27_Y73_N9
\HEX0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|visor_uni\(6),
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X33_Y73_N2
\HEX1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|visor_dez\(0),
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X31_Y73_N2
\HEX1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|visor_dez\(1),
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

-- Location: IOOBUF_X33_Y73_N9
\HEX1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|visor_dez\(2),
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

-- Location: IOOBUF_X38_Y73_N2
\HEX1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|visor_dez\(3),
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

-- Location: IOOBUF_X52_Y0_N9
\HEX1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

-- Location: IOOBUF_X105_Y0_N23
\HEX1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

-- Location: IOOBUF_X35_Y73_N23
\HEX1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|visor_dez\(6),
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOOBUF_X38_Y73_N23
\HEX2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|visor_cen\(0),
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

-- Location: IOOBUF_X29_Y73_N9
\HEX2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|visor_cen\(1),
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

-- Location: IOOBUF_X38_Y73_N9
\HEX2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|visor_cen\(2),
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

-- Location: IOOBUF_X31_Y73_N9
\HEX2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|visor_cen\(3),
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

-- Location: IOOBUF_X20_Y0_N16
\HEX2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

-- Location: IOOBUF_X11_Y73_N23
\HEX2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

-- Location: IOOBUF_X38_Y73_N16
\HEX2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|visor_cen\(6),
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

-- Location: IOOBUF_X115_Y48_N2
\HEX3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX3[0]~output_o\);

-- Location: IOOBUF_X27_Y73_N23
\HEX3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|visor_mil\(1),
	devoe => ww_devoe,
	o => \HEX3[1]~output_o\);

-- Location: IOOBUF_X35_Y73_N16
\HEX3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|visor_mil\(2),
	devoe => ww_devoe,
	o => \HEX3[2]~output_o\);

-- Location: IOOBUF_X29_Y73_N2
\HEX3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|visor_mil\(3),
	devoe => ww_devoe,
	o => \HEX3[3]~output_o\);

-- Location: IOOBUF_X25_Y73_N16
\HEX3[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|visor_mil\(4),
	devoe => ww_devoe,
	o => \HEX3[4]~output_o\);

-- Location: IOOBUF_X3_Y73_N23
\HEX3[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX3[5]~output_o\);

-- Location: IOOBUF_X27_Y73_N16
\HEX3[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|visor_mil\(6),
	devoe => ww_devoe,
	o => \HEX3[6]~output_o\);

-- Location: IOOBUF_X45_Y0_N16
\HEX4[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX4[0]~output_o\);

-- Location: IOOBUF_X115_Y28_N2
\HEX4[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX4[1]~output_o\);

-- Location: IOOBUF_X85_Y73_N23
\HEX4[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX4[2]~output_o\);

-- Location: IOOBUF_X115_Y56_N16
\HEX4[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX4[3]~output_o\);

-- Location: IOOBUF_X72_Y73_N23
\HEX4[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX4[4]~output_o\);

-- Location: IOOBUF_X18_Y0_N2
\HEX4[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX4[5]~output_o\);

-- Location: IOOBUF_X3_Y73_N2
\HEX4[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX4[6]~output_o\);

-- Location: IOOBUF_X52_Y73_N16
\HEX5[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|visor_dez\(0),
	devoe => ww_devoe,
	o => \HEX5[0]~output_o\);

-- Location: IOOBUF_X58_Y73_N23
\HEX5[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|visor_dez\(1),
	devoe => ww_devoe,
	o => \HEX5[1]~output_o\);

-- Location: IOOBUF_X58_Y73_N9
\HEX5[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|visor_dez\(2),
	devoe => ww_devoe,
	o => \HEX5[2]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\HEX5[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX5[3]~output_o\);

-- Location: IOOBUF_X1_Y73_N2
\HEX5[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX5[4]~output_o\);

-- Location: IOOBUF_X58_Y73_N2
\HEX5[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|visor_dez\(5),
	devoe => ww_devoe,
	o => \HEX5[5]~output_o\);

-- Location: IOOBUF_X52_Y73_N9
\HEX5[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|visor_dez\(6),
	devoe => ww_devoe,
	o => \HEX5[6]~output_o\);

-- Location: IOOBUF_X115_Y35_N23
\HEX6[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX6[0]~output_o\);

-- Location: IOOBUF_X60_Y73_N16
\HEX6[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|visor_cen\(1),
	devoe => ww_devoe,
	o => \HEX6[1]~output_o\);

-- Location: IOOBUF_X115_Y16_N2
\HEX6[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX6[2]~output_o\);

-- Location: IOOBUF_X115_Y47_N16
\HEX6[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX6[3]~output_o\);

-- Location: IOOBUF_X49_Y73_N16
\HEX6[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|visor_cen\(4),
	devoe => ww_devoe,
	o => \HEX6[4]~output_o\);

-- Location: IOOBUF_X54_Y73_N9
\HEX6[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|visor_cen\(5),
	devoe => ww_devoe,
	o => \HEX6[5]~output_o\);

-- Location: IOOBUF_X52_Y73_N23
\HEX6[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|visor_cen\(6),
	devoe => ww_devoe,
	o => \HEX6[6]~output_o\);

-- Location: IOOBUF_X0_Y50_N16
\HEX7[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX7[0]~output_o\);

-- Location: IOOBUF_X47_Y73_N16
\HEX7[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|visor_mil\(1),
	devoe => ww_devoe,
	o => \HEX7[1]~output_o\);

-- Location: IOOBUF_X52_Y73_N2
\HEX7[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|visor_mil\(2),
	devoe => ww_devoe,
	o => \HEX7[2]~output_o\);

-- Location: IOOBUF_X54_Y73_N2
\HEX7[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|visor_mil\(3),
	devoe => ww_devoe,
	o => \HEX7[3]~output_o\);

-- Location: IOOBUF_X60_Y73_N9
\HEX7[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|visor_mil\(4),
	devoe => ww_devoe,
	o => \HEX7[4]~output_o\);

-- Location: IOOBUF_X49_Y73_N23
\HEX7[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|visor_mil\(5),
	devoe => ww_devoe,
	o => \HEX7[5]~output_o\);

-- Location: IOOBUF_X58_Y73_N16
\HEX7[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|visor_mil\(6),
	devoe => ww_devoe,
	o => \HEX7[6]~output_o\);

-- Location: IOIBUF_X0_Y36_N8
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G2
\CLOCK_50~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~inputclkctrl_outclk\);

-- Location: LCCOMB_X41_Y72_N2
\u3|enable_timer~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|enable_timer~0_combout\ = (\u3|s_state.E2~q\) # (!\u3|s_state.E0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u3|s_state.E0~q\,
	datad => \u3|s_state.E2~q\,
	combout => \u3|enable_timer~0_combout\);

-- Location: LCCOMB_X40_Y72_N22
\u3|enable_timer~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|enable_timer~feeder_combout\ = \u3|enable_timer~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u3|enable_timer~0_combout\,
	combout => \u3|enable_timer~feeder_combout\);

-- Location: IOIBUF_X47_Y73_N1
\KEY[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: FF_X40_Y72_N23
\u3|enable_timer\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u3|enable_timer~feeder_combout\,
	ena => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|enable_timer~q\);

-- Location: LCCOMB_X41_Y72_N4
\u2|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Add1~0_combout\ = \u2|s_counter\(0) $ (GND)
-- \u2|Add1~1\ = CARRY(!\u2|s_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|s_counter\(0),
	datad => VCC,
	combout => \u2|Add1~0_combout\,
	cout => \u2|Add1~1\);

-- Location: LCCOMB_X41_Y72_N26
\u2|s_counter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|s_counter~0_combout\ = (\KEY[0]~input_o\ & (!\u3|enable_timer~q\ & !\u2|Add1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \u3|enable_timer~q\,
	datac => \u2|Add1~0_combout\,
	combout => \u2|s_counter~0_combout\);

-- Location: LCCOMB_X41_Y72_N6
\u2|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Add1~2_combout\ = (\u2|s_counter\(1) & (!\u2|Add1~1\)) # (!\u2|s_counter\(1) & (\u2|Add1~1\ & VCC))
-- \u2|Add1~3\ = CARRY((\u2|s_counter\(1) & !\u2|Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|s_counter\(1),
	datad => VCC,
	cin => \u2|Add1~1\,
	combout => \u2|Add1~2_combout\,
	cout => \u2|Add1~3\);

-- Location: FF_X42_Y72_N15
\u3|timeVal[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \u3|s_state.E2~q\,
	sload => VCC,
	ena => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|timeVal\(1));

-- Location: LCCOMB_X41_Y72_N0
\u2|s_counter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|s_counter~2_combout\ = (\KEY[0]~input_o\ & ((\u3|enable_timer~q\ & ((\u3|timeVal\(1)))) # (!\u3|enable_timer~q\ & (!\u2|Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Add1~2_combout\,
	datab => \u3|timeVal\(1),
	datac => \KEY[0]~input_o\,
	datad => \u3|enable_timer~q\,
	combout => \u2|s_counter~2_combout\);

-- Location: FF_X41_Y72_N1
\u2|s_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u2|s_counter~2_combout\,
	ena => \u2|s_counter[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|s_counter\(1));

-- Location: LCCOMB_X41_Y72_N8
\u2|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Add1~4_combout\ = (\u2|s_counter\(2) & (\u2|Add1~3\ $ (GND))) # (!\u2|s_counter\(2) & ((GND) # (!\u2|Add1~3\)))
-- \u2|Add1~5\ = CARRY((!\u2|Add1~3\) # (!\u2|s_counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|s_counter\(2),
	datad => VCC,
	cin => \u2|Add1~3\,
	combout => \u2|Add1~4_combout\,
	cout => \u2|Add1~5\);

-- Location: LCCOMB_X41_Y72_N22
\u2|s_counter~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|s_counter~3_combout\ = (\KEY[0]~input_o\ & ((\u3|enable_timer~q\ & ((!\u3|timeVal\(1)))) # (!\u3|enable_timer~q\ & (!\u2|Add1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \u2|Add1~4_combout\,
	datac => \u3|timeVal\(1),
	datad => \u3|enable_timer~q\,
	combout => \u2|s_counter~3_combout\);

-- Location: FF_X41_Y72_N23
\u2|s_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u2|s_counter~3_combout\,
	ena => \u2|s_counter[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|s_counter\(2));

-- Location: LCCOMB_X41_Y72_N10
\u2|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Add1~6_combout\ = (\u2|s_counter\(3) & (!\u2|Add1~5\)) # (!\u2|s_counter\(3) & (\u2|Add1~5\ & VCC))
-- \u2|Add1~7\ = CARRY((\u2|s_counter\(3) & !\u2|Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|s_counter\(3),
	datad => VCC,
	cin => \u2|Add1~5\,
	combout => \u2|Add1~6_combout\,
	cout => \u2|Add1~7\);

-- Location: LCCOMB_X41_Y72_N20
\u2|s_counter~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|s_counter~4_combout\ = (\KEY[0]~input_o\ & ((\u3|enable_timer~q\) # (!\u2|Add1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u3|enable_timer~q\,
	datac => \KEY[0]~input_o\,
	datad => \u2|Add1~6_combout\,
	combout => \u2|s_counter~4_combout\);

-- Location: FF_X41_Y72_N21
\u2|s_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u2|s_counter~4_combout\,
	ena => \u2|s_counter[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|s_counter\(3));

-- Location: LCCOMB_X41_Y72_N12
\u2|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Add1~8_combout\ = (\u2|s_counter\(4) & (\u2|Add1~7\ $ (GND))) # (!\u2|s_counter\(4) & ((GND) # (!\u2|Add1~7\)))
-- \u2|Add1~9\ = CARRY((!\u2|Add1~7\) # (!\u2|s_counter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|s_counter\(4),
	datad => VCC,
	cin => \u2|Add1~7\,
	combout => \u2|Add1~8_combout\,
	cout => \u2|Add1~9\);

-- Location: LCCOMB_X41_Y72_N24
\u2|s_counter~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|s_counter~5_combout\ = (\KEY[0]~input_o\ & ((\u3|enable_timer~q\) # (!\u2|Add1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u3|enable_timer~q\,
	datac => \KEY[0]~input_o\,
	datad => \u2|Add1~8_combout\,
	combout => \u2|s_counter~5_combout\);

-- Location: FF_X41_Y72_N25
\u2|s_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u2|s_counter~5_combout\,
	ena => \u2|s_counter[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|s_counter\(4));

-- Location: LCCOMB_X41_Y72_N14
\u2|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Add1~10_combout\ = (\u2|s_counter\(5) & (!\u2|Add1~9\)) # (!\u2|s_counter\(5) & (\u2|Add1~9\ & VCC))
-- \u2|Add1~11\ = CARRY((\u2|s_counter\(5) & !\u2|Add1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|s_counter\(5),
	datad => VCC,
	cin => \u2|Add1~9\,
	combout => \u2|Add1~10_combout\,
	cout => \u2|Add1~11\);

-- Location: LCCOMB_X40_Y72_N6
\u2|s_counter~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|s_counter~6_combout\ = (\KEY[0]~input_o\ & ((\u3|enable_timer~q\) # (!\u2|Add1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|enable_timer~q\,
	datab => \u2|Add1~10_combout\,
	datad => \KEY[0]~input_o\,
	combout => \u2|s_counter~6_combout\);

-- Location: FF_X40_Y72_N7
\u2|s_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u2|s_counter~6_combout\,
	ena => \u2|s_counter[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|s_counter\(5));

-- Location: LCCOMB_X41_Y72_N16
\u2|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Add1~12_combout\ = (\u2|s_counter\(6) & (\u2|Add1~11\ $ (GND))) # (!\u2|s_counter\(6) & ((GND) # (!\u2|Add1~11\)))
-- \u2|Add1~13\ = CARRY((!\u2|Add1~11\) # (!\u2|s_counter\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|s_counter\(6),
	datad => VCC,
	cin => \u2|Add1~11\,
	combout => \u2|Add1~12_combout\,
	cout => \u2|Add1~13\);

-- Location: LCCOMB_X40_Y72_N16
\u2|s_counter~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|s_counter~7_combout\ = (\KEY[0]~input_o\ & ((\u3|enable_timer~q\) # (!\u2|Add1~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[0]~input_o\,
	datac => \u3|enable_timer~q\,
	datad => \u2|Add1~12_combout\,
	combout => \u2|s_counter~7_combout\);

-- Location: FF_X40_Y72_N17
\u2|s_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u2|s_counter~7_combout\,
	ena => \u2|s_counter[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|s_counter\(6));

-- Location: LCCOMB_X41_Y72_N18
\u2|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Add1~14_combout\ = \u2|Add1~13\ $ (\u2|s_counter\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u2|s_counter\(7),
	cin => \u2|Add1~13\,
	combout => \u2|Add1~14_combout\);

-- Location: LCCOMB_X40_Y72_N14
\u2|s_counter~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|s_counter~8_combout\ = (\KEY[0]~input_o\ & ((\u3|enable_timer~q\) # (!\u2|Add1~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[0]~input_o\,
	datac => \u3|enable_timer~q\,
	datad => \u2|Add1~14_combout\,
	combout => \u2|s_counter~8_combout\);

-- Location: FF_X40_Y72_N15
\u2|s_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u2|s_counter~8_combout\,
	ena => \u2|s_counter[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|s_counter\(7));

-- Location: LCCOMB_X40_Y72_N12
\u2|s_cntZero~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|s_cntZero~1_combout\ = (\u2|s_counter\(5) & (\u2|s_counter\(6) & (\u2|s_counter\(7) & \u2|s_counter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|s_counter\(5),
	datab => \u2|s_counter\(6),
	datac => \u2|s_counter\(7),
	datad => \u2|s_counter\(4),
	combout => \u2|s_cntZero~1_combout\);

-- Location: LCCOMB_X40_Y72_N4
\u2|s_counter[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|s_counter[3]~1_combout\ = (\u3|enable_timer~q\) # (((!\u2|s_cntZero~1_combout\) # (!\u2|s_cntZero~0_combout\)) # (!\KEY[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|enable_timer~q\,
	datab => \KEY[0]~input_o\,
	datac => \u2|s_cntZero~0_combout\,
	datad => \u2|s_cntZero~1_combout\,
	combout => \u2|s_counter[3]~1_combout\);

-- Location: FF_X41_Y72_N27
\u2|s_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u2|s_counter~0_combout\,
	ena => \u2|s_counter[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|s_counter\(0));

-- Location: LCCOMB_X41_Y72_N30
\u2|s_cntZero~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|s_cntZero~0_combout\ = (\u2|s_counter\(0) & (\u2|s_counter\(3) & (\u2|s_counter\(2) & \u2|s_counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|s_counter\(0),
	datab => \u2|s_counter\(3),
	datac => \u2|s_counter\(2),
	datad => \u2|s_counter\(1),
	combout => \u2|s_cntZero~0_combout\);

-- Location: LCCOMB_X41_Y72_N28
\u2|s_cntZero~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|s_cntZero~2_combout\ = (!\u3|enable_timer~q\ & (\u2|s_cntZero~0_combout\ & \u2|s_cntZero~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u3|enable_timer~q\,
	datac => \u2|s_cntZero~0_combout\,
	datad => \u2|s_cntZero~1_combout\,
	combout => \u2|s_cntZero~2_combout\);

-- Location: FF_X41_Y72_N29
\u2|s_cntZero\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u2|s_cntZero~2_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|s_cntZero~q\);

-- Location: LCCOMB_X42_Y72_N24
\u3|s_state~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|s_state~25_combout\ = (\KEY[0]~input_o\ & ((\u2|s_cntZero~q\) # (\u3|s_state.E0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u2|s_cntZero~q\,
	datac => \u3|s_state.E0~q\,
	datad => \KEY[0]~input_o\,
	combout => \u3|s_state~25_combout\);

-- Location: FF_X42_Y72_N25
\u3|s_state.E0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u3|s_state~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|s_state.E0~q\);

-- Location: IOIBUF_X45_Y73_N1
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: IOIBUF_X40_Y73_N1
\SW[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(16),
	o => \SW[16]~input_o\);

-- Location: IOIBUF_X40_Y73_N8
\SW[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(17),
	o => \SW[17]~input_o\);

-- Location: IOIBUF_X42_Y73_N1
\SW[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(15),
	o => \SW[15]~input_o\);

-- Location: LCCOMB_X42_Y72_N2
\u3|s_state~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|s_state~17_combout\ = (!\SW[0]~input_o\ & (!\SW[16]~input_o\ & (!\SW[17]~input_o\ & !\SW[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[16]~input_o\,
	datac => \SW[17]~input_o\,
	datad => \SW[15]~input_o\,
	combout => \u3|s_state~17_combout\);

-- Location: LCCOMB_X42_Y72_N12
\u3|s_state~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|s_state~21_combout\ = (!\SW[0]~input_o\ & ((\u3|s_state.MEG~q\) # ((\u2|s_cntZero~q\ & \u3|s_state.E2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|s_state.MEG~q\,
	datab => \u2|s_cntZero~q\,
	datac => \u3|s_state.E2~q\,
	datad => \SW[0]~input_o\,
	combout => \u3|s_state~21_combout\);

-- Location: LCCOMB_X42_Y72_N4
\u3|s_state~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|s_state~16_combout\ = (\u3|s_state.E2~q\ & ((\SW[0]~input_o\) # (\u2|s_cntZero~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \u2|s_cntZero~q\,
	datad => \u3|s_state.E2~q\,
	combout => \u3|s_state~16_combout\);

-- Location: LCCOMB_X42_Y72_N18
\u3|s_state~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|s_state~12_combout\ = (\KEY[0]~input_o\ & ((\SW[0]~input_o\) # (!\u3|s_state.MEG~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \KEY[0]~input_o\,
	datad => \u3|s_state.MEG~q\,
	combout => \u3|s_state~12_combout\);

-- Location: LCCOMB_X42_Y72_N20
\u3|s_state~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|s_state~19_combout\ = (!\u3|s_state~18_combout\ & (!\u3|s_state~16_combout\ & (!\u3|s_state.E1~q\ & \u3|s_state~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|s_state~18_combout\,
	datab => \u3|s_state~16_combout\,
	datac => \u3|s_state.E1~q\,
	datad => \u3|s_state~12_combout\,
	combout => \u3|s_state~19_combout\);

-- Location: LCCOMB_X42_Y72_N8
\u3|s_state~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|s_state~22_combout\ = (\u3|s_state~21_combout\ & ((\KEY[0]~input_o\) # ((\u3|s_state.E3~q\ & \u3|s_state~19_combout\)))) # (!\u3|s_state~21_combout\ & (((\u3|s_state.E3~q\ & \u3|s_state~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|s_state~21_combout\,
	datab => \KEY[0]~input_o\,
	datac => \u3|s_state.E3~q\,
	datad => \u3|s_state~19_combout\,
	combout => \u3|s_state~22_combout\);

-- Location: FF_X42_Y72_N9
\u3|s_state.E3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u3|s_state~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|s_state.E3~q\);

-- Location: LCCOMB_X42_Y72_N30
\u3|s_state~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|s_state~18_combout\ = (\u3|s_state.E3~q\ & (((\u3|s_state~17_combout\)))) # (!\u3|s_state.E3~q\ & (!\u3|s_state.E0~q\ & ((\u2|s_cntZero~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|s_state.E0~q\,
	datab => \u3|s_state~17_combout\,
	datac => \u3|s_state.E3~q\,
	datad => \u2|s_cntZero~q\,
	combout => \u3|s_state~18_combout\);

-- Location: LCCOMB_X42_Y72_N14
\u3|s_state~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|s_state~23_combout\ = (!\SW[17]~input_o\ & (!\SW[16]~input_o\ & !\SW[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[17]~input_o\,
	datab => \SW[16]~input_o\,
	datad => \SW[15]~input_o\,
	combout => \u3|s_state~23_combout\);

-- Location: LCCOMB_X42_Y72_N22
\u3|s_state~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|s_state~24_combout\ = (\u3|s_state~12_combout\ & ((\u3|s_state.E1~q\ & ((\u3|s_state~23_combout\))) # (!\u3|s_state.E1~q\ & (\u3|s_state~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|s_state~18_combout\,
	datab => \u3|s_state~23_combout\,
	datac => \u3|s_state.E1~q\,
	datad => \u3|s_state~12_combout\,
	combout => \u3|s_state~24_combout\);

-- Location: FF_X42_Y72_N23
\u3|s_state.E1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u3|s_state~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|s_state.E1~q\);

-- Location: LCCOMB_X42_Y72_N26
\u3|s_state~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|s_state~14_combout\ = (\u3|s_state.E1~q\ & ((\SW[16]~input_o\) # ((\SW[17]~input_o\) # (\SW[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|s_state.E1~q\,
	datab => \SW[16]~input_o\,
	datac => \SW[17]~input_o\,
	datad => \SW[15]~input_o\,
	combout => \u3|s_state~14_combout\);

-- Location: LCCOMB_X42_Y72_N16
\u3|s_state~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|s_state~13_combout\ = (!\SW[0]~input_o\ & (!\u2|s_cntZero~q\ & \u3|s_state.E2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \u2|s_cntZero~q\,
	datad => \u3|s_state.E2~q\,
	combout => \u3|s_state~13_combout\);

-- Location: LCCOMB_X42_Y72_N28
\u3|s_state~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|s_state~15_combout\ = (\u3|s_state~12_combout\ & ((\u3|s_state~13_combout\) # ((\u3|s_state~14_combout\ & !\u3|s_state.E2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|s_state~14_combout\,
	datab => \u3|s_state~12_combout\,
	datac => \u3|s_state.E2~q\,
	datad => \u3|s_state~13_combout\,
	combout => \u3|s_state~15_combout\);

-- Location: FF_X42_Y72_N29
\u3|s_state.E2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u3|s_state~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|s_state.E2~q\);

-- Location: LCCOMB_X52_Y72_N24
\u5|b50cl_d~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|b50cl_d~0_combout\ = (\SW[0]~input_o\ & \KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[0]~input_o\,
	datac => \KEY[0]~input_o\,
	combout => \u5|b50cl_d~0_combout\);

-- Location: LCCOMB_X42_Y72_N10
\u3|s_state~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|s_state~20_combout\ = (\u3|s_state.E2~q\ & ((\u5|b50cl_d~0_combout\) # ((\u3|s_state~19_combout\ & \u3|s_state.MEG~q\)))) # (!\u3|s_state.E2~q\ & (\u3|s_state~19_combout\ & (\u3|s_state.MEG~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|s_state.E2~q\,
	datab => \u3|s_state~19_combout\,
	datac => \u3|s_state.MEG~q\,
	datad => \u5|b50cl_d~0_combout\,
	combout => \u3|s_state~20_combout\);

-- Location: FF_X42_Y72_N11
\u3|s_state.MEG\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u3|s_state~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|s_state.MEG~q\);

-- Location: LCCOMB_X42_Y72_N0
\u3|ledr~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|ledr~0_combout\ = (\u3|s_state.MEG~q\) # (\u3|s_state.E2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|s_state.MEG~q\,
	datad => \u3|s_state.E2~q\,
	combout => \u3|ledr~0_combout\);

-- Location: FF_X42_Y72_N1
\u3|ledr\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u3|ledr~0_combout\,
	ena => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|ledr~q\);

-- Location: FF_X42_Y72_N7
\u3|ledg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \u3|s_state.E3~q\,
	sload => VCC,
	ena => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|ledg~q\);

-- Location: LCCOMB_X40_Y72_N24
\u3|ola~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|ola~0_combout\ = !\u3|s_state.E0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u3|s_state.E0~q\,
	combout => \u3|ola~0_combout\);

-- Location: FF_X40_Y72_N25
\u3|ola\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u3|ola~0_combout\,
	ena => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|ola~q\);

-- Location: LCCOMB_X49_Y48_N0
\u0|s_count[0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|s_count[0]~32_combout\ = \u0|s_count\(0) $ (VCC)
-- \u0|s_count[0]~33\ = CARRY(\u0|s_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|s_count\(0),
	datad => VCC,
	combout => \u0|s_count[0]~32_combout\,
	cout => \u0|s_count[0]~33\);

-- Location: LCCOMB_X49_Y47_N12
\u0|s_count[22]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|s_count[22]~76_combout\ = (\u0|s_count\(22) & (\u0|s_count[21]~75\ $ (GND))) # (!\u0|s_count\(22) & (!\u0|s_count[21]~75\ & VCC))
-- \u0|s_count[22]~77\ = CARRY((\u0|s_count\(22) & !\u0|s_count[21]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|s_count\(22),
	datad => VCC,
	cin => \u0|s_count[21]~75\,
	combout => \u0|s_count[22]~76_combout\,
	cout => \u0|s_count[22]~77\);

-- Location: LCCOMB_X49_Y47_N14
\u0|s_count[23]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|s_count[23]~78_combout\ = (\u0|s_count\(23) & (!\u0|s_count[22]~77\)) # (!\u0|s_count\(23) & ((\u0|s_count[22]~77\) # (GND)))
-- \u0|s_count[23]~79\ = CARRY((!\u0|s_count[22]~77\) # (!\u0|s_count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|s_count\(23),
	datad => VCC,
	cin => \u0|s_count[22]~77\,
	combout => \u0|s_count[23]~78_combout\,
	cout => \u0|s_count[23]~79\);

-- Location: FF_X49_Y47_N15
\u0|s_count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u0|s_count[23]~78_combout\,
	sclr => \u0|LessThan0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|s_count\(23));

-- Location: LCCOMB_X49_Y47_N16
\u0|s_count[24]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|s_count[24]~80_combout\ = (\u0|s_count\(24) & (\u0|s_count[23]~79\ $ (GND))) # (!\u0|s_count\(24) & (!\u0|s_count[23]~79\ & VCC))
-- \u0|s_count[24]~81\ = CARRY((\u0|s_count\(24) & !\u0|s_count[23]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|s_count\(24),
	datad => VCC,
	cin => \u0|s_count[23]~79\,
	combout => \u0|s_count[24]~80_combout\,
	cout => \u0|s_count[24]~81\);

-- Location: FF_X49_Y47_N17
\u0|s_count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u0|s_count[24]~80_combout\,
	sclr => \u0|LessThan0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|s_count\(24));

-- Location: LCCOMB_X49_Y47_N18
\u0|s_count[25]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|s_count[25]~82_combout\ = (\u0|s_count\(25) & (!\u0|s_count[24]~81\)) # (!\u0|s_count\(25) & ((\u0|s_count[24]~81\) # (GND)))
-- \u0|s_count[25]~83\ = CARRY((!\u0|s_count[24]~81\) # (!\u0|s_count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|s_count\(25),
	datad => VCC,
	cin => \u0|s_count[24]~81\,
	combout => \u0|s_count[25]~82_combout\,
	cout => \u0|s_count[25]~83\);

-- Location: FF_X49_Y47_N19
\u0|s_count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u0|s_count[25]~82_combout\,
	sclr => \u0|LessThan0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|s_count\(25));

-- Location: LCCOMB_X49_Y47_N20
\u0|s_count[26]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|s_count[26]~84_combout\ = (\u0|s_count\(26) & (\u0|s_count[25]~83\ $ (GND))) # (!\u0|s_count\(26) & (!\u0|s_count[25]~83\ & VCC))
-- \u0|s_count[26]~85\ = CARRY((\u0|s_count\(26) & !\u0|s_count[25]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|s_count\(26),
	datad => VCC,
	cin => \u0|s_count[25]~83\,
	combout => \u0|s_count[26]~84_combout\,
	cout => \u0|s_count[26]~85\);

-- Location: FF_X49_Y47_N21
\u0|s_count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u0|s_count[26]~84_combout\,
	sclr => \u0|LessThan0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|s_count\(26));

-- Location: LCCOMB_X49_Y47_N22
\u0|s_count[27]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|s_count[27]~86_combout\ = (\u0|s_count\(27) & (!\u0|s_count[26]~85\)) # (!\u0|s_count\(27) & ((\u0|s_count[26]~85\) # (GND)))
-- \u0|s_count[27]~87\ = CARRY((!\u0|s_count[26]~85\) # (!\u0|s_count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|s_count\(27),
	datad => VCC,
	cin => \u0|s_count[26]~85\,
	combout => \u0|s_count[27]~86_combout\,
	cout => \u0|s_count[27]~87\);

-- Location: FF_X49_Y47_N23
\u0|s_count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u0|s_count[27]~86_combout\,
	sclr => \u0|LessThan0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|s_count\(27));

-- Location: LCCOMB_X49_Y47_N24
\u0|s_count[28]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|s_count[28]~88_combout\ = (\u0|s_count\(28) & (\u0|s_count[27]~87\ $ (GND))) # (!\u0|s_count\(28) & (!\u0|s_count[27]~87\ & VCC))
-- \u0|s_count[28]~89\ = CARRY((\u0|s_count\(28) & !\u0|s_count[27]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|s_count\(28),
	datad => VCC,
	cin => \u0|s_count[27]~87\,
	combout => \u0|s_count[28]~88_combout\,
	cout => \u0|s_count[28]~89\);

-- Location: FF_X49_Y47_N25
\u0|s_count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u0|s_count[28]~88_combout\,
	sclr => \u0|LessThan0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|s_count\(28));

-- Location: LCCOMB_X49_Y47_N26
\u0|s_count[29]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|s_count[29]~90_combout\ = (\u0|s_count\(29) & (!\u0|s_count[28]~89\)) # (!\u0|s_count\(29) & ((\u0|s_count[28]~89\) # (GND)))
-- \u0|s_count[29]~91\ = CARRY((!\u0|s_count[28]~89\) # (!\u0|s_count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|s_count\(29),
	datad => VCC,
	cin => \u0|s_count[28]~89\,
	combout => \u0|s_count[29]~90_combout\,
	cout => \u0|s_count[29]~91\);

-- Location: FF_X49_Y47_N27
\u0|s_count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u0|s_count[29]~90_combout\,
	sclr => \u0|LessThan0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|s_count\(29));

-- Location: LCCOMB_X49_Y47_N28
\u0|s_count[30]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|s_count[30]~92_combout\ = (\u0|s_count\(30) & (\u0|s_count[29]~91\ $ (GND))) # (!\u0|s_count\(30) & (!\u0|s_count[29]~91\ & VCC))
-- \u0|s_count[30]~93\ = CARRY((\u0|s_count\(30) & !\u0|s_count[29]~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|s_count\(30),
	datad => VCC,
	cin => \u0|s_count[29]~91\,
	combout => \u0|s_count[30]~92_combout\,
	cout => \u0|s_count[30]~93\);

-- Location: FF_X49_Y47_N29
\u0|s_count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u0|s_count[30]~92_combout\,
	sclr => \u0|LessThan0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|s_count\(30));

-- Location: LCCOMB_X49_Y47_N30
\u0|s_count[31]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|s_count[31]~94_combout\ = \u0|s_count\(31) $ (\u0|s_count[30]~93\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|s_count\(31),
	cin => \u0|s_count[30]~93\,
	combout => \u0|s_count[31]~94_combout\);

-- Location: FF_X49_Y47_N31
\u0|s_count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u0|s_count[31]~94_combout\,
	sclr => \u0|LessThan0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|s_count\(31));

-- Location: LCCOMB_X48_Y47_N10
\u0|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|LessThan0~1_combout\ = (!\u0|s_count\(28) & (!\u0|s_count\(29) & (!\u0|s_count\(30) & !\u0|s_count\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|s_count\(28),
	datab => \u0|s_count\(29),
	datac => \u0|s_count\(30),
	datad => \u0|s_count\(27),
	combout => \u0|LessThan0~1_combout\);

-- Location: LCCOMB_X48_Y47_N16
\u0|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|LessThan0~2_combout\ = (!\u0|s_count\(31) & \u0|LessThan0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|s_count\(31),
	datad => \u0|LessThan0~1_combout\,
	combout => \u0|LessThan0~2_combout\);

-- Location: LCCOMB_X48_Y47_N12
\u0|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|LessThan0~0_combout\ = (!\u0|s_count\(26) & (!\u0|s_count\(25) & (!\u0|s_count\(23) & !\u0|s_count\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|s_count\(26),
	datab => \u0|s_count\(25),
	datac => \u0|s_count\(23),
	datad => \u0|s_count\(24),
	combout => \u0|LessThan0~0_combout\);

-- Location: LCCOMB_X50_Y47_N14
\u0|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|LessThan0~3_combout\ = (!\u0|s_count\(21) & (!\u0|s_count\(20) & ((!\u0|s_count\(18)) # (!\u0|s_count\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|s_count\(21),
	datab => \u0|s_count\(19),
	datac => \u0|s_count\(18),
	datad => \u0|s_count\(20),
	combout => \u0|LessThan0~3_combout\);

-- Location: LCCOMB_X50_Y47_N8
\u0|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|LessThan0~5_combout\ = (\u0|s_count\(20)) # ((\u0|s_count\(16)) # ((\u0|s_count\(15)) # (\u0|s_count\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|s_count\(20),
	datab => \u0|s_count\(16),
	datac => \u0|s_count\(15),
	datad => \u0|s_count\(21),
	combout => \u0|LessThan0~5_combout\);

-- Location: LCCOMB_X50_Y47_N16
\u0|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|LessThan0~4_combout\ = ((!\u0|s_count\(11) & (!\u0|s_count\(12) & !\u0|s_count\(13)))) # (!\u0|s_count\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|s_count\(11),
	datab => \u0|s_count\(14),
	datac => \u0|s_count\(12),
	datad => \u0|s_count\(13),
	combout => \u0|LessThan0~4_combout\);

-- Location: LCCOMB_X50_Y47_N22
\u0|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|LessThan0~6_combout\ = (\u0|LessThan0~3_combout\) # ((!\u0|s_count\(17) & (!\u0|LessThan0~5_combout\ & \u0|LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|s_count\(17),
	datab => \u0|LessThan0~3_combout\,
	datac => \u0|LessThan0~5_combout\,
	datad => \u0|LessThan0~4_combout\,
	combout => \u0|LessThan0~6_combout\);

-- Location: LCCOMB_X50_Y48_N28
\u0|LessThan0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|LessThan0~13_combout\ = (!\u0|s_count\(9)) # (!\u0|s_count\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|s_count\(8),
	datad => \u0|s_count\(9),
	combout => \u0|LessThan0~13_combout\);

-- Location: LCCOMB_X50_Y47_N10
\u0|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|LessThan0~7_combout\ = (!\u0|s_count\(20) & !\u0|s_count\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|s_count\(20),
	datad => \u0|s_count\(21),
	combout => \u0|LessThan0~7_combout\);

-- Location: LCCOMB_X50_Y47_N24
\u0|LessThan0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|LessThan0~8_combout\ = (!\u0|s_count\(17) & (!\u0|s_count\(16) & (!\u0|s_count\(15) & \u0|LessThan0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|s_count\(17),
	datab => \u0|s_count\(16),
	datac => \u0|s_count\(15),
	datad => \u0|LessThan0~7_combout\,
	combout => \u0|LessThan0~8_combout\);

-- Location: LCCOMB_X50_Y47_N30
\u0|LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|LessThan0~9_combout\ = (!\u0|s_count\(10) & (!\u0|s_count\(12) & (!\u0|s_count\(13) & \u0|LessThan0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|s_count\(10),
	datab => \u0|s_count\(12),
	datac => \u0|s_count\(13),
	datad => \u0|LessThan0~8_combout\,
	combout => \u0|LessThan0~9_combout\);

-- Location: LCCOMB_X50_Y47_N28
\u0|LessThan0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|LessThan0~10_combout\ = (\u0|s_count\(0) & (\u0|s_count\(3) & (\u0|s_count\(2) & \u0|s_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|s_count\(0),
	datab => \u0|s_count\(3),
	datac => \u0|s_count\(2),
	datad => \u0|s_count\(1),
	combout => \u0|LessThan0~10_combout\);

-- Location: LCCOMB_X50_Y47_N6
\u0|LessThan0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|LessThan0~11_combout\ = (\u0|s_count\(4) & \u0|LessThan0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|s_count\(4),
	datad => \u0|LessThan0~10_combout\,
	combout => \u0|LessThan0~11_combout\);

-- Location: LCCOMB_X50_Y47_N12
\u0|LessThan0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|LessThan0~12_combout\ = (!\u0|s_count\(7) & (!\u0|s_count\(6) & ((!\u0|LessThan0~11_combout\) # (!\u0|s_count\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|s_count\(7),
	datab => \u0|s_count\(5),
	datac => \u0|s_count\(6),
	datad => \u0|LessThan0~11_combout\,
	combout => \u0|LessThan0~12_combout\);

-- Location: LCCOMB_X50_Y47_N18
\u0|LessThan0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|LessThan0~14_combout\ = (\u0|LessThan0~6_combout\) # ((\u0|LessThan0~9_combout\ & ((\u0|LessThan0~13_combout\) # (\u0|LessThan0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|LessThan0~6_combout\,
	datab => \u0|LessThan0~13_combout\,
	datac => \u0|LessThan0~9_combout\,
	datad => \u0|LessThan0~12_combout\,
	combout => \u0|LessThan0~14_combout\);

-- Location: LCCOMB_X50_Y47_N0
\u0|LessThan0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|LessThan0~15_combout\ = (((\u0|s_count\(22) & !\u0|LessThan0~14_combout\)) # (!\u0|LessThan0~0_combout\)) # (!\u0|LessThan0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|s_count\(22),
	datab => \u0|LessThan0~2_combout\,
	datac => \u0|LessThan0~0_combout\,
	datad => \u0|LessThan0~14_combout\,
	combout => \u0|LessThan0~15_combout\);

-- Location: FF_X49_Y48_N1
\u0|s_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u0|s_count[0]~32_combout\,
	sclr => \u0|LessThan0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|s_count\(0));

-- Location: LCCOMB_X49_Y48_N2
\u0|s_count[1]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|s_count[1]~34_combout\ = (\u0|s_count\(1) & (!\u0|s_count[0]~33\)) # (!\u0|s_count\(1) & ((\u0|s_count[0]~33\) # (GND)))
-- \u0|s_count[1]~35\ = CARRY((!\u0|s_count[0]~33\) # (!\u0|s_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|s_count\(1),
	datad => VCC,
	cin => \u0|s_count[0]~33\,
	combout => \u0|s_count[1]~34_combout\,
	cout => \u0|s_count[1]~35\);

-- Location: FF_X49_Y48_N3
\u0|s_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u0|s_count[1]~34_combout\,
	sclr => \u0|LessThan0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|s_count\(1));

-- Location: LCCOMB_X49_Y48_N4
\u0|s_count[2]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|s_count[2]~36_combout\ = (\u0|s_count\(2) & (\u0|s_count[1]~35\ $ (GND))) # (!\u0|s_count\(2) & (!\u0|s_count[1]~35\ & VCC))
-- \u0|s_count[2]~37\ = CARRY((\u0|s_count\(2) & !\u0|s_count[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|s_count\(2),
	datad => VCC,
	cin => \u0|s_count[1]~35\,
	combout => \u0|s_count[2]~36_combout\,
	cout => \u0|s_count[2]~37\);

-- Location: FF_X49_Y48_N5
\u0|s_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u0|s_count[2]~36_combout\,
	sclr => \u0|LessThan0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|s_count\(2));

-- Location: LCCOMB_X49_Y48_N6
\u0|s_count[3]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|s_count[3]~38_combout\ = (\u0|s_count\(3) & (!\u0|s_count[2]~37\)) # (!\u0|s_count\(3) & ((\u0|s_count[2]~37\) # (GND)))
-- \u0|s_count[3]~39\ = CARRY((!\u0|s_count[2]~37\) # (!\u0|s_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|s_count\(3),
	datad => VCC,
	cin => \u0|s_count[2]~37\,
	combout => \u0|s_count[3]~38_combout\,
	cout => \u0|s_count[3]~39\);

-- Location: FF_X49_Y48_N7
\u0|s_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u0|s_count[3]~38_combout\,
	sclr => \u0|LessThan0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|s_count\(3));

-- Location: LCCOMB_X49_Y48_N8
\u0|s_count[4]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|s_count[4]~40_combout\ = (\u0|s_count\(4) & (\u0|s_count[3]~39\ $ (GND))) # (!\u0|s_count\(4) & (!\u0|s_count[3]~39\ & VCC))
-- \u0|s_count[4]~41\ = CARRY((\u0|s_count\(4) & !\u0|s_count[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|s_count\(4),
	datad => VCC,
	cin => \u0|s_count[3]~39\,
	combout => \u0|s_count[4]~40_combout\,
	cout => \u0|s_count[4]~41\);

-- Location: FF_X49_Y48_N9
\u0|s_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u0|s_count[4]~40_combout\,
	sclr => \u0|LessThan0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|s_count\(4));

-- Location: LCCOMB_X49_Y48_N10
\u0|s_count[5]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|s_count[5]~42_combout\ = (\u0|s_count\(5) & (!\u0|s_count[4]~41\)) # (!\u0|s_count\(5) & ((\u0|s_count[4]~41\) # (GND)))
-- \u0|s_count[5]~43\ = CARRY((!\u0|s_count[4]~41\) # (!\u0|s_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|s_count\(5),
	datad => VCC,
	cin => \u0|s_count[4]~41\,
	combout => \u0|s_count[5]~42_combout\,
	cout => \u0|s_count[5]~43\);

-- Location: FF_X49_Y48_N11
\u0|s_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u0|s_count[5]~42_combout\,
	sclr => \u0|LessThan0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|s_count\(5));

-- Location: LCCOMB_X49_Y48_N12
\u0|s_count[6]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|s_count[6]~44_combout\ = (\u0|s_count\(6) & (\u0|s_count[5]~43\ $ (GND))) # (!\u0|s_count\(6) & (!\u0|s_count[5]~43\ & VCC))
-- \u0|s_count[6]~45\ = CARRY((\u0|s_count\(6) & !\u0|s_count[5]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|s_count\(6),
	datad => VCC,
	cin => \u0|s_count[5]~43\,
	combout => \u0|s_count[6]~44_combout\,
	cout => \u0|s_count[6]~45\);

-- Location: FF_X49_Y48_N13
\u0|s_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u0|s_count[6]~44_combout\,
	sclr => \u0|LessThan0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|s_count\(6));

-- Location: LCCOMB_X49_Y48_N14
\u0|s_count[7]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|s_count[7]~46_combout\ = (\u0|s_count\(7) & (!\u0|s_count[6]~45\)) # (!\u0|s_count\(7) & ((\u0|s_count[6]~45\) # (GND)))
-- \u0|s_count[7]~47\ = CARRY((!\u0|s_count[6]~45\) # (!\u0|s_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|s_count\(7),
	datad => VCC,
	cin => \u0|s_count[6]~45\,
	combout => \u0|s_count[7]~46_combout\,
	cout => \u0|s_count[7]~47\);

-- Location: FF_X49_Y48_N15
\u0|s_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u0|s_count[7]~46_combout\,
	sclr => \u0|LessThan0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|s_count\(7));

-- Location: LCCOMB_X49_Y48_N16
\u0|s_count[8]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|s_count[8]~48_combout\ = (\u0|s_count\(8) & (\u0|s_count[7]~47\ $ (GND))) # (!\u0|s_count\(8) & (!\u0|s_count[7]~47\ & VCC))
-- \u0|s_count[8]~49\ = CARRY((\u0|s_count\(8) & !\u0|s_count[7]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|s_count\(8),
	datad => VCC,
	cin => \u0|s_count[7]~47\,
	combout => \u0|s_count[8]~48_combout\,
	cout => \u0|s_count[8]~49\);

-- Location: FF_X49_Y48_N17
\u0|s_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u0|s_count[8]~48_combout\,
	sclr => \u0|LessThan0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|s_count\(8));

-- Location: LCCOMB_X49_Y48_N18
\u0|s_count[9]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|s_count[9]~50_combout\ = (\u0|s_count\(9) & (!\u0|s_count[8]~49\)) # (!\u0|s_count\(9) & ((\u0|s_count[8]~49\) # (GND)))
-- \u0|s_count[9]~51\ = CARRY((!\u0|s_count[8]~49\) # (!\u0|s_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|s_count\(9),
	datad => VCC,
	cin => \u0|s_count[8]~49\,
	combout => \u0|s_count[9]~50_combout\,
	cout => \u0|s_count[9]~51\);

-- Location: FF_X49_Y48_N19
\u0|s_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u0|s_count[9]~50_combout\,
	sclr => \u0|LessThan0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|s_count\(9));

-- Location: LCCOMB_X49_Y48_N20
\u0|s_count[10]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|s_count[10]~52_combout\ = (\u0|s_count\(10) & (\u0|s_count[9]~51\ $ (GND))) # (!\u0|s_count\(10) & (!\u0|s_count[9]~51\ & VCC))
-- \u0|s_count[10]~53\ = CARRY((\u0|s_count\(10) & !\u0|s_count[9]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|s_count\(10),
	datad => VCC,
	cin => \u0|s_count[9]~51\,
	combout => \u0|s_count[10]~52_combout\,
	cout => \u0|s_count[10]~53\);

-- Location: FF_X50_Y47_N3
\u0|s_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \u0|s_count[10]~52_combout\,
	sclr => \u0|LessThan0~15_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|s_count\(10));

-- Location: LCCOMB_X49_Y48_N22
\u0|s_count[11]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|s_count[11]~54_combout\ = (\u0|s_count\(11) & (!\u0|s_count[10]~53\)) # (!\u0|s_count\(11) & ((\u0|s_count[10]~53\) # (GND)))
-- \u0|s_count[11]~55\ = CARRY((!\u0|s_count[10]~53\) # (!\u0|s_count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|s_count\(11),
	datad => VCC,
	cin => \u0|s_count[10]~53\,
	combout => \u0|s_count[11]~54_combout\,
	cout => \u0|s_count[11]~55\);

-- Location: FF_X50_Y47_N5
\u0|s_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \u0|s_count[11]~54_combout\,
	sclr => \u0|LessThan0~15_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|s_count\(11));

-- Location: LCCOMB_X49_Y48_N24
\u0|s_count[12]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|s_count[12]~56_combout\ = (\u0|s_count\(12) & (\u0|s_count[11]~55\ $ (GND))) # (!\u0|s_count\(12) & (!\u0|s_count[11]~55\ & VCC))
-- \u0|s_count[12]~57\ = CARRY((\u0|s_count\(12) & !\u0|s_count[11]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|s_count\(12),
	datad => VCC,
	cin => \u0|s_count[11]~55\,
	combout => \u0|s_count[12]~56_combout\,
	cout => \u0|s_count[12]~57\);

-- Location: FF_X50_Y47_N17
\u0|s_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \u0|s_count[12]~56_combout\,
	sclr => \u0|LessThan0~15_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|s_count\(12));

-- Location: LCCOMB_X49_Y48_N26
\u0|s_count[13]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|s_count[13]~58_combout\ = (\u0|s_count\(13) & (!\u0|s_count[12]~57\)) # (!\u0|s_count\(13) & ((\u0|s_count[12]~57\) # (GND)))
-- \u0|s_count[13]~59\ = CARRY((!\u0|s_count[12]~57\) # (!\u0|s_count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|s_count\(13),
	datad => VCC,
	cin => \u0|s_count[12]~57\,
	combout => \u0|s_count[13]~58_combout\,
	cout => \u0|s_count[13]~59\);

-- Location: FF_X50_Y47_N31
\u0|s_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \u0|s_count[13]~58_combout\,
	sclr => \u0|LessThan0~15_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|s_count\(13));

-- Location: LCCOMB_X49_Y48_N28
\u0|s_count[14]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|s_count[14]~60_combout\ = (\u0|s_count\(14) & (\u0|s_count[13]~59\ $ (GND))) # (!\u0|s_count\(14) & (!\u0|s_count[13]~59\ & VCC))
-- \u0|s_count[14]~61\ = CARRY((\u0|s_count\(14) & !\u0|s_count[13]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|s_count\(14),
	datad => VCC,
	cin => \u0|s_count[13]~59\,
	combout => \u0|s_count[14]~60_combout\,
	cout => \u0|s_count[14]~61\);

-- Location: FF_X50_Y47_N11
\u0|s_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \u0|s_count[14]~60_combout\,
	sclr => \u0|LessThan0~15_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|s_count\(14));

-- Location: LCCOMB_X49_Y48_N30
\u0|s_count[15]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|s_count[15]~62_combout\ = (\u0|s_count\(15) & (!\u0|s_count[14]~61\)) # (!\u0|s_count\(15) & ((\u0|s_count[14]~61\) # (GND)))
-- \u0|s_count[15]~63\ = CARRY((!\u0|s_count[14]~61\) # (!\u0|s_count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|s_count\(15),
	datad => VCC,
	cin => \u0|s_count[14]~61\,
	combout => \u0|s_count[15]~62_combout\,
	cout => \u0|s_count[15]~63\);

-- Location: FF_X50_Y47_N25
\u0|s_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \u0|s_count[15]~62_combout\,
	sclr => \u0|LessThan0~15_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|s_count\(15));

-- Location: LCCOMB_X49_Y47_N0
\u0|s_count[16]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|s_count[16]~64_combout\ = (\u0|s_count\(16) & (\u0|s_count[15]~63\ $ (GND))) # (!\u0|s_count\(16) & (!\u0|s_count[15]~63\ & VCC))
-- \u0|s_count[16]~65\ = CARRY((\u0|s_count\(16) & !\u0|s_count[15]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|s_count\(16),
	datad => VCC,
	cin => \u0|s_count[15]~63\,
	combout => \u0|s_count[16]~64_combout\,
	cout => \u0|s_count[16]~65\);

-- Location: FF_X49_Y47_N1
\u0|s_count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u0|s_count[16]~64_combout\,
	sclr => \u0|LessThan0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|s_count\(16));

-- Location: LCCOMB_X49_Y47_N2
\u0|s_count[17]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|s_count[17]~66_combout\ = (\u0|s_count\(17) & (!\u0|s_count[16]~65\)) # (!\u0|s_count\(17) & ((\u0|s_count[16]~65\) # (GND)))
-- \u0|s_count[17]~67\ = CARRY((!\u0|s_count[16]~65\) # (!\u0|s_count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|s_count\(17),
	datad => VCC,
	cin => \u0|s_count[16]~65\,
	combout => \u0|s_count[17]~66_combout\,
	cout => \u0|s_count[17]~67\);

-- Location: FF_X49_Y47_N3
\u0|s_count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u0|s_count[17]~66_combout\,
	sclr => \u0|LessThan0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|s_count\(17));

-- Location: LCCOMB_X49_Y47_N4
\u0|s_count[18]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|s_count[18]~68_combout\ = (\u0|s_count\(18) & (\u0|s_count[17]~67\ $ (GND))) # (!\u0|s_count\(18) & (!\u0|s_count[17]~67\ & VCC))
-- \u0|s_count[18]~69\ = CARRY((\u0|s_count\(18) & !\u0|s_count[17]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|s_count\(18),
	datad => VCC,
	cin => \u0|s_count[17]~67\,
	combout => \u0|s_count[18]~68_combout\,
	cout => \u0|s_count[18]~69\);

-- Location: FF_X49_Y47_N5
\u0|s_count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u0|s_count[18]~68_combout\,
	sclr => \u0|LessThan0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|s_count\(18));

-- Location: LCCOMB_X49_Y47_N6
\u0|s_count[19]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|s_count[19]~70_combout\ = (\u0|s_count\(19) & (!\u0|s_count[18]~69\)) # (!\u0|s_count\(19) & ((\u0|s_count[18]~69\) # (GND)))
-- \u0|s_count[19]~71\ = CARRY((!\u0|s_count[18]~69\) # (!\u0|s_count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|s_count\(19),
	datad => VCC,
	cin => \u0|s_count[18]~69\,
	combout => \u0|s_count[19]~70_combout\,
	cout => \u0|s_count[19]~71\);

-- Location: FF_X49_Y47_N7
\u0|s_count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u0|s_count[19]~70_combout\,
	sclr => \u0|LessThan0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|s_count\(19));

-- Location: LCCOMB_X49_Y47_N8
\u0|s_count[20]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|s_count[20]~72_combout\ = (\u0|s_count\(20) & (\u0|s_count[19]~71\ $ (GND))) # (!\u0|s_count\(20) & (!\u0|s_count[19]~71\ & VCC))
-- \u0|s_count[20]~73\ = CARRY((\u0|s_count\(20) & !\u0|s_count[19]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|s_count\(20),
	datad => VCC,
	cin => \u0|s_count[19]~71\,
	combout => \u0|s_count[20]~72_combout\,
	cout => \u0|s_count[20]~73\);

-- Location: FF_X49_Y47_N9
\u0|s_count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u0|s_count[20]~72_combout\,
	sclr => \u0|LessThan0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|s_count\(20));

-- Location: LCCOMB_X49_Y47_N10
\u0|s_count[21]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|s_count[21]~74_combout\ = (\u0|s_count\(21) & (!\u0|s_count[20]~73\)) # (!\u0|s_count\(21) & ((\u0|s_count[20]~73\) # (GND)))
-- \u0|s_count[21]~75\ = CARRY((!\u0|s_count[20]~73\) # (!\u0|s_count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|s_count\(21),
	datad => VCC,
	cin => \u0|s_count[20]~73\,
	combout => \u0|s_count[21]~74_combout\,
	cout => \u0|s_count[21]~75\);

-- Location: FF_X49_Y47_N11
\u0|s_count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u0|s_count[21]~74_combout\,
	sclr => \u0|LessThan0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|s_count\(21));

-- Location: FF_X49_Y47_N13
\u0|s_count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u0|s_count[22]~76_combout\,
	sclr => \u0|LessThan0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|s_count\(22));

-- Location: LCCOMB_X50_Y49_N16
\u0|clkOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|clkOut~0_combout\ = (\u0|s_count\(19)) # ((\u0|s_count\(18) & \u0|s_count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|s_count\(18),
	datab => \u0|s_count\(19),
	datad => \u0|s_count\(17),
	combout => \u0|clkOut~0_combout\);

-- Location: LCCOMB_X50_Y49_N6
\u0|clkOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|clkOut~1_combout\ = (\u0|s_count\(22)) # ((\u0|s_count\(21) & ((\u0|s_count\(20)) # (\u0|clkOut~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|s_count\(22),
	datab => \u0|s_count\(21),
	datac => \u0|s_count\(20),
	datad => \u0|clkOut~0_combout\,
	combout => \u0|clkOut~1_combout\);

-- Location: LCCOMB_X50_Y49_N28
\u0|LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|LessThan1~3_combout\ = (!\u0|s_count\(22) & (!\u0|s_count\(20) & !\u0|s_count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|s_count\(22),
	datab => \u0|s_count\(20),
	datad => \u0|s_count\(19),
	combout => \u0|LessThan1~3_combout\);

-- Location: LCCOMB_X50_Y49_N2
\u0|LessThan1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|LessThan1~4_combout\ = (!\u0|s_count\(16) & (!\u0|s_count\(15) & (!\u0|s_count\(14) & \u0|LessThan1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|s_count\(16),
	datab => \u0|s_count\(15),
	datac => \u0|s_count\(14),
	datad => \u0|LessThan1~3_combout\,
	combout => \u0|LessThan1~4_combout\);

-- Location: LCCOMB_X50_Y47_N26
\u0|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|LessThan1~0_combout\ = (\u0|s_count\(8) & ((\u0|s_count\(5)) # ((\u0|s_count\(6)) # (\u0|LessThan0~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|s_count\(8),
	datab => \u0|s_count\(5),
	datac => \u0|s_count\(6),
	datad => \u0|LessThan0~11_combout\,
	combout => \u0|LessThan1~0_combout\);

-- Location: LCCOMB_X50_Y47_N2
\u0|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|LessThan1~1_combout\ = (\u0|s_count\(10) & ((\u0|s_count\(9)) # ((\u0|LessThan1~0_combout\ & \u0|s_count\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|LessThan1~0_combout\,
	datab => \u0|s_count\(9),
	datac => \u0|s_count\(10),
	datad => \u0|s_count\(7),
	combout => \u0|LessThan1~1_combout\);

-- Location: LCCOMB_X50_Y47_N4
\u0|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|LessThan1~2_combout\ = ((!\u0|s_count\(12) & (!\u0|s_count\(11) & !\u0|LessThan1~1_combout\))) # (!\u0|s_count\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|s_count\(12),
	datab => \u0|s_count\(13),
	datac => \u0|s_count\(11),
	datad => \u0|LessThan1~1_combout\,
	combout => \u0|LessThan1~2_combout\);

-- Location: LCCOMB_X50_Y47_N20
\u0|clkOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|clkOut~2_combout\ = (\u0|clkOut~1_combout\ & (!\u0|LessThan0~15_combout\ & ((!\u0|LessThan1~2_combout\) # (!\u0|LessThan1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|clkOut~1_combout\,
	datab => \u0|LessThan1~4_combout\,
	datac => \u0|LessThan1~2_combout\,
	datad => \u0|LessThan0~15_combout\,
	combout => \u0|clkOut~2_combout\);

-- Location: FF_X50_Y47_N21
\u0|clkOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u0|clkOut~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|clkOut~q\);

-- Location: LCCOMB_X34_Y72_N24
\u1|mask[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|mask[0]~0_combout\ = (\u3|ola~q\ & ((\u0|clkOut~q\))) # (!\u3|ola~q\ & (\u1|mask\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u3|ola~q\,
	datac => \u1|mask\(0),
	datad => \u0|clkOut~q\,
	combout => \u1|mask[0]~0_combout\);

-- Location: FF_X34_Y72_N25
\u1|mask[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u1|mask[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|mask\(0));

-- Location: FF_X42_Y72_N17
\u3|epro\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \u3|s_state.E1~q\,
	sload => VCC,
	ena => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|epro~q\);

-- Location: LCCOMB_X33_Y72_N24
\u1|visor_uni~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|visor_uni~0_combout\ = (\u3|ola~q\ & (\u1|mask\(0))) # (!\u3|ola~q\ & ((\u3|epro~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|mask\(0),
	datac => \u3|ola~q\,
	datad => \u3|epro~q\,
	combout => \u1|visor_uni~0_combout\);

-- Location: FF_X33_Y72_N25
\u1|visor_uni[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u1|visor_uni~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|visor_uni\(3));

-- Location: LCCOMB_X33_Y72_N28
\u1|visor_uni~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|visor_uni~1_combout\ = (\u3|ola~q\) # (!\u3|epro~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u3|ola~q\,
	datad => \u3|epro~q\,
	combout => \u1|visor_uni~1_combout\);

-- Location: LCCOMB_X32_Y72_N8
\u1|visor_uni[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|visor_uni[6]~feeder_combout\ = \u1|visor_uni~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u1|visor_uni~1_combout\,
	combout => \u1|visor_uni[6]~feeder_combout\);

-- Location: FF_X32_Y72_N9
\u1|visor_uni[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u1|visor_uni[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|visor_uni\(6));

-- Location: LCCOMB_X34_Y72_N10
\u1|visor_cen~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|visor_cen~0_combout\ = (!\SW[17]~input_o\ & \SW[16]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[17]~input_o\,
	datac => \SW[16]~input_o\,
	combout => \u1|visor_cen~0_combout\);

-- Location: LCCOMB_X34_Y72_N20
\u1|visor_dez~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|visor_dez~0_combout\ = (\u3|ola~q\ & (((\u1|mask\(0))))) # (!\u3|ola~q\ & (((\u3|epro~q\)) # (!\u1|visor_cen~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|visor_cen~0_combout\,
	datab => \u1|mask\(0),
	datac => \u3|epro~q\,
	datad => \u3|ola~q\,
	combout => \u1|visor_dez~0_combout\);

-- Location: FF_X34_Y72_N21
\u1|visor_dez[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u1|visor_dez~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|visor_dez\(0));

-- Location: LCCOMB_X34_Y72_N2
\u1|visor_dez~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|visor_dez~1_combout\ = (\u3|ola~q\ & (((\u1|mask\(0))))) # (!\u3|ola~q\ & (((\u3|epro~q\)) # (!\SW[17]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[17]~input_o\,
	datab => \u1|mask\(0),
	datac => \u3|epro~q\,
	datad => \u3|ola~q\,
	combout => \u1|visor_dez~1_combout\);

-- Location: LCCOMB_X33_Y72_N18
\u1|visor_dez[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|visor_dez[1]~feeder_combout\ = \u1|visor_dez~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u1|visor_dez~1_combout\,
	combout => \u1|visor_dez[1]~feeder_combout\);

-- Location: FF_X33_Y72_N19
\u1|visor_dez[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u1|visor_dez[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|visor_dez\(1));

-- Location: FF_X34_Y72_N3
\u1|visor_dez[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u1|visor_dez~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|visor_dez\(2));

-- Location: LCCOMB_X34_Y72_N12
\u1|visor_dez~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|visor_dez~2_combout\ = (\u3|ola~q\) # ((!\u3|epro~q\ & ((\SW[17]~input_o\) # (\SW[16]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[17]~input_o\,
	datab => \SW[16]~input_o\,
	datac => \u3|epro~q\,
	datad => \u3|ola~q\,
	combout => \u1|visor_dez~2_combout\);

-- Location: LCCOMB_X35_Y72_N20
\u1|visor_dez[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|visor_dez[3]~feeder_combout\ = \u1|visor_dez~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u1|visor_dez~2_combout\,
	combout => \u1|visor_dez[3]~feeder_combout\);

-- Location: FF_X35_Y72_N21
\u1|visor_dez[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u1|visor_dez[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|visor_dez\(3));

-- Location: LCCOMB_X34_Y72_N0
\u1|visor_dez~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|visor_dez~3_combout\ = ((\u1|mask\(0) & \u3|ola~q\)) # (!\u1|visor_dez~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|mask\(0),
	datac => \u1|visor_dez~2_combout\,
	datad => \u3|ola~q\,
	combout => \u1|visor_dez~3_combout\);

-- Location: FF_X34_Y72_N1
\u1|visor_dez[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u1|visor_dez~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|visor_dez\(6));

-- Location: LCCOMB_X34_Y72_N14
\u1|visor_cen~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|visor_cen~1_combout\ = (\SW[17]~input_o\) # ((\SW[16]~input_o\) # ((\u3|epro~q\) # (\u3|ola~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[17]~input_o\,
	datab => \SW[16]~input_o\,
	datac => \u3|epro~q\,
	datad => \u3|ola~q\,
	combout => \u1|visor_cen~1_combout\);

-- Location: FF_X34_Y72_N15
\u1|visor_cen[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u1|visor_cen~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|visor_cen\(0));

-- Location: LCCOMB_X34_Y72_N16
\u1|visor_mil[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|visor_mil[1]~0_combout\ = (\SW[17]~input_o\) # ((\u3|epro~q\) # (\u3|ola~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[17]~input_o\,
	datab => \u3|epro~q\,
	datad => \u3|ola~q\,
	combout => \u1|visor_mil[1]~0_combout\);

-- Location: FF_X34_Y72_N17
\u1|visor_cen[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u1|visor_mil[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|visor_cen\(1));

-- Location: LCCOMB_X35_Y72_N2
\u1|visor_cen[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|visor_cen[2]~feeder_combout\ = \u1|visor_dez~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u1|visor_dez~2_combout\,
	combout => \u1|visor_cen[2]~feeder_combout\);

-- Location: FF_X35_Y72_N3
\u1|visor_cen[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u1|visor_cen[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|visor_cen\(2));

-- Location: FF_X33_Y72_N29
\u1|visor_cen[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u1|visor_uni~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|visor_cen\(3));

-- Location: LCCOMB_X34_Y72_N30
\u1|visor_cen~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|visor_cen~2_combout\ = (\u3|ola~q\ & (((\u1|mask\(0))))) # (!\u3|ola~q\ & ((\u1|visor_cen~0_combout\) # ((\u3|epro~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|visor_cen~0_combout\,
	datab => \u1|mask\(0),
	datac => \u3|epro~q\,
	datad => \u3|ola~q\,
	combout => \u1|visor_cen~2_combout\);

-- Location: FF_X34_Y72_N31
\u1|visor_cen[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u1|visor_cen~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|visor_cen\(6));

-- Location: LCCOMB_X34_Y72_N4
\u1|visor_mil[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|visor_mil[1]~1_combout\ = (\u3|ola~q\ & ((\u1|visor_mil\(1)) # ((\SW[16]~input_o\ & !\u1|visor_mil[1]~0_combout\)))) # (!\u3|ola~q\ & (\SW[16]~input_o\ & ((!\u1|visor_mil[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|ola~q\,
	datab => \SW[16]~input_o\,
	datac => \u1|visor_mil\(1),
	datad => \u1|visor_mil[1]~0_combout\,
	combout => \u1|visor_mil[1]~1_combout\);

-- Location: FF_X34_Y72_N5
\u1|visor_mil[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u1|visor_mil[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|visor_mil\(1));

-- Location: LCCOMB_X34_Y72_N6
\u1|visor_mil[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|visor_mil[2]~2_combout\ = (\u3|ola~q\ & (((\u1|visor_mil\(2))))) # (!\u3|ola~q\ & (!\SW[17]~input_o\ & (!\u3|epro~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[17]~input_o\,
	datab => \u3|epro~q\,
	datac => \u1|visor_mil\(2),
	datad => \u3|ola~q\,
	combout => \u1|visor_mil[2]~2_combout\);

-- Location: FF_X34_Y72_N7
\u1|visor_mil[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u1|visor_mil[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|visor_mil\(2));

-- Location: LCCOMB_X34_Y72_N28
\u1|visor_mil[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|visor_mil[3]~3_combout\ = (\u3|ola~q\ & (((\u1|visor_mil\(3))))) # (!\u3|ola~q\ & (((\u3|epro~q\)) # (!\u1|visor_cen~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|visor_cen~0_combout\,
	datab => \u3|epro~q\,
	datac => \u1|visor_mil\(3),
	datad => \u3|ola~q\,
	combout => \u1|visor_mil[3]~3_combout\);

-- Location: FF_X34_Y72_N29
\u1|visor_mil[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u1|visor_mil[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|visor_mil\(3));

-- Location: LCCOMB_X34_Y72_N18
\u1|visor_mil[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|visor_mil[4]~4_combout\ = (!\u3|ola~q\ & ((\SW[17]~input_o\) # ((\SW[16]~input_o\) # (\u3|epro~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[17]~input_o\,
	datab => \SW[16]~input_o\,
	datac => \u3|epro~q\,
	datad => \u3|ola~q\,
	combout => \u1|visor_mil[4]~4_combout\);

-- Location: LCCOMB_X33_Y72_N30
\u1|visor_mil[4]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|visor_mil[4]~5_combout\ = (\u1|visor_mil[4]~4_combout\) # ((\u3|ola~q\ & \u1|visor_mil\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|ola~q\,
	datac => \u1|visor_mil\(4),
	datad => \u1|visor_mil[4]~4_combout\,
	combout => \u1|visor_mil[4]~5_combout\);

-- Location: FF_X33_Y72_N31
\u1|visor_mil[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u1|visor_mil[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|visor_mil\(4));

-- Location: LCCOMB_X34_Y72_N22
\u1|visor_mil[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|visor_mil[6]~6_combout\ = (\u3|ola~q\ & (((\u1|visor_mil\(6))))) # (!\u3|ola~q\ & (((\u3|epro~q\)) # (!\SW[17]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[17]~input_o\,
	datab => \u3|epro~q\,
	datac => \u1|visor_mil\(6),
	datad => \u3|ola~q\,
	combout => \u1|visor_mil[6]~6_combout\);

-- Location: FF_X34_Y72_N23
\u1|visor_mil[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u1|visor_mil[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|visor_mil\(6));

-- Location: IOIBUF_X60_Y73_N1
\KEY[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: FF_X59_Y66_N15
\u6|s_dirtyIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \KEY[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u6|s_dirtyIn~q\);

-- Location: FF_X59_Y66_N25
\u6|s_previousIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \u6|s_dirtyIn~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u6|s_previousIn~q\);

-- Location: LCCOMB_X61_Y66_N10
\u6|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|Add0~0_combout\ = \u6|s_debounceCnt\(0) $ (VCC)
-- \u6|Add0~1\ = CARRY(\u6|s_debounceCnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|s_debounceCnt\(0),
	datad => VCC,
	combout => \u6|Add0~0_combout\,
	cout => \u6|Add0~1\);

-- Location: LCCOMB_X61_Y66_N6
\u6|s_debounceCnt~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|s_debounceCnt~24_combout\ = (\u6|Add0~0_combout\ & \u6|s_debounceCnt[18]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|Add0~0_combout\,
	datad => \u6|s_debounceCnt[18]~4_combout\,
	combout => \u6|s_debounceCnt~24_combout\);

-- Location: FF_X61_Y66_N7
\u6|s_debounceCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u6|s_debounceCnt~24_combout\,
	ena => \u6|s_debounceCnt[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u6|s_debounceCnt\(0));

-- Location: LCCOMB_X61_Y66_N12
\u6|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|Add0~2_combout\ = (\u6|s_debounceCnt\(1) & (\u6|Add0~1\ & VCC)) # (!\u6|s_debounceCnt\(1) & (!\u6|Add0~1\))
-- \u6|Add0~3\ = CARRY((!\u6|s_debounceCnt\(1) & !\u6|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u6|s_debounceCnt\(1),
	datad => VCC,
	cin => \u6|Add0~1\,
	combout => \u6|Add0~2_combout\,
	cout => \u6|Add0~3\);

-- Location: LCCOMB_X61_Y66_N2
\u6|s_debounceCnt~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|s_debounceCnt~20_combout\ = (\u6|Add0~2_combout\ & \u6|s_debounceCnt[18]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|Add0~2_combout\,
	datad => \u6|s_debounceCnt[18]~4_combout\,
	combout => \u6|s_debounceCnt~20_combout\);

-- Location: FF_X61_Y66_N3
\u6|s_debounceCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u6|s_debounceCnt~20_combout\,
	ena => \u6|s_debounceCnt[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u6|s_debounceCnt\(1));

-- Location: LCCOMB_X61_Y66_N14
\u6|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|Add0~4_combout\ = (\u6|s_debounceCnt\(2) & ((GND) # (!\u6|Add0~3\))) # (!\u6|s_debounceCnt\(2) & (\u6|Add0~3\ $ (GND)))
-- \u6|Add0~5\ = CARRY((\u6|s_debounceCnt\(2)) # (!\u6|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u6|s_debounceCnt\(2),
	datad => VCC,
	cin => \u6|Add0~3\,
	combout => \u6|Add0~4_combout\,
	cout => \u6|Add0~5\);

-- Location: LCCOMB_X59_Y66_N6
\u6|s_debounceCnt~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|s_debounceCnt~21_combout\ = (\u6|s_debounceCnt[18]~4_combout\ & \u6|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u6|s_debounceCnt[18]~4_combout\,
	datad => \u6|Add0~4_combout\,
	combout => \u6|s_debounceCnt~21_combout\);

-- Location: FF_X59_Y66_N7
\u6|s_debounceCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u6|s_debounceCnt~21_combout\,
	ena => \u6|s_debounceCnt[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u6|s_debounceCnt\(2));

-- Location: LCCOMB_X61_Y66_N16
\u6|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|Add0~6_combout\ = (\u6|s_debounceCnt\(3) & (\u6|Add0~5\ & VCC)) # (!\u6|s_debounceCnt\(3) & (!\u6|Add0~5\))
-- \u6|Add0~7\ = CARRY((!\u6|s_debounceCnt\(3) & !\u6|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u6|s_debounceCnt\(3),
	datad => VCC,
	cin => \u6|Add0~5\,
	combout => \u6|Add0~6_combout\,
	cout => \u6|Add0~7\);

-- Location: LCCOMB_X61_Y66_N8
\u6|s_debounceCnt~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|s_debounceCnt~22_combout\ = (\u6|Add0~6_combout\ & \u6|s_debounceCnt[18]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u6|Add0~6_combout\,
	datad => \u6|s_debounceCnt[18]~4_combout\,
	combout => \u6|s_debounceCnt~22_combout\);

-- Location: FF_X61_Y66_N9
\u6|s_debounceCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u6|s_debounceCnt~22_combout\,
	ena => \u6|s_debounceCnt[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u6|s_debounceCnt\(3));

-- Location: LCCOMB_X59_Y66_N28
\u6|s_pulsedOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|s_pulsedOut~5_combout\ = (!\u6|s_debounceCnt\(2) & (!\u6|s_debounceCnt\(1) & (!\u6|s_debounceCnt\(3) & !\u6|s_debounceCnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|s_debounceCnt\(2),
	datab => \u6|s_debounceCnt\(1),
	datac => \u6|s_debounceCnt\(3),
	datad => \u6|s_debounceCnt\(4),
	combout => \u6|s_pulsedOut~5_combout\);

-- Location: LCCOMB_X61_Y66_N20
\u6|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|Add0~10_combout\ = (\u6|s_debounceCnt\(5) & (\u6|Add0~9\ & VCC)) # (!\u6|s_debounceCnt\(5) & (!\u6|Add0~9\))
-- \u6|Add0~11\ = CARRY((!\u6|s_debounceCnt\(5) & !\u6|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u6|s_debounceCnt\(5),
	datad => VCC,
	cin => \u6|Add0~9\,
	combout => \u6|Add0~10_combout\,
	cout => \u6|Add0~11\);

-- Location: LCCOMB_X61_Y66_N22
\u6|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|Add0~12_combout\ = (\u6|s_debounceCnt\(6) & ((GND) # (!\u6|Add0~11\))) # (!\u6|s_debounceCnt\(6) & (\u6|Add0~11\ $ (GND)))
-- \u6|Add0~13\ = CARRY((\u6|s_debounceCnt\(6)) # (!\u6|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u6|s_debounceCnt\(6),
	datad => VCC,
	cin => \u6|Add0~11\,
	combout => \u6|Add0~12_combout\,
	cout => \u6|Add0~13\);

-- Location: LCCOMB_X60_Y66_N8
\u6|s_debounceCnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|s_debounceCnt~1_combout\ = (\u6|s_debounceCnt[18]~0_combout\ & ((\u6|Add0~12_combout\) # (!\u6|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u6|Add0~12_combout\,
	datac => \u6|s_previousIn~q\,
	datad => \u6|s_debounceCnt[18]~0_combout\,
	combout => \u6|s_debounceCnt~1_combout\);

-- Location: FF_X60_Y66_N9
\u6|s_debounceCnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u6|s_debounceCnt~1_combout\,
	ena => \u6|s_debounceCnt[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u6|s_debounceCnt\(6));

-- Location: LCCOMB_X61_Y66_N24
\u6|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|Add0~14_combout\ = (\u6|s_debounceCnt\(7) & (\u6|Add0~13\ & VCC)) # (!\u6|s_debounceCnt\(7) & (!\u6|Add0~13\))
-- \u6|Add0~15\ = CARRY((!\u6|s_debounceCnt\(7) & !\u6|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u6|s_debounceCnt\(7),
	datad => VCC,
	cin => \u6|Add0~13\,
	combout => \u6|Add0~14_combout\,
	cout => \u6|Add0~15\);

-- Location: LCCOMB_X60_Y66_N14
\u6|s_debounceCnt~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|s_debounceCnt~12_combout\ = (\u6|s_debounceCnt[18]~4_combout\ & \u6|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u6|s_debounceCnt[18]~4_combout\,
	datad => \u6|Add0~14_combout\,
	combout => \u6|s_debounceCnt~12_combout\);

-- Location: FF_X60_Y66_N15
\u6|s_debounceCnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u6|s_debounceCnt~12_combout\,
	ena => \u6|s_debounceCnt[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u6|s_debounceCnt\(7));

-- Location: LCCOMB_X61_Y66_N26
\u6|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|Add0~16_combout\ = (\u6|s_debounceCnt\(8) & ((GND) # (!\u6|Add0~15\))) # (!\u6|s_debounceCnt\(8) & (\u6|Add0~15\ $ (GND)))
-- \u6|Add0~17\ = CARRY((\u6|s_debounceCnt\(8)) # (!\u6|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u6|s_debounceCnt\(8),
	datad => VCC,
	cin => \u6|Add0~15\,
	combout => \u6|Add0~16_combout\,
	cout => \u6|Add0~17\);

-- Location: LCCOMB_X60_Y66_N0
\u6|s_debounceCnt~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|s_debounceCnt~13_combout\ = (\u6|s_debounceCnt[18]~0_combout\ & ((\u6|Add0~16_combout\) # (!\u6|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|s_previousIn~q\,
	datac => \u6|Add0~16_combout\,
	datad => \u6|s_debounceCnt[18]~0_combout\,
	combout => \u6|s_debounceCnt~13_combout\);

-- Location: FF_X60_Y66_N1
\u6|s_debounceCnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u6|s_debounceCnt~13_combout\,
	ena => \u6|s_debounceCnt[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u6|s_debounceCnt\(8));

-- Location: LCCOMB_X61_Y66_N28
\u6|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|Add0~18_combout\ = (\u6|s_debounceCnt\(9) & (\u6|Add0~17\ & VCC)) # (!\u6|s_debounceCnt\(9) & (!\u6|Add0~17\))
-- \u6|Add0~19\ = CARRY((!\u6|s_debounceCnt\(9) & !\u6|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u6|s_debounceCnt\(9),
	datad => VCC,
	cin => \u6|Add0~17\,
	combout => \u6|Add0~18_combout\,
	cout => \u6|Add0~19\);

-- Location: LCCOMB_X60_Y66_N6
\u6|s_debounceCnt~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|s_debounceCnt~14_combout\ = (\u6|s_debounceCnt[18]~0_combout\ & ((\u6|Add0~18_combout\) # (!\u6|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|Add0~18_combout\,
	datac => \u6|s_previousIn~q\,
	datad => \u6|s_debounceCnt[18]~0_combout\,
	combout => \u6|s_debounceCnt~14_combout\);

-- Location: FF_X60_Y66_N7
\u6|s_debounceCnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u6|s_debounceCnt~14_combout\,
	ena => \u6|s_debounceCnt[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u6|s_debounceCnt\(9));

-- Location: LCCOMB_X59_Y66_N14
\u6|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|LessThan0~1_combout\ = (\u6|s_debounceCnt\(11) & \u6|s_debounceCnt\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u6|s_debounceCnt\(11),
	datad => \u6|s_debounceCnt\(9),
	combout => \u6|LessThan0~1_combout\);

-- Location: LCCOMB_X61_Y65_N4
\u6|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|Add0~26_combout\ = (\u6|s_debounceCnt\(13) & (\u6|Add0~25\ & VCC)) # (!\u6|s_debounceCnt\(13) & (!\u6|Add0~25\))
-- \u6|Add0~27\ = CARRY((!\u6|s_debounceCnt\(13) & !\u6|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u6|s_debounceCnt\(13),
	datad => VCC,
	cin => \u6|Add0~25\,
	combout => \u6|Add0~26_combout\,
	cout => \u6|Add0~27\);

-- Location: LCCOMB_X61_Y65_N6
\u6|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|Add0~28_combout\ = (\u6|s_debounceCnt\(14) & ((GND) # (!\u6|Add0~27\))) # (!\u6|s_debounceCnt\(14) & (\u6|Add0~27\ $ (GND)))
-- \u6|Add0~29\ = CARRY((\u6|s_debounceCnt\(14)) # (!\u6|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u6|s_debounceCnt\(14),
	datad => VCC,
	cin => \u6|Add0~27\,
	combout => \u6|Add0~28_combout\,
	cout => \u6|Add0~29\);

-- Location: LCCOMB_X59_Y66_N16
\u6|s_debounceCnt~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|s_debounceCnt~17_combout\ = (\u6|s_debounceCnt[18]~0_combout\ & ((\u6|Add0~28_combout\) # (!\u6|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u6|s_previousIn~q\,
	datac => \u6|s_debounceCnt[18]~0_combout\,
	datad => \u6|Add0~28_combout\,
	combout => \u6|s_debounceCnt~17_combout\);

-- Location: FF_X59_Y66_N17
\u6|s_debounceCnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u6|s_debounceCnt~17_combout\,
	ena => \u6|s_debounceCnt[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u6|s_debounceCnt\(14));

-- Location: LCCOMB_X60_Y65_N0
\u6|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|LessThan0~0_combout\ = (\u6|s_debounceCnt\(18) & (\u6|s_debounceCnt\(14) & (\u6|s_debounceCnt\(19) & \u6|s_debounceCnt\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|s_debounceCnt\(18),
	datab => \u6|s_debounceCnt\(14),
	datac => \u6|s_debounceCnt\(19),
	datad => \u6|s_debounceCnt\(8),
	combout => \u6|LessThan0~0_combout\);

-- Location: LCCOMB_X59_Y66_N0
\u6|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|LessThan0~2_combout\ = (\u6|s_debounceCnt\(6) & ((\u6|s_debounceCnt\(0)) # ((\u6|s_debounceCnt\(5)) # (!\u6|s_pulsedOut~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|s_debounceCnt\(0),
	datab => \u6|s_debounceCnt\(5),
	datac => \u6|s_debounceCnt\(6),
	datad => \u6|s_pulsedOut~5_combout\,
	combout => \u6|LessThan0~2_combout\);

-- Location: LCCOMB_X59_Y66_N8
\u6|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|LessThan0~3_combout\ = (\u6|LessThan0~1_combout\ & (\u6|LessThan0~0_combout\ & ((\u6|s_debounceCnt\(7)) # (\u6|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|s_debounceCnt\(7),
	datab => \u6|LessThan0~1_combout\,
	datac => \u6|LessThan0~0_combout\,
	datad => \u6|LessThan0~2_combout\,
	combout => \u6|LessThan0~3_combout\);

-- Location: LCCOMB_X61_Y65_N8
\u6|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|Add0~30_combout\ = (\u6|s_debounceCnt\(15) & (\u6|Add0~29\ & VCC)) # (!\u6|s_debounceCnt\(15) & (!\u6|Add0~29\))
-- \u6|Add0~31\ = CARRY((!\u6|s_debounceCnt\(15) & !\u6|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u6|s_debounceCnt\(15),
	datad => VCC,
	cin => \u6|Add0~29\,
	combout => \u6|Add0~30_combout\,
	cout => \u6|Add0~31\);

-- Location: LCCOMB_X60_Y66_N22
\u6|s_debounceCnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|s_debounceCnt~5_combout\ = (\u6|Add0~30_combout\ & \u6|s_debounceCnt[18]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u6|Add0~30_combout\,
	datac => \u6|s_debounceCnt[18]~4_combout\,
	combout => \u6|s_debounceCnt~5_combout\);

-- Location: FF_X60_Y66_N23
\u6|s_debounceCnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u6|s_debounceCnt~5_combout\,
	ena => \u6|s_debounceCnt[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u6|s_debounceCnt\(15));

-- Location: LCCOMB_X61_Y65_N10
\u6|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|Add0~32_combout\ = (\u6|s_debounceCnt\(16) & ((GND) # (!\u6|Add0~31\))) # (!\u6|s_debounceCnt\(16) & (\u6|Add0~31\ $ (GND)))
-- \u6|Add0~33\ = CARRY((\u6|s_debounceCnt\(16)) # (!\u6|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u6|s_debounceCnt\(16),
	datad => VCC,
	cin => \u6|Add0~31\,
	combout => \u6|Add0~32_combout\,
	cout => \u6|Add0~33\);

-- Location: LCCOMB_X60_Y66_N24
\u6|s_debounceCnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|s_debounceCnt~6_combout\ = (\u6|s_debounceCnt[18]~4_combout\ & \u6|Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u6|s_debounceCnt[18]~4_combout\,
	datad => \u6|Add0~32_combout\,
	combout => \u6|s_debounceCnt~6_combout\);

-- Location: FF_X60_Y66_N25
\u6|s_debounceCnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u6|s_debounceCnt~6_combout\,
	ena => \u6|s_debounceCnt[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u6|s_debounceCnt\(16));

-- Location: LCCOMB_X61_Y65_N12
\u6|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|Add0~34_combout\ = (\u6|s_debounceCnt\(17) & (\u6|Add0~33\ & VCC)) # (!\u6|s_debounceCnt\(17) & (!\u6|Add0~33\))
-- \u6|Add0~35\ = CARRY((!\u6|s_debounceCnt\(17) & !\u6|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u6|s_debounceCnt\(17),
	datad => VCC,
	cin => \u6|Add0~33\,
	combout => \u6|Add0~34_combout\,
	cout => \u6|Add0~35\);

-- Location: LCCOMB_X60_Y66_N26
\u6|s_debounceCnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|s_debounceCnt~7_combout\ = (\u6|s_debounceCnt[18]~4_combout\ & \u6|Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u6|s_debounceCnt[18]~4_combout\,
	datad => \u6|Add0~34_combout\,
	combout => \u6|s_debounceCnt~7_combout\);

-- Location: FF_X60_Y66_N27
\u6|s_debounceCnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u6|s_debounceCnt~7_combout\,
	ena => \u6|s_debounceCnt[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u6|s_debounceCnt\(17));

-- Location: LCCOMB_X61_Y66_N30
\u6|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|Add0~20_combout\ = (\u6|s_debounceCnt\(10) & ((GND) # (!\u6|Add0~19\))) # (!\u6|s_debounceCnt\(10) & (\u6|Add0~19\ $ (GND)))
-- \u6|Add0~21\ = CARRY((\u6|s_debounceCnt\(10)) # (!\u6|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u6|s_debounceCnt\(10),
	datad => VCC,
	cin => \u6|Add0~19\,
	combout => \u6|Add0~20_combout\,
	cout => \u6|Add0~21\);

-- Location: LCCOMB_X61_Y66_N4
\u6|s_debounceCnt~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|s_debounceCnt~15_combout\ = (\u6|Add0~20_combout\ & \u6|s_debounceCnt[18]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u6|Add0~20_combout\,
	datad => \u6|s_debounceCnt[18]~4_combout\,
	combout => \u6|s_debounceCnt~15_combout\);

-- Location: FF_X61_Y66_N5
\u6|s_debounceCnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u6|s_debounceCnt~15_combout\,
	ena => \u6|s_debounceCnt[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u6|s_debounceCnt\(10));

-- Location: LCCOMB_X60_Y66_N28
\u6|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|LessThan0~4_combout\ = (\u6|s_debounceCnt\(13)) # ((\u6|s_debounceCnt\(12)) # ((\u6|s_debounceCnt\(10) & \u6|s_debounceCnt\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|s_debounceCnt\(13),
	datab => \u6|s_debounceCnt\(10),
	datac => \u6|s_debounceCnt\(11),
	datad => \u6|s_debounceCnt\(12),
	combout => \u6|LessThan0~4_combout\);

-- Location: LCCOMB_X60_Y66_N18
\u6|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|LessThan0~5_combout\ = (\u6|s_debounceCnt\(16)) # ((\u6|s_debounceCnt\(15)) # ((\u6|s_debounceCnt\(14) & \u6|LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|s_debounceCnt\(14),
	datab => \u6|s_debounceCnt\(16),
	datac => \u6|s_debounceCnt\(15),
	datad => \u6|LessThan0~4_combout\,
	combout => \u6|LessThan0~5_combout\);

-- Location: LCCOMB_X59_Y66_N20
\u6|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|LessThan0~6_combout\ = (\u6|s_debounceCnt\(18) & (\u6|s_debounceCnt\(19) & ((\u6|s_debounceCnt\(17)) # (\u6|LessThan0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|s_debounceCnt\(18),
	datab => \u6|s_debounceCnt\(17),
	datac => \u6|s_debounceCnt\(19),
	datad => \u6|LessThan0~5_combout\,
	combout => \u6|LessThan0~6_combout\);

-- Location: LCCOMB_X59_Y66_N2
\u6|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|LessThan0~7_combout\ = (\u6|s_debounceCnt\(21)) # ((\u6|s_debounceCnt\(20)) # ((\u6|LessThan0~3_combout\) # (\u6|LessThan0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|s_debounceCnt\(21),
	datab => \u6|s_debounceCnt\(20),
	datac => \u6|LessThan0~3_combout\,
	datad => \u6|LessThan0~6_combout\,
	combout => \u6|LessThan0~7_combout\);

-- Location: LCCOMB_X59_Y66_N30
\u6|s_debounceCnt[18]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|s_debounceCnt[18]~0_combout\ = (\u6|s_dirtyIn~q\ & ((!\u6|LessThan0~7_combout\) # (!\u6|s_debounceCnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|s_debounceCnt\(22),
	datab => \u6|s_dirtyIn~q\,
	datad => \u6|LessThan0~7_combout\,
	combout => \u6|s_debounceCnt[18]~0_combout\);

-- Location: LCCOMB_X61_Y65_N0
\u6|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|Add0~22_combout\ = (\u6|s_debounceCnt\(11) & (\u6|Add0~21\ & VCC)) # (!\u6|s_debounceCnt\(11) & (!\u6|Add0~21\))
-- \u6|Add0~23\ = CARRY((!\u6|s_debounceCnt\(11) & !\u6|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u6|s_debounceCnt\(11),
	datad => VCC,
	cin => \u6|Add0~21\,
	combout => \u6|Add0~22_combout\,
	cout => \u6|Add0~23\);

-- Location: LCCOMB_X59_Y66_N26
\u6|s_debounceCnt~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|s_debounceCnt~16_combout\ = (\u6|s_debounceCnt[18]~0_combout\ & ((\u6|Add0~22_combout\) # (!\u6|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u6|s_previousIn~q\,
	datac => \u6|s_debounceCnt[18]~0_combout\,
	datad => \u6|Add0~22_combout\,
	combout => \u6|s_debounceCnt~16_combout\);

-- Location: FF_X59_Y66_N27
\u6|s_debounceCnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u6|s_debounceCnt~16_combout\,
	ena => \u6|s_debounceCnt[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u6|s_debounceCnt\(11));

-- Location: LCCOMB_X61_Y65_N2
\u6|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|Add0~24_combout\ = (\u6|s_debounceCnt\(12) & ((GND) # (!\u6|Add0~23\))) # (!\u6|s_debounceCnt\(12) & (\u6|Add0~23\ $ (GND)))
-- \u6|Add0~25\ = CARRY((\u6|s_debounceCnt\(12)) # (!\u6|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u6|s_debounceCnt\(12),
	datad => VCC,
	cin => \u6|Add0~23\,
	combout => \u6|Add0~24_combout\,
	cout => \u6|Add0~25\);

-- Location: LCCOMB_X59_Y66_N18
\u6|s_debounceCnt~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|s_debounceCnt~8_combout\ = (\u6|s_debounceCnt[18]~4_combout\ & \u6|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u6|s_debounceCnt[18]~4_combout\,
	datad => \u6|Add0~24_combout\,
	combout => \u6|s_debounceCnt~8_combout\);

-- Location: FF_X59_Y66_N19
\u6|s_debounceCnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u6|s_debounceCnt~8_combout\,
	ena => \u6|s_debounceCnt[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u6|s_debounceCnt\(12));

-- Location: LCCOMB_X59_Y66_N10
\u6|s_debounceCnt~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|s_debounceCnt~9_combout\ = (\u6|s_debounceCnt[18]~4_combout\ & \u6|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u6|s_debounceCnt[18]~4_combout\,
	datad => \u6|Add0~26_combout\,
	combout => \u6|s_debounceCnt~9_combout\);

-- Location: FF_X59_Y66_N11
\u6|s_debounceCnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u6|s_debounceCnt~9_combout\,
	ena => \u6|s_debounceCnt[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u6|s_debounceCnt\(13));

-- Location: LCCOMB_X60_Y66_N12
\u6|s_pulsedOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|s_pulsedOut~1_combout\ = (!\u6|s_debounceCnt\(13) & (!\u6|s_debounceCnt\(21) & (!\u6|s_debounceCnt\(20) & !\u6|s_debounceCnt\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|s_debounceCnt\(13),
	datab => \u6|s_debounceCnt\(21),
	datac => \u6|s_debounceCnt\(20),
	datad => \u6|s_debounceCnt\(12),
	combout => \u6|s_pulsedOut~1_combout\);

-- Location: LCCOMB_X60_Y66_N16
\u6|s_pulsedOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|s_pulsedOut~0_combout\ = (!\u6|s_debounceCnt\(17) & (!\u6|s_debounceCnt\(6) & (!\u6|s_debounceCnt\(15) & !\u6|s_debounceCnt\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|s_debounceCnt\(17),
	datab => \u6|s_debounceCnt\(6),
	datac => \u6|s_debounceCnt\(15),
	datad => \u6|s_debounceCnt\(16),
	combout => \u6|s_pulsedOut~0_combout\);

-- Location: LCCOMB_X60_Y66_N4
\u6|s_pulsedOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|s_pulsedOut~2_combout\ = (!\u6|s_debounceCnt\(9) & (!\u6|s_debounceCnt\(8) & (!\u6|s_debounceCnt\(7) & !\u6|s_debounceCnt\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|s_debounceCnt\(9),
	datab => \u6|s_debounceCnt\(8),
	datac => \u6|s_debounceCnt\(7),
	datad => \u6|s_debounceCnt\(10),
	combout => \u6|s_pulsedOut~2_combout\);

-- Location: LCCOMB_X60_Y66_N20
\u6|s_pulsedOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|s_pulsedOut~3_combout\ = (!\u6|s_debounceCnt\(11) & (!\u6|s_debounceCnt\(18) & (!\u6|s_debounceCnt\(14) & !\u6|s_debounceCnt\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|s_debounceCnt\(11),
	datab => \u6|s_debounceCnt\(18),
	datac => \u6|s_debounceCnt\(14),
	datad => \u6|s_debounceCnt\(19),
	combout => \u6|s_pulsedOut~3_combout\);

-- Location: LCCOMB_X60_Y66_N2
\u6|s_pulsedOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|s_pulsedOut~4_combout\ = (\u6|s_pulsedOut~1_combout\ & (\u6|s_pulsedOut~0_combout\ & (\u6|s_pulsedOut~2_combout\ & \u6|s_pulsedOut~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|s_pulsedOut~1_combout\,
	datab => \u6|s_pulsedOut~0_combout\,
	datac => \u6|s_pulsedOut~2_combout\,
	datad => \u6|s_pulsedOut~3_combout\,
	combout => \u6|s_pulsedOut~4_combout\);

-- Location: LCCOMB_X59_Y66_N12
\u6|s_debounceCnt[18]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|s_debounceCnt[18]~2_combout\ = (\u6|s_debounceCnt\(0)) # (((\u6|s_debounceCnt\(5)) # (!\u6|s_pulsedOut~4_combout\)) # (!\u6|s_pulsedOut~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|s_debounceCnt\(0),
	datab => \u6|s_pulsedOut~5_combout\,
	datac => \u6|s_debounceCnt\(5),
	datad => \u6|s_pulsedOut~4_combout\,
	combout => \u6|s_debounceCnt[18]~2_combout\);

-- Location: LCCOMB_X59_Y66_N24
\u6|s_debounceCnt[18]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|s_debounceCnt[18]~3_combout\ = (\u6|s_debounceCnt\(22)) # (((\u6|s_debounceCnt[18]~2_combout\) # (!\u6|s_previousIn~q\)) # (!\u6|s_dirtyIn~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|s_debounceCnt\(22),
	datab => \u6|s_dirtyIn~q\,
	datac => \u6|s_previousIn~q\,
	datad => \u6|s_debounceCnt[18]~2_combout\,
	combout => \u6|s_debounceCnt[18]~3_combout\);

-- Location: LCCOMB_X61_Y65_N14
\u6|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|Add0~36_combout\ = (\u6|s_debounceCnt\(18) & ((GND) # (!\u6|Add0~35\))) # (!\u6|s_debounceCnt\(18) & (\u6|Add0~35\ $ (GND)))
-- \u6|Add0~37\ = CARRY((\u6|s_debounceCnt\(18)) # (!\u6|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u6|s_debounceCnt\(18),
	datad => VCC,
	cin => \u6|Add0~35\,
	combout => \u6|Add0~36_combout\,
	cout => \u6|Add0~37\);

-- Location: LCCOMB_X60_Y66_N30
\u6|s_debounceCnt[18]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|s_debounceCnt[18]~18_combout\ = (\u6|s_debounceCnt[18]~3_combout\ & (\u6|s_debounceCnt[18]~0_combout\ & ((\u6|Add0~36_combout\) # (!\u6|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|s_previousIn~q\,
	datab => \u6|s_debounceCnt[18]~3_combout\,
	datac => \u6|Add0~36_combout\,
	datad => \u6|s_debounceCnt[18]~0_combout\,
	combout => \u6|s_debounceCnt[18]~18_combout\);

-- Location: FF_X60_Y66_N31
\u6|s_debounceCnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u6|s_debounceCnt[18]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u6|s_debounceCnt\(18));

-- Location: LCCOMB_X61_Y65_N16
\u6|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|Add0~38_combout\ = (\u6|s_debounceCnt\(19) & (\u6|Add0~37\ & VCC)) # (!\u6|s_debounceCnt\(19) & (!\u6|Add0~37\))
-- \u6|Add0~39\ = CARRY((!\u6|s_debounceCnt\(19) & !\u6|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u6|s_debounceCnt\(19),
	datad => VCC,
	cin => \u6|Add0~37\,
	combout => \u6|Add0~38_combout\,
	cout => \u6|Add0~39\);

-- Location: LCCOMB_X61_Y65_N30
\u6|s_debounceCnt[19]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|s_debounceCnt[19]~19_combout\ = (\u6|s_debounceCnt[18]~3_combout\ & (\u6|s_debounceCnt[18]~0_combout\ & ((\u6|Add0~38_combout\) # (!\u6|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|s_previousIn~q\,
	datab => \u6|Add0~38_combout\,
	datac => \u6|s_debounceCnt[18]~3_combout\,
	datad => \u6|s_debounceCnt[18]~0_combout\,
	combout => \u6|s_debounceCnt[19]~19_combout\);

-- Location: FF_X61_Y65_N31
\u6|s_debounceCnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u6|s_debounceCnt[19]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u6|s_debounceCnt\(19));

-- Location: LCCOMB_X61_Y65_N18
\u6|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|Add0~40_combout\ = (\u6|s_debounceCnt\(20) & ((GND) # (!\u6|Add0~39\))) # (!\u6|s_debounceCnt\(20) & (\u6|Add0~39\ $ (GND)))
-- \u6|Add0~41\ = CARRY((\u6|s_debounceCnt\(20)) # (!\u6|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u6|s_debounceCnt\(20),
	datad => VCC,
	cin => \u6|Add0~39\,
	combout => \u6|Add0~40_combout\,
	cout => \u6|Add0~41\);

-- Location: LCCOMB_X61_Y65_N24
\u6|s_debounceCnt[20]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|s_debounceCnt[20]~10_combout\ = (\u6|Add0~40_combout\ & (\u6|s_debounceCnt[18]~3_combout\ & \u6|s_debounceCnt[18]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u6|Add0~40_combout\,
	datac => \u6|s_debounceCnt[18]~3_combout\,
	datad => \u6|s_debounceCnt[18]~4_combout\,
	combout => \u6|s_debounceCnt[20]~10_combout\);

-- Location: FF_X61_Y65_N25
\u6|s_debounceCnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u6|s_debounceCnt[20]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u6|s_debounceCnt\(20));

-- Location: LCCOMB_X61_Y65_N20
\u6|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|Add0~42_combout\ = (\u6|s_debounceCnt\(21) & (\u6|Add0~41\ & VCC)) # (!\u6|s_debounceCnt\(21) & (!\u6|Add0~41\))
-- \u6|Add0~43\ = CARRY((!\u6|s_debounceCnt\(21) & !\u6|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u6|s_debounceCnt\(21),
	datad => VCC,
	cin => \u6|Add0~41\,
	combout => \u6|Add0~42_combout\,
	cout => \u6|Add0~43\);

-- Location: LCCOMB_X60_Y66_N10
\u6|s_debounceCnt[21]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|s_debounceCnt[21]~11_combout\ = (\u6|s_debounceCnt[18]~4_combout\ & (\u6|Add0~42_combout\ & \u6|s_debounceCnt[18]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u6|s_debounceCnt[18]~4_combout\,
	datac => \u6|Add0~42_combout\,
	datad => \u6|s_debounceCnt[18]~3_combout\,
	combout => \u6|s_debounceCnt[21]~11_combout\);

-- Location: FF_X60_Y66_N11
\u6|s_debounceCnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u6|s_debounceCnt[21]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u6|s_debounceCnt\(21));

-- Location: LCCOMB_X61_Y65_N22
\u6|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|Add0~44_combout\ = \u6|Add0~43\ $ (\u6|s_debounceCnt\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u6|s_debounceCnt\(22),
	cin => \u6|Add0~43\,
	combout => \u6|Add0~44_combout\);

-- Location: LCCOMB_X61_Y65_N26
\u6|s_debounceCnt[22]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|s_debounceCnt[22]~25_combout\ = (\u6|s_dirtyIn~q\ & ((\u6|s_debounceCnt\(22) & ((!\u6|LessThan0~7_combout\))) # (!\u6|s_debounceCnt\(22) & (\u6|s_debounceCnt[18]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|s_dirtyIn~q\,
	datab => \u6|s_debounceCnt\(22),
	datac => \u6|s_debounceCnt[18]~2_combout\,
	datad => \u6|LessThan0~7_combout\,
	combout => \u6|s_debounceCnt[22]~25_combout\);

-- Location: LCCOMB_X61_Y65_N28
\u6|s_debounceCnt[22]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|s_debounceCnt[22]~26_combout\ = (\u6|s_previousIn~q\ & (\u6|Add0~44_combout\ & (\u6|s_debounceCnt[22]~25_combout\))) # (!\u6|s_previousIn~q\ & (((\u6|s_debounceCnt[18]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|Add0~44_combout\,
	datab => \u6|s_previousIn~q\,
	datac => \u6|s_debounceCnt[22]~25_combout\,
	datad => \u6|s_debounceCnt[18]~0_combout\,
	combout => \u6|s_debounceCnt[22]~26_combout\);

-- Location: FF_X61_Y65_N29
\u6|s_debounceCnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u6|s_debounceCnt[22]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u6|s_debounceCnt\(22));

-- Location: LCCOMB_X59_Y66_N4
\u6|s_debounceCnt[18]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|s_debounceCnt[18]~4_combout\ = (\u6|s_dirtyIn~q\ & (\u6|s_previousIn~q\ & ((!\u6|LessThan0~7_combout\) # (!\u6|s_debounceCnt\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|s_debounceCnt\(22),
	datab => \u6|s_dirtyIn~q\,
	datac => \u6|s_previousIn~q\,
	datad => \u6|LessThan0~7_combout\,
	combout => \u6|s_debounceCnt[18]~4_combout\);

-- Location: LCCOMB_X61_Y66_N18
\u6|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|Add0~8_combout\ = (\u6|s_debounceCnt\(4) & ((GND) # (!\u6|Add0~7\))) # (!\u6|s_debounceCnt\(4) & (\u6|Add0~7\ $ (GND)))
-- \u6|Add0~9\ = CARRY((\u6|s_debounceCnt\(4)) # (!\u6|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u6|s_debounceCnt\(4),
	datad => VCC,
	cin => \u6|Add0~7\,
	combout => \u6|Add0~8_combout\,
	cout => \u6|Add0~9\);

-- Location: LCCOMB_X59_Y66_N22
\u6|s_debounceCnt~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|s_debounceCnt~23_combout\ = (\u6|s_debounceCnt[18]~4_combout\ & \u6|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u6|s_debounceCnt[18]~4_combout\,
	datad => \u6|Add0~8_combout\,
	combout => \u6|s_debounceCnt~23_combout\);

-- Location: FF_X59_Y66_N23
\u6|s_debounceCnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u6|s_debounceCnt~23_combout\,
	ena => \u6|s_debounceCnt[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u6|s_debounceCnt\(4));

-- Location: LCCOMB_X61_Y66_N0
\u6|s_debounceCnt~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|s_debounceCnt~27_combout\ = (\u6|Add0~10_combout\ & \u6|s_debounceCnt[18]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u6|Add0~10_combout\,
	datad => \u6|s_debounceCnt[18]~4_combout\,
	combout => \u6|s_debounceCnt~27_combout\);

-- Location: FF_X61_Y66_N1
\u6|s_debounceCnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u6|s_debounceCnt~27_combout\,
	ena => \u6|s_debounceCnt[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u6|s_debounceCnt\(5));

-- Location: LCCOMB_X58_Y66_N18
\u6|s_pulsedOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|s_pulsedOut~6_combout\ = (!\u6|s_debounceCnt\(22) & (\u6|s_previousIn~q\ & (\u6|s_dirtyIn~q\ & \u6|s_debounceCnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|s_debounceCnt\(22),
	datab => \u6|s_previousIn~q\,
	datac => \u6|s_dirtyIn~q\,
	datad => \u6|s_debounceCnt\(0),
	combout => \u6|s_pulsedOut~6_combout\);

-- Location: LCCOMB_X58_Y66_N16
\u6|s_pulsedOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|s_pulsedOut~7_combout\ = (!\u6|s_debounceCnt\(5) & (\u6|s_pulsedOut~5_combout\ & (\u6|s_pulsedOut~4_combout\ & \u6|s_pulsedOut~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|s_debounceCnt\(5),
	datab => \u6|s_pulsedOut~5_combout\,
	datac => \u6|s_pulsedOut~4_combout\,
	datad => \u6|s_pulsedOut~6_combout\,
	combout => \u6|s_pulsedOut~7_combout\);

-- Location: FF_X58_Y66_N17
\u6|s_pulsedOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u6|s_pulsedOut~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u6|s_pulsedOut~q\);

-- Location: LCCOMB_X52_Y72_N6
\u5|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|Selector2~0_combout\ = (\KEY[0]~input_o\ & ((\u5|s_state.B25CL~q\ & ((\u6|s_pulsedOut~q\))) # (!\u5|s_state.B25CL~q\ & (\u5|s_state.B50CL~q\ & !\u6|s_pulsedOut~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \u5|s_state.B25CL~q\,
	datac => \u5|s_state.B50CL~q\,
	datad => \u6|s_pulsedOut~q\,
	combout => \u5|Selector2~0_combout\);

-- Location: FF_X52_Y72_N7
\u5|s_state.B50CL\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u5|Selector2~0_combout\,
	ena => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|s_state.B50CL~q\);

-- Location: LCCOMB_X52_Y72_N28
\u5|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|Selector3~0_combout\ = (\KEY[0]~input_o\ & ((\u6|s_pulsedOut~q\ & ((\u5|s_state.B50CL~q\))) # (!\u6|s_pulsedOut~q\ & (\u5|s_state.B10DL~q\ & !\u5|s_state.B50CL~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \u6|s_pulsedOut~q\,
	datac => \u5|s_state.B10DL~q\,
	datad => \u5|s_state.B50CL~q\,
	combout => \u5|Selector3~0_combout\);

-- Location: FF_X52_Y72_N29
\u5|s_state.B10DL\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u5|Selector3~0_combout\,
	ena => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|s_state.B10DL~q\);

-- Location: LCCOMB_X52_Y72_N14
\u5|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|Selector0~0_combout\ = (\KEY[0]~input_o\ & ((\u5|s_state.B10DL~q\ & ((!\u6|s_pulsedOut~q\))) # (!\u5|s_state.B10DL~q\ & ((\u5|s_state.B33CL~q\) # (\u6|s_pulsedOut~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \u5|s_state.B10DL~q\,
	datac => \u5|s_state.B33CL~q\,
	datad => \u6|s_pulsedOut~q\,
	combout => \u5|Selector0~0_combout\);

-- Location: FF_X52_Y72_N15
\u5|s_state.B33CL\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u5|Selector0~0_combout\,
	ena => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|s_state.B33CL~q\);

-- Location: LCCOMB_X52_Y72_N12
\u5|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|Selector1~0_combout\ = (\KEY[0]~input_o\ & ((\u5|s_state.B33CL~q\ & (\u5|s_state.B25CL~q\ & !\u6|s_pulsedOut~q\)) # (!\u5|s_state.B33CL~q\ & ((\u6|s_pulsedOut~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \u5|s_state.B33CL~q\,
	datac => \u5|s_state.B25CL~q\,
	datad => \u6|s_pulsedOut~q\,
	combout => \u5|Selector1~0_combout\);

-- Location: FF_X52_Y72_N13
\u5|s_state.B25CL\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u5|Selector1~0_combout\,
	ena => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|s_state.B25CL~q\);

-- Location: LCCOMB_X53_Y72_N28
\u5|b25cl_d~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|b25cl_d~feeder_combout\ = \u5|s_state.B25CL~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u5|s_state.B25CL~q\,
	combout => \u5|b25cl_d~feeder_combout\);

-- Location: FF_X53_Y72_N29
\u5|b25cl_d\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u5|b25cl_d~feeder_combout\,
	ena => \u5|b50cl_d~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|b25cl_d~q\);

-- Location: FF_X53_Y72_N23
\u5|b50cl_d\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \u5|s_state.B50CL~q\,
	sload => VCC,
	ena => \u5|b50cl_d~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|b50cl_d~q\);

-- Location: LCCOMB_X53_Y72_N30
\u5|b33cl_d~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|b33cl_d~0_combout\ = !\u5|s_state.B33CL~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u5|s_state.B33CL~q\,
	combout => \u5|b33cl_d~0_combout\);

-- Location: FF_X53_Y72_N31
\u5|b33cl_d\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u5|b33cl_d~0_combout\,
	ena => \u5|b50cl_d~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|b33cl_d~q\);

-- Location: LCCOMB_X53_Y72_N22
\u4|visor_dez~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|visor_dez~0_combout\ = (\u5|b25cl_d~q\) # ((\u5|b50cl_d~q\) # (\u5|b33cl_d~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u5|b25cl_d~q\,
	datac => \u5|b50cl_d~q\,
	datad => \u5|b33cl_d~q\,
	combout => \u4|visor_dez~0_combout\);

-- Location: LCCOMB_X53_Y72_N0
\u4|visor_dez[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|visor_dez[0]~feeder_combout\ = \u4|visor_dez~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u4|visor_dez~0_combout\,
	combout => \u4|visor_dez[0]~feeder_combout\);

-- Location: FF_X53_Y72_N1
\u4|visor_dez[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u4|visor_dez[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|visor_dez\(0));

-- Location: LCCOMB_X54_Y72_N24
\u4|visor_dez[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|visor_dez[1]~2_combout\ = !\u4|visor_dez~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u4|visor_dez~0_combout\,
	combout => \u4|visor_dez[1]~2_combout\);

-- Location: FF_X54_Y72_N25
\u4|visor_dez[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u4|visor_dez[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|visor_dez\(1));

-- Location: LCCOMB_X54_Y72_N6
\u4|visor_dez[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|visor_dez[2]~3_combout\ = !\u4|visor_dez~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u4|visor_dez~0_combout\,
	combout => \u4|visor_dez[2]~3_combout\);

-- Location: FF_X54_Y72_N7
\u4|visor_dez[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u4|visor_dez[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|visor_dez\(2));

-- Location: LCCOMB_X54_Y72_N12
\u4|visor_dez[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|visor_dez[5]~feeder_combout\ = \u4|visor_dez~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u4|visor_dez~0_combout\,
	combout => \u4|visor_dez[5]~feeder_combout\);

-- Location: FF_X54_Y72_N13
\u4|visor_dez[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u4|visor_dez[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|visor_dez\(5));

-- Location: LCCOMB_X53_Y72_N14
\u4|visor_dez[6]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|visor_dez[6]~4_combout\ = !\u4|visor_dez~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u4|visor_dez~0_combout\,
	combout => \u4|visor_dez[6]~4_combout\);

-- Location: FF_X53_Y72_N15
\u4|visor_dez[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u4|visor_dez[6]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|visor_dez\(6));

-- Location: LCCOMB_X53_Y72_N24
\u4|visor_cen~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|visor_cen~0_combout\ = (\u5|b33cl_d~q\) # (!\u5|b25cl_d~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u5|b33cl_d~q\,
	datad => \u5|b25cl_d~q\,
	combout => \u4|visor_cen~0_combout\);

-- Location: LCCOMB_X57_Y72_N4
\u4|visor_cen[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|visor_cen[1]~feeder_combout\ = \u4|visor_cen~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u4|visor_cen~0_combout\,
	combout => \u4|visor_cen[1]~feeder_combout\);

-- Location: FF_X57_Y72_N5
\u4|visor_cen[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u4|visor_cen[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|visor_cen\(1));

-- Location: LCCOMB_X53_Y72_N26
\u4|visor_dez~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|visor_dez~1_combout\ = (\u5|b33cl_d~q\) # (\u5|b25cl_d~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u5|b33cl_d~q\,
	datad => \u5|b25cl_d~q\,
	combout => \u4|visor_dez~1_combout\);

-- Location: LCCOMB_X53_Y72_N20
\u4|visor_cen[4]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|visor_cen[4]~1_combout\ = !\u4|visor_dez~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u4|visor_dez~1_combout\,
	combout => \u4|visor_cen[4]~1_combout\);

-- Location: FF_X53_Y72_N21
\u4|visor_cen[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u4|visor_cen[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|visor_cen\(4));

-- Location: LCCOMB_X54_Y72_N10
\u4|visor_cen[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|visor_cen[5]~2_combout\ = !\u5|b33cl_d~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u5|b33cl_d~q\,
	combout => \u4|visor_cen[5]~2_combout\);

-- Location: FF_X54_Y72_N11
\u4|visor_cen[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u4|visor_cen[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|visor_cen\(5));

-- Location: FF_X53_Y72_N27
\u4|visor_cen[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u4|visor_dez~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|visor_cen\(6));

-- Location: LCCOMB_X53_Y72_N16
\u4|visor_mil~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|visor_mil~0_combout\ = (\u5|b33cl_d~q\) # ((\u5|b25cl_d~q\) # (!\u5|b50cl_d~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|b33cl_d~q\,
	datab => \u5|b50cl_d~q\,
	datad => \u5|b25cl_d~q\,
	combout => \u4|visor_mil~0_combout\);

-- Location: FF_X53_Y72_N17
\u4|visor_mil[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u4|visor_mil~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|visor_mil\(1));

-- Location: LCCOMB_X53_Y72_N18
\u4|visor_mil[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|visor_mil[2]~feeder_combout\ = \u4|visor_cen~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u4|visor_cen~0_combout\,
	combout => \u4|visor_mil[2]~feeder_combout\);

-- Location: FF_X53_Y72_N19
\u4|visor_mil[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u4|visor_mil[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|visor_mil\(2));

-- Location: LCCOMB_X54_Y72_N8
\u4|visor_mil[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|visor_mil[3]~feeder_combout\ = \u4|visor_dez~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u4|visor_dez~0_combout\,
	combout => \u4|visor_mil[3]~feeder_combout\);

-- Location: FF_X54_Y72_N9
\u4|visor_mil[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u4|visor_mil[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|visor_mil\(3));

-- Location: LCCOMB_X57_Y72_N30
\u4|visor_mil[4]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|visor_mil[4]~1_combout\ = !\u4|visor_cen~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u4|visor_cen~0_combout\,
	combout => \u4|visor_mil[4]~1_combout\);

-- Location: FF_X57_Y72_N31
\u4|visor_mil[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u4|visor_mil[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|visor_mil\(4));

-- Location: LCCOMB_X53_Y72_N12
\u4|visor_mil[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|visor_mil[5]~2_combout\ = !\u4|visor_mil~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u4|visor_mil~0_combout\,
	combout => \u4|visor_mil[5]~2_combout\);

-- Location: FF_X53_Y72_N13
\u4|visor_mil[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u4|visor_mil[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|visor_mil\(5));

-- Location: LCCOMB_X54_Y72_N2
\u4|visor_mil[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|visor_mil[6]~feeder_combout\ = \u4|visor_dez~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u4|visor_dez~0_combout\,
	combout => \u4|visor_mil[6]~feeder_combout\);

-- Location: FF_X54_Y72_N3
\u4|visor_mil[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u4|visor_mil[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|visor_mil\(6));

-- Location: IOIBUF_X115_Y41_N8
\SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X3_Y73_N8
\SW[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X0_Y55_N8
\SW[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\SW[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X0_Y59_N15
\SW[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: IOIBUF_X7_Y0_N22
\SW[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: IOIBUF_X115_Y24_N8
\SW[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: IOIBUF_X31_Y0_N1
\SW[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: IOIBUF_X115_Y55_N22
\SW[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: IOIBUF_X83_Y0_N1
\SW[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(10),
	o => \SW[10]~input_o\);

-- Location: IOIBUF_X3_Y0_N15
\SW[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(11),
	o => \SW[11]~input_o\);

-- Location: IOIBUF_X81_Y0_N22
\SW[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(12),
	o => \SW[12]~input_o\);

-- Location: IOIBUF_X0_Y23_N15
\SW[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(13),
	o => \SW[13]~input_o\);

-- Location: IOIBUF_X115_Y53_N15
\SW[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(14),
	o => \SW[14]~input_o\);

-- Location: IOIBUF_X52_Y0_N15
\KEY[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: IOIBUF_X89_Y73_N8
\KEY[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(7) <= \LEDR[7]~output_o\;

ww_LEDR(8) <= \LEDR[8]~output_o\;

ww_LEDR(9) <= \LEDR[9]~output_o\;

ww_LEDR(10) <= \LEDR[10]~output_o\;

ww_LEDR(11) <= \LEDR[11]~output_o\;

ww_LEDR(12) <= \LEDR[12]~output_o\;

ww_LEDR(13) <= \LEDR[13]~output_o\;

ww_LEDR(14) <= \LEDR[14]~output_o\;

ww_LEDR(15) <= \LEDR[15]~output_o\;

ww_LEDR(16) <= \LEDR[16]~output_o\;

ww_LEDR(17) <= \LEDR[17]~output_o\;

ww_LEDG(0) <= \LEDG[0]~output_o\;

ww_LEDG(1) <= \LEDG[1]~output_o\;

ww_LEDG(2) <= \LEDG[2]~output_o\;

ww_LEDG(3) <= \LEDG[3]~output_o\;

ww_LEDG(4) <= \LEDG[4]~output_o\;

ww_LEDG(5) <= \LEDG[5]~output_o\;

ww_LEDG(6) <= \LEDG[6]~output_o\;

ww_LEDG(7) <= \LEDG[7]~output_o\;

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX3(0) <= \HEX3[0]~output_o\;

ww_HEX3(1) <= \HEX3[1]~output_o\;

ww_HEX3(2) <= \HEX3[2]~output_o\;

ww_HEX3(3) <= \HEX3[3]~output_o\;

ww_HEX3(4) <= \HEX3[4]~output_o\;

ww_HEX3(5) <= \HEX3[5]~output_o\;

ww_HEX3(6) <= \HEX3[6]~output_o\;

ww_HEX4(0) <= \HEX4[0]~output_o\;

ww_HEX4(1) <= \HEX4[1]~output_o\;

ww_HEX4(2) <= \HEX4[2]~output_o\;

ww_HEX4(3) <= \HEX4[3]~output_o\;

ww_HEX4(4) <= \HEX4[4]~output_o\;

ww_HEX4(5) <= \HEX4[5]~output_o\;

ww_HEX4(6) <= \HEX4[6]~output_o\;

ww_HEX5(0) <= \HEX5[0]~output_o\;

ww_HEX5(1) <= \HEX5[1]~output_o\;

ww_HEX5(2) <= \HEX5[2]~output_o\;

ww_HEX5(3) <= \HEX5[3]~output_o\;

ww_HEX5(4) <= \HEX5[4]~output_o\;

ww_HEX5(5) <= \HEX5[5]~output_o\;

ww_HEX5(6) <= \HEX5[6]~output_o\;

ww_HEX6(0) <= \HEX6[0]~output_o\;

ww_HEX6(1) <= \HEX6[1]~output_o\;

ww_HEX6(2) <= \HEX6[2]~output_o\;

ww_HEX6(3) <= \HEX6[3]~output_o\;

ww_HEX6(4) <= \HEX6[4]~output_o\;

ww_HEX6(5) <= \HEX6[5]~output_o\;

ww_HEX6(6) <= \HEX6[6]~output_o\;

ww_HEX7(0) <= \HEX7[0]~output_o\;

ww_HEX7(1) <= \HEX7[1]~output_o\;

ww_HEX7(2) <= \HEX7[2]~output_o\;

ww_HEX7(3) <= \HEX7[3]~output_o\;

ww_HEX7(4) <= \HEX7[4]~output_o\;

ww_HEX7(5) <= \HEX7[5]~output_o\;

ww_HEX7(6) <= \HEX7[6]~output_o\;
END structure;


