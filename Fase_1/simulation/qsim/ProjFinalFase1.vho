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

-- DATE "06/09/2021 18:33:50"

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

ENTITY 	Fase1 IS
    PORT (
	CLOCK_50 : IN std_logic;
	SW : IN std_logic_vector(17 DOWNTO 0);
	KEY : IN std_logic_vector(3 DOWNTO 0);
	LEDR : BUFFER std_logic_vector(17 DOWNTO 0);
	LEDG : BUFFER std_logic_vector(7 DOWNTO 0);
	HEX0 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX1 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX2 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX3 : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END Fase1;

-- Design Ports Information
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[10]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[11]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[12]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[13]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[14]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[8]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[9]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[10]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[11]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[12]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[13]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[14]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[15]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[16]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[17]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[2]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[3]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[4]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[5]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[6]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[7]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[17]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[16]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[15]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Fase1 IS
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
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SW[0]~input_o\ : std_logic;
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
SIGNAL \KEY[1]~input_o\ : std_logic;
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
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \SW[15]~input_o\ : std_logic;
SIGNAL \SW[16]~input_o\ : std_logic;
SIGNAL \SW[17]~input_o\ : std_logic;
SIGNAL \u3|proc_sinc~0_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \u3|s_state~10_combout\ : std_logic;
SIGNAL \u3|s_state.E0~q\ : std_logic;
SIGNAL \u3|enable_timer~0_combout\ : std_logic;
SIGNAL \u3|enable_timer~q\ : std_logic;
SIGNAL \u2|Add1~0_combout\ : std_logic;
SIGNAL \u2|s_counter~0_combout\ : std_logic;
SIGNAL \u2|s_cntZero~0_combout\ : std_logic;
SIGNAL \u2|s_counter[0]~1_combout\ : std_logic;
SIGNAL \u2|Add1~1\ : std_logic;
SIGNAL \u2|Add1~2_combout\ : std_logic;
SIGNAL \u3|timeVal[1]~feeder_combout\ : std_logic;
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
SIGNAL \u2|s_cntZero~2_combout\ : std_logic;
SIGNAL \u2|s_cntZero~q\ : std_logic;
SIGNAL \u3|Selector6~0_combout\ : std_logic;
SIGNAL \u3|s_state.E3~q\ : std_logic;
SIGNAL \u3|Selector4~0_combout\ : std_logic;
SIGNAL \u3|Selector4~1_combout\ : std_logic;
SIGNAL \u3|s_state.E1~q\ : std_logic;
SIGNAL \u3|Selector5~0_combout\ : std_logic;
SIGNAL \u3|s_state.E2~q\ : std_logic;
SIGNAL \u3|ledr~feeder_combout\ : std_logic;
SIGNAL \u3|ledr~q\ : std_logic;
SIGNAL \u3|ledg~feeder_combout\ : std_logic;
SIGNAL \u3|ledg~q\ : std_logic;
SIGNAL \u3|ola~0_combout\ : std_logic;
SIGNAL \u3|ola~q\ : std_logic;
SIGNAL \u0|s_count[0]~32_combout\ : std_logic;
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
SIGNAL \u0|LessThan0~0_combout\ : std_logic;
SIGNAL \u0|LessThan0~1_combout\ : std_logic;
SIGNAL \u0|LessThan0~2_combout\ : std_logic;
SIGNAL \u0|LessThan0~3_combout\ : std_logic;
SIGNAL \u0|LessThan0~4_combout\ : std_logic;
SIGNAL \u0|LessThan0~5_combout\ : std_logic;
SIGNAL \u0|LessThan0~10_combout\ : std_logic;
SIGNAL \u0|LessThan0~12_combout\ : std_logic;
SIGNAL \u0|LessThan0~11_combout\ : std_logic;
SIGNAL \u0|LessThan0~13_combout\ : std_logic;
SIGNAL \u0|LessThan0~14_combout\ : std_logic;
SIGNAL \u0|LessThan0~6_combout\ : std_logic;
SIGNAL \u0|LessThan0~7_combout\ : std_logic;
SIGNAL \u0|LessThan0~8_combout\ : std_logic;
SIGNAL \u0|LessThan0~9_combout\ : std_logic;
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
SIGNAL \u0|LessThan1~3_combout\ : std_logic;
SIGNAL \u0|LessThan1~4_combout\ : std_logic;
SIGNAL \u0|clkOut~0_combout\ : std_logic;
SIGNAL \u0|clkOut~1_combout\ : std_logic;
SIGNAL \u0|LessThan1~0_combout\ : std_logic;
SIGNAL \u0|LessThan1~1_combout\ : std_logic;
SIGNAL \u0|LessThan1~2_combout\ : std_logic;
SIGNAL \u0|clkOut~2_combout\ : std_logic;
SIGNAL \u0|clkOut~q\ : std_logic;
SIGNAL \u1|mask[0]~0_combout\ : std_logic;
SIGNAL \u3|epro~feeder_combout\ : std_logic;
SIGNAL \u3|epro~q\ : std_logic;
SIGNAL \u1|visor_uni~0_combout\ : std_logic;
SIGNAL \u1|visor_uni~1_combout\ : std_logic;
SIGNAL \u1|visor_dez~0_combout\ : std_logic;
SIGNAL \u1|visor_dez~1_combout\ : std_logic;
SIGNAL \u1|visor_dez~2_combout\ : std_logic;
SIGNAL \u1|visor_dez[1]~feeder_combout\ : std_logic;
SIGNAL \u1|visor_dez~3_combout\ : std_logic;
SIGNAL \u1|visor_dez~4_combout\ : std_logic;
SIGNAL \u1|visor_cen~0_combout\ : std_logic;
SIGNAL \u1|visor_mil[1]~0_combout\ : std_logic;
SIGNAL \u1|visor_cen[2]~feeder_combout\ : std_logic;
SIGNAL \u1|visor_cen[3]~feeder_combout\ : std_logic;
SIGNAL \u1|visor_cen~1_combout\ : std_logic;
SIGNAL \u1|visor_cen~2_combout\ : std_logic;
SIGNAL \u1|visor_mil[1]~1_combout\ : std_logic;
SIGNAL \u1|visor_mil[2]~2_combout\ : std_logic;
SIGNAL \u1|visor_mil[3]~3_combout\ : std_logic;
SIGNAL \u1|visor_mil[4]~4_combout\ : std_logic;
SIGNAL \u1|visor_mil[4]~5_combout\ : std_logic;
SIGNAL \u1|visor_mil[6]~6_combout\ : std_logic;
SIGNAL \u0|s_count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \u1|visor_uni\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \u1|visor_dez\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \u1|visor_cen\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \u1|visor_mil\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \u1|mask\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \u3|timeVal\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u2|s_counter\ : std_logic_vector(7 DOWNTO 0);
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

-- Location: IOOBUF_X69_Y73_N16
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

-- Location: IOOBUF_X94_Y73_N2
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

-- Location: IOOBUF_X94_Y73_N9
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

-- Location: IOOBUF_X107_Y73_N16
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

-- Location: IOOBUF_X87_Y73_N16
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

-- Location: IOOBUF_X87_Y73_N9
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

-- Location: IOOBUF_X72_Y73_N9
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

-- Location: IOOBUF_X72_Y73_N2
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

-- Location: IOOBUF_X69_Y73_N2
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

-- Location: IOOBUF_X83_Y73_N23
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

-- Location: IOOBUF_X60_Y73_N23
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

-- Location: IOOBUF_X65_Y73_N23
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

-- Location: IOOBUF_X65_Y73_N16
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

-- Location: IOOBUF_X67_Y73_N9
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

-- Location: IOOBUF_X58_Y73_N2
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

-- Location: IOOBUF_X65_Y73_N9
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

-- Location: IOOBUF_X67_Y73_N2
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

-- Location: IOOBUF_X60_Y73_N16
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

-- Location: IOOBUF_X107_Y73_N9
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

-- Location: IOOBUF_X111_Y73_N9
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

-- Location: IOOBUF_X83_Y73_N2
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

-- Location: IOOBUF_X85_Y73_N23
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

-- Location: IOOBUF_X72_Y73_N16
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

-- Location: IOOBUF_X74_Y73_N16
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

-- Location: IOOBUF_X72_Y73_N23
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

-- Location: IOOBUF_X74_Y73_N23
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

-- Location: IOOBUF_X69_Y73_N23
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

-- Location: IOOBUF_X107_Y73_N23
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

-- Location: IOOBUF_X67_Y73_N23
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

-- Location: IOOBUF_X115_Y50_N2
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

-- Location: IOOBUF_X115_Y54_N16
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

-- Location: IOOBUF_X115_Y67_N16
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

-- Location: IOOBUF_X115_Y69_N2
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

-- Location: IOOBUF_X115_Y41_N2
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

-- Location: IOOBUF_X115_Y30_N9
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

-- Location: IOOBUF_X115_Y25_N23
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

-- Location: IOOBUF_X115_Y30_N2
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

-- Location: IOOBUF_X115_Y20_N9
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

-- Location: IOOBUF_X115_Y22_N2
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

-- Location: IOOBUF_X115_Y28_N9
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

-- Location: IOOBUF_X115_Y17_N9
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

-- Location: IOOBUF_X115_Y16_N2
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

-- Location: IOOBUF_X115_Y19_N9
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

-- Location: IOOBUF_X115_Y19_N2
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

-- Location: IOOBUF_X115_Y18_N2
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

-- Location: IOOBUF_X115_Y20_N2
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

-- Location: IOOBUF_X115_Y21_N16
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

-- Location: IOOBUF_X115_Y25_N16
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

-- Location: IOOBUF_X115_Y29_N2
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

-- Location: IOOBUF_X100_Y0_N2
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

-- Location: IOOBUF_X111_Y0_N2
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

-- Location: IOOBUF_X105_Y0_N23
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

-- Location: IOOBUF_X105_Y0_N9
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

-- Location: IOOBUF_X105_Y0_N2
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

-- Location: IOIBUF_X0_Y36_N15
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G4
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

-- Location: IOIBUF_X115_Y6_N15
\SW[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(15),
	o => \SW[15]~input_o\);

-- Location: IOIBUF_X115_Y13_N1
\SW[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(16),
	o => \SW[16]~input_o\);

-- Location: IOIBUF_X115_Y14_N8
\SW[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(17),
	o => \SW[17]~input_o\);

-- Location: LCCOMB_X113_Y38_N2
\u3|proc_sinc~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|proc_sinc~0_combout\ = (\SW[15]~input_o\) # ((\SW[16]~input_o\) # (\SW[17]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[15]~input_o\,
	datab => \SW[16]~input_o\,
	datac => \SW[17]~input_o\,
	combout => \u3|proc_sinc~0_combout\);

