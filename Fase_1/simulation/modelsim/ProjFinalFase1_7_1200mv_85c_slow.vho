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

-- DATE "06/16/2021 11:19:54"

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
	LEDR : OUT std_logic_vector(17 DOWNTO 0);
	LEDG : OUT std_logic_vector(8 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0)
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
-- LEDG[8]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- SW[15]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[17]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[16]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_LEDG : std_logic_vector(8 DOWNTO 0);
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
SIGNAL \LEDG[8]~output_o\ : std_logic;
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
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \u3|s_state.E0~q\ : std_logic;
SIGNAL \u3|Selector4~0_combout\ : std_logic;
SIGNAL \u3|enable_timer~q\ : std_logic;
SIGNAL \u3|Selector5~0_combout\ : std_logic;
SIGNAL \u2|Add0~0_combout\ : std_logic;
SIGNAL \u2|s_counter~0_combout\ : std_logic;
SIGNAL \u2|s_counter[16]~1_combout\ : std_logic;
SIGNAL \u2|Add0~1\ : std_logic;
SIGNAL \u2|Add0~2_combout\ : std_logic;
SIGNAL \u2|s_counter~2_combout\ : std_logic;
SIGNAL \u2|Add0~3\ : std_logic;
SIGNAL \u2|Add0~4_combout\ : std_logic;
SIGNAL \u2|s_counter~3_combout\ : std_logic;
SIGNAL \u2|Add0~5\ : std_logic;
SIGNAL \u2|Add0~6_combout\ : std_logic;
SIGNAL \u2|s_counter~4_combout\ : std_logic;
SIGNAL \u2|Add0~7\ : std_logic;
SIGNAL \u2|Add0~8_combout\ : std_logic;
SIGNAL \u2|s_counter~5_combout\ : std_logic;
SIGNAL \u2|Add0~9\ : std_logic;
SIGNAL \u2|Add0~10_combout\ : std_logic;
SIGNAL \u2|s_counter~6_combout\ : std_logic;
SIGNAL \u2|Add0~11\ : std_logic;
SIGNAL \u2|Add0~12_combout\ : std_logic;
SIGNAL \u2|s_counter~7_combout\ : std_logic;
SIGNAL \u2|Add0~13\ : std_logic;
SIGNAL \u2|Add0~14_combout\ : std_logic;
SIGNAL \u2|s_counter~8_combout\ : std_logic;
SIGNAL \u2|Add0~15\ : std_logic;
SIGNAL \u2|Add0~16_combout\ : std_logic;
SIGNAL \u2|s_counter~25_combout\ : std_logic;
SIGNAL \u2|Add0~17\ : std_logic;
SIGNAL \u2|Add0~18_combout\ : std_logic;
SIGNAL \u2|s_counter~9_combout\ : std_logic;
SIGNAL \u2|Add0~19\ : std_logic;
SIGNAL \u2|Add0~20_combout\ : std_logic;
SIGNAL \u2|s_counter~10_combout\ : std_logic;
SIGNAL \u2|Add0~21\ : std_logic;
SIGNAL \u2|Add0~22_combout\ : std_logic;
SIGNAL \u2|s_counter~11_combout\ : std_logic;
SIGNAL \u2|Add0~23\ : std_logic;
SIGNAL \u2|Add0~24_combout\ : std_logic;
SIGNAL \u2|s_counter~12_combout\ : std_logic;
SIGNAL \u2|Add0~25\ : std_logic;
SIGNAL \u2|Add0~26_combout\ : std_logic;
SIGNAL \u2|s_counter~26_combout\ : std_logic;
SIGNAL \u2|Add0~27\ : std_logic;
SIGNAL \u2|Add0~28_combout\ : std_logic;
SIGNAL \u2|s_counter~27_combout\ : std_logic;
SIGNAL \u2|Add0~29\ : std_logic;
SIGNAL \u2|Add0~30_combout\ : std_logic;
SIGNAL \u2|s_counter~13_combout\ : std_logic;
SIGNAL \u2|Add0~31\ : std_logic;
SIGNAL \u2|Add0~32_combout\ : std_logic;
SIGNAL \u2|s_counter~14_combout\ : std_logic;
SIGNAL \u2|Add0~33\ : std_logic;
SIGNAL \u2|Add0~34_combout\ : std_logic;
SIGNAL \u2|s_counter~28_combout\ : std_logic;
SIGNAL \u2|Add0~35\ : std_logic;
SIGNAL \u2|Add0~36_combout\ : std_logic;
SIGNAL \u2|s_counter~15_combout\ : std_logic;
SIGNAL \u2|Add0~37\ : std_logic;
SIGNAL \u2|Add0~38_combout\ : std_logic;
SIGNAL \u2|s_counter~29_combout\ : std_logic;
SIGNAL \u2|Add0~39\ : std_logic;
SIGNAL \u2|Add0~40_combout\ : std_logic;
SIGNAL \u2|s_counter~16_combout\ : std_logic;
SIGNAL \u2|Add0~41\ : std_logic;
SIGNAL \u2|Add0~42_combout\ : std_logic;
SIGNAL \u2|s_counter~17_combout\ : std_logic;
SIGNAL \u2|Add0~43\ : std_logic;
SIGNAL \u2|Add0~44_combout\ : std_logic;
SIGNAL \u2|s_counter~18_combout\ : std_logic;
SIGNAL \u2|Add0~45\ : std_logic;
SIGNAL \u2|Add0~46_combout\ : std_logic;
SIGNAL \u2|s_counter~19_combout\ : std_logic;
SIGNAL \u2|Add0~47\ : std_logic;
SIGNAL \u2|Add0~48_combout\ : std_logic;
SIGNAL \u2|s_counter~20_combout\ : std_logic;
SIGNAL \u2|Add0~49\ : std_logic;
SIGNAL \u2|Add0~50_combout\ : std_logic;
SIGNAL \u2|s_counter~30_combout\ : std_logic;
SIGNAL \u2|Add0~51\ : std_logic;
SIGNAL \u2|Add0~52_combout\ : std_logic;
SIGNAL \u2|s_counter~23_combout\ : std_logic;
SIGNAL \u2|Add0~53\ : std_logic;
SIGNAL \u2|Add0~54_combout\ : std_logic;
SIGNAL \u2|s_counter~31_combout\ : std_logic;
SIGNAL \u2|Add0~55\ : std_logic;
SIGNAL \u2|Add0~56_combout\ : std_logic;
SIGNAL \u2|s_counter~32_combout\ : std_logic;
SIGNAL \u2|Equal0~9_combout\ : std_logic;
SIGNAL \u2|Add0~57\ : std_logic;
SIGNAL \u2|Add0~58_combout\ : std_logic;
SIGNAL \u2|s_counter~24_combout\ : std_logic;
SIGNAL \u2|Equal0~5_combout\ : std_logic;
SIGNAL \u2|Add0~59\ : std_logic;
SIGNAL \u2|Add0~60_combout\ : std_logic;
SIGNAL \u2|s_counter~21_combout\ : std_logic;
SIGNAL \u2|Add0~61\ : std_logic;
SIGNAL \u2|Add0~62_combout\ : std_logic;
SIGNAL \u2|s_counter~22_combout\ : std_logic;
SIGNAL \u2|Equal0~6_combout\ : std_logic;
SIGNAL \u2|Equal0~7_combout\ : std_logic;
SIGNAL \u2|Equal0~3_combout\ : std_logic;
SIGNAL \u2|Equal0~0_combout\ : std_logic;
SIGNAL \u2|Equal0~1_combout\ : std_logic;
SIGNAL \u2|Equal0~2_combout\ : std_logic;
SIGNAL \u2|Equal0~4_combout\ : std_logic;
SIGNAL \u2|Equal0~8_combout\ : std_logic;
SIGNAL \u2|Equal0~10_combout\ : std_logic;
SIGNAL \u2|s_cntZero~0_combout\ : std_logic;
SIGNAL \u2|s_cntZero~q\ : std_logic;
SIGNAL \u3|s_state~17_combout\ : std_logic;
SIGNAL \u3|s_state.E2A~q\ : std_logic;
SIGNAL \u3|Selector11~0_combout\ : std_logic;
SIGNAL \u3|s_state.E2B~q\ : std_logic;
SIGNAL \u3|s_state~18_combout\ : std_logic;
SIGNAL \u3|s_state~23_combout\ : std_logic;
SIGNAL \u3|s_state.E3~q\ : std_logic;
SIGNAL \u3|Selector7~0_combout\ : std_logic;
SIGNAL \u3|s_state.E0A~q\ : std_logic;
SIGNAL \u3|s_state~19_combout\ : std_logic;
SIGNAL \SW[16]~input_o\ : std_logic;
SIGNAL \SW[15]~input_o\ : std_logic;
SIGNAL \SW[17]~input_o\ : std_logic;
SIGNAL \u3|proc_sinc~0_combout\ : std_logic;
SIGNAL \u3|s_state~20_combout\ : std_logic;
SIGNAL \u3|s_state~21_combout\ : std_logic;
SIGNAL \u3|s_state~22_combout\ : std_logic;
SIGNAL \u3|s_state~24_combout\ : std_logic;
SIGNAL \u3|s_state.E1~q\ : std_logic;
SIGNAL \u3|s_state~16_combout\ : std_logic;
SIGNAL \u3|s_state.E2~q\ : std_logic;
SIGNAL \u3|WideOr0~0_combout\ : std_logic;
SIGNAL \u3|Selector2~0_combout\ : std_logic;
SIGNAL \u3|ledr~q\ : std_logic;
SIGNAL \u3|Selector3~0_combout\ : std_logic;
SIGNAL \u3|ledg~q\ : std_logic;
SIGNAL \u0|Add0~0_combout\ : std_logic;
SIGNAL \u0|Add0~1\ : std_logic;
SIGNAL \u0|Add0~2_combout\ : std_logic;
SIGNAL \u0|Add0~3\ : std_logic;
SIGNAL \u0|Add0~4_combout\ : std_logic;
SIGNAL \u0|Add0~5\ : std_logic;
SIGNAL \u0|Add0~6_combout\ : std_logic;
SIGNAL \u0|Add0~7\ : std_logic;
SIGNAL \u0|Add0~8_combout\ : std_logic;
SIGNAL \u0|Add0~9\ : std_logic;
SIGNAL \u0|Add0~10_combout\ : std_logic;
SIGNAL \u0|Add0~11\ : std_logic;
SIGNAL \u0|Add0~12_combout\ : std_logic;
SIGNAL \u0|s_divCounter~2_combout\ : std_logic;
SIGNAL \u0|Add0~13\ : std_logic;
SIGNAL \u0|Add0~14_combout\ : std_logic;
SIGNAL \u0|Add0~15\ : std_logic;
SIGNAL \u0|Add0~16_combout\ : std_logic;
SIGNAL \u0|s_divCounter~1_combout\ : std_logic;
SIGNAL \u0|Add0~17\ : std_logic;
SIGNAL \u0|Add0~18_combout\ : std_logic;
SIGNAL \u0|s_divCounter~7_combout\ : std_logic;
SIGNAL \u0|Add0~19\ : std_logic;
SIGNAL \u0|Add0~20_combout\ : std_logic;
SIGNAL \u0|Add0~21\ : std_logic;
SIGNAL \u0|Add0~22_combout\ : std_logic;
SIGNAL \u0|s_divCounter~6_combout\ : std_logic;
SIGNAL \u0|Add0~23\ : std_logic;
SIGNAL \u0|Add0~24_combout\ : std_logic;
SIGNAL \u0|Add0~25\ : std_logic;
SIGNAL \u0|Add0~26_combout\ : std_logic;
SIGNAL \u0|Add0~27\ : std_logic;
SIGNAL \u0|Add0~28_combout\ : std_logic;
SIGNAL \u0|s_divCounter~5_combout\ : std_logic;
SIGNAL \u0|Add0~29\ : std_logic;
SIGNAL \u0|Add0~30_combout\ : std_logic;
SIGNAL \u0|Add0~31\ : std_logic;
SIGNAL \u0|Add0~32_combout\ : std_logic;
SIGNAL \u0|Add0~33\ : std_logic;
SIGNAL \u0|Add0~34_combout\ : std_logic;
SIGNAL \u0|Add0~35\ : std_logic;
SIGNAL \u0|Add0~36_combout\ : std_logic;
SIGNAL \u0|s_divCounter~0_combout\ : std_logic;
SIGNAL \u0|Add0~37\ : std_logic;
SIGNAL \u0|Add0~38_combout\ : std_logic;
SIGNAL \u0|s_divCounter~4_combout\ : std_logic;
SIGNAL \u0|Add0~39\ : std_logic;
SIGNAL \u0|Add0~40_combout\ : std_logic;
SIGNAL \u0|Add0~41\ : std_logic;
SIGNAL \u0|Add0~42_combout\ : std_logic;
SIGNAL \u0|Equal0~7_combout\ : std_logic;
SIGNAL \u0|Equal0~9_combout\ : std_logic;
SIGNAL \u0|Equal0~8_combout\ : std_logic;
SIGNAL \u0|Equal0~2_combout\ : std_logic;
SIGNAL \u0|Add0~43\ : std_logic;
SIGNAL \u0|Add0~45\ : std_logic;
SIGNAL \u0|Add0~46_combout\ : std_logic;
SIGNAL \u0|Add0~47\ : std_logic;
SIGNAL \u0|Add0~48_combout\ : std_logic;
SIGNAL \u0|Equal0~1_combout\ : std_logic;
SIGNAL \u0|Equal0~3_combout\ : std_logic;
SIGNAL \u0|Add0~49\ : std_logic;
SIGNAL \u0|Add0~50_combout\ : std_logic;
SIGNAL \u0|Add0~51\ : std_logic;
SIGNAL \u0|Add0~52_combout\ : std_logic;
SIGNAL \u0|Add0~53\ : std_logic;
SIGNAL \u0|Add0~54_combout\ : std_logic;
SIGNAL \u0|Add0~55\ : std_logic;
SIGNAL \u0|Add0~56_combout\ : std_logic;
SIGNAL \u0|Add0~57\ : std_logic;
SIGNAL \u0|Add0~58_combout\ : std_logic;
SIGNAL \u0|Add0~59\ : std_logic;
SIGNAL \u0|Add0~60_combout\ : std_logic;
SIGNAL \u0|Equal0~0_combout\ : std_logic;
SIGNAL \u0|Equal0~4_combout\ : std_logic;
SIGNAL \u0|Equal0~5_combout\ : std_logic;
SIGNAL \u0|Equal0~6_combout\ : std_logic;
SIGNAL \u0|Equal0~10_combout\ : std_logic;
SIGNAL \u0|Add0~44_combout\ : std_logic;
SIGNAL \u0|s_divCounter~3_combout\ : std_logic;
SIGNAL \u0|clkOut~0_combout\ : std_logic;
SIGNAL \u0|clkOut~1_combout\ : std_logic;
SIGNAL \u0|clkOut~2_combout\ : std_logic;
SIGNAL \u0|clkOut~3_combout\ : std_logic;
SIGNAL \u0|clkOut~4_combout\ : std_logic;
SIGNAL \u0|clkOut~q\ : std_logic;
SIGNAL \u3|Selector0~0_combout\ : std_logic;
SIGNAL \u3|ola~q\ : std_logic;
SIGNAL \u3|Selector1~0_combout\ : std_logic;
SIGNAL \u3|epro~q\ : std_logic;
SIGNAL \u1|visor_uni~0_combout\ : std_logic;
SIGNAL \u1|visor_uni[0]~feeder_combout\ : std_logic;
SIGNAL \u1|visor_uni[1]~feeder_combout\ : std_logic;
SIGNAL \u1|visor_uni[2]~feeder_combout\ : std_logic;
SIGNAL \u1|visor_uni~1_combout\ : std_logic;
SIGNAL \u1|visor_uni[4]~feeder_combout\ : std_logic;
SIGNAL \u1|visor_uni[5]~feeder_combout\ : std_logic;
SIGNAL \u1|visor_uni~2_combout\ : std_logic;
SIGNAL \u1|visor_uni[6]~feeder_combout\ : std_logic;
SIGNAL \u1|visor_dez~0_combout\ : std_logic;
SIGNAL \u1|visor_dez~1_combout\ : std_logic;
SIGNAL \u1|visor_dez[0]~feeder_combout\ : std_logic;
SIGNAL \u1|visor_dez~2_combout\ : std_logic;
SIGNAL \u1|visor_dez~3_combout\ : std_logic;
SIGNAL \u1|visor_dez[1]~feeder_combout\ : std_logic;
SIGNAL \u1|visor_dez[2]~feeder_combout\ : std_logic;
SIGNAL \u3|proc_sinc~1_combout\ : std_logic;
SIGNAL \u1|visor_dez~4_combout\ : std_logic;
SIGNAL \u1|visor_dez[3]~feeder_combout\ : std_logic;
SIGNAL \u1|visor_dez[4]~feeder_combout\ : std_logic;
SIGNAL \u1|visor_dez[5]~feeder_combout\ : std_logic;
SIGNAL \u1|visor_dez~5_combout\ : std_logic;
SIGNAL \u1|visor_cen~0_combout\ : std_logic;
SIGNAL \u1|visor_cen~1_combout\ : std_logic;
SIGNAL \u1|visor_cen[4]~feeder_combout\ : std_logic;
SIGNAL \u1|visor_cen~2_combout\ : std_logic;
SIGNAL \u1|visor_mil~0_combout\ : std_logic;
SIGNAL \u1|visor_mil[0]~feeder_combout\ : std_logic;
SIGNAL \u1|visor_mil~1_combout\ : std_logic;
SIGNAL \u1|visor_mil~2_combout\ : std_logic;
SIGNAL \u1|visor_mil~3_combout\ : std_logic;
SIGNAL \u2|s_counter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \u3|timeVal\ : std_logic_vector(7 DOWNTO 0);
SIGNAL s_sw : std_logic_vector(17 DOWNTO 0);
SIGNAL \u1|visor_uni\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \u1|visor_dez\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \u0|s_divCounter\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \u1|visor_cen\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \u1|visor_mil\ : std_logic_vector(6 DOWNTO 0);
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

-- Location: IOOBUF_X67_Y73_N16
\LEDG[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[8]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|visor_uni\(0),
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
	i => \u1|visor_uni\(1),
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
	i => \u1|visor_uni\(2),
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
	i => \u1|visor_uni\(4),
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
	i => \u1|visor_uni\(5),
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
	i => \u1|visor_dez\(4),
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
	i => \u1|visor_dez\(5),
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
	i => \u1|visor_cen\(4),
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
	i => \u1|visor_cen\(5),
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
	i => \u1|visor_mil\(0),
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
	i => \u1|visor_mil\(5),
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

-- Location: FF_X111_Y36_N27
\u3|s_state.E0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|s_state.E0~q\);

-- Location: LCCOMB_X111_Y36_N8
\u3|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Selector4~0_combout\ = ((\u3|s_state.E2~q\) # ((\u3|s_state.E2B~q\ & \u3|enable_timer~q\))) # (!\u3|s_state.E0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|s_state.E2B~q\,
	datab => \u3|s_state.E0~q\,
	datac => \u3|enable_timer~q\,
	datad => \u3|s_state.E2~q\,
	combout => \u3|Selector4~0_combout\);

-- Location: FF_X111_Y36_N9
\u3|enable_timer\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u3|Selector4~0_combout\,
	ena => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|enable_timer~q\);

-- Location: LCCOMB_X111_Y36_N6
\u3|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Selector5~0_combout\ = (\u3|s_state.E2~q\) # ((\u3|timeVal\(1) & \u3|s_state.E0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|s_state.E2~q\,
	datac => \u3|timeVal\(1),
	datad => \u3|s_state.E0~q\,
	combout => \u3|Selector5~0_combout\);

-- Location: FF_X111_Y36_N7
\u3|timeVal[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u3|Selector5~0_combout\,
	ena => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|timeVal\(1));

-- Location: LCCOMB_X110_Y39_N0
\u2|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Add0~0_combout\ = \u2|s_counter\(0) $ (VCC)
-- \u2|Add0~1\ = CARRY(\u2|s_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u2|s_counter\(0),
	datad => VCC,
	combout => \u2|Add0~0_combout\,
	cout => \u2|Add0~1\);

-- Location: LCCOMB_X109_Y38_N0
\u2|s_counter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|s_counter~0_combout\ = ((!\u3|enable_timer~q\ & \u2|Add0~0_combout\)) # (!\KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u3|enable_timer~q\,
	datac => \u2|Add0~0_combout\,
	datad => \KEY[0]~input_o\,
	combout => \u2|s_counter~0_combout\);

-- Location: LCCOMB_X108_Y38_N2
\u2|s_counter[16]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|s_counter[16]~1_combout\ = ((\u3|enable_timer~q\) # (!\u2|Equal0~10_combout\)) # (!\KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datac => \u3|enable_timer~q\,
	datad => \u2|Equal0~10_combout\,
	combout => \u2|s_counter[16]~1_combout\);

-- Location: FF_X109_Y38_N1
\u2|s_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u2|s_counter~0_combout\,
	ena => \u2|s_counter[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|s_counter\(0));