-- Location: IOIBUF_X115_Y40_N8
\KEY[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: LCCOMB_X112_Y38_N14
\u3|s_state~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|s_state~10_combout\ = (\KEY[0]~input_o\ & ((\u2|s_cntZero~q\) # (\u3|s_state.E0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u2|s_cntZero~q\,
	datac => \u3|s_state.E0~q\,
	datad => \KEY[0]~input_o\,
	combout => \u3|s_state~10_combout\);

-- Location: FF_X112_Y38_N15
\u3|s_state.E0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u3|s_state~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|s_state.E0~q\);

-- Location: LCCOMB_X113_Y38_N24
\u3|enable_timer~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|enable_timer~0_combout\ = (\u3|s_state.E2~q\) # (!\u3|s_state.E0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|s_state.E0~q\,
	datad => \u3|s_state.E2~q\,
	combout => \u3|enable_timer~0_combout\);

-- Location: FF_X113_Y38_N25
\u3|enable_timer\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u3|enable_timer~0_combout\,
	ena => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|enable_timer~q\);

-- Location: LCCOMB_X114_Y38_N10
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

-- Location: LCCOMB_X113_Y38_N16
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

-- Location: LCCOMB_X113_Y38_N22
\u2|s_cntZero~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|s_cntZero~0_combout\ = (\u2|s_counter\(1) & (\u2|s_counter\(0) & (\u2|s_counter\(2) & \u2|s_counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|s_counter\(1),
	datab => \u2|s_counter\(0),
	datac => \u2|s_counter\(2),
	datad => \u2|s_counter\(3),
	combout => \u2|s_cntZero~0_combout\);

-- Location: LCCOMB_X113_Y38_N6
\u2|s_counter[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|s_counter[0]~1_combout\ = ((\u3|enable_timer~q\) # ((!\u2|s_cntZero~1_combout\) # (!\u2|s_cntZero~0_combout\))) # (!\KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \u3|enable_timer~q\,
	datac => \u2|s_cntZero~0_combout\,
	datad => \u2|s_cntZero~1_combout\,
	combout => \u2|s_counter[0]~1_combout\);

-- Location: FF_X113_Y38_N17
\u2|s_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u2|s_counter~0_combout\,
	ena => \u2|s_counter[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|s_counter\(0));

-- Location: LCCOMB_X114_Y38_N12
\u2|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Add1~2_combout\ = (\u2|s_counter\(1) & (!\u2|Add1~1\)) # (!\u2|s_counter\(1) & (\u2|Add1~1\ & VCC))
-- \u2|Add1~3\ = CARRY((\u2|s_counter\(1) & !\u2|Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|s_counter\(1),
	datad => VCC,
	cin => \u2|Add1~1\,
	combout => \u2|Add1~2_combout\,
	cout => \u2|Add1~3\);

-- Location: LCCOMB_X113_Y38_N12
\u3|timeVal[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|timeVal[1]~feeder_combout\ = \u3|s_state.E2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u3|s_state.E2~q\,
	combout => \u3|timeVal[1]~feeder_combout\);

-- Location: FF_X113_Y38_N13
\u3|timeVal[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u3|timeVal[1]~feeder_combout\,
	ena => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|timeVal\(1));

-- Location: LCCOMB_X113_Y38_N10
\u2|s_counter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|s_counter~2_combout\ = (\KEY[0]~input_o\ & ((\u3|enable_timer~q\ & ((\u3|timeVal\(1)))) # (!\u3|enable_timer~q\ & (!\u2|Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \u3|enable_timer~q\,
	datac => \u2|Add1~2_combout\,
	datad => \u3|timeVal\(1),
	combout => \u2|s_counter~2_combout\);

-- Location: FF_X113_Y38_N11
\u2|s_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u2|s_counter~2_combout\,
	ena => \u2|s_counter[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|s_counter\(1));

-- Location: LCCOMB_X114_Y38_N14
\u2|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Add1~4_combout\ = (\u2|s_counter\(2) & (\u2|Add1~3\ $ (GND))) # (!\u2|s_counter\(2) & ((GND) # (!\u2|Add1~3\)))
-- \u2|Add1~5\ = CARRY((!\u2|Add1~3\) # (!\u2|s_counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|s_counter\(2),
	datad => VCC,
	cin => \u2|Add1~3\,
	combout => \u2|Add1~4_combout\,
	cout => \u2|Add1~5\);

-- Location: LCCOMB_X113_Y38_N4
\u2|s_counter~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|s_counter~3_combout\ = (\KEY[0]~input_o\ & ((\u3|enable_timer~q\ & ((!\u3|timeVal\(1)))) # (!\u3|enable_timer~q\ & (!\u2|Add1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \u3|enable_timer~q\,
	datac => \u2|Add1~4_combout\,
	datad => \u3|timeVal\(1),
	combout => \u2|s_counter~3_combout\);

-- Location: FF_X113_Y38_N5
\u2|s_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u2|s_counter~3_combout\,
	ena => \u2|s_counter[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|s_counter\(2));

-- Location: LCCOMB_X114_Y38_N16
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

-- Location: LCCOMB_X114_Y38_N4
\u2|s_counter~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|s_counter~4_combout\ = (\KEY[0]~input_o\ & ((\u3|enable_timer~q\) # (!\u2|Add1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[0]~input_o\,
	datac => \u3|enable_timer~q\,
	datad => \u2|Add1~6_combout\,
	combout => \u2|s_counter~4_combout\);

-- Location: FF_X114_Y38_N5
\u2|s_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u2|s_counter~4_combout\,
	ena => \u2|s_counter[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|s_counter\(3));

-- Location: LCCOMB_X114_Y38_N18
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

-- Location: LCCOMB_X114_Y38_N2
\u2|s_counter~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|s_counter~5_combout\ = (\KEY[0]~input_o\ & ((\u3|enable_timer~q\) # (!\u2|Add1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[0]~input_o\,
	datac => \u3|enable_timer~q\,
	datad => \u2|Add1~8_combout\,
	combout => \u2|s_counter~5_combout\);

-- Location: FF_X114_Y38_N3
\u2|s_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u2|s_counter~5_combout\,
	ena => \u2|s_counter[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|s_counter\(4));

-- Location: LCCOMB_X114_Y38_N20
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

-- Location: LCCOMB_X114_Y38_N28
\u2|s_counter~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|s_counter~6_combout\ = (\KEY[0]~input_o\ & ((\u3|enable_timer~q\) # (!\u2|Add1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[0]~input_o\,
	datac => \u3|enable_timer~q\,
	datad => \u2|Add1~10_combout\,
	combout => \u2|s_counter~6_combout\);

-- Location: FF_X114_Y38_N29
\u2|s_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u2|s_counter~6_combout\,
	ena => \u2|s_counter[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|s_counter\(5));

-- Location: LCCOMB_X114_Y38_N22
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

-- Location: LCCOMB_X114_Y38_N30
\u2|s_counter~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|s_counter~7_combout\ = (\KEY[0]~input_o\ & ((\u3|enable_timer~q\) # (!\u2|Add1~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u3|enable_timer~q\,
	datac => \u2|Add1~12_combout\,
	datad => \KEY[0]~input_o\,
	combout => \u2|s_counter~7_combout\);

-- Location: FF_X114_Y38_N31
\u2|s_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u2|s_counter~7_combout\,
	ena => \u2|s_counter[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|s_counter\(6));

-- Location: LCCOMB_X114_Y38_N24
\u2|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Add1~14_combout\ = \u2|s_counter\(7) $ (\u2|Add1~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|s_counter\(7),
	cin => \u2|Add1~13\,
	combout => \u2|Add1~14_combout\);

-- Location: LCCOMB_X114_Y38_N8
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

-- Location: FF_X114_Y38_N9
\u2|s_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u2|s_counter~8_combout\,
	ena => \u2|s_counter[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|s_counter\(7));

-- Location: LCCOMB_X114_Y38_N26
\u2|s_cntZero~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|s_cntZero~1_combout\ = (\u2|s_counter\(6) & (\u2|s_counter\(5) & (\u2|s_counter\(7) & \u2|s_counter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|s_counter\(6),
	datab => \u2|s_counter\(5),
	datac => \u2|s_counter\(7),
	datad => \u2|s_counter\(4),
	combout => \u2|s_cntZero~1_combout\);

-- Location: LCCOMB_X112_Y38_N18
\u2|s_cntZero~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|s_cntZero~2_combout\ = (\u2|s_cntZero~1_combout\ & (\u2|s_cntZero~0_combout\ & !\u3|enable_timer~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|s_cntZero~1_combout\,
	datab => \u2|s_cntZero~0_combout\,
	datac => \u3|enable_timer~q\,
	combout => \u2|s_cntZero~2_combout\);

-- Location: FF_X112_Y38_N19
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

-- Location: LCCOMB_X112_Y38_N6
\u3|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Selector6~0_combout\ = (\u3|proc_sinc~0_combout\ & ((\u3|s_state.E3~q\) # ((\u3|s_state.E2~q\ & \u2|s_cntZero~q\)))) # (!\u3|proc_sinc~0_combout\ & (\u3|s_state.E2~q\ & ((\u2|s_cntZero~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|proc_sinc~0_combout\,
	datab => \u3|s_state.E2~q\,
	datac => \u3|s_state.E3~q\,
	datad => \u2|s_cntZero~q\,
	combout => \u3|Selector6~0_combout\);

-- Location: FF_X112_Y38_N7
\u3|s_state.E3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u3|Selector6~0_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|s_state.E3~q\);

-- Location: LCCOMB_X112_Y38_N28
\u3|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Selector4~0_combout\ = (\u2|s_cntZero~q\ & !\u3|s_state.E0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u2|s_cntZero~q\,
	datac => \u3|s_state.E0~q\,
	combout => \u3|Selector4~0_combout\);

-- Location: LCCOMB_X112_Y38_N24
\u3|Selector4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Selector4~1_combout\ = (\u3|Selector4~0_combout\) # ((!\u3|proc_sinc~0_combout\ & ((\u3|s_state.E3~q\) # (\u3|s_state.E1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|s_state.E3~q\,
	datab => \u3|Selector4~0_combout\,
	datac => \u3|s_state.E1~q\,
	datad => \u3|proc_sinc~0_combout\,
	combout => \u3|Selector4~1_combout\);

-- Location: FF_X112_Y38_N25
\u3|s_state.E1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u3|Selector4~1_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|s_state.E1~q\);

-- Location: LCCOMB_X112_Y38_N8
\u3|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Selector5~0_combout\ = (\u3|proc_sinc~0_combout\ & ((\u3|s_state.E1~q\) # ((!\u2|s_cntZero~q\ & \u3|s_state.E2~q\)))) # (!\u3|proc_sinc~0_combout\ & (!\u2|s_cntZero~q\ & (\u3|s_state.E2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|proc_sinc~0_combout\,
	datab => \u2|s_cntZero~q\,
	datac => \u3|s_state.E2~q\,
	datad => \u3|s_state.E1~q\,
	combout => \u3|Selector5~0_combout\);

-- Location: FF_X112_Y38_N9
\u3|s_state.E2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u3|Selector5~0_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|s_state.E2~q\);

-- Location: LCCOMB_X112_Y38_N20
\u3|ledr~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|ledr~feeder_combout\ = \u3|s_state.E2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u3|s_state.E2~q\,
	combout => \u3|ledr~feeder_combout\);

-- Location: FF_X112_Y38_N21
\u3|ledr\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u3|ledr~feeder_combout\,
	ena => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|ledr~q\);

-- Location: LCCOMB_X111_Y38_N4
\u3|ledg~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|ledg~feeder_combout\ = \u3|s_state.E3~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u3|s_state.E3~q\,
	combout => \u3|ledg~feeder_combout\);

-- Location: FF_X111_Y38_N5
\u3|ledg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u3|ledg~feeder_combout\,
	ena => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|ledg~q\);

-- Location: LCCOMB_X113_Y38_N26
\u3|ola~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|ola~0_combout\ = !\u3|s_state.E0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u3|s_state.E0~q\,
	combout => \u3|ola~0_combout\);

-- Location: FF_X113_Y38_N27
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

-- Location: LCCOMB_X75_Y47_N0
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

-- Location: LCCOMB_X75_Y47_N30
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

-- Location: LCCOMB_X75_Y46_N0
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

-- Location: FF_X75_Y46_N1
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

-- Location: LCCOMB_X75_Y46_N2
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

-- Location: FF_X75_Y46_N3
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

-- Location: LCCOMB_X75_Y46_N4
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

-- Location: FF_X75_Y46_N5
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

-- Location: LCCOMB_X75_Y46_N6
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

-- Location: FF_X75_Y46_N7
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

-- Location: LCCOMB_X75_Y46_N8
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

-- Location: FF_X75_Y46_N9
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

-- Location: LCCOMB_X75_Y46_N10
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

-- Location: FF_X75_Y46_N11
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

-- Location: LCCOMB_X75_Y46_N12
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

-- Location: FF_X75_Y46_N13
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

-- Location: LCCOMB_X75_Y46_N14
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

-- Location: FF_X75_Y46_N15
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

-- Location: LCCOMB_X75_Y46_N16
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

-- Location: FF_X75_Y46_N17
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

-- Location: LCCOMB_X75_Y46_N18
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

-- Location: FF_X75_Y46_N19
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

-- Location: LCCOMB_X75_Y46_N20
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

-- Location: FF_X75_Y46_N21
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

-- Location: LCCOMB_X75_Y46_N22
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

-- Location: FF_X75_Y46_N23
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

-- Location: LCCOMB_X75_Y46_N24
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

-- Location: FF_X75_Y46_N25
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

-- Location: LCCOMB_X75_Y46_N26
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

-- Location: FF_X75_Y46_N27
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

-- Location: LCCOMB_X75_Y46_N28
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

-- Location: FF_X75_Y46_N29
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

-- Location: LCCOMB_X75_Y46_N30
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

-- Location: FF_X75_Y46_N31
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

-- Location: LCCOMB_X76_Y46_N4
\u0|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|LessThan0~0_combout\ = (!\u0|s_count\(23) & (!\u0|s_count\(26) & (!\u0|s_count\(24) & !\u0|s_count\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|s_count\(23),
	datab => \u0|s_count\(26),
	datac => \u0|s_count\(24),
	datad => \u0|s_count\(25),
	combout => \u0|LessThan0~0_combout\);

-- Location: LCCOMB_X76_Y46_N18
\u0|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|LessThan0~1_combout\ = (!\u0|s_count\(29) & (!\u0|s_count\(30) & (!\u0|s_count\(28) & !\u0|s_count\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|s_count\(29),
	datab => \u0|s_count\(30),
	datac => \u0|s_count\(28),
	datad => \u0|s_count\(27),
	combout => \u0|LessThan0~1_combout\);

-- Location: LCCOMB_X76_Y46_N8
\u0|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|LessThan0~2_combout\ = (!\u0|s_count\(31) & (\u0|LessThan0~0_combout\ & \u0|LessThan0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|s_count\(31),
	datac => \u0|LessThan0~0_combout\,
	datad => \u0|LessThan0~1_combout\,
	combout => \u0|LessThan0~2_combout\);

-- Location: LCCOMB_X74_Y46_N6
\u0|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|LessThan0~3_combout\ = (!\u0|s_count\(21) & !\u0|s_count\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|s_count\(21),
	datad => \u0|s_count\(20),
	combout => \u0|LessThan0~3_combout\);

-- Location: LCCOMB_X74_Y46_N20
\u0|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|LessThan0~4_combout\ = (!\u0|s_count\(17) & (!\u0|s_count\(16) & (!\u0|s_count\(15) & !\u0|s_count\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|s_count\(17),
	datab => \u0|s_count\(16),
	datac => \u0|s_count\(15),
	datad => \u0|s_count\(13),
	combout => \u0|LessThan0~4_combout\);

-- Location: LCCOMB_X74_Y46_N4
\u0|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|LessThan0~5_combout\ = (\u0|LessThan0~3_combout\ & (!\u0|s_count\(12) & (!\u0|s_count\(10) & \u0|LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|LessThan0~3_combout\,
	datab => \u0|s_count\(12),
	datac => \u0|s_count\(10),
	datad => \u0|LessThan0~4_combout\,
	combout => \u0|LessThan0~5_combout\);

-- Location: LCCOMB_X74_Y46_N22
\u0|LessThan0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|LessThan0~10_combout\ = (!\u0|s_count\(20) & (!\u0|s_count\(21) & ((!\u0|s_count\(18)) # (!\u0|s_count\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|s_count\(19),
	datab => \u0|s_count\(20),
	datac => \u0|s_count\(18),
	datad => \u0|s_count\(21),
	combout => \u0|LessThan0~10_combout\);

-- Location: LCCOMB_X74_Y46_N30
\u0|LessThan0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|LessThan0~12_combout\ = ((!\u0|s_count\(12) & (!\u0|s_count\(11) & !\u0|s_count\(13)))) # (!\u0|s_count\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|s_count\(14),
	datab => \u0|s_count\(12),
	datac => \u0|s_count\(11),
	datad => \u0|s_count\(13),
	combout => \u0|LessThan0~12_combout\);

-- Location: LCCOMB_X74_Y46_N24
\u0|LessThan0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|LessThan0~11_combout\ = (!\u0|s_count\(17) & (!\u0|s_count\(15) & (!\u0|s_count\(16) & \u0|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|s_count\(17),
	datab => \u0|s_count\(15),
	datac => \u0|s_count\(16),
	datad => \u0|LessThan0~3_combout\,
	combout => \u0|LessThan0~11_combout\);

-- Location: LCCOMB_X74_Y46_N16
\u0|LessThan0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|LessThan0~13_combout\ = (\u0|LessThan0~10_combout\) # ((\u0|LessThan0~12_combout\ & \u0|LessThan0~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|LessThan0~10_combout\,
	datac => \u0|LessThan0~12_combout\,
	datad => \u0|LessThan0~11_combout\,
	combout => \u0|LessThan0~13_combout\);

-- Location: LCCOMB_X74_Y46_N14
\u0|LessThan0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|LessThan0~14_combout\ = (\u0|LessThan0~13_combout\) # ((\u0|LessThan0~5_combout\ & ((!\u0|s_count\(8)) # (!\u0|s_count\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|s_count\(9),
	datab => \u0|s_count\(8),
	datac => \u0|LessThan0~5_combout\,
	datad => \u0|LessThan0~13_combout\,
	combout => \u0|LessThan0~14_combout\);

-- Location: LCCOMB_X74_Y47_N8
\u0|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|LessThan0~6_combout\ = (!\u0|s_count\(6) & !\u0|s_count\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|s_count\(6),
	datad => \u0|s_count\(7),
	combout => \u0|LessThan0~6_combout\);

-- Location: LCCOMB_X74_Y46_N10
\u0|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|LessThan0~7_combout\ = (\u0|s_count\(0) & (\u0|s_count\(3) & (\u0|s_count\(2) & \u0|s_count\(1))))

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
	combout => \u0|LessThan0~7_combout\);

-- Location: LCCOMB_X74_Y46_N18
\u0|LessThan0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|LessThan0~8_combout\ = (\u0|s_count\(4) & \u0|LessThan0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|s_count\(4),
	datad => \u0|LessThan0~7_combout\,
	combout => \u0|LessThan0~8_combout\);

-- Location: LCCOMB_X74_Y46_N12
\u0|LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|LessThan0~9_combout\ = (\u0|LessThan0~6_combout\ & (\u0|LessThan0~5_combout\ & ((!\u0|LessThan0~8_combout\) # (!\u0|s_count\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|LessThan0~6_combout\,
	datab => \u0|s_count\(5),
	datac => \u0|LessThan0~5_combout\,
	datad => \u0|LessThan0~8_combout\,
	combout => \u0|LessThan0~9_combout\);

-- Location: LCCOMB_X74_Y46_N0
\u0|LessThan0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|LessThan0~15_combout\ = ((\u0|s_count\(22) & (!\u0|LessThan0~14_combout\ & !\u0|LessThan0~9_combout\))) # (!\u0|LessThan0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|s_count\(22),
	datab => \u0|LessThan0~2_combout\,
	datac => \u0|LessThan0~14_combout\,
	datad => \u0|LessThan0~9_combout\,
	combout => \u0|LessThan0~15_combout\);

-- Location: FF_X75_Y47_N1
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

-- Location: LCCOMB_X75_Y47_N2
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

-- Location: FF_X75_Y47_N3
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

-- Location: LCCOMB_X75_Y47_N4
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

-- Location: FF_X75_Y47_N5
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

-- Location: LCCOMB_X75_Y47_N6
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

-- Location: FF_X75_Y47_N7
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

-- Location: LCCOMB_X75_Y47_N8
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

-- Location: FF_X75_Y47_N9
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

-- Location: LCCOMB_X75_Y47_N10
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

-- Location: FF_X75_Y47_N11
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

-- Location: LCCOMB_X75_Y47_N12
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

-- Location: FF_X75_Y47_N13
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

-- Location: LCCOMB_X75_Y47_N14
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

-- Location: FF_X75_Y47_N15
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

-- Location: LCCOMB_X75_Y47_N16
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

-- Location: FF_X75_Y47_N17
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

-- Location: LCCOMB_X75_Y47_N18
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

-- Location: FF_X75_Y47_N19
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

-- Location: LCCOMB_X75_Y47_N20
\u0|s_count[10]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|s_count[10]~52_combout\ = (\u0|s_count\(10) & (\u0|s_count[9]~51\ $ (GND))) # (!\u0|s_count\(10) & (!\u0|s_count[9]~51\ & VCC))
-- \u0|s_count[10]~53\ = CARRY((\u0|s_count\(10) & !\u0|s_count[9]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|s_count\(10),
	datad => VCC,
	cin => \u0|s_count[9]~51\,
	combout => \u0|s_count[10]~52_combout\,
	cout => \u0|s_count[10]~53\);

-- Location: FF_X75_Y47_N21
\u0|s_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u0|s_count[10]~52_combout\,
	sclr => \u0|LessThan0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|s_count\(10));

-- Location: LCCOMB_X75_Y47_N22
\u0|s_count[11]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|s_count[11]~54_combout\ = (\u0|s_count\(11) & (!\u0|s_count[10]~53\)) # (!\u0|s_count\(11) & ((\u0|s_count[10]~53\) # (GND)))
-- \u0|s_count[11]~55\ = CARRY((!\u0|s_count[10]~53\) # (!\u0|s_count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|s_count\(11),
	datad => VCC,
	cin => \u0|s_count[10]~53\,
	combout => \u0|s_count[11]~54_combout\,
	cout => \u0|s_count[11]~55\);

-- Location: FF_X75_Y47_N23
\u0|s_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u0|s_count[11]~54_combout\,
	sclr => \u0|LessThan0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|s_count\(11));

-- Location: LCCOMB_X75_Y47_N24
\u0|s_count[12]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|s_count[12]~56_combout\ = (\u0|s_count\(12) & (\u0|s_count[11]~55\ $ (GND))) # (!\u0|s_count\(12) & (!\u0|s_count[11]~55\ & VCC))
-- \u0|s_count[12]~57\ = CARRY((\u0|s_count\(12) & !\u0|s_count[11]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|s_count\(12),
	datad => VCC,
	cin => \u0|s_count[11]~55\,
	combout => \u0|s_count[12]~56_combout\,
	cout => \u0|s_count[12]~57\);

-- Location: FF_X75_Y47_N25
\u0|s_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u0|s_count[12]~56_combout\,
	sclr => \u0|LessThan0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|s_count\(12));

-- Location: LCCOMB_X75_Y47_N26
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

-- Location: FF_X75_Y47_N27
\u0|s_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u0|s_count[13]~58_combout\,
	sclr => \u0|LessThan0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|s_count\(13));

-- Location: LCCOMB_X75_Y47_N28
\u0|s_count[14]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|s_count[14]~60_combout\ = (\u0|s_count\(14) & (\u0|s_count[13]~59\ $ (GND))) # (!\u0|s_count\(14) & (!\u0|s_count[13]~59\ & VCC))
-- \u0|s_count[14]~61\ = CARRY((\u0|s_count\(14) & !\u0|s_count[13]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|s_count\(14),
	datad => VCC,
	cin => \u0|s_count[13]~59\,
	combout => \u0|s_count[14]~60_combout\,
	cout => \u0|s_count[14]~61\);

-- Location: FF_X74_Y46_N19
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

-- Location: FF_X74_Y46_N21
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

-- Location: LCCOMB_X73_Y46_N28
\u0|LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|LessThan1~3_combout\ = (!\u0|s_count\(20) & (!\u0|s_count\(19) & !\u0|s_count\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|s_count\(20),
	datac => \u0|s_count\(19),
	datad => \u0|s_count\(22),
	combout => \u0|LessThan1~3_combout\);

-- Location: LCCOMB_X73_Y46_N14
\u0|LessThan1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|LessThan1~4_combout\ = (!\u0|s_count\(15) & (!\u0|s_count\(14) & (!\u0|s_count\(16) & \u0|LessThan1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|s_count\(15),
	datab => \u0|s_count\(14),
	datac => \u0|s_count\(16),
	datad => \u0|LessThan1~3_combout\,
	combout => \u0|LessThan1~4_combout\);

-- Location: LCCOMB_X73_Y46_N16
\u0|clkOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|clkOut~0_combout\ = (\u0|s_count\(19)) # ((\u0|s_count\(17) & \u0|s_count\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|s_count\(19),
	datac => \u0|s_count\(17),
	datad => \u0|s_count\(18),
	combout => \u0|clkOut~0_combout\);

-- Location: LCCOMB_X73_Y46_N6
\u0|clkOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|clkOut~1_combout\ = (\u0|s_count\(22)) # ((\u0|s_count\(21) & ((\u0|s_count\(20)) # (\u0|clkOut~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|s_count\(20),
	datab => \u0|clkOut~0_combout\,
	datac => \u0|s_count\(21),
	datad => \u0|s_count\(22),
	combout => \u0|clkOut~1_combout\);

-- Location: LCCOMB_X74_Y46_N2
\u0|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|LessThan1~0_combout\ = (\u0|s_count\(8) & ((\u0|s_count\(6)) # ((\u0|s_count\(5)) # (\u0|LessThan0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|s_count\(6),
	datab => \u0|s_count\(8),
	datac => \u0|s_count\(5),
	datad => \u0|LessThan0~8_combout\,
	combout => \u0|LessThan1~0_combout\);

-- Location: LCCOMB_X74_Y46_N8
\u0|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|LessThan1~1_combout\ = (\u0|s_count\(10) & ((\u0|s_count\(9)) # ((\u0|s_count\(7) & \u0|LessThan1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|s_count\(10),
	datab => \u0|s_count\(7),
	datac => \u0|s_count\(9),
	datad => \u0|LessThan1~0_combout\,
	combout => \u0|LessThan1~1_combout\);

-- Location: LCCOMB_X74_Y46_N26
\u0|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|LessThan1~2_combout\ = ((!\u0|s_count\(11) & (!\u0|s_count\(12) & !\u0|LessThan1~1_combout\))) # (!\u0|s_count\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|s_count\(11),
	datab => \u0|s_count\(12),
	datac => \u0|LessThan1~1_combout\,
	datad => \u0|s_count\(13),
	combout => \u0|LessThan1~2_combout\);

-- Location: LCCOMB_X74_Y46_N28
\u0|clkOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|clkOut~2_combout\ = (\u0|clkOut~1_combout\ & (!\u0|LessThan0~15_combout\ & ((!\u0|LessThan1~2_combout\) # (!\u0|LessThan1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|LessThan1~4_combout\,
	datab => \u0|clkOut~1_combout\,
	datac => \u0|LessThan1~2_combout\,
	datad => \u0|LessThan0~15_combout\,
	combout => \u0|clkOut~2_combout\);

-- Location: FF_X74_Y46_N29
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

-- Location: LCCOMB_X114_Y30_N26
\u1|mask[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|mask[0]~0_combout\ = (\u3|ola~q\ & ((\u0|clkOut~q\))) # (!\u3|ola~q\ & (\u1|mask\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|ola~q\,
	datac => \u1|mask\(0),
	datad => \u0|clkOut~q\,
	combout => \u1|mask[0]~0_combout\);

-- Location: FF_X114_Y30_N27
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

-- Location: LCCOMB_X113_Y38_N20
\u3|epro~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|epro~feeder_combout\ = \u3|s_state.E1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u3|s_state.E1~q\,
	combout => \u3|epro~feeder_combout\);

-- Location: FF_X113_Y38_N21
\u3|epro\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u3|epro~feeder_combout\,
	ena => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|epro~q\);

-- Location: LCCOMB_X114_Y30_N20
\u1|visor_uni~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|visor_uni~0_combout\ = (\u3|ola~q\ & (\u1|mask\(0))) # (!\u3|ola~q\ & ((\u3|epro~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|ola~q\,
	datac => \u1|mask\(0),
	datad => \u3|epro~q\,
	combout => \u1|visor_uni~0_combout\);

-- Location: FF_X114_Y30_N21
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

-- Location: LCCOMB_X114_Y38_N0
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

-- Location: FF_X114_Y38_N1
\u1|visor_uni[6]\ : dffeas
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
	q => \u1|visor_uni\(6));

-- Location: LCCOMB_X114_Y30_N4
\u1|visor_dez~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|visor_dez~0_combout\ = (!\u3|ola~q\ & ((\u3|epro~q\) # ((\SW[17]~input_o\) # (!\SW[16]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|epro~q\,
	datab => \SW[16]~input_o\,
	datac => \u3|ola~q\,
	datad => \SW[17]~input_o\,
	combout => \u1|visor_dez~0_combout\);

-- Location: LCCOMB_X114_Y30_N14
\u1|visor_dez~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|visor_dez~1_combout\ = (\u1|visor_dez~0_combout\) # ((\u1|mask\(0) & \u3|ola~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|mask\(0),
	datab => \u1|visor_dez~0_combout\,
	datac => \u3|ola~q\,
	combout => \u1|visor_dez~1_combout\);

-- Location: FF_X114_Y30_N15
\u1|visor_dez[0]\ : dffeas
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
	q => \u1|visor_dez\(0));

-- Location: LCCOMB_X114_Y30_N30
\u1|visor_dez~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|visor_dez~2_combout\ = (\u3|ola~q\ & (\u1|mask\(0))) # (!\u3|ola~q\ & (((\u3|epro~q\) # (!\SW[17]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|mask\(0),
	datab => \SW[17]~input_o\,
	datac => \u3|ola~q\,
	datad => \u3|epro~q\,
	combout => \u1|visor_dez~2_combout\);

-- Location: LCCOMB_X114_Y30_N12
\u1|visor_dez[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|visor_dez[1]~feeder_combout\ = \u1|visor_dez~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u1|visor_dez~2_combout\,
	combout => \u1|visor_dez[1]~feeder_combout\);

-- Location: FF_X114_Y30_N13
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

-- Location: FF_X114_Y30_N31
\u1|visor_dez[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u1|visor_dez~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|visor_dez\(2));

-- Location: LCCOMB_X114_Y30_N16
\u1|visor_dez~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|visor_dez~3_combout\ = (\u3|ola~q\) # ((!\u3|epro~q\ & ((\SW[16]~input_o\) # (\SW[17]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|epro~q\,
	datab => \SW[16]~input_o\,
	datac => \u3|ola~q\,
	datad => \SW[17]~input_o\,
	combout => \u1|visor_dez~3_combout\);

-- Location: FF_X114_Y30_N17
\u1|visor_dez[3]\ : dffeas
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
	q => \u1|visor_dez\(3));

-- Location: LCCOMB_X114_Y30_N6
\u1|visor_dez~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|visor_dez~4_combout\ = ((\u1|mask\(0) & \u3|ola~q\)) # (!\u1|visor_dez~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|mask\(0),
	datac => \u3|ola~q\,
	datad => \u1|visor_dez~3_combout\,
	combout => \u1|visor_dez~4_combout\);

-- Location: FF_X114_Y30_N7
\u1|visor_dez[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u1|visor_dez~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|visor_dez\(6));

-- Location: LCCOMB_X114_Y30_N24
\u1|visor_cen~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|visor_cen~0_combout\ = (\u3|ola~q\) # ((\SW[16]~input_o\) # ((\u3|epro~q\) # (\SW[17]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|ola~q\,
	datab => \SW[16]~input_o\,
	datac => \u3|epro~q\,
	datad => \SW[17]~input_o\,
	combout => \u1|visor_cen~0_combout\);

-- Location: FF_X114_Y30_N25
\u1|visor_cen[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u1|visor_cen~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|visor_cen\(0));

-- Location: LCCOMB_X114_Y30_N10
\u1|visor_mil[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|visor_mil[1]~0_combout\ = (\u3|epro~q\) # ((\u3|ola~q\) # (\SW[17]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|epro~q\,
	datac => \u3|ola~q\,
	datad => \SW[17]~input_o\,
	combout => \u1|visor_mil[1]~0_combout\);

-- Location: FF_X114_Y30_N11
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

-- Location: LCCOMB_X114_Y30_N8
\u1|visor_cen[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|visor_cen[2]~feeder_combout\ = \u1|visor_dez~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u1|visor_dez~3_combout\,
	combout => \u1|visor_cen[2]~feeder_combout\);

-- Location: FF_X114_Y30_N9
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

-- Location: LCCOMB_X114_Y38_N6
\u1|visor_cen[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|visor_cen[3]~feeder_combout\ = \u1|visor_uni~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u1|visor_uni~1_combout\,
	combout => \u1|visor_cen[3]~feeder_combout\);

-- Location: FF_X114_Y38_N7
\u1|visor_cen[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u1|visor_cen[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|visor_cen\(3));

-- Location: LCCOMB_X114_Y30_N2
\u1|visor_cen~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|visor_cen~1_combout\ = (!\u3|ola~q\ & ((\u3|epro~q\) # ((\SW[16]~input_o\ & !\SW[17]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|epro~q\,
	datab => \SW[16]~input_o\,
	datac => \u3|ola~q\,
	datad => \SW[17]~input_o\,
	combout => \u1|visor_cen~1_combout\);

-- Location: LCCOMB_X114_Y30_N18
\u1|visor_cen~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|visor_cen~2_combout\ = (\u1|visor_cen~1_combout\) # ((\u1|mask\(0) & \u3|ola~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|mask\(0),
	datac => \u3|ola~q\,
	datad => \u1|visor_cen~1_combout\,
	combout => \u1|visor_cen~2_combout\);

-- Location: FF_X114_Y30_N19
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

-- Location: LCCOMB_X114_Y30_N28
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

-- Location: FF_X114_Y30_N29
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

-- Location: LCCOMB_X114_Y30_N22
\u1|visor_mil[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|visor_mil[2]~2_combout\ = (\u3|ola~q\ & (((\u1|visor_mil\(2))))) # (!\u3|ola~q\ & (!\SW[17]~input_o\ & ((!\u3|epro~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|ola~q\,
	datab => \SW[17]~input_o\,
	datac => \u1|visor_mil\(2),
	datad => \u3|epro~q\,
	combout => \u1|visor_mil[2]~2_combout\);

-- Location: FF_X114_Y30_N23
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

-- Location: LCCOMB_X113_Y30_N20
\u1|visor_mil[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|visor_mil[3]~3_combout\ = (\u1|visor_dez~0_combout\) # ((\u3|ola~q\ & \u1|visor_mil\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u3|ola~q\,
	datac => \u1|visor_mil\(3),
	datad => \u1|visor_dez~0_combout\,
	combout => \u1|visor_mil[3]~3_combout\);

-- Location: FF_X113_Y30_N21
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

-- Location: LCCOMB_X113_Y38_N28
\u1|visor_mil[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|visor_mil[4]~4_combout\ = (!\u3|ola~q\ & ((\SW[17]~input_o\) # ((\SW[16]~input_o\) # (\u3|epro~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[17]~input_o\,
	datab => \SW[16]~input_o\,
	datac => \u3|ola~q\,
	datad => \u3|epro~q\,
	combout => \u1|visor_mil[4]~4_combout\);

-- Location: LCCOMB_X113_Y30_N18
\u1|visor_mil[4]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|visor_mil[4]~5_combout\ = (\u1|visor_mil[4]~4_combout\) # ((\u1|visor_mil\(4) & \u3|ola~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|visor_mil[4]~4_combout\,
	datac => \u1|visor_mil\(4),
	datad => \u3|ola~q\,
	combout => \u1|visor_mil[4]~5_combout\);

-- Location: FF_X113_Y30_N19
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

-- Location: LCCOMB_X114_Y30_N0
\u1|visor_mil[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|visor_mil[6]~6_combout\ = (\u3|ola~q\ & (((\u1|visor_mil\(6))))) # (!\u3|ola~q\ & (((\u3|epro~q\)) # (!\SW[17]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|ola~q\,
	datab => \SW[17]~input_o\,
	datac => \u1|visor_mil\(6),
	datad => \u3|epro~q\,
	combout => \u1|visor_mil[6]~6_combout\);

-- Location: FF_X114_Y30_N1
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

-- Location: IOIBUF_X115_Y17_N1
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: IOIBUF_X115_Y14_N1
\SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X115_Y15_N8
\SW[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X115_Y13_N8
\SW[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X115_Y18_N8
\SW[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X115_Y11_N8
\SW[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: IOIBUF_X115_Y10_N1
\SW[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: IOIBUF_X115_Y15_N1
\SW[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: IOIBUF_X115_Y4_N22
\SW[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: IOIBUF_X115_Y16_N8
\SW[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: IOIBUF_X115_Y4_N15
\SW[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(10),
	o => \SW[10]~input_o\);

-- Location: IOIBUF_X115_Y5_N15
\SW[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(11),
	o => \SW[11]~input_o\);

-- Location: IOIBUF_X115_Y7_N15
\SW[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(12),
	o => \SW[12]~input_o\);

-- Location: IOIBUF_X115_Y9_N22
\SW[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(13),
	o => \SW[13]~input_o\);

-- Location: IOIBUF_X115_Y10_N8
\SW[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(14),
	o => \SW[14]~input_o\);

-- Location: IOIBUF_X115_Y53_N15
\KEY[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: IOIBUF_X115_Y42_N15
\KEY[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: IOIBUF_X115_Y35_N22
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
END structure;