-- Location: LCCOMB_X110_Y39_N2
\u2|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Add0~2_combout\ = (\u2|s_counter\(1) & (\u2|Add0~1\ & VCC)) # (!\u2|s_counter\(1) & (!\u2|Add0~1\))
-- \u2|Add0~3\ = CARRY((!\u2|s_counter\(1) & !\u2|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|s_counter\(1),
	datad => VCC,
	cin => \u2|Add0~1\,
	combout => \u2|Add0~2_combout\,
	cout => \u2|Add0~3\);

-- Location: LCCOMB_X109_Y38_N2
\u2|s_counter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|s_counter~2_combout\ = (\KEY[0]~input_o\ & (!\u3|enable_timer~q\ & \u2|Add0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datac => \u3|enable_timer~q\,
	datad => \u2|Add0~2_combout\,
	combout => \u2|s_counter~2_combout\);

-- Location: FF_X109_Y38_N3
\u2|s_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u2|s_counter~2_combout\,
	ena => \u2|s_counter[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|s_counter\(1));

-- Location: LCCOMB_X110_Y39_N4
\u2|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Add0~4_combout\ = (\u2|s_counter\(2) & ((GND) # (!\u2|Add0~3\))) # (!\u2|s_counter\(2) & (\u2|Add0~3\ $ (GND)))
-- \u2|Add0~5\ = CARRY((\u2|s_counter\(2)) # (!\u2|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|s_counter\(2),
	datad => VCC,
	cin => \u2|Add0~3\,
	combout => \u2|Add0~4_combout\,
	cout => \u2|Add0~5\);

-- Location: LCCOMB_X109_Y38_N20
\u2|s_counter~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|s_counter~3_combout\ = (!\u3|enable_timer~q\ & (\u2|Add0~4_combout\ & \KEY[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u3|enable_timer~q\,
	datac => \u2|Add0~4_combout\,
	datad => \KEY[0]~input_o\,
	combout => \u2|s_counter~3_combout\);

-- Location: FF_X109_Y38_N21
\u2|s_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u2|s_counter~3_combout\,
	ena => \u2|s_counter[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|s_counter\(2));

-- Location: LCCOMB_X110_Y39_N6
\u2|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Add0~6_combout\ = (\u2|s_counter\(3) & (\u2|Add0~5\ & VCC)) # (!\u2|s_counter\(3) & (!\u2|Add0~5\))
-- \u2|Add0~7\ = CARRY((!\u2|s_counter\(3) & !\u2|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|s_counter\(3),
	datad => VCC,
	cin => \u2|Add0~5\,
	combout => \u2|Add0~6_combout\,
	cout => \u2|Add0~7\);

-- Location: LCCOMB_X109_Y38_N10
\u2|s_counter~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|s_counter~4_combout\ = (\KEY[0]~input_o\ & (!\u3|enable_timer~q\ & \u2|Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datac => \u3|enable_timer~q\,
	datad => \u2|Add0~6_combout\,
	combout => \u2|s_counter~4_combout\);

-- Location: FF_X109_Y38_N11
\u2|s_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u2|s_counter~4_combout\,
	ena => \u2|s_counter[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|s_counter\(3));

-- Location: LCCOMB_X110_Y39_N8
\u2|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Add0~8_combout\ = (\u2|s_counter\(4) & ((GND) # (!\u2|Add0~7\))) # (!\u2|s_counter\(4) & (\u2|Add0~7\ $ (GND)))
-- \u2|Add0~9\ = CARRY((\u2|s_counter\(4)) # (!\u2|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|s_counter\(4),
	datad => VCC,
	cin => \u2|Add0~7\,
	combout => \u2|Add0~8_combout\,
	cout => \u2|Add0~9\);

-- Location: LCCOMB_X109_Y39_N0
\u2|s_counter~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|s_counter~5_combout\ = (!\u3|enable_timer~q\ & (\u2|Add0~8_combout\ & \KEY[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u3|enable_timer~q\,
	datac => \u2|Add0~8_combout\,
	datad => \KEY[0]~input_o\,
	combout => \u2|s_counter~5_combout\);

-- Location: FF_X109_Y39_N1
\u2|s_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u2|s_counter~5_combout\,
	ena => \u2|s_counter[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|s_counter\(4));

-- Location: LCCOMB_X110_Y39_N10
\u2|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Add0~10_combout\ = (\u2|s_counter\(5) & (\u2|Add0~9\ & VCC)) # (!\u2|s_counter\(5) & (!\u2|Add0~9\))
-- \u2|Add0~11\ = CARRY((!\u2|s_counter\(5) & !\u2|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|s_counter\(5),
	datad => VCC,
	cin => \u2|Add0~9\,
	combout => \u2|Add0~10_combout\,
	cout => \u2|Add0~11\);

-- Location: LCCOMB_X109_Y39_N6
\u2|s_counter~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|s_counter~6_combout\ = (!\u3|enable_timer~q\ & (\u2|Add0~10_combout\ & \KEY[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u3|enable_timer~q\,
	datac => \u2|Add0~10_combout\,
	datad => \KEY[0]~input_o\,
	combout => \u2|s_counter~6_combout\);

-- Location: FF_X109_Y39_N7
\u2|s_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u2|s_counter~6_combout\,
	ena => \u2|s_counter[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|s_counter\(5));

-- Location: LCCOMB_X110_Y39_N12
\u2|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Add0~12_combout\ = (\u2|s_counter\(6) & ((GND) # (!\u2|Add0~11\))) # (!\u2|s_counter\(6) & (\u2|Add0~11\ $ (GND)))
-- \u2|Add0~13\ = CARRY((\u2|s_counter\(6)) # (!\u2|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|s_counter\(6),
	datad => VCC,
	cin => \u2|Add0~11\,
	combout => \u2|Add0~12_combout\,
	cout => \u2|Add0~13\);

-- Location: LCCOMB_X109_Y39_N8
\u2|s_counter~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|s_counter~7_combout\ = (\KEY[0]~input_o\ & (!\u3|enable_timer~q\ & \u2|Add0~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datac => \u3|enable_timer~q\,
	datad => \u2|Add0~12_combout\,
	combout => \u2|s_counter~7_combout\);

-- Location: FF_X109_Y39_N9
\u2|s_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u2|s_counter~7_combout\,
	ena => \u2|s_counter[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|s_counter\(6));

-- Location: LCCOMB_X110_Y39_N14
\u2|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Add0~14_combout\ = (\u2|s_counter\(7) & (\u2|Add0~13\ & VCC)) # (!\u2|s_counter\(7) & (!\u2|Add0~13\))
-- \u2|Add0~15\ = CARRY((!\u2|s_counter\(7) & !\u2|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|s_counter\(7),
	datad => VCC,
	cin => \u2|Add0~13\,
	combout => \u2|Add0~14_combout\,
	cout => \u2|Add0~15\);

-- Location: LCCOMB_X109_Y39_N18
\u2|s_counter~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|s_counter~8_combout\ = (!\u3|enable_timer~q\ & (\u2|Add0~14_combout\ & \KEY[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u3|enable_timer~q\,
	datac => \u2|Add0~14_combout\,
	datad => \KEY[0]~input_o\,
	combout => \u2|s_counter~8_combout\);

-- Location: FF_X109_Y39_N19
\u2|s_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u2|s_counter~8_combout\,
	ena => \u2|s_counter[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|s_counter\(7));

-- Location: LCCOMB_X110_Y39_N16
\u2|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Add0~16_combout\ = (\u2|s_counter\(8) & ((GND) # (!\u2|Add0~15\))) # (!\u2|s_counter\(8) & (\u2|Add0~15\ $ (GND)))
-- \u2|Add0~17\ = CARRY((\u2|s_counter\(8)) # (!\u2|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|s_counter\(8),
	datad => VCC,
	cin => \u2|Add0~15\,
	combout => \u2|Add0~16_combout\,
	cout => \u2|Add0~17\);

-- Location: LCCOMB_X109_Y39_N26
\u2|s_counter~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|s_counter~25_combout\ = (\u3|enable_timer~q\ & (\u3|timeVal\(1))) # (!\u3|enable_timer~q\ & ((\u2|Add0~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u3|enable_timer~q\,
	datac => \u3|timeVal\(1),
	datad => \u2|Add0~16_combout\,
	combout => \u2|s_counter~25_combout\);

-- Location: FF_X110_Y39_N17
\u2|s_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \u2|s_counter~25_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	sload => VCC,
	ena => \u2|s_counter[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|s_counter\(8));

-- Location: LCCOMB_X110_Y39_N18
\u2|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Add0~18_combout\ = (\u2|s_counter\(9) & (\u2|Add0~17\ & VCC)) # (!\u2|s_counter\(9) & (!\u2|Add0~17\))
-- \u2|Add0~19\ = CARRY((!\u2|s_counter\(9) & !\u2|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|s_counter\(9),
	datad => VCC,
	cin => \u2|Add0~17\,
	combout => \u2|Add0~18_combout\,
	cout => \u2|Add0~19\);

-- Location: LCCOMB_X109_Y39_N2
\u2|s_counter~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|s_counter~9_combout\ = (\KEY[0]~input_o\ & ((\u2|Add0~18_combout\) # (\u3|enable_timer~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \u2|Add0~18_combout\,
	datac => \u3|enable_timer~q\,
	combout => \u2|s_counter~9_combout\);

-- Location: FF_X109_Y39_N3
\u2|s_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u2|s_counter~9_combout\,
	ena => \u2|s_counter[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|s_counter\(9));

-- Location: LCCOMB_X110_Y39_N20
\u2|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Add0~20_combout\ = (\u2|s_counter\(10) & ((GND) # (!\u2|Add0~19\))) # (!\u2|s_counter\(10) & (\u2|Add0~19\ $ (GND)))
-- \u2|Add0~21\ = CARRY((\u2|s_counter\(10)) # (!\u2|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|s_counter\(10),
	datad => VCC,
	cin => \u2|Add0~19\,
	combout => \u2|Add0~20_combout\,
	cout => \u2|Add0~21\);

-- Location: LCCOMB_X109_Y39_N12
\u2|s_counter~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|s_counter~10_combout\ = (!\u3|enable_timer~q\ & (\u2|Add0~20_combout\ & \KEY[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u3|enable_timer~q\,
	datac => \u2|Add0~20_combout\,
	datad => \KEY[0]~input_o\,
	combout => \u2|s_counter~10_combout\);

-- Location: FF_X109_Y39_N13
\u2|s_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u2|s_counter~10_combout\,
	ena => \u2|s_counter[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|s_counter\(10));

-- Location: LCCOMB_X110_Y39_N22
\u2|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Add0~22_combout\ = (\u2|s_counter\(11) & (\u2|Add0~21\ & VCC)) # (!\u2|s_counter\(11) & (!\u2|Add0~21\))
-- \u2|Add0~23\ = CARRY((!\u2|s_counter\(11) & !\u2|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|s_counter\(11),
	datad => VCC,
	cin => \u2|Add0~21\,
	combout => \u2|Add0~22_combout\,
	cout => \u2|Add0~23\);

-- Location: LCCOMB_X109_Y39_N14
\u2|s_counter~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|s_counter~11_combout\ = (\KEY[0]~input_o\ & (\u2|Add0~22_combout\ & !\u3|enable_timer~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \u2|Add0~22_combout\,
	datac => \u3|enable_timer~q\,
	combout => \u2|s_counter~11_combout\);

-- Location: FF_X109_Y39_N15
\u2|s_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u2|s_counter~11_combout\,
	ena => \u2|s_counter[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|s_counter\(11));

-- Location: LCCOMB_X110_Y39_N24
\u2|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Add0~24_combout\ = (\u2|s_counter\(12) & ((GND) # (!\u2|Add0~23\))) # (!\u2|s_counter\(12) & (\u2|Add0~23\ $ (GND)))
-- \u2|Add0~25\ = CARRY((\u2|s_counter\(12)) # (!\u2|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|s_counter\(12),
	datad => VCC,
	cin => \u2|Add0~23\,
	combout => \u2|Add0~24_combout\,
	cout => \u2|Add0~25\);

-- Location: LCCOMB_X109_Y39_N24
\u2|s_counter~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|s_counter~12_combout\ = (\KEY[0]~input_o\ & (\u2|Add0~24_combout\ & !\u3|enable_timer~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \u2|Add0~24_combout\,
	datac => \u3|enable_timer~q\,
	combout => \u2|s_counter~12_combout\);

-- Location: FF_X109_Y39_N25
\u2|s_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u2|s_counter~12_combout\,
	ena => \u2|s_counter[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|s_counter\(12));

-- Location: LCCOMB_X110_Y39_N26
\u2|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Add0~26_combout\ = (\u2|s_counter\(13) & (\u2|Add0~25\ & VCC)) # (!\u2|s_counter\(13) & (!\u2|Add0~25\))
-- \u2|Add0~27\ = CARRY((!\u2|s_counter\(13) & !\u2|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|s_counter\(13),
	datad => VCC,
	cin => \u2|Add0~25\,
	combout => \u2|Add0~26_combout\,
	cout => \u2|Add0~27\);

-- Location: LCCOMB_X109_Y38_N24
\u2|s_counter~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|s_counter~26_combout\ = (\u3|enable_timer~q\ & (\u3|timeVal\(1))) # (!\u3|enable_timer~q\ & ((\u2|Add0~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u3|enable_timer~q\,
	datac => \u3|timeVal\(1),
	datad => \u2|Add0~26_combout\,
	combout => \u2|s_counter~26_combout\);

-- Location: FF_X109_Y38_N25
\u2|s_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u2|s_counter~26_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	ena => \u2|s_counter[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|s_counter\(13));

-- Location: LCCOMB_X110_Y39_N28
\u2|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Add0~28_combout\ = (\u2|s_counter\(14) & ((GND) # (!\u2|Add0~27\))) # (!\u2|s_counter\(14) & (\u2|Add0~27\ $ (GND)))
-- \u2|Add0~29\ = CARRY((\u2|s_counter\(14)) # (!\u2|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|s_counter\(14),
	datad => VCC,
	cin => \u2|Add0~27\,
	combout => \u2|Add0~28_combout\,
	cout => \u2|Add0~29\);

-- Location: LCCOMB_X111_Y39_N20
\u2|s_counter~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|s_counter~27_combout\ = (\u3|enable_timer~q\ & (!\u3|timeVal\(1))) # (!\u3|enable_timer~q\ & ((\u2|Add0~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|timeVal\(1),
	datac => \u3|enable_timer~q\,
	datad => \u2|Add0~28_combout\,
	combout => \u2|s_counter~27_combout\);

-- Location: FF_X111_Y39_N21
\u2|s_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u2|s_counter~27_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	ena => \u2|s_counter[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|s_counter\(14));

-- Location: LCCOMB_X110_Y39_N30
\u2|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Add0~30_combout\ = (\u2|s_counter\(15) & (\u2|Add0~29\ & VCC)) # (!\u2|s_counter\(15) & (!\u2|Add0~29\))
-- \u2|Add0~31\ = CARRY((!\u2|s_counter\(15) & !\u2|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|s_counter\(15),
	datad => VCC,
	cin => \u2|Add0~29\,
	combout => \u2|Add0~30_combout\,
	cout => \u2|Add0~31\);

-- Location: LCCOMB_X109_Y39_N16
\u2|s_counter~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|s_counter~13_combout\ = (\KEY[0]~input_o\ & ((\u3|enable_timer~q\) # (\u2|Add0~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u3|enable_timer~q\,
	datac => \u2|Add0~30_combout\,
	datad => \KEY[0]~input_o\,
	combout => \u2|s_counter~13_combout\);

-- Location: FF_X109_Y39_N17
\u2|s_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u2|s_counter~13_combout\,
	ena => \u2|s_counter[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|s_counter\(15));

-- Location: LCCOMB_X110_Y38_N0
\u2|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Add0~32_combout\ = (\u2|s_counter\(16) & ((GND) # (!\u2|Add0~31\))) # (!\u2|s_counter\(16) & (\u2|Add0~31\ $ (GND)))
-- \u2|Add0~33\ = CARRY((\u2|s_counter\(16)) # (!\u2|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|s_counter\(16),
	datad => VCC,
	cin => \u2|Add0~31\,
	combout => \u2|Add0~32_combout\,
	cout => \u2|Add0~33\);

-- Location: LCCOMB_X109_Y39_N30
\u2|s_counter~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|s_counter~14_combout\ = (\KEY[0]~input_o\ & ((\u3|enable_timer~q\) # (\u2|Add0~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datac => \u3|enable_timer~q\,
	datad => \u2|Add0~32_combout\,
	combout => \u2|s_counter~14_combout\);

-- Location: FF_X109_Y39_N31
\u2|s_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u2|s_counter~14_combout\,
	ena => \u2|s_counter[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|s_counter\(16));

-- Location: LCCOMB_X110_Y38_N2
\u2|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Add0~34_combout\ = (\u2|s_counter\(17) & (\u2|Add0~33\ & VCC)) # (!\u2|s_counter\(17) & (!\u2|Add0~33\))
-- \u2|Add0~35\ = CARRY((!\u2|s_counter\(17) & !\u2|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|s_counter\(17),
	datad => VCC,
	cin => \u2|Add0~33\,
	combout => \u2|Add0~34_combout\,
	cout => \u2|Add0~35\);

-- Location: LCCOMB_X109_Y38_N14
\u2|s_counter~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|s_counter~28_combout\ = (\u3|enable_timer~q\ & (!\u3|timeVal\(1))) # (!\u3|enable_timer~q\ & ((\u2|Add0~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u3|enable_timer~q\,
	datac => \u3|timeVal\(1),
	datad => \u2|Add0~34_combout\,
	combout => \u2|s_counter~28_combout\);

-- Location: FF_X109_Y38_N15
\u2|s_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u2|s_counter~28_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	ena => \u2|s_counter[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|s_counter\(17));

-- Location: LCCOMB_X110_Y38_N4
\u2|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Add0~36_combout\ = (\u2|s_counter\(18) & ((GND) # (!\u2|Add0~35\))) # (!\u2|s_counter\(18) & (\u2|Add0~35\ $ (GND)))
-- \u2|Add0~37\ = CARRY((\u2|s_counter\(18)) # (!\u2|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|s_counter\(18),
	datad => VCC,
	cin => \u2|Add0~35\,
	combout => \u2|Add0~36_combout\,
	cout => \u2|Add0~37\);

-- Location: LCCOMB_X109_Y39_N4
\u2|s_counter~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|s_counter~15_combout\ = (!\u3|enable_timer~q\ & (\u2|Add0~36_combout\ & \KEY[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u3|enable_timer~q\,
	datac => \u2|Add0~36_combout\,
	datad => \KEY[0]~input_o\,
	combout => \u2|s_counter~15_combout\);

-- Location: FF_X109_Y39_N5
\u2|s_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u2|s_counter~15_combout\,
	ena => \u2|s_counter[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|s_counter\(18));

-- Location: LCCOMB_X110_Y38_N6
\u2|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Add0~38_combout\ = (\u2|s_counter\(19) & (\u2|Add0~37\ & VCC)) # (!\u2|s_counter\(19) & (!\u2|Add0~37\))
-- \u2|Add0~39\ = CARRY((!\u2|s_counter\(19) & !\u2|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|s_counter\(19),
	datad => VCC,
	cin => \u2|Add0~37\,
	combout => \u2|Add0~38_combout\,
	cout => \u2|Add0~39\);

-- Location: LCCOMB_X111_Y38_N16
\u2|s_counter~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|s_counter~29_combout\ = (\u3|enable_timer~q\ & (!\u3|timeVal\(1))) # (!\u3|enable_timer~q\ & ((\u2|Add0~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|timeVal\(1),
	datac => \u2|Add0~38_combout\,
	datad => \u3|enable_timer~q\,
	combout => \u2|s_counter~29_combout\);

-- Location: FF_X111_Y38_N17
\u2|s_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u2|s_counter~29_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	ena => \u2|s_counter[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|s_counter\(19));

-- Location: LCCOMB_X110_Y38_N8
\u2|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Add0~40_combout\ = (\u2|s_counter\(20) & ((GND) # (!\u2|Add0~39\))) # (!\u2|s_counter\(20) & (\u2|Add0~39\ $ (GND)))
-- \u2|Add0~41\ = CARRY((\u2|s_counter\(20)) # (!\u2|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|s_counter\(20),
	datad => VCC,
	cin => \u2|Add0~39\,
	combout => \u2|Add0~40_combout\,
	cout => \u2|Add0~41\);

-- Location: LCCOMB_X109_Y39_N22
\u2|s_counter~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|s_counter~16_combout\ = (!\u3|enable_timer~q\ & (\u2|Add0~40_combout\ & \KEY[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u3|enable_timer~q\,
	datac => \u2|Add0~40_combout\,
	datad => \KEY[0]~input_o\,
	combout => \u2|s_counter~16_combout\);

-- Location: FF_X109_Y39_N23
\u2|s_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u2|s_counter~16_combout\,
	ena => \u2|s_counter[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|s_counter\(20));

-- Location: LCCOMB_X110_Y38_N10
\u2|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Add0~42_combout\ = (\u2|s_counter\(21) & (\u2|Add0~41\ & VCC)) # (!\u2|s_counter\(21) & (!\u2|Add0~41\))
-- \u2|Add0~43\ = CARRY((!\u2|s_counter\(21) & !\u2|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|s_counter\(21),
	datad => VCC,
	cin => \u2|Add0~41\,
	combout => \u2|Add0~42_combout\,
	cout => \u2|Add0~43\);

-- Location: LCCOMB_X109_Y38_N26
\u2|s_counter~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|s_counter~17_combout\ = (\KEY[0]~input_o\ & ((\u3|enable_timer~q\) # (\u2|Add0~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u3|enable_timer~q\,
	datac => \u2|Add0~42_combout\,
	datad => \KEY[0]~input_o\,
	combout => \u2|s_counter~17_combout\);

-- Location: FF_X109_Y38_N27
\u2|s_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u2|s_counter~17_combout\,
	ena => \u2|s_counter[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|s_counter\(21));

-- Location: LCCOMB_X110_Y38_N12
\u2|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Add0~44_combout\ = (\u2|s_counter\(22) & ((GND) # (!\u2|Add0~43\))) # (!\u2|s_counter\(22) & (\u2|Add0~43\ $ (GND)))
-- \u2|Add0~45\ = CARRY((\u2|s_counter\(22)) # (!\u2|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|s_counter\(22),
	datad => VCC,
	cin => \u2|Add0~43\,
	combout => \u2|Add0~44_combout\,
	cout => \u2|Add0~45\);

-- Location: LCCOMB_X109_Y38_N4
\u2|s_counter~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|s_counter~18_combout\ = (\KEY[0]~input_o\ & ((\u3|enable_timer~q\) # (\u2|Add0~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u3|enable_timer~q\,
	datac => \u2|Add0~44_combout\,
	datad => \KEY[0]~input_o\,
	combout => \u2|s_counter~18_combout\);

-- Location: FF_X109_Y38_N5
\u2|s_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u2|s_counter~18_combout\,
	ena => \u2|s_counter[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|s_counter\(22));

-- Location: LCCOMB_X110_Y38_N14
\u2|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Add0~46_combout\ = (\u2|s_counter\(23) & (\u2|Add0~45\ & VCC)) # (!\u2|s_counter\(23) & (!\u2|Add0~45\))
-- \u2|Add0~47\ = CARRY((!\u2|s_counter\(23) & !\u2|Add0~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|s_counter\(23),
	datad => VCC,
	cin => \u2|Add0~45\,
	combout => \u2|Add0~46_combout\,
	cout => \u2|Add0~47\);

-- Location: LCCOMB_X109_Y38_N18
\u2|s_counter~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|s_counter~19_combout\ = (\KEY[0]~input_o\ & ((\u3|enable_timer~q\) # (\u2|Add0~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \u3|enable_timer~q\,
	datad => \u2|Add0~46_combout\,
	combout => \u2|s_counter~19_combout\);

-- Location: FF_X109_Y38_N19
\u2|s_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u2|s_counter~19_combout\,
	ena => \u2|s_counter[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|s_counter\(23));

-- Location: LCCOMB_X110_Y38_N16
\u2|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Add0~48_combout\ = (\u2|s_counter\(24) & ((GND) # (!\u2|Add0~47\))) # (!\u2|s_counter\(24) & (\u2|Add0~47\ $ (GND)))
-- \u2|Add0~49\ = CARRY((\u2|s_counter\(24)) # (!\u2|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|s_counter\(24),
	datad => VCC,
	cin => \u2|Add0~47\,
	combout => \u2|Add0~48_combout\,
	cout => \u2|Add0~49\);

-- Location: LCCOMB_X109_Y38_N16
\u2|s_counter~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|s_counter~20_combout\ = (\KEY[0]~input_o\ & ((\u3|enable_timer~q\) # (\u2|Add0~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datac => \u3|enable_timer~q\,
	datad => \u2|Add0~48_combout\,
	combout => \u2|s_counter~20_combout\);

-- Location: FF_X109_Y38_N17
\u2|s_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u2|s_counter~20_combout\,
	ena => \u2|s_counter[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|s_counter\(24));

-- Location: LCCOMB_X110_Y38_N18
\u2|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Add0~50_combout\ = (\u2|s_counter\(25) & (\u2|Add0~49\ & VCC)) # (!\u2|s_counter\(25) & (!\u2|Add0~49\))
-- \u2|Add0~51\ = CARRY((!\u2|s_counter\(25) & !\u2|Add0~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|s_counter\(25),
	datad => VCC,
	cin => \u2|Add0~49\,
	combout => \u2|Add0~50_combout\,
	cout => \u2|Add0~51\);

-- Location: LCCOMB_X111_Y38_N2
\u2|s_counter~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|s_counter~30_combout\ = (\u3|enable_timer~q\ & (!\u3|timeVal\(1))) # (!\u3|enable_timer~q\ & ((\u2|Add0~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|enable_timer~q\,
	datac => \u3|timeVal\(1),
	datad => \u2|Add0~50_combout\,
	combout => \u2|s_counter~30_combout\);

-- Location: FF_X111_Y38_N3
\u2|s_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u2|s_counter~30_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	ena => \u2|s_counter[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|s_counter\(25));

-- Location: LCCOMB_X110_Y38_N20
\u2|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Add0~52_combout\ = (\u2|s_counter\(26) & ((GND) # (!\u2|Add0~51\))) # (!\u2|s_counter\(26) & (\u2|Add0~51\ $ (GND)))
-- \u2|Add0~53\ = CARRY((\u2|s_counter\(26)) # (!\u2|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|s_counter\(26),
	datad => VCC,
	cin => \u2|Add0~51\,
	combout => \u2|Add0~52_combout\,
	cout => \u2|Add0~53\);

-- Location: LCCOMB_X111_Y38_N8
\u2|s_counter~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|s_counter~23_combout\ = (!\u3|enable_timer~q\ & (\KEY[0]~input_o\ & \u2|Add0~52_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|enable_timer~q\,
	datac => \KEY[0]~input_o\,
	datad => \u2|Add0~52_combout\,
	combout => \u2|s_counter~23_combout\);

-- Location: FF_X111_Y38_N9
\u2|s_counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u2|s_counter~23_combout\,
	ena => \u2|s_counter[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|s_counter\(26));

-- Location: LCCOMB_X110_Y38_N22
\u2|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Add0~54_combout\ = (\u2|s_counter\(27) & (\u2|Add0~53\ & VCC)) # (!\u2|s_counter\(27) & (!\u2|Add0~53\))
-- \u2|Add0~55\ = CARRY((!\u2|s_counter\(27) & !\u2|Add0~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|s_counter\(27),
	datad => VCC,
	cin => \u2|Add0~53\,
	combout => \u2|Add0~54_combout\,
	cout => \u2|Add0~55\);

-- Location: LCCOMB_X111_Y38_N4
\u2|s_counter~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|s_counter~31_combout\ = (\u3|enable_timer~q\ & (!\u3|timeVal\(1))) # (!\u3|enable_timer~q\ & ((\u2|Add0~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|enable_timer~q\,
	datac => \u3|timeVal\(1),
	datad => \u2|Add0~54_combout\,
	combout => \u2|s_counter~31_combout\);

-- Location: FF_X111_Y38_N5
\u2|s_counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u2|s_counter~31_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	ena => \u2|s_counter[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|s_counter\(27));

-- Location: LCCOMB_X110_Y38_N24
\u2|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Add0~56_combout\ = (\u2|s_counter\(28) & ((GND) # (!\u2|Add0~55\))) # (!\u2|s_counter\(28) & (\u2|Add0~55\ $ (GND)))
-- \u2|Add0~57\ = CARRY((\u2|s_counter\(28)) # (!\u2|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|s_counter\(28),
	datad => VCC,
	cin => \u2|Add0~55\,
	combout => \u2|Add0~56_combout\,
	cout => \u2|Add0~57\);

-- Location: LCCOMB_X111_Y38_N26
\u2|s_counter~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|s_counter~32_combout\ = (\u3|enable_timer~q\ & (\u3|timeVal\(1))) # (!\u3|enable_timer~q\ & ((\u2|Add0~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|enable_timer~q\,
	datac => \u3|timeVal\(1),
	datad => \u2|Add0~56_combout\,
	combout => \u2|s_counter~32_combout\);

-- Location: FF_X111_Y38_N27
\u2|s_counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u2|s_counter~32_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	ena => \u2|s_counter[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|s_counter\(28));

-- Location: LCCOMB_X111_Y38_N10
\u2|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Equal0~9_combout\ = (!\u2|s_counter\(28) & (!\u2|s_counter\(25) & (!\u2|s_counter\(27) & !\u2|s_counter\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|s_counter\(28),
	datab => \u2|s_counter\(25),
	datac => \u2|s_counter\(27),
	datad => \u2|s_counter\(19),
	combout => \u2|Equal0~9_combout\);

-- Location: LCCOMB_X110_Y38_N26
\u2|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Add0~58_combout\ = (\u2|s_counter\(29) & (\u2|Add0~57\ & VCC)) # (!\u2|s_counter\(29) & (!\u2|Add0~57\))
-- \u2|Add0~59\ = CARRY((!\u2|s_counter\(29) & !\u2|Add0~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|s_counter\(29),
	datad => VCC,
	cin => \u2|Add0~57\,
	combout => \u2|Add0~58_combout\,
	cout => \u2|Add0~59\);

-- Location: LCCOMB_X109_Y38_N28
\u2|s_counter~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|s_counter~24_combout\ = (\KEY[0]~input_o\ & (!\u3|enable_timer~q\ & \u2|Add0~58_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datac => \u3|enable_timer~q\,
	datad => \u2|Add0~58_combout\,
	combout => \u2|s_counter~24_combout\);

-- Location: FF_X109_Y38_N29
\u2|s_counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u2|s_counter~24_combout\,
	ena => \u2|s_counter[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|s_counter\(29));

-- Location: LCCOMB_X109_Y38_N30
\u2|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Equal0~5_combout\ = (!\u2|s_counter\(21) & (!\u2|s_counter\(24) & (!\u2|s_counter\(22) & !\u2|s_counter\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|s_counter\(21),
	datab => \u2|s_counter\(24),
	datac => \u2|s_counter\(22),
	datad => \u2|s_counter\(23),
	combout => \u2|Equal0~5_combout\);

-- Location: LCCOMB_X110_Y38_N28
\u2|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Add0~60_combout\ = (\u2|s_counter\(30) & ((GND) # (!\u2|Add0~59\))) # (!\u2|s_counter\(30) & (\u2|Add0~59\ $ (GND)))
-- \u2|Add0~61\ = CARRY((\u2|s_counter\(30)) # (!\u2|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|s_counter\(30),
	datad => VCC,
	cin => \u2|Add0~59\,
	combout => \u2|Add0~60_combout\,
	cout => \u2|Add0~61\);

-- Location: LCCOMB_X109_Y38_N12
\u2|s_counter~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|s_counter~21_combout\ = (\KEY[0]~input_o\ & (!\u3|enable_timer~q\ & \u2|Add0~60_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datac => \u3|enable_timer~q\,
	datad => \u2|Add0~60_combout\,
	combout => \u2|s_counter~21_combout\);

-- Location: FF_X109_Y38_N13
\u2|s_counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u2|s_counter~21_combout\,
	ena => \u2|s_counter[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|s_counter\(30));

-- Location: LCCOMB_X110_Y38_N30
\u2|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Add0~62_combout\ = \u2|Add0~61\ $ (!\u2|s_counter\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u2|s_counter\(31),
	cin => \u2|Add0~61\,
	combout => \u2|Add0~62_combout\);

-- Location: LCCOMB_X109_Y38_N6
\u2|s_counter~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|s_counter~22_combout\ = (!\u3|enable_timer~q\ & (\u2|Add0~62_combout\ & \KEY[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u3|enable_timer~q\,
	datac => \u2|Add0~62_combout\,
	datad => \KEY[0]~input_o\,
	combout => \u2|s_counter~22_combout\);

-- Location: FF_X109_Y38_N7
\u2|s_counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u2|s_counter~22_combout\,
	ena => \u2|s_counter[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|s_counter\(31));

-- Location: LCCOMB_X108_Y38_N28
\u2|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Equal0~6_combout\ = (!\u2|s_counter\(30) & !\u2|s_counter\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u2|s_counter\(30),
	datad => \u2|s_counter\(31),
	combout => \u2|Equal0~6_combout\);

-- Location: LCCOMB_X108_Y38_N18
\u2|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Equal0~7_combout\ = (!\u2|s_counter\(26) & (!\u2|s_counter\(29) & (\u2|Equal0~5_combout\ & \u2|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|s_counter\(26),
	datab => \u2|s_counter\(29),
	datac => \u2|Equal0~5_combout\,
	datad => \u2|Equal0~6_combout\,
	combout => \u2|Equal0~7_combout\);

-- Location: LCCOMB_X109_Y39_N28
\u2|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Equal0~3_combout\ = (!\u2|s_counter\(20) & (!\u2|s_counter\(15) & (!\u2|s_counter\(18) & !\u2|s_counter\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|s_counter\(20),
	datab => \u2|s_counter\(15),
	datac => \u2|s_counter\(18),
	datad => \u2|s_counter\(16),
	combout => \u2|Equal0~3_combout\);

-- Location: LCCOMB_X109_Y38_N8
\u2|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Equal0~0_combout\ = (!\u2|s_counter\(3) & (!\u2|s_counter\(0) & (!\u2|s_counter\(1) & !\u2|s_counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|s_counter\(3),
	datab => \u2|s_counter\(0),
	datac => \u2|s_counter\(1),
	datad => \u2|s_counter\(2),
	combout => \u2|Equal0~0_combout\);

-- Location: LCCOMB_X109_Y39_N20
\u2|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Equal0~1_combout\ = (!\u2|s_counter\(5) & (!\u2|s_counter\(4) & (!\u2|s_counter\(6) & !\u2|s_counter\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|s_counter\(5),
	datab => \u2|s_counter\(4),
	datac => \u2|s_counter\(6),
	datad => \u2|s_counter\(7),
	combout => \u2|Equal0~1_combout\);

-- Location: LCCOMB_X109_Y39_N10
\u2|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Equal0~2_combout\ = (!\u2|s_counter\(10) & (!\u2|s_counter\(9) & (!\u2|s_counter\(11) & !\u2|s_counter\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|s_counter\(10),
	datab => \u2|s_counter\(9),
	datac => \u2|s_counter\(11),
	datad => \u2|s_counter\(12),
	combout => \u2|Equal0~2_combout\);

-- Location: LCCOMB_X108_Y38_N30
\u2|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Equal0~4_combout\ = (\u2|Equal0~3_combout\ & (\u2|Equal0~0_combout\ & (\u2|Equal0~1_combout\ & \u2|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Equal0~3_combout\,
	datab => \u2|Equal0~0_combout\,
	datac => \u2|Equal0~1_combout\,
	datad => \u2|Equal0~2_combout\,
	combout => \u2|Equal0~4_combout\);

-- Location: LCCOMB_X109_Y38_N22
\u2|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Equal0~8_combout\ = (!\u2|s_counter\(14) & (!\u2|s_counter\(17) & (!\u2|s_counter\(8) & !\u2|s_counter\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|s_counter\(14),
	datab => \u2|s_counter\(17),
	datac => \u2|s_counter\(8),
	datad => \u2|s_counter\(13),
	combout => \u2|Equal0~8_combout\);

-- Location: LCCOMB_X108_Y38_N12
\u2|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Equal0~10_combout\ = (\u2|Equal0~9_combout\ & (\u2|Equal0~7_combout\ & (\u2|Equal0~4_combout\ & \u2|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Equal0~9_combout\,
	datab => \u2|Equal0~7_combout\,
	datac => \u2|Equal0~4_combout\,
	datad => \u2|Equal0~8_combout\,
	combout => \u2|Equal0~10_combout\);

-- Location: LCCOMB_X108_Y38_N4
\u2|s_cntZero~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|s_cntZero~0_combout\ = (!\u3|enable_timer~q\ & \u2|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u3|enable_timer~q\,
	datad => \u2|Equal0~10_combout\,
	combout => \u2|s_cntZero~0_combout\);

-- Location: FF_X108_Y38_N5
\u2|s_cntZero\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u2|s_cntZero~0_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|s_cntZero~q\);

-- Location: LCCOMB_X111_Y36_N28
\u3|s_state~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|s_state~17_combout\ = (\u3|s_state.E2~q\ & \KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|s_state.E2~q\,
	datac => \KEY[0]~input_o\,
	combout => \u3|s_state~17_combout\);

-- Location: FF_X111_Y36_N29
\u3|s_state.E2A\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u3|s_state~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|s_state.E2A~q\);

-- Location: LCCOMB_X110_Y36_N2
\u3|Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Selector11~0_combout\ = (\u3|s_state.E2A~q\) # ((!\u2|s_cntZero~q\ & \u3|s_state.E2B~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|s_cntZero~q\,
	datac => \u3|s_state.E2B~q\,
	datad => \u3|s_state.E2A~q\,
	combout => \u3|Selector11~0_combout\);

-- Location: FF_X110_Y36_N3
\u3|s_state.E2B\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u3|Selector11~0_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|s_state.E2B~q\);

-- Location: LCCOMB_X110_Y36_N18
\u3|s_state~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|s_state~18_combout\ = (\u3|s_state.E2B~q\ & (\u2|s_cntZero~q\ & \KEY[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u3|s_state.E2B~q\,
	datac => \u2|s_cntZero~q\,
	datad => \KEY[0]~input_o\,
	combout => \u3|s_state~18_combout\);

-- Location: LCCOMB_X110_Y36_N30
\u3|s_state~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|s_state~23_combout\ = (\u3|s_state~18_combout\) # ((\KEY[0]~input_o\ & (\u3|s_state.E3~q\ & !\u3|s_state~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \u3|s_state~18_combout\,
	datac => \u3|s_state.E3~q\,
	datad => \u3|s_state~22_combout\,
	combout => \u3|s_state~23_combout\);

-- Location: FF_X110_Y36_N31
\u3|s_state.E3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u3|s_state~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|s_state.E3~q\);

-- Location: LCCOMB_X110_Y36_N4
\u3|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Selector7~0_combout\ = ((!\u2|s_cntZero~q\ & \u3|s_state.E0A~q\)) # (!\u3|s_state.E0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|s_cntZero~q\,
	datac => \u3|s_state.E0A~q\,
	datad => \u3|s_state.E0~q\,
	combout => \u3|Selector7~0_combout\);

-- Location: FF_X110_Y36_N5
\u3|s_state.E0A\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u3|Selector7~0_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|s_state.E0A~q\);

-- Location: LCCOMB_X110_Y36_N16
\u3|s_state~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|s_state~19_combout\ = (!\u3|s_state.E3~q\ & (\u3|s_state.E0A~q\ & \u2|s_cntZero~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|s_state.E3~q\,
	datab => \u3|s_state.E0A~q\,
	datac => \u2|s_cntZero~q\,
	combout => \u3|s_state~19_combout\);

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

-- Location: FF_X114_Y20_N25
\s_sw[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[16]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_sw(16));

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

-- Location: FF_X114_Y20_N5
\s_sw[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[15]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_sw(15));

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

-- Location: FF_X114_Y20_N11
\s_sw[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[17]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_sw(17));

-- Location: LCCOMB_X114_Y20_N4
\u3|proc_sinc~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|proc_sinc~0_combout\ = (!s_sw(16) & (!s_sw(15) & !s_sw(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_sw(16),
	datac => s_sw(15),
	datad => s_sw(17),
	combout => \u3|proc_sinc~0_combout\);

-- Location: LCCOMB_X110_Y36_N6
\u3|s_state~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|s_state~20_combout\ = (!\u3|s_state.E2~q\ & (\u3|s_state.E0~q\ & ((!\u3|s_state.E2B~q\) # (!\u2|s_cntZero~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|s_cntZero~q\,
	datab => \u3|s_state.E2B~q\,
	datac => \u3|s_state.E2~q\,
	datad => \u3|s_state.E0~q\,
	combout => \u3|s_state~20_combout\);

-- Location: LCCOMB_X110_Y36_N12
\u3|s_state~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|s_state~21_combout\ = (\u3|s_state~20_combout\ & (!\u3|s_state.E2A~q\ & ((\u3|proc_sinc~0_combout\) # (!\u3|s_state.E1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|s_state~20_combout\,
	datab => \u3|s_state.E1~q\,
	datac => \u3|proc_sinc~0_combout\,
	datad => \u3|s_state.E2A~q\,
	combout => \u3|s_state~21_combout\);

-- Location: LCCOMB_X110_Y36_N10
\u3|s_state~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|s_state~22_combout\ = (\u3|s_state~19_combout\) # (((\u3|s_state.E3~q\ & \u3|proc_sinc~0_combout\)) # (!\u3|s_state~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|s_state.E3~q\,
	datab => \u3|s_state~19_combout\,
	datac => \u3|proc_sinc~0_combout\,
	datad => \u3|s_state~21_combout\,
	combout => \u3|s_state~22_combout\);

-- Location: LCCOMB_X110_Y36_N8
\u3|s_state~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|s_state~24_combout\ = (\KEY[0]~input_o\ & ((\u3|s_state~22_combout\ & ((\u3|s_state~21_combout\))) # (!\u3|s_state~22_combout\ & (\u3|s_state.E1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|s_state~22_combout\,
	datab => \KEY[0]~input_o\,
	datac => \u3|s_state.E1~q\,
	datad => \u3|s_state~21_combout\,
	combout => \u3|s_state~24_combout\);

-- Location: FF_X110_Y36_N9
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

-- Location: LCCOMB_X110_Y36_N14
\u3|s_state~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|s_state~16_combout\ = (\u3|s_state.E1~q\ & (!\u3|proc_sinc~0_combout\ & \KEY[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u3|s_state.E1~q\,
	datac => \u3|proc_sinc~0_combout\,
	datad => \KEY[0]~input_o\,
	combout => \u3|s_state~16_combout\);

-- Location: FF_X110_Y36_N15
\u3|s_state.E2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u3|s_state~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|s_state.E2~q\);

-- Location: LCCOMB_X110_Y36_N20
\u3|WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|WideOr0~0_combout\ = (\u3|s_state.E2B~q\) # ((\u3|s_state.E0A~q\) # (\u3|s_state.E2A~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u3|s_state.E2B~q\,
	datac => \u3|s_state.E0A~q\,
	datad => \u3|s_state.E2A~q\,
	combout => \u3|WideOr0~0_combout\);

-- Location: LCCOMB_X111_Y36_N24
\u3|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Selector2~0_combout\ = (\u3|s_state.E2~q\) # ((\u3|ledr~q\ & \u3|WideOr0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|s_state.E2~q\,
	datac => \u3|ledr~q\,
	datad => \u3|WideOr0~0_combout\,
	combout => \u3|Selector2~0_combout\);

-- Location: FF_X111_Y36_N25
\u3|ledr\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u3|Selector2~0_combout\,
	ena => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|ledr~q\);

-- Location: LCCOMB_X110_Y36_N24
\u3|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Selector3~0_combout\ = (\u3|s_state.E3~q\) # ((\u3|ledg~q\ & \u3|WideOr0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|s_state.E3~q\,
	datac => \u3|ledg~q\,
	datad => \u3|WideOr0~0_combout\,
	combout => \u3|Selector3~0_combout\);

-- Location: FF_X110_Y36_N25
\u3|ledg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u3|Selector3~0_combout\,
	ena => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|ledg~q\);

-- Location: LCCOMB_X110_Y23_N2
\u0|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Add0~0_combout\ = \u0|s_divCounter\(0) $ (VCC)
-- \u0|Add0~1\ = CARRY(\u0|s_divCounter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|s_divCounter\(0),
	datad => VCC,
	combout => \u0|Add0~0_combout\,
	cout => \u0|Add0~1\);

-- Location: FF_X110_Y23_N3
\u0|s_divCounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u0|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|s_divCounter\(0));

-- Location: LCCOMB_X110_Y23_N4
\u0|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Add0~2_combout\ = (\u0|s_divCounter\(1) & (!\u0|Add0~1\)) # (!\u0|s_divCounter\(1) & ((\u0|Add0~1\) # (GND)))
-- \u0|Add0~3\ = CARRY((!\u0|Add0~1\) # (!\u0|s_divCounter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|s_divCounter\(1),
	datad => VCC,
	cin => \u0|Add0~1\,
	combout => \u0|Add0~2_combout\,
	cout => \u0|Add0~3\);

-- Location: FF_X110_Y23_N5
\u0|s_divCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u0|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|s_divCounter\(1));

-- Location: LCCOMB_X110_Y23_N6
\u0|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Add0~4_combout\ = (\u0|s_divCounter\(2) & (\u0|Add0~3\ $ (GND))) # (!\u0|s_divCounter\(2) & (!\u0|Add0~3\ & VCC))
-- \u0|Add0~5\ = CARRY((\u0|s_divCounter\(2) & !\u0|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|s_divCounter\(2),
	datad => VCC,
	cin => \u0|Add0~3\,
	combout => \u0|Add0~4_combout\,
	cout => \u0|Add0~5\);

-- Location: FF_X110_Y23_N7
\u0|s_divCounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u0|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|s_divCounter\(2));

-- Location: LCCOMB_X110_Y23_N8
\u0|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Add0~6_combout\ = (\u0|s_divCounter\(3) & (!\u0|Add0~5\)) # (!\u0|s_divCounter\(3) & ((\u0|Add0~5\) # (GND)))
-- \u0|Add0~7\ = CARRY((!\u0|Add0~5\) # (!\u0|s_divCounter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|s_divCounter\(3),
	datad => VCC,
	cin => \u0|Add0~5\,
	combout => \u0|Add0~6_combout\,
	cout => \u0|Add0~7\);

-- Location: FF_X110_Y23_N9
\u0|s_divCounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u0|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|s_divCounter\(3));

-- Location: LCCOMB_X110_Y23_N10
\u0|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Add0~8_combout\ = (\u0|s_divCounter\(4) & (\u0|Add0~7\ $ (GND))) # (!\u0|s_divCounter\(4) & (!\u0|Add0~7\ & VCC))
-- \u0|Add0~9\ = CARRY((\u0|s_divCounter\(4) & !\u0|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|s_divCounter\(4),
	datad => VCC,
	cin => \u0|Add0~7\,
	combout => \u0|Add0~8_combout\,
	cout => \u0|Add0~9\);

-- Location: FF_X110_Y23_N11
\u0|s_divCounter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u0|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|s_divCounter\(4));

-- Location: LCCOMB_X110_Y23_N12
\u0|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Add0~10_combout\ = (\u0|s_divCounter\(5) & (!\u0|Add0~9\)) # (!\u0|s_divCounter\(5) & ((\u0|Add0~9\) # (GND)))
-- \u0|Add0~11\ = CARRY((!\u0|Add0~9\) # (!\u0|s_divCounter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|s_divCounter\(5),
	datad => VCC,
	cin => \u0|Add0~9\,
	combout => \u0|Add0~10_combout\,
	cout => \u0|Add0~11\);

-- Location: FF_X110_Y23_N13
\u0|s_divCounter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u0|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|s_divCounter\(5));

-- Location: LCCOMB_X110_Y23_N14
\u0|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Add0~12_combout\ = (\u0|s_divCounter\(6) & (\u0|Add0~11\ $ (GND))) # (!\u0|s_divCounter\(6) & (!\u0|Add0~11\ & VCC))
-- \u0|Add0~13\ = CARRY((\u0|s_divCounter\(6) & !\u0|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|s_divCounter\(6),
	datad => VCC,
	cin => \u0|Add0~11\,
	combout => \u0|Add0~12_combout\,
	cout => \u0|Add0~13\);

-- Location: LCCOMB_X110_Y23_N0
\u0|s_divCounter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|s_divCounter~2_combout\ = (\u0|Add0~12_combout\ & !\u0|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|Add0~12_combout\,
	datad => \u0|Equal0~10_combout\,
	combout => \u0|s_divCounter~2_combout\);

-- Location: FF_X110_Y23_N1
\u0|s_divCounter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u0|s_divCounter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|s_divCounter\(6));

-- Location: LCCOMB_X110_Y23_N16
\u0|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Add0~14_combout\ = (\u0|s_divCounter\(7) & (!\u0|Add0~13\)) # (!\u0|s_divCounter\(7) & ((\u0|Add0~13\) # (GND)))
-- \u0|Add0~15\ = CARRY((!\u0|Add0~13\) # (!\u0|s_divCounter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|s_divCounter\(7),
	datad => VCC,
	cin => \u0|Add0~13\,
	combout => \u0|Add0~14_combout\,
	cout => \u0|Add0~15\);

-- Location: FF_X110_Y23_N17
\u0|s_divCounter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u0|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|s_divCounter\(7));

-- Location: LCCOMB_X110_Y23_N18
\u0|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Add0~16_combout\ = (\u0|s_divCounter\(8) & (\u0|Add0~15\ $ (GND))) # (!\u0|s_divCounter\(8) & (!\u0|Add0~15\ & VCC))
-- \u0|Add0~17\ = CARRY((\u0|s_divCounter\(8) & !\u0|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|s_divCounter\(8),
	datad => VCC,
	cin => \u0|Add0~15\,
	combout => \u0|Add0~16_combout\,
	cout => \u0|Add0~17\);

-- Location: LCCOMB_X109_Y22_N8
\u0|s_divCounter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|s_divCounter~1_combout\ = (!\u0|Equal0~10_combout\ & \u0|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|Equal0~10_combout\,
	datad => \u0|Add0~16_combout\,
	combout => \u0|s_divCounter~1_combout\);

-- Location: FF_X109_Y22_N9
\u0|s_divCounter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u0|s_divCounter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|s_divCounter\(8));

-- Location: LCCOMB_X110_Y23_N20
\u0|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Add0~18_combout\ = (\u0|s_divCounter\(9) & (!\u0|Add0~17\)) # (!\u0|s_divCounter\(9) & ((\u0|Add0~17\) # (GND)))
-- \u0|Add0~19\ = CARRY((!\u0|Add0~17\) # (!\u0|s_divCounter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|s_divCounter\(9),
	datad => VCC,
	cin => \u0|Add0~17\,
	combout => \u0|Add0~18_combout\,
	cout => \u0|Add0~19\);

-- Location: LCCOMB_X109_Y23_N14
\u0|s_divCounter~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|s_divCounter~7_combout\ = (\u0|Add0~18_combout\ & !\u0|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|Add0~18_combout\,
	datad => \u0|Equal0~10_combout\,
	combout => \u0|s_divCounter~7_combout\);

-- Location: FF_X109_Y23_N15
\u0|s_divCounter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u0|s_divCounter~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|s_divCounter\(9));

-- Location: LCCOMB_X110_Y23_N22
\u0|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Add0~20_combout\ = (\u0|s_divCounter\(10) & (\u0|Add0~19\ $ (GND))) # (!\u0|s_divCounter\(10) & (!\u0|Add0~19\ & VCC))
-- \u0|Add0~21\ = CARRY((\u0|s_divCounter\(10) & !\u0|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|s_divCounter\(10),
	datad => VCC,
	cin => \u0|Add0~19\,
	combout => \u0|Add0~20_combout\,
	cout => \u0|Add0~21\);

-- Location: FF_X110_Y23_N23
\u0|s_divCounter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u0|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|s_divCounter\(10));

-- Location: LCCOMB_X110_Y23_N24
\u0|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Add0~22_combout\ = (\u0|s_divCounter\(11) & (!\u0|Add0~21\)) # (!\u0|s_divCounter\(11) & ((\u0|Add0~21\) # (GND)))
-- \u0|Add0~23\ = CARRY((!\u0|Add0~21\) # (!\u0|s_divCounter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|s_divCounter\(11),
	datad => VCC,
	cin => \u0|Add0~21\,
	combout => \u0|Add0~22_combout\,
	cout => \u0|Add0~23\);

-- Location: LCCOMB_X109_Y23_N6
\u0|s_divCounter~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|s_divCounter~6_combout\ = (\u0|Add0~22_combout\ & !\u0|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|Add0~22_combout\,
	datad => \u0|Equal0~10_combout\,
	combout => \u0|s_divCounter~6_combout\);

-- Location: FF_X109_Y23_N7
\u0|s_divCounter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u0|s_divCounter~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|s_divCounter\(11));

-- Location: LCCOMB_X110_Y23_N26
\u0|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Add0~24_combout\ = (\u0|s_divCounter\(12) & (\u0|Add0~23\ $ (GND))) # (!\u0|s_divCounter\(12) & (!\u0|Add0~23\ & VCC))
-- \u0|Add0~25\ = CARRY((\u0|s_divCounter\(12) & !\u0|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|s_divCounter\(12),
	datad => VCC,
	cin => \u0|Add0~23\,
	combout => \u0|Add0~24_combout\,
	cout => \u0|Add0~25\);

-- Location: FF_X110_Y23_N27
\u0|s_divCounter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u0|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|s_divCounter\(12));

-- Location: LCCOMB_X110_Y23_N28
\u0|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Add0~26_combout\ = (\u0|s_divCounter\(13) & (!\u0|Add0~25\)) # (!\u0|s_divCounter\(13) & ((\u0|Add0~25\) # (GND)))
-- \u0|Add0~27\ = CARRY((!\u0|Add0~25\) # (!\u0|s_divCounter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|s_divCounter\(13),
	datad => VCC,
	cin => \u0|Add0~25\,
	combout => \u0|Add0~26_combout\,
	cout => \u0|Add0~27\);

-- Location: FF_X110_Y23_N29
\u0|s_divCounter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u0|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|s_divCounter\(13));

-- Location: LCCOMB_X110_Y23_N30
\u0|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Add0~28_combout\ = (\u0|s_divCounter\(14) & (\u0|Add0~27\ $ (GND))) # (!\u0|s_divCounter\(14) & (!\u0|Add0~27\ & VCC))
-- \u0|Add0~29\ = CARRY((\u0|s_divCounter\(14) & !\u0|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|s_divCounter\(14),
	datad => VCC,
	cin => \u0|Add0~27\,
	combout => \u0|Add0~28_combout\,
	cout => \u0|Add0~29\);

-- Location: LCCOMB_X109_Y23_N8
\u0|s_divCounter~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|s_divCounter~5_combout\ = (\u0|Add0~28_combout\ & !\u0|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|Add0~28_combout\,
	datad => \u0|Equal0~10_combout\,
	combout => \u0|s_divCounter~5_combout\);

-- Location: FF_X109_Y23_N9
\u0|s_divCounter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u0|s_divCounter~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|s_divCounter\(14));

-- Location: LCCOMB_X110_Y22_N0
\u0|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Add0~30_combout\ = (\u0|s_divCounter\(15) & (!\u0|Add0~29\)) # (!\u0|s_divCounter\(15) & ((\u0|Add0~29\) # (GND)))
-- \u0|Add0~31\ = CARRY((!\u0|Add0~29\) # (!\u0|s_divCounter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|s_divCounter\(15),
	datad => VCC,
	cin => \u0|Add0~29\,
	combout => \u0|Add0~30_combout\,
	cout => \u0|Add0~31\);

-- Location: FF_X110_Y22_N1
\u0|s_divCounter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u0|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|s_divCounter\(15));

-- Location: LCCOMB_X110_Y22_N2
\u0|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Add0~32_combout\ = (\u0|s_divCounter\(16) & (\u0|Add0~31\ $ (GND))) # (!\u0|s_divCounter\(16) & (!\u0|Add0~31\ & VCC))
-- \u0|Add0~33\ = CARRY((\u0|s_divCounter\(16) & !\u0|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|s_divCounter\(16),
	datad => VCC,
	cin => \u0|Add0~31\,
	combout => \u0|Add0~32_combout\,
	cout => \u0|Add0~33\);

-- Location: FF_X110_Y22_N3
\u0|s_divCounter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u0|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|s_divCounter\(16));

-- Location: LCCOMB_X110_Y22_N4
\u0|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Add0~34_combout\ = (\u0|s_divCounter\(17) & (!\u0|Add0~33\)) # (!\u0|s_divCounter\(17) & ((\u0|Add0~33\) # (GND)))
-- \u0|Add0~35\ = CARRY((!\u0|Add0~33\) # (!\u0|s_divCounter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|s_divCounter\(17),
	datad => VCC,
	cin => \u0|Add0~33\,
	combout => \u0|Add0~34_combout\,
	cout => \u0|Add0~35\);

-- Location: FF_X110_Y22_N5
\u0|s_divCounter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u0|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|s_divCounter\(17));

-- Location: LCCOMB_X110_Y22_N6
\u0|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Add0~36_combout\ = (\u0|s_divCounter\(18) & (\u0|Add0~35\ $ (GND))) # (!\u0|s_divCounter\(18) & (!\u0|Add0~35\ & VCC))
-- \u0|Add0~37\ = CARRY((\u0|s_divCounter\(18) & !\u0|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|s_divCounter\(18),
	datad => VCC,
	cin => \u0|Add0~35\,
	combout => \u0|Add0~36_combout\,
	cout => \u0|Add0~37\);

-- Location: LCCOMB_X109_Y22_N18
\u0|s_divCounter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|s_divCounter~0_combout\ = (!\u0|Equal0~10_combout\ & \u0|Add0~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|Equal0~10_combout\,
	datad => \u0|Add0~36_combout\,
	combout => \u0|s_divCounter~0_combout\);

-- Location: FF_X109_Y22_N19
\u0|s_divCounter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u0|s_divCounter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|s_divCounter\(18));

-- Location: LCCOMB_X110_Y22_N8
\u0|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Add0~38_combout\ = (\u0|s_divCounter\(19) & (!\u0|Add0~37\)) # (!\u0|s_divCounter\(19) & ((\u0|Add0~37\) # (GND)))
-- \u0|Add0~39\ = CARRY((!\u0|Add0~37\) # (!\u0|s_divCounter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|s_divCounter\(19),
	datad => VCC,
	cin => \u0|Add0~37\,
	combout => \u0|Add0~38_combout\,
	cout => \u0|Add0~39\);

-- Location: LCCOMB_X109_Y23_N26
\u0|s_divCounter~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|s_divCounter~4_combout\ = (\u0|Add0~38_combout\ & !\u0|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|Add0~38_combout\,
	datad => \u0|Equal0~10_combout\,
	combout => \u0|s_divCounter~4_combout\);

-- Location: FF_X109_Y23_N27
\u0|s_divCounter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u0|s_divCounter~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|s_divCounter\(19));

-- Location: LCCOMB_X110_Y22_N10
\u0|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Add0~40_combout\ = (\u0|s_divCounter\(20) & (\u0|Add0~39\ $ (GND))) # (!\u0|s_divCounter\(20) & (!\u0|Add0~39\ & VCC))
-- \u0|Add0~41\ = CARRY((\u0|s_divCounter\(20) & !\u0|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|s_divCounter\(20),
	datad => VCC,
	cin => \u0|Add0~39\,
	combout => \u0|Add0~40_combout\,
	cout => \u0|Add0~41\);

-- Location: FF_X110_Y22_N11
\u0|s_divCounter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u0|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|s_divCounter\(20));

-- Location: LCCOMB_X110_Y22_N12
\u0|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Add0~42_combout\ = (\u0|s_divCounter\(21) & (!\u0|Add0~41\)) # (!\u0|s_divCounter\(21) & ((\u0|Add0~41\) # (GND)))
-- \u0|Add0~43\ = CARRY((!\u0|Add0~41\) # (!\u0|s_divCounter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|s_divCounter\(21),
	datad => VCC,
	cin => \u0|Add0~41\,
	combout => \u0|Add0~42_combout\,
	cout => \u0|Add0~43\);

-- Location: FF_X110_Y22_N13
\u0|s_divCounter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u0|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|s_divCounter\(21));

-- Location: LCCOMB_X109_Y23_N12
\u0|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Equal0~7_combout\ = (\u0|s_divCounter\(19) & (\u0|s_divCounter\(22) & (!\u0|s_divCounter\(17) & !\u0|s_divCounter\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|s_divCounter\(19),
	datab => \u0|s_divCounter\(22),
	datac => \u0|s_divCounter\(17),
	datad => \u0|s_divCounter\(21),
	combout => \u0|Equal0~7_combout\);

-- Location: LCCOMB_X109_Y23_N0
\u0|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Equal0~9_combout\ = (\u0|s_divCounter\(9) & (\u0|s_divCounter\(5) & !\u0|s_divCounter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|s_divCounter\(9),
	datac => \u0|s_divCounter\(5),
	datad => \u0|s_divCounter\(7),
	combout => \u0|Equal0~9_combout\);

-- Location: LCCOMB_X109_Y23_N30
\u0|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Equal0~8_combout\ = (\u0|s_divCounter\(11) & (!\u0|s_divCounter\(13) & (\u0|s_divCounter\(14) & !\u0|s_divCounter\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|s_divCounter\(11),
	datab => \u0|s_divCounter\(13),
	datac => \u0|s_divCounter\(14),
	datad => \u0|s_divCounter\(10),
	combout => \u0|Equal0~8_combout\);

-- Location: LCCOMB_X109_Y22_N22
\u0|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Equal0~2_combout\ = (!\u0|s_divCounter\(15) & !\u0|s_divCounter\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|s_divCounter\(15),
	datad => \u0|s_divCounter\(16),
	combout => \u0|Equal0~2_combout\);

-- Location: LCCOMB_X110_Y22_N14
\u0|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Add0~44_combout\ = (\u0|s_divCounter\(22) & (\u0|Add0~43\ $ (GND))) # (!\u0|s_divCounter\(22) & (!\u0|Add0~43\ & VCC))
-- \u0|Add0~45\ = CARRY((\u0|s_divCounter\(22) & !\u0|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|s_divCounter\(22),
	datad => VCC,
	cin => \u0|Add0~43\,
	combout => \u0|Add0~44_combout\,
	cout => \u0|Add0~45\);

-- Location: LCCOMB_X110_Y22_N16
\u0|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Add0~46_combout\ = (\u0|s_divCounter\(23) & (!\u0|Add0~45\)) # (!\u0|s_divCounter\(23) & ((\u0|Add0~45\) # (GND)))
-- \u0|Add0~47\ = CARRY((!\u0|Add0~45\) # (!\u0|s_divCounter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|s_divCounter\(23),
	datad => VCC,
	cin => \u0|Add0~45\,
	combout => \u0|Add0~46_combout\,
	cout => \u0|Add0~47\);

-- Location: FF_X110_Y22_N17
\u0|s_divCounter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u0|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|s_divCounter\(23));

-- Location: LCCOMB_X110_Y22_N18
\u0|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Add0~48_combout\ = (\u0|s_divCounter\(24) & (\u0|Add0~47\ $ (GND))) # (!\u0|s_divCounter\(24) & (!\u0|Add0~47\ & VCC))
-- \u0|Add0~49\ = CARRY((\u0|s_divCounter\(24) & !\u0|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|s_divCounter\(24),
	datad => VCC,
	cin => \u0|Add0~47\,
	combout => \u0|Add0~48_combout\,
	cout => \u0|Add0~49\);

-- Location: FF_X110_Y22_N19
\u0|s_divCounter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u0|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|s_divCounter\(24));

-- Location: LCCOMB_X109_Y22_N12
\u0|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Equal0~1_combout\ = (\u0|s_divCounter\(18) & (!\u0|s_divCounter\(24) & (!\u0|s_divCounter\(20) & !\u0|s_divCounter\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|s_divCounter\(18),
	datab => \u0|s_divCounter\(24),
	datac => \u0|s_divCounter\(20),
	datad => \u0|s_divCounter\(23),
	combout => \u0|Equal0~1_combout\);

-- Location: LCCOMB_X109_Y22_N6
\u0|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Equal0~3_combout\ = (\u0|Equal0~2_combout\ & (!\u0|s_divCounter\(12) & (\u0|s_divCounter\(8) & \u0|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|Equal0~2_combout\,
	datab => \u0|s_divCounter\(12),
	datac => \u0|s_divCounter\(8),
	datad => \u0|Equal0~1_combout\,
	combout => \u0|Equal0~3_combout\);

-- Location: LCCOMB_X110_Y22_N20
\u0|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Add0~50_combout\ = (\u0|s_divCounter\(25) & (!\u0|Add0~49\)) # (!\u0|s_divCounter\(25) & ((\u0|Add0~49\) # (GND)))
-- \u0|Add0~51\ = CARRY((!\u0|Add0~49\) # (!\u0|s_divCounter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|s_divCounter\(25),
	datad => VCC,
	cin => \u0|Add0~49\,
	combout => \u0|Add0~50_combout\,
	cout => \u0|Add0~51\);

-- Location: FF_X110_Y22_N21
\u0|s_divCounter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u0|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|s_divCounter\(25));

-- Location: LCCOMB_X110_Y22_N22
\u0|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Add0~52_combout\ = (\u0|s_divCounter\(26) & (\u0|Add0~51\ $ (GND))) # (!\u0|s_divCounter\(26) & (!\u0|Add0~51\ & VCC))
-- \u0|Add0~53\ = CARRY((\u0|s_divCounter\(26) & !\u0|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|s_divCounter\(26),
	datad => VCC,
	cin => \u0|Add0~51\,
	combout => \u0|Add0~52_combout\,
	cout => \u0|Add0~53\);

-- Location: FF_X110_Y22_N23
\u0|s_divCounter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u0|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|s_divCounter\(26));

-- Location: LCCOMB_X110_Y22_N24
\u0|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Add0~54_combout\ = (\u0|s_divCounter\(27) & (!\u0|Add0~53\)) # (!\u0|s_divCounter\(27) & ((\u0|Add0~53\) # (GND)))
-- \u0|Add0~55\ = CARRY((!\u0|Add0~53\) # (!\u0|s_divCounter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|s_divCounter\(27),
	datad => VCC,
	cin => \u0|Add0~53\,
	combout => \u0|Add0~54_combout\,
	cout => \u0|Add0~55\);

-- Location: FF_X110_Y22_N25
\u0|s_divCounter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u0|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|s_divCounter\(27));

-- Location: LCCOMB_X110_Y22_N26
\u0|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Add0~56_combout\ = (\u0|s_divCounter\(28) & (\u0|Add0~55\ $ (GND))) # (!\u0|s_divCounter\(28) & (!\u0|Add0~55\ & VCC))
-- \u0|Add0~57\ = CARRY((\u0|s_divCounter\(28) & !\u0|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|s_divCounter\(28),
	datad => VCC,
	cin => \u0|Add0~55\,
	combout => \u0|Add0~56_combout\,
	cout => \u0|Add0~57\);

-- Location: FF_X110_Y22_N27
\u0|s_divCounter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u0|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|s_divCounter\(28));

-- Location: LCCOMB_X110_Y22_N28
\u0|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Add0~58_combout\ = (\u0|s_divCounter\(29) & (!\u0|Add0~57\)) # (!\u0|s_divCounter\(29) & ((\u0|Add0~57\) # (GND)))
-- \u0|Add0~59\ = CARRY((!\u0|Add0~57\) # (!\u0|s_divCounter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|s_divCounter\(29),
	datad => VCC,
	cin => \u0|Add0~57\,
	combout => \u0|Add0~58_combout\,
	cout => \u0|Add0~59\);

-- Location: FF_X110_Y22_N29
\u0|s_divCounter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u0|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|s_divCounter\(29));

-- Location: LCCOMB_X110_Y22_N30
\u0|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Add0~60_combout\ = \u0|s_divCounter\(30) $ (!\u0|Add0~59\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|s_divCounter\(30),
	cin => \u0|Add0~59\,
	combout => \u0|Add0~60_combout\);

-- Location: FF_X110_Y22_N31
\u0|s_divCounter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u0|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|s_divCounter\(30));

-- Location: LCCOMB_X109_Y22_N0
\u0|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Equal0~0_combout\ = (!\u0|s_divCounter\(27) & (!\u0|s_divCounter\(28) & (!\u0|s_divCounter\(30) & !\u0|s_divCounter\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|s_divCounter\(27),
	datab => \u0|s_divCounter\(28),
	datac => \u0|s_divCounter\(30),
	datad => \u0|s_divCounter\(29),
	combout => \u0|Equal0~0_combout\);

-- Location: LCCOMB_X109_Y23_N22
\u0|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Equal0~4_combout\ = (\u0|s_divCounter\(3) & (!\u0|s_divCounter\(6) & (\u0|s_divCounter\(4) & \u0|s_divCounter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|s_divCounter\(3),
	datab => \u0|s_divCounter\(6),
	datac => \u0|s_divCounter\(4),
	datad => \u0|s_divCounter\(2),
	combout => \u0|Equal0~4_combout\);

-- Location: LCCOMB_X109_Y23_N24
\u0|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Equal0~5_combout\ = (\u0|s_divCounter\(1) & (!\u0|s_divCounter\(26) & (\u0|s_divCounter\(0) & !\u0|s_divCounter\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|s_divCounter\(1),
	datab => \u0|s_divCounter\(26),
	datac => \u0|s_divCounter\(0),
	datad => \u0|s_divCounter\(25),
	combout => \u0|Equal0~5_combout\);

-- Location: LCCOMB_X109_Y23_N2
\u0|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Equal0~6_combout\ = (\u0|Equal0~3_combout\ & (\u0|Equal0~0_combout\ & (\u0|Equal0~4_combout\ & \u0|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|Equal0~3_combout\,
	datab => \u0|Equal0~0_combout\,
	datac => \u0|Equal0~4_combout\,
	datad => \u0|Equal0~5_combout\,
	combout => \u0|Equal0~6_combout\);

-- Location: LCCOMB_X109_Y23_N18
\u0|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Equal0~10_combout\ = (\u0|Equal0~7_combout\ & (\u0|Equal0~9_combout\ & (\u0|Equal0~8_combout\ & \u0|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|Equal0~7_combout\,
	datab => \u0|Equal0~9_combout\,
	datac => \u0|Equal0~8_combout\,
	datad => \u0|Equal0~6_combout\,
	combout => \u0|Equal0~10_combout\);

-- Location: LCCOMB_X109_Y23_N20
\u0|s_divCounter~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|s_divCounter~3_combout\ = (!\u0|Equal0~10_combout\ & \u0|Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|Equal0~10_combout\,
	datad => \u0|Add0~44_combout\,
	combout => \u0|s_divCounter~3_combout\);

-- Location: FF_X109_Y23_N21
\u0|s_divCounter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u0|s_divCounter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|s_divCounter\(22));

-- Location: LCCOMB_X109_Y22_N28
\u0|clkOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|clkOut~0_combout\ = (!\u0|s_divCounter\(22) & (!\u0|s_divCounter\(19) & (\u0|s_divCounter\(21) & \u0|s_divCounter\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|s_divCounter\(22),
	datab => \u0|s_divCounter\(19),
	datac => \u0|s_divCounter\(21),
	datad => \u0|s_divCounter\(17),
	combout => \u0|clkOut~0_combout\);

-- Location: LCCOMB_X109_Y23_N28
\u0|clkOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|clkOut~1_combout\ = (!\u0|s_divCounter\(11) & (\u0|s_divCounter\(13) & (!\u0|s_divCounter\(14) & \u0|s_divCounter\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|s_divCounter\(11),
	datab => \u0|s_divCounter\(13),
	datac => \u0|s_divCounter\(14),
	datad => \u0|s_divCounter\(10),
	combout => \u0|clkOut~1_combout\);

-- Location: LCCOMB_X109_Y23_N4
\u0|clkOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|clkOut~2_combout\ = (!\u0|s_divCounter\(9) & (!\u0|s_divCounter\(5) & \u0|s_divCounter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|s_divCounter\(9),
	datac => \u0|s_divCounter\(5),
	datad => \u0|s_divCounter\(7),
	combout => \u0|clkOut~2_combout\);

-- Location: LCCOMB_X109_Y23_N10
\u0|clkOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|clkOut~3_combout\ = (\u0|clkOut~0_combout\ & (\u0|clkOut~1_combout\ & (\u0|clkOut~2_combout\ & \u0|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|clkOut~0_combout\,
	datab => \u0|clkOut~1_combout\,
	datac => \u0|clkOut~2_combout\,
	datad => \u0|Equal0~6_combout\,
	combout => \u0|clkOut~3_combout\);

-- Location: LCCOMB_X109_Y23_N16
\u0|clkOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|clkOut~4_combout\ = (!\u0|Equal0~10_combout\ & ((\u0|clkOut~3_combout\) # (\u0|clkOut~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|clkOut~3_combout\,
	datac => \u0|clkOut~q\,
	datad => \u0|Equal0~10_combout\,
	combout => \u0|clkOut~4_combout\);

-- Location: FF_X109_Y23_N17
\u0|clkOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u0|clkOut~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|clkOut~q\);

-- Location: LCCOMB_X110_Y36_N22
\u3|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Selector0~0_combout\ = ((\u3|WideOr0~0_combout\ & \u3|ola~q\)) # (!\u3|s_state.E0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u3|WideOr0~0_combout\,
	datac => \u3|ola~q\,
	datad => \u3|s_state.E0~q\,
	combout => \u3|Selector0~0_combout\);

-- Location: FF_X110_Y36_N23
\u3|ola\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u3|Selector0~0_combout\,
	ena => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|ola~q\);

-- Location: LCCOMB_X110_Y36_N0
\u3|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Selector1~0_combout\ = (\u3|s_state.E1~q\) # ((\u3|epro~q\ & \u3|WideOr0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u3|s_state.E1~q\,
	datac => \u3|epro~q\,
	datad => \u3|WideOr0~0_combout\,
	combout => \u3|Selector1~0_combout\);

-- Location: FF_X110_Y36_N1
\u3|epro\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u3|Selector1~0_combout\,
	ena => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|epro~q\);

-- Location: LCCOMB_X114_Y20_N22
\u1|visor_uni~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|visor_uni~0_combout\ = (\u3|ola~q\ & (!\u0|clkOut~q\)) # (!\u3|ola~q\ & (((\u3|proc_sinc~0_combout\ & !\u3|epro~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|clkOut~q\,
	datab => \u3|proc_sinc~0_combout\,
	datac => \u3|ola~q\,
	datad => \u3|epro~q\,
	combout => \u1|visor_uni~0_combout\);

-- Location: LCCOMB_X114_Y22_N16
\u1|visor_uni[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|visor_uni[0]~feeder_combout\ = \u1|visor_uni~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u1|visor_uni~0_combout\,
	combout => \u1|visor_uni[0]~feeder_combout\);

-- Location: FF_X114_Y22_N17
\u1|visor_uni[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u1|visor_uni[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|visor_uni\(0));

-- Location: LCCOMB_X114_Y22_N6
\u1|visor_uni[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|visor_uni[1]~feeder_combout\ = \u1|visor_uni~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u1|visor_uni~0_combout\,
	combout => \u1|visor_uni[1]~feeder_combout\);

-- Location: FF_X114_Y22_N7
\u1|visor_uni[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u1|visor_uni[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|visor_uni\(1));

-- Location: LCCOMB_X114_Y22_N0
\u1|visor_uni[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|visor_uni[2]~feeder_combout\ = \u1|visor_uni~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u1|visor_uni~0_combout\,
	combout => \u1|visor_uni[2]~feeder_combout\);

-- Location: FF_X114_Y22_N1
\u1|visor_uni[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u1|visor_uni[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|visor_uni\(2));

-- Location: LCCOMB_X110_Y36_N26
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

-- Location: FF_X110_Y36_N27
\u1|visor_uni[3]\ : dffeas
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
	q => \u1|visor_uni\(3));

-- Location: LCCOMB_X114_Y22_N14
\u1|visor_uni[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|visor_uni[4]~feeder_combout\ = \u1|visor_uni~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u1|visor_uni~0_combout\,
	combout => \u1|visor_uni[4]~feeder_combout\);

-- Location: FF_X114_Y22_N15
\u1|visor_uni[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u1|visor_uni[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|visor_uni\(4));

-- Location: LCCOMB_X114_Y22_N28
\u1|visor_uni[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|visor_uni[5]~feeder_combout\ = \u1|visor_uni~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u1|visor_uni~0_combout\,
	combout => \u1|visor_uni[5]~feeder_combout\);

-- Location: FF_X114_Y22_N29
\u1|visor_uni[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u1|visor_uni[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|visor_uni\(5));

-- Location: LCCOMB_X114_Y20_N8
\u1|visor_uni~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|visor_uni~2_combout\ = (\u3|ola~q\ & (!\u0|clkOut~q\)) # (!\u3|ola~q\ & (((\u3|proc_sinc~0_combout\) # (\u3|epro~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|clkOut~q\,
	datab => \u3|proc_sinc~0_combout\,
	datac => \u3|ola~q\,
	datad => \u3|epro~q\,
	combout => \u1|visor_uni~2_combout\);

-- Location: LCCOMB_X114_Y23_N12
\u1|visor_uni[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|visor_uni[6]~feeder_combout\ = \u1|visor_uni~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u1|visor_uni~2_combout\,
	combout => \u1|visor_uni[6]~feeder_combout\);

-- Location: FF_X114_Y23_N13
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

-- Location: LCCOMB_X114_Y20_N10
\u1|visor_dez~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|visor_dez~0_combout\ = (!s_sw(17) & !\u3|epro~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => s_sw(17),
	datad => \u3|epro~q\,
	combout => \u1|visor_dez~0_combout\);

-- Location: LCCOMB_X114_Y20_N26
\u1|visor_dez~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|visor_dez~1_combout\ = (\u3|ola~q\) # ((\u1|visor_dez~0_combout\ & ((s_sw(16)) # (!s_sw(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_sw(16),
	datab => \u3|ola~q\,
	datac => \u1|visor_dez~0_combout\,
	datad => s_sw(15),
	combout => \u1|visor_dez~1_combout\);

-- Location: LCCOMB_X114_Y23_N10
\u1|visor_dez[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|visor_dez[0]~feeder_combout\ = \u1|visor_dez~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u1|visor_dez~1_combout\,
	combout => \u1|visor_dez[0]~feeder_combout\);

-- Location: FF_X114_Y23_N11
\u1|visor_dez[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u1|visor_dez[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|visor_dez\(0));

-- Location: LCCOMB_X114_Y20_N18
\u1|visor_dez~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|visor_dez~2_combout\ = (!\u3|epro~q\ & ((s_sw(17)) # ((!s_sw(15) & !s_sw(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_sw(17),
	datab => s_sw(15),
	datac => s_sw(16),
	datad => \u3|epro~q\,
	combout => \u1|visor_dez~2_combout\);

-- Location: LCCOMB_X114_Y20_N6
\u1|visor_dez~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|visor_dez~3_combout\ = (\u3|ola~q\) # (\u1|visor_dez~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u3|ola~q\,
	datad => \u1|visor_dez~2_combout\,
	combout => \u1|visor_dez~3_combout\);

-- Location: LCCOMB_X114_Y22_N2
\u1|visor_dez[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|visor_dez[1]~feeder_combout\ = \u1|visor_dez~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u1|visor_dez~3_combout\,
	combout => \u1|visor_dez[1]~feeder_combout\);

-- Location: FF_X114_Y22_N3
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

-- Location: LCCOMB_X114_Y22_N4
\u1|visor_dez[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|visor_dez[2]~feeder_combout\ = \u1|visor_dez~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u1|visor_dez~3_combout\,
	combout => \u1|visor_dez[2]~feeder_combout\);

-- Location: FF_X114_Y22_N5
\u1|visor_dez[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u1|visor_dez[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|visor_dez\(2));

-- Location: LCCOMB_X114_Y20_N24
\u3|proc_sinc~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|proc_sinc~1_combout\ = (!s_sw(16) & !s_sw(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => s_sw(16),
	datad => s_sw(17),
	combout => \u3|proc_sinc~1_combout\);

-- Location: LCCOMB_X114_Y20_N30
\u1|visor_dez~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|visor_dez~4_combout\ = (\u3|ola~q\ & (!\u0|clkOut~q\)) # (!\u3|ola~q\ & (((\u3|epro~q\) # (\u3|proc_sinc~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|clkOut~q\,
	datab => \u3|epro~q\,
	datac => \u3|ola~q\,
	datad => \u3|proc_sinc~1_combout\,
	combout => \u1|visor_dez~4_combout\);

-- Location: LCCOMB_X114_Y23_N16
\u1|visor_dez[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|visor_dez[3]~feeder_combout\ = \u1|visor_dez~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u1|visor_dez~4_combout\,
	combout => \u1|visor_dez[3]~feeder_combout\);

-- Location: FF_X114_Y23_N17
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

-- Location: LCCOMB_X114_Y22_N30
\u1|visor_dez[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|visor_dez[4]~feeder_combout\ = \u1|visor_uni~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u1|visor_uni~0_combout\,
	combout => \u1|visor_dez[4]~feeder_combout\);

-- Location: FF_X114_Y22_N31
\u1|visor_dez[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u1|visor_dez[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|visor_dez\(4));

-- Location: LCCOMB_X114_Y22_N12
\u1|visor_dez[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|visor_dez[5]~feeder_combout\ = \u1|visor_uni~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u1|visor_uni~0_combout\,
	combout => \u1|visor_dez[5]~feeder_combout\);

-- Location: FF_X114_Y22_N13
\u1|visor_dez[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u1|visor_dez[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|visor_dez\(5));

-- Location: LCCOMB_X114_Y20_N16
\u1|visor_dez~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|visor_dez~5_combout\ = (\u3|ola~q\) # ((!\u3|epro~q\ & ((!\u3|proc_sinc~1_combout\) # (!s_sw(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|epro~q\,
	datab => \u3|ola~q\,
	datac => s_sw(15),
	datad => \u3|proc_sinc~1_combout\,
	combout => \u1|visor_dez~5_combout\);

-- Location: FF_X114_Y20_N17
\u1|visor_dez[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u1|visor_dez~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|visor_dez\(6));

-- Location: LCCOMB_X114_Y20_N14
\u1|visor_cen~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|visor_cen~0_combout\ = (\u3|ola~q\ & (!\u0|clkOut~q\)) # (!\u3|ola~q\ & (((!\u3|epro~q\ & \u3|proc_sinc~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|clkOut~q\,
	datab => \u3|ola~q\,
	datac => \u3|epro~q\,
	datad => \u3|proc_sinc~1_combout\,
	combout => \u1|visor_cen~0_combout\);

-- Location: FF_X114_Y20_N15
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

-- Location: LCCOMB_X114_Y20_N28
\u1|visor_cen~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|visor_cen~1_combout\ = (\u3|ola~q\ & (!\u0|clkOut~q\)) # (!\u3|ola~q\ & (((!\u3|epro~q\ & !s_sw(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|clkOut~q\,
	datab => \u3|ola~q\,
	datac => \u3|epro~q\,
	datad => s_sw(17),
	combout => \u1|visor_cen~1_combout\);

-- Location: FF_X114_Y20_N29
\u1|visor_cen[1]\ : dffeas
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
	q => \u1|visor_cen\(1));

-- Location: FF_X114_Y20_N31
\u1|visor_cen[2]\ : dffeas
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
	q => \u1|visor_cen\(2));

-- Location: FF_X114_Y20_N9
\u1|visor_cen[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u1|visor_uni~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|visor_cen\(3));

-- Location: LCCOMB_X114_Y22_N26
\u1|visor_cen[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|visor_cen[4]~feeder_combout\ = \u1|visor_uni~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u1|visor_uni~0_combout\,
	combout => \u1|visor_cen[4]~feeder_combout\);

-- Location: FF_X114_Y22_N27
\u1|visor_cen[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u1|visor_cen[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|visor_cen\(4));

-- Location: FF_X114_Y20_N23
\u1|visor_cen[5]\ : dffeas
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
	q => \u1|visor_cen\(5));

-- Location: LCCOMB_X114_Y20_N0
\u1|visor_cen~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|visor_cen~2_combout\ = (\u3|ola~q\) # ((!\u3|epro~q\ & ((s_sw(17)) # (!s_sw(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_sw(16),
	datab => \u3|epro~q\,
	datac => \u3|ola~q\,
	datad => s_sw(17),
	combout => \u1|visor_cen~2_combout\);

-- Location: FF_X114_Y20_N1
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

-- Location: LCCOMB_X110_Y36_N28
\u1|visor_mil~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|visor_mil~0_combout\ = (\u3|ola~q\) # ((\u3|proc_sinc~0_combout\ & !\u3|epro~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|proc_sinc~0_combout\,
	datac => \u3|ola~q\,
	datad => \u3|epro~q\,
	combout => \u1|visor_mil~0_combout\);

-- Location: LCCOMB_X111_Y36_N18
\u1|visor_mil[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|visor_mil[0]~feeder_combout\ = \u1|visor_mil~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u1|visor_mil~0_combout\,
	combout => \u1|visor_mil[0]~feeder_combout\);

-- Location: FF_X111_Y36_N19
\u1|visor_mil[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u1|visor_mil[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|visor_mil\(0));

-- Location: LCCOMB_X114_Y20_N2
\u1|visor_mil~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|visor_mil~1_combout\ = ((\u3|epro~q\) # ((\u3|ola~q\) # (s_sw(17)))) # (!s_sw(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_sw(16),
	datab => \u3|epro~q\,
	datac => \u3|ola~q\,
	datad => s_sw(17),
	combout => \u1|visor_mil~1_combout\);

-- Location: FF_X114_Y20_N3
\u1|visor_mil[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u1|visor_mil~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|visor_mil\(1));

-- Location: LCCOMB_X114_Y20_N20
\u1|visor_mil~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|visor_mil~2_combout\ = ((\u3|ola~q\) # ((!s_sw(16) & !s_sw(15)))) # (!\u1|visor_dez~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_sw(16),
	datab => \u1|visor_dez~0_combout\,
	datac => \u3|ola~q\,
	datad => s_sw(15),
	combout => \u1|visor_mil~2_combout\);

-- Location: FF_X114_Y20_N21
\u1|visor_mil[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u1|visor_mil~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|visor_mil\(2));

-- Location: FF_X114_Y20_N27
\u1|visor_mil[3]\ : dffeas
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
	q => \u1|visor_mil\(3));

-- Location: LCCOMB_X114_Y20_N12
\u1|visor_mil~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|visor_mil~3_combout\ = (\u3|ola~q\) # ((!s_sw(16) & (!\u3|epro~q\ & !s_sw(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_sw(16),
	datab => \u3|epro~q\,
	datac => \u3|ola~q\,
	datad => s_sw(17),
	combout => \u1|visor_mil~3_combout\);

-- Location: FF_X114_Y20_N13
\u1|visor_mil[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u1|visor_mil~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|visor_mil\(4));

-- Location: FF_X110_Y36_N29
\u1|visor_mil[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u1|visor_mil~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|visor_mil\(5));

-- Location: FF_X114_Y20_N7
\u1|visor_mil[6]\ : dffeas
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

ww_LEDG(8) <= \LEDG[8]~output_o\;

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


