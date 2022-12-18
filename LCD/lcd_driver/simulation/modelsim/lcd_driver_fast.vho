-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "12/17/2022 02:46:41"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	lcd_driver IS
    PORT (
	clk : IN std_logic;
	cmd : IN std_logic_vector(2 DOWNTO 0);
	render : IN std_logic;
	q0_moeda : IN std_logic_vector(15 DOWNTO 0);
	q1_moeda : IN std_logic_vector(15 DOWNTO 0);
	q0_obstaculo : IN std_logic_vector(15 DOWNTO 0);
	q1_obstaculo : IN std_logic_vector(15 DOWNTO 0);
	player_pos : IN std_logic;
	finished : OUT std_logic;
	DATA : OUT std_logic_vector(7 DOWNTO 0);
	E : OUT std_logic;
	RS : OUT std_logic
	);
END lcd_driver;

-- Design Ports Information
-- finished	=>  Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DATA[0]	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DATA[1]	=>  Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DATA[2]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DATA[3]	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DATA[4]	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DATA[5]	=>  Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DATA[6]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DATA[7]	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- E	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RS	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- render	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- cmd[0]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- player_pos	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- cmd[2]	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- cmd[1]	=>  Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- q0_moeda[6]	=>  Location: PIN_B2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- q0_moeda[10]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- q0_moeda[2]	=>  Location: PIN_G10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- q0_moeda[14]	=>  Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- q0_moeda[9]	=>  Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- q0_moeda[5]	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- q0_moeda[1]	=>  Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- q0_moeda[13]	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- q0_moeda[8]	=>  Location: PIN_E5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- q0_moeda[4]	=>  Location: PIN_B3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- q0_moeda[0]	=>  Location: PIN_G9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- q0_moeda[12]	=>  Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- q0_moeda[7]	=>  Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- q0_moeda[11]	=>  Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- q0_moeda[3]	=>  Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- q0_moeda[15]	=>  Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- q0_obstaculo[10]	=>  Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- q0_obstaculo[9]	=>  Location: PIN_K9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- q0_obstaculo[8]	=>  Location: PIN_C4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- q0_obstaculo[11]	=>  Location: PIN_C5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- q0_obstaculo[5]	=>  Location: PIN_A4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- q0_obstaculo[6]	=>  Location: PIN_G4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- q0_obstaculo[4]	=>  Location: PIN_J9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- q0_obstaculo[7]	=>  Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- q0_obstaculo[1]	=>  Location: PIN_B5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- q0_obstaculo[2]	=>  Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- q0_obstaculo[0]	=>  Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- q0_obstaculo[3]	=>  Location: PIN_A5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- q0_obstaculo[14]	=>  Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- q0_obstaculo[13]	=>  Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- q0_obstaculo[12]	=>  Location: PIN_J8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- q0_obstaculo[15]	=>  Location: PIN_J5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- q1_moeda[5]	=>  Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- q1_moeda[9]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- q1_moeda[1]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- q1_moeda[13]	=>  Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- q1_moeda[10]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- q1_moeda[6]	=>  Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- q1_moeda[2]	=>  Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- q1_moeda[14]	=>  Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- q1_moeda[4]	=>  Location: PIN_E8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- q1_moeda[8]	=>  Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- q1_moeda[0]	=>  Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- q1_moeda[12]	=>  Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- q1_moeda[11]	=>  Location: PIN_H10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- q1_moeda[7]	=>  Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- q1_moeda[3]	=>  Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- q1_moeda[15]	=>  Location: PIN_H8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- q1_obstaculo[6]	=>  Location: PIN_F9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- q1_obstaculo[5]	=>  Location: PIN_J7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- q1_obstaculo[4]	=>  Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- q1_obstaculo[7]	=>  Location: PIN_C7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- q1_obstaculo[9]	=>  Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- q1_obstaculo[10]	=>  Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- q1_obstaculo[8]	=>  Location: PIN_D7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- q1_obstaculo[11]	=>  Location: PIN_F7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- q1_obstaculo[2]	=>  Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- q1_obstaculo[1]	=>  Location: PIN_C3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- q1_obstaculo[0]	=>  Location: PIN_F4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- q1_obstaculo[3]	=>  Location: PIN_F6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- q1_obstaculo[13]	=>  Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- q1_obstaculo[14]	=>  Location: PIN_B4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- q1_obstaculo[12]	=>  Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- q1_obstaculo[15]	=>  Location: PIN_C6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF lcd_driver IS
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
SIGNAL ww_cmd : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_render : std_logic;
SIGNAL ww_q0_moeda : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_q1_moeda : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_q0_obstaculo : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_q1_obstaculo : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_player_pos : std_logic;
SIGNAL ww_finished : std_logic;
SIGNAL ww_DATA : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_E : std_logic;
SIGNAL ww_RS : std_logic;
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \datapath|timer|i[8]~24\ : std_logic;
SIGNAL \datapath|timer|i[9]~25_combout\ : std_logic;
SIGNAL \controladora|atual_estado.s11~regout\ : std_logic;
SIGNAL \datapath|dp_E~4_combout\ : std_logic;
SIGNAL \datapath|comp_t100|LessThan0~0_combout\ : std_logic;
SIGNAL \datapath|mux2_q0|mux2_output~7_combout\ : std_logic;
SIGNAL \datapath|mux2_q0|mux2_output~8_combout\ : std_logic;
SIGNAL \controladora|Selector4~0_combout\ : std_logic;
SIGNAL \datapath|timer|i[0]~27_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \datapath|cont_pos|i[0]~3_combout\ : std_logic;
SIGNAL \controladora|atual_estado.s0~feeder_combout\ : std_logic;
SIGNAL \controladora|atual_estado.s0~regout\ : std_logic;
SIGNAL \datapath|timer|i[1]~9_combout\ : std_logic;
SIGNAL \datapath|timer|i[3]~14\ : std_logic;
SIGNAL \datapath|timer|i[4]~15_combout\ : std_logic;
SIGNAL \render~combout\ : std_logic;
SIGNAL \controladora|prox_estado.s15~0_combout\ : std_logic;
SIGNAL \controladora|atual_estado.s15~regout\ : std_logic;
SIGNAL \controladora|Selector6~0_combout\ : std_logic;
SIGNAL \controladora|atual_estado.s16~regout\ : std_logic;
SIGNAL \controladora|Selector1~0_combout\ : std_logic;
SIGNAL \controladora|atual_estado.s3~regout\ : std_logic;
SIGNAL \datapath|timer|i[5]~18\ : std_logic;
SIGNAL \datapath|timer|i[6]~20\ : std_logic;
SIGNAL \datapath|timer|i[7]~21_combout\ : std_logic;
SIGNAL \datapath|timer|i[7]~22\ : std_logic;
SIGNAL \datapath|timer|i[8]~23_combout\ : std_logic;
SIGNAL \datapath|comp_t1000|LessThan0~0_combout\ : std_logic;
SIGNAL \datapath|comp_t1000|LessThan0~1_combout\ : std_logic;
SIGNAL \controladora|Selector0~0_combout\ : std_logic;
SIGNAL \controladora|atual_estado.s1~regout\ : std_logic;
SIGNAL \datapath|dp_E~0_combout\ : std_logic;
SIGNAL \datapath|dp_E~1_combout\ : std_logic;
SIGNAL \datapath|timer|i[4]~16\ : std_logic;
SIGNAL \datapath|timer|i[5]~17_combout\ : std_logic;
SIGNAL \datapath|timer|i[2]~11_combout\ : std_logic;
SIGNAL \datapath|comp_t2|LessThan0~1_combout\ : std_logic;
SIGNAL \datapath|timer|i[6]~19_combout\ : std_logic;
SIGNAL \datapath|comp_t100|LessThan0~1_combout\ : std_logic;
SIGNAL \controladora|prox_estado.s4~0_combout\ : std_logic;
SIGNAL \controladora|atual_estado.s4~regout\ : std_logic;
SIGNAL \datapath|comp_t2|LessThan0~0_combout\ : std_logic;
SIGNAL \datapath|comp_t2|LessThan0~2_combout\ : std_logic;
SIGNAL \controladora|Selector2~0_combout\ : std_logic;
SIGNAL \controladora|atual_estado.s5~regout\ : std_logic;
SIGNAL \controladora|prox_estado.s6~0_combout\ : std_logic;
SIGNAL \controladora|atual_estado.s6~regout\ : std_logic;
SIGNAL \controladora|Selector3~0_combout\ : std_logic;
SIGNAL \controladora|atual_estado.s7~regout\ : std_logic;
SIGNAL \controladora|prox_estado.s8~0_combout\ : std_logic;
SIGNAL \controladora|atual_estado.s8~regout\ : std_logic;
SIGNAL \controladora|atual_estado.s9~regout\ : std_logic;
SIGNAL \controladora|atual_estado.s10~regout\ : std_logic;
SIGNAL \controladora|prox_estado.s2~0_combout\ : std_logic;
SIGNAL \controladora|atual_estado.s2~regout\ : std_logic;
SIGNAL \controladora|WideOr2~0_combout\ : std_logic;
SIGNAL \controladora|WideOr2~combout\ : std_logic;
SIGNAL \datapath|timer|i[1]~10\ : std_logic;
SIGNAL \datapath|timer|i[2]~12\ : std_logic;
SIGNAL \datapath|timer|i[3]~13_combout\ : std_logic;
SIGNAL \datapath|comp_t40|LessThan0~0_combout\ : std_logic;
SIGNAL \controladora|prox_estado.s12~0_combout\ : std_logic;
SIGNAL \controladora|atual_estado.s12~regout\ : std_logic;
SIGNAL \controladora|atual_estado.s13~regout\ : std_logic;
SIGNAL \controladora|Selector5~0_combout\ : std_logic;
SIGNAL \controladora|atual_estado.s14~regout\ : std_logic;
SIGNAL \datapath|dp_E~2_combout\ : std_logic;
SIGNAL \datapath|cont_pos|i[1]~2_combout\ : std_logic;
SIGNAL \datapath|cont_pos|i[2]~1_combout\ : std_logic;
SIGNAL \controladora|prox_estado.s29~0_combout\ : std_logic;
SIGNAL \controladora|prox_estado.s28~0_combout\ : std_logic;
SIGNAL \controladora|atual_estado.s28~regout\ : std_logic;
SIGNAL \datapath|dp_E~7_combout\ : std_logic;
SIGNAL \datapath|reg_linha|qi~1_combout\ : std_logic;
SIGNAL \datapath|reg_linha|qi~3_combout\ : std_logic;
SIGNAL \datapath|reg_linha|qi~0_combout\ : std_logic;
SIGNAL \datapath|reg_linha|qi~_emulated_regout\ : std_logic;
SIGNAL \datapath|reg_linha|qi~2_combout\ : std_logic;
SIGNAL \controladora|prox_estado.s30~0_combout\ : std_logic;
SIGNAL \controladora|atual_estado.s30~regout\ : std_logic;
SIGNAL \controladora|atual_estado.s31~feeder_combout\ : std_logic;
SIGNAL \controladora|atual_estado.s31~regout\ : std_logic;
SIGNAL \controladora|Selector8~0_combout\ : std_logic;
SIGNAL \controladora|atual_estado.s20~regout\ : std_logic;
SIGNAL \datapath|cont_pos|i[3]~0_combout\ : std_logic;
SIGNAL \datapath|mux2_q0|mux2_output~0_combout\ : std_logic;
SIGNAL \datapath|mux2_q0|mux2_output~1_combout\ : std_logic;
SIGNAL \datapath|mux2_q0|mux2_output~4_combout\ : std_logic;
SIGNAL \datapath|mux2_q0|mux2_output~5_combout\ : std_logic;
SIGNAL \datapath|mux2_q0|mux2_output~2_combout\ : std_logic;
SIGNAL \datapath|mux2_q0|mux2_output~3_combout\ : std_logic;
SIGNAL \datapath|mux2_q0|mux2_output~6_combout\ : std_logic;
SIGNAL \datapath|mux2_q0|mux2_output~9_combout\ : std_logic;
SIGNAL \datapath|mux2_q0|mux2_output~17_combout\ : std_logic;
SIGNAL \datapath|mux2_q0|mux2_output~18_combout\ : std_logic;
SIGNAL \datapath|mux2_q0|mux2_output~10_combout\ : std_logic;
SIGNAL \datapath|mux2_q0|mux2_output~11_combout\ : std_logic;
SIGNAL \datapath|mux2_q0|mux2_output~14_combout\ : std_logic;
SIGNAL \datapath|mux2_q0|mux2_output~15_combout\ : std_logic;
SIGNAL \datapath|mux2_q0|mux2_output~12_combout\ : std_logic;
SIGNAL \datapath|mux2_q0|mux2_output~13_combout\ : std_logic;
SIGNAL \datapath|mux2_q0|mux2_output~16_combout\ : std_logic;
SIGNAL \datapath|mux2_q0|mux2_output~19_combout\ : std_logic;
SIGNAL \controladora|prox_estado.s21~0_combout\ : std_logic;
SIGNAL \controladora|atual_estado.s21~regout\ : std_logic;
SIGNAL \datapath|mux2_q1|mux2_output~7_combout\ : std_logic;
SIGNAL \datapath|mux2_q1|mux2_output~8_combout\ : std_logic;
SIGNAL \datapath|mux2_q1|mux2_output~0_combout\ : std_logic;
SIGNAL \datapath|mux2_q1|mux2_output~1_combout\ : std_logic;
SIGNAL \datapath|mux2_q1|mux2_output~2_combout\ : std_logic;
SIGNAL \datapath|mux2_q1|mux2_output~3_combout\ : std_logic;
SIGNAL \datapath|mux2_q1|mux2_output~4_combout\ : std_logic;
SIGNAL \datapath|mux2_q1|mux2_output~5_combout\ : std_logic;
SIGNAL \datapath|mux2_q1|mux2_output~6_combout\ : std_logic;
SIGNAL \datapath|mux2_q1|mux2_output~9_combout\ : std_logic;
SIGNAL \datapath|mux2_q1|mux2_output~10_combout\ : std_logic;
SIGNAL \datapath|mux2_q1|mux2_output~11_combout\ : std_logic;
SIGNAL \datapath|mux2_q1|mux2_output~14_combout\ : std_logic;
SIGNAL \datapath|mux2_q1|mux2_output~15_combout\ : std_logic;
SIGNAL \datapath|mux2_q1|mux2_output~12_combout\ : std_logic;
SIGNAL \datapath|mux2_q1|mux2_output~13_combout\ : std_logic;
SIGNAL \datapath|mux2_q1|mux2_output~16_combout\ : std_logic;
SIGNAL \datapath|mux2_q1|mux2_output~17_combout\ : std_logic;
SIGNAL \datapath|mux2_q1|mux2_output~18_combout\ : std_logic;
SIGNAL \datapath|mux2_q1|mux2_output~19_combout\ : std_logic;
SIGNAL \controladora|prox_estado.s25~0_combout\ : std_logic;
SIGNAL \controladora|atual_estado.s25~regout\ : std_logic;
SIGNAL \controladora|Selector10~0_combout\ : std_logic;
SIGNAL \controladora|Selector10~1_combout\ : std_logic;
SIGNAL \controladora|atual_estado.s26~regout\ : std_logic;
SIGNAL \controladora|Selector9~0_combout\ : std_logic;
SIGNAL \controladora|Selector9~1_combout\ : std_logic;
SIGNAL \controladora|atual_estado.s22~regout\ : std_logic;
SIGNAL \controladora|prox_estado.s24~0_combout\ : std_logic;
SIGNAL \controladora|atual_estado.s24~regout\ : std_logic;
SIGNAL \controladora|WideOr7~3_combout\ : std_logic;
SIGNAL \controladora|atual_estado.s27~regout\ : std_logic;
SIGNAL \controladora|prox_estado.s29~1_combout\ : std_logic;
SIGNAL \controladora|atual_estado.s29~regout\ : std_logic;
SIGNAL \controladora|prox_estado.s32~0_combout\ : std_logic;
SIGNAL \controladora|atual_estado.s32~regout\ : std_logic;
SIGNAL \datapath|cont_obj|cnt[0]~0_combout\ : std_logic;
SIGNAL \controladora|WideOr2~1_combout\ : std_logic;
SIGNAL \datapath|cont_obj|cnt[1]~1_combout\ : std_logic;
SIGNAL \controladora|prox_estado.s17~0_combout\ : std_logic;
SIGNAL \controladora|atual_estado.s17~regout\ : std_logic;
SIGNAL \controladora|Selector7~0_combout\ : std_logic;
SIGNAL \controladora|Selector7~1_combout\ : std_logic;
SIGNAL \controladora|atual_estado.s18~regout\ : std_logic;
SIGNAL \controladora|atual_estado.s19~regout\ : std_logic;
SIGNAL \controladora|prox_estado.s33~0_combout\ : std_logic;
SIGNAL \controladora|atual_estado.s33~regout\ : std_logic;
SIGNAL \player_pos~combout\ : std_logic;
SIGNAL \controladora|prox_estado.s35~0_combout\ : std_logic;
SIGNAL \controladora|atual_estado.s35~regout\ : std_logic;
SIGNAL \controladora|Selector11~0_combout\ : std_logic;
SIGNAL \controladora|atual_estado.s34~regout\ : std_logic;
SIGNAL \controladora|Selector12~0_combout\ : std_logic;
SIGNAL \controladora|atual_estado.s37~regout\ : std_logic;
SIGNAL \controladora|prox_estado.s38~0_combout\ : std_logic;
SIGNAL \controladora|atual_estado.s38~regout\ : std_logic;
SIGNAL \controladora|atual_estado.s39~feeder_combout\ : std_logic;
SIGNAL \controladora|atual_estado.s39~regout\ : std_logic;
SIGNAL \controladora|prox_estado.s40~0_combout\ : std_logic;
SIGNAL \controladora|atual_estado.s40~regout\ : std_logic;
SIGNAL \controladora|prox_estado.s41~0_combout\ : std_logic;
SIGNAL \controladora|atual_estado.s41~regout\ : std_logic;
SIGNAL \controladora|prox_estado.s42~combout\ : std_logic;
SIGNAL \controladora|atual_estado.s42~regout\ : std_logic;
SIGNAL \controladora|prox_estado.s43~0_combout\ : std_logic;
SIGNAL \controladora|atual_estado.s43~regout\ : std_logic;
SIGNAL \controladora|prox_estado.s44~0_combout\ : std_logic;
SIGNAL \controladora|atual_estado.s44~regout\ : std_logic;
SIGNAL \controladora|prox_estado.s45~0_combout\ : std_logic;
SIGNAL \controladora|atual_estado.s45~regout\ : std_logic;
SIGNAL \controladora|prox_estado.s46~combout\ : std_logic;
SIGNAL \controladora|atual_estado.s46~regout\ : std_logic;
SIGNAL \controladora|atual_estado.s47~feeder_combout\ : std_logic;
SIGNAL \controladora|atual_estado.s47~regout\ : std_logic;
SIGNAL \controladora|WideOr27~0_combout\ : std_logic;
SIGNAL \controladora|atual_estado.s52~regout\ : std_logic;
SIGNAL \controladora|fsm_finish~combout\ : std_logic;
SIGNAL \controladora|prox_estado.s23~0_combout\ : std_logic;
SIGNAL \controladora|atual_estado.s23~regout\ : std_logic;
SIGNAL \controladora|WideOr12~0_combout\ : std_logic;
SIGNAL \controladora|prox_estado.s48~0_combout\ : std_logic;
SIGNAL \controladora|atual_estado.s48~regout\ : std_logic;
SIGNAL \controladora|atual_estado.s49~regout\ : std_logic;
SIGNAL \controladora|atual_estado.s50~regout\ : std_logic;
SIGNAL \controladora|WideOr6~0_combout\ : std_logic;
SIGNAL \controladora|WideOr12~1_combout\ : std_logic;
SIGNAL \controladora|WideOr11~0_combout\ : std_logic;
SIGNAL \controladora|WideOr11~combout\ : std_logic;
SIGNAL \controladora|atual_estado.s51~regout\ : std_logic;
SIGNAL \controladora|WideOr10~0_combout\ : std_logic;
SIGNAL \controladora|WideOr10~combout\ : std_logic;
SIGNAL \controladora|WideOr9~0_combout\ : std_logic;
SIGNAL \controladora|WideOr9~combout\ : std_logic;
SIGNAL \controladora|WideOr12~2_combout\ : std_logic;
SIGNAL \controladora|WideOr7~0_combout\ : std_logic;
SIGNAL \controladora|WideOr8~0_combout\ : std_logic;
SIGNAL \controladora|WideOr8~combout\ : std_logic;
SIGNAL \controladora|WideOr7~1_combout\ : std_logic;
SIGNAL \controladora|WideOr7~2_combout\ : std_logic;
SIGNAL \controladora|WideOr7~combout\ : std_logic;
SIGNAL \controladora|WideOr6~1_combout\ : std_logic;
SIGNAL \controladora|WideOr6~2_combout\ : std_logic;
SIGNAL \datapath|dp_E~5_combout\ : std_logic;
SIGNAL \datapath|dp_E~6_combout\ : std_logic;
SIGNAL \datapath|dp_E~3_combout\ : std_logic;
SIGNAL \datapath|dp_E~combout\ : std_logic;
SIGNAL \controladora|WideOr5~combout\ : std_logic;
SIGNAL \q1_obstaculo~combout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \q1_moeda~combout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \q0_obstaculo~combout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \q0_moeda~combout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \cmd~combout\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \datapath|cont_obj|cnt\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \controladora|fsm_dt\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \datapath|timer|i\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \datapath|cont_pos|i\ : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_cmd <= cmd;
ww_render <= render;
ww_q0_moeda <= q0_moeda;
ww_q1_moeda <= q1_moeda;
ww_q0_obstaculo <= q0_obstaculo;
ww_q1_obstaculo <= q1_obstaculo;
ww_player_pos <= player_pos;
finished <= ww_finished;
DATA <= ww_DATA;
E <= ww_E;
RS <= ww_RS;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);

-- Location: LCFF_X16_Y34_N31
\datapath|timer|i[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \datapath|timer|i[9]~25_combout\,
	aclr => \controladora|WideOr2~combout\,
	ena => \datapath|dp_E~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|timer|i\(9));

-- Location: LCCOMB_X16_Y34_N28
\datapath|timer|i[8]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|timer|i[8]~23_combout\ = (\datapath|timer|i\(8) & (!\datapath|timer|i[7]~22\)) # (!\datapath|timer|i\(8) & ((\datapath|timer|i[7]~22\) # (GND)))
-- \datapath|timer|i[8]~24\ = CARRY((!\datapath|timer|i[7]~22\) # (!\datapath|timer|i\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \datapath|timer|i\(8),
	datad => VCC,
	cin => \datapath|timer|i[7]~22\,
	combout => \datapath|timer|i[8]~23_combout\,
	cout => \datapath|timer|i[8]~24\);

-- Location: LCCOMB_X16_Y34_N30
\datapath|timer|i[9]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|timer|i[9]~25_combout\ = \datapath|timer|i[8]~24\ $ (!\datapath|timer|i\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \datapath|timer|i\(9),
	cin => \datapath|timer|i[8]~24\,
	combout => \datapath|timer|i[9]~25_combout\);

-- Location: LCFF_X19_Y34_N7
\controladora|atual_estado.s11\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \controladora|Selector4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controladora|atual_estado.s11~regout\);

-- Location: LCCOMB_X12_Y34_N18
\datapath|dp_E~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|dp_E~4_combout\ = (!\controladora|atual_estado.s25~regout\ & (!\controladora|atual_estado.s22~regout\ & (!\controladora|atual_estado.s27~regout\ & !\controladora|atual_estado.s21~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controladora|atual_estado.s25~regout\,
	datab => \controladora|atual_estado.s22~regout\,
	datac => \controladora|atual_estado.s27~regout\,
	datad => \controladora|atual_estado.s21~regout\,
	combout => \datapath|dp_E~4_combout\);

-- Location: LCCOMB_X17_Y34_N12
\datapath|comp_t100|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|comp_t100|LessThan0~0_combout\ = (!\datapath|timer|i\(7) & (!\datapath|timer|i\(9) & !\datapath|timer|i\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|timer|i\(7),
	datac => \datapath|timer|i\(9),
	datad => \datapath|timer|i\(8),
	combout => \datapath|comp_t100|LessThan0~0_combout\);

-- Location: LCCOMB_X12_Y34_N6
\datapath|mux2_q0|mux2_output~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|mux2_q0|mux2_output~7_combout\ = (\datapath|cont_pos|i\(2) & (((\datapath|cont_pos|i\(3))))) # (!\datapath|cont_pos|i\(2) & ((\datapath|cont_pos|i\(3) & ((\q0_moeda~combout\(11)))) # (!\datapath|cont_pos|i\(3) & (\q0_moeda~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q0_moeda~combout\(3),
	datab => \q0_moeda~combout\(11),
	datac => \datapath|cont_pos|i\(2),
	datad => \datapath|cont_pos|i\(3),
	combout => \datapath|mux2_q0|mux2_output~7_combout\);

-- Location: LCCOMB_X12_Y34_N16
\datapath|mux2_q0|mux2_output~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|mux2_q0|mux2_output~8_combout\ = (\datapath|cont_pos|i\(2) & ((\datapath|mux2_q0|mux2_output~7_combout\ & (\q0_moeda~combout\(15))) # (!\datapath|mux2_q0|mux2_output~7_combout\ & ((\q0_moeda~combout\(7)))))) # (!\datapath|cont_pos|i\(2) & 
-- (((\datapath|mux2_q0|mux2_output~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q0_moeda~combout\(15),
	datab => \q0_moeda~combout\(7),
	datac => \datapath|cont_pos|i\(2),
	datad => \datapath|mux2_q0|mux2_output~7_combout\,
	combout => \datapath|mux2_q0|mux2_output~8_combout\);

-- Location: LCCOMB_X19_Y34_N6
\controladora|Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controladora|Selector4~0_combout\ = (\controladora|atual_estado.s10~regout\) # ((\controladora|atual_estado.s11~regout\ & !\datapath|comp_t40|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controladora|atual_estado.s10~regout\,
	datac => \controladora|atual_estado.s11~regout\,
	datad => \datapath|comp_t40|LessThan0~0_combout\,
	combout => \controladora|Selector4~0_combout\);

-- Location: LCFF_X16_Y34_N11
\datapath|timer|i[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \datapath|timer|i[0]~27_combout\,
	aclr => \controladora|WideOr2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|timer|i\(0));

-- Location: LCCOMB_X16_Y34_N10
\datapath|timer|i[0]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|timer|i[0]~27_combout\ = \datapath|timer|i\(0) $ (((\controladora|atual_estado.s11~regout\) # ((\controladora|atual_estado.s16~regout\) # (!\datapath|dp_E~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controladora|atual_estado.s11~regout\,
	datab => \datapath|dp_E~0_combout\,
	datac => \datapath|timer|i\(0),
	datad => \controladora|atual_estado.s16~regout\,
	combout => \datapath|timer|i[0]~27_combout\);

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\cmd[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_cmd(0),
	combout => \cmd~combout\(0));

-- Location: PIN_B2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\q0_moeda[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_q0_moeda(6),
	combout => \q0_moeda~combout\(6));

-- Location: PIN_G10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\q0_moeda[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_q0_moeda(2),
	combout => \q0_moeda~combout\(2));

-- Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\q0_moeda[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_q0_moeda(1),
	combout => \q0_moeda~combout\(1));

-- Location: PIN_B3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\q0_moeda[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_q0_moeda(4),
	combout => \q0_moeda~combout\(4));

-- Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\q0_moeda[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_q0_moeda(12),
	combout => \q0_moeda~combout\(12));

-- Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\q0_moeda[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_q0_moeda(7),
	combout => \q0_moeda~combout\(7));

-- Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\q0_moeda[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_q0_moeda(11),
	combout => \q0_moeda~combout\(11));

-- Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\q0_moeda[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_q0_moeda(3),
	combout => \q0_moeda~combout\(3));

-- Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\q0_moeda[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_q0_moeda(15),
	combout => \q0_moeda~combout\(15));

-- Location: PIN_K9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\q0_obstaculo[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_q0_obstaculo(9),
	combout => \q0_obstaculo~combout\(9));

-- Location: PIN_C5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\q0_obstaculo[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_q0_obstaculo(11),
	combout => \q0_obstaculo~combout\(11));

-- Location: PIN_G4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\q0_obstaculo[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_q0_obstaculo(6),
	combout => \q0_obstaculo~combout\(6));

-- Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\q0_obstaculo[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_q0_obstaculo(7),
	combout => \q0_obstaculo~combout\(7));

-- Location: PIN_B5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\q0_obstaculo[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_q0_obstaculo(1),
	combout => \q0_obstaculo~combout\(1));

-- Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\q0_obstaculo[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_q0_obstaculo(2),
	combout => \q0_obstaculo~combout\(2));

-- Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\q0_obstaculo[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_q0_obstaculo(14),
	combout => \q0_obstaculo~combout\(14));

-- Location: PIN_J8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\q0_obstaculo[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_q0_obstaculo(12),
	combout => \q0_obstaculo~combout\(12));

-- Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\q1_moeda[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_q1_moeda(9),
	combout => \q1_moeda~combout\(9));

-- Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\q1_moeda[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_q1_moeda(2),
	combout => \q1_moeda~combout\(2));

-- Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\q1_moeda[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_q1_moeda(0),
	combout => \q1_moeda~combout\(0));

-- Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\q1_moeda[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_q1_moeda(3),
	combout => \q1_moeda~combout\(3));

-- Location: PIN_H8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\q1_moeda[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_q1_moeda(15),
	combout => \q1_moeda~combout\(15));

-- Location: PIN_J7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\q1_obstaculo[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_q1_obstaculo(5),
	combout => \q1_obstaculo~combout\(5));

-- Location: PIN_D7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\q1_obstaculo[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_q1_obstaculo(8),
	combout => \q1_obstaculo~combout\(8));

-- Location: PIN_C3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\q1_obstaculo[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_q1_obstaculo(1),
	combout => \q1_obstaculo~combout\(1));

-- Location: PIN_F6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\q1_obstaculo[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_q1_obstaculo(3),
	combout => \q1_obstaculo~combout\(3));

-- Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\q1_obstaculo[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_q1_obstaculo(13),
	combout => \q1_obstaculo~combout\(13));

-- Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\q1_obstaculo[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_q1_obstaculo(12),
	combout => \q1_obstaculo~combout\(12));

-- Location: CLKCTRL_G3
\clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~clkctrl_outclk\);

-- Location: LCCOMB_X10_Y34_N10
\datapath|cont_pos|i[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|cont_pos|i[0]~3_combout\ = \datapath|cont_pos|i\(0) $ (\controladora|atual_estado.s28~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \datapath|cont_pos|i\(0),
	datad => \controladora|atual_estado.s28~regout\,
	combout => \datapath|cont_pos|i[0]~3_combout\);

-- Location: LCCOMB_X15_Y34_N8
\controladora|atual_estado.s0~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \controladora|atual_estado.s0~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \controladora|atual_estado.s0~feeder_combout\);

-- Location: LCFF_X15_Y34_N9
\controladora|atual_estado.s0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \controladora|atual_estado.s0~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controladora|atual_estado.s0~regout\);

-- Location: LCCOMB_X16_Y34_N14
\datapath|timer|i[1]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|timer|i[1]~9_combout\ = (\datapath|timer|i\(0) & (\datapath|timer|i\(1) $ (VCC))) # (!\datapath|timer|i\(0) & (\datapath|timer|i\(1) & VCC))
-- \datapath|timer|i[1]~10\ = CARRY((\datapath|timer|i\(0) & \datapath|timer|i\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|timer|i\(0),
	datab => \datapath|timer|i\(1),
	datad => VCC,
	combout => \datapath|timer|i[1]~9_combout\,
	cout => \datapath|timer|i[1]~10\);

-- Location: LCCOMB_X16_Y34_N18
\datapath|timer|i[3]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|timer|i[3]~13_combout\ = (\datapath|timer|i\(3) & (\datapath|timer|i[2]~12\ $ (GND))) # (!\datapath|timer|i\(3) & (!\datapath|timer|i[2]~12\ & VCC))
-- \datapath|timer|i[3]~14\ = CARRY((\datapath|timer|i\(3) & !\datapath|timer|i[2]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \datapath|timer|i\(3),
	datad => VCC,
	cin => \datapath|timer|i[2]~12\,
	combout => \datapath|timer|i[3]~13_combout\,
	cout => \datapath|timer|i[3]~14\);

-- Location: LCCOMB_X16_Y34_N20
\datapath|timer|i[4]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|timer|i[4]~15_combout\ = (\datapath|timer|i\(4) & (!\datapath|timer|i[3]~14\)) # (!\datapath|timer|i\(4) & ((\datapath|timer|i[3]~14\) # (GND)))
-- \datapath|timer|i[4]~16\ = CARRY((!\datapath|timer|i[3]~14\) # (!\datapath|timer|i\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \datapath|timer|i\(4),
	datad => VCC,
	cin => \datapath|timer|i[3]~14\,
	combout => \datapath|timer|i[4]~15_combout\,
	cout => \datapath|timer|i[4]~16\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\render~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_render,
	combout => \render~combout\);

-- Location: LCCOMB_X15_Y34_N18
\controladora|prox_estado.s15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controladora|prox_estado.s15~0_combout\ = (\controladora|atual_estado.s14~regout\ & \render~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controladora|atual_estado.s14~regout\,
	datad => \render~combout\,
	combout => \controladora|prox_estado.s15~0_combout\);

-- Location: LCFF_X15_Y34_N19
\controladora|atual_estado.s15\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \controladora|prox_estado.s15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controladora|atual_estado.s15~regout\);

-- Location: LCCOMB_X17_Y34_N28
\controladora|Selector6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controladora|Selector6~0_combout\ = (\controladora|atual_estado.s15~regout\) # ((\controladora|atual_estado.s16~regout\ & !\datapath|comp_t40|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controladora|atual_estado.s15~regout\,
	datac => \controladora|atual_estado.s16~regout\,
	datad => \datapath|comp_t40|LessThan0~0_combout\,
	combout => \controladora|Selector6~0_combout\);

-- Location: LCFF_X17_Y34_N29
\controladora|atual_estado.s16\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \controladora|Selector6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controladora|atual_estado.s16~regout\);

-- Location: LCCOMB_X17_Y34_N4
\controladora|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controladora|Selector1~0_combout\ = (\controladora|atual_estado.s2~regout\) # ((\controladora|atual_estado.s3~regout\ & !\datapath|comp_t100|LessThan0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controladora|atual_estado.s2~regout\,
	datac => \controladora|atual_estado.s3~regout\,
	datad => \datapath|comp_t100|LessThan0~1_combout\,
	combout => \controladora|Selector1~0_combout\);

-- Location: LCFF_X17_Y34_N5
\controladora|atual_estado.s3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \controladora|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controladora|atual_estado.s3~regout\);

-- Location: LCCOMB_X16_Y34_N22
\datapath|timer|i[5]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|timer|i[5]~17_combout\ = (\datapath|timer|i\(5) & (\datapath|timer|i[4]~16\ $ (GND))) # (!\datapath|timer|i\(5) & (!\datapath|timer|i[4]~16\ & VCC))
-- \datapath|timer|i[5]~18\ = CARRY((\datapath|timer|i\(5) & !\datapath|timer|i[4]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \datapath|timer|i\(5),
	datad => VCC,
	cin => \datapath|timer|i[4]~16\,
	combout => \datapath|timer|i[5]~17_combout\,
	cout => \datapath|timer|i[5]~18\);

-- Location: LCCOMB_X16_Y34_N24
\datapath|timer|i[6]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|timer|i[6]~19_combout\ = (\datapath|timer|i\(6) & (!\datapath|timer|i[5]~18\)) # (!\datapath|timer|i\(6) & ((\datapath|timer|i[5]~18\) # (GND)))
-- \datapath|timer|i[6]~20\ = CARRY((!\datapath|timer|i[5]~18\) # (!\datapath|timer|i\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|timer|i\(6),
	datad => VCC,
	cin => \datapath|timer|i[5]~18\,
	combout => \datapath|timer|i[6]~19_combout\,
	cout => \datapath|timer|i[6]~20\);

-- Location: LCCOMB_X16_Y34_N26
\datapath|timer|i[7]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|timer|i[7]~21_combout\ = (\datapath|timer|i\(7) & (\datapath|timer|i[6]~20\ $ (GND))) # (!\datapath|timer|i\(7) & (!\datapath|timer|i[6]~20\ & VCC))
-- \datapath|timer|i[7]~22\ = CARRY((\datapath|timer|i\(7) & !\datapath|timer|i[6]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \datapath|timer|i\(7),
	datad => VCC,
	cin => \datapath|timer|i[6]~20\,
	combout => \datapath|timer|i[7]~21_combout\,
	cout => \datapath|timer|i[7]~22\);

-- Location: LCFF_X16_Y34_N27
\datapath|timer|i[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \datapath|timer|i[7]~21_combout\,
	aclr => \controladora|WideOr2~combout\,
	ena => \datapath|dp_E~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|timer|i\(7));

-- Location: LCFF_X16_Y34_N29
\datapath|timer|i[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \datapath|timer|i[8]~23_combout\,
	aclr => \controladora|WideOr2~combout\,
	ena => \datapath|dp_E~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|timer|i\(8));

-- Location: LCCOMB_X17_Y34_N8
\datapath|comp_t1000|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|comp_t1000|LessThan0~0_combout\ = (((!\datapath|timer|i\(4) & !\datapath|timer|i\(3))) # (!\datapath|timer|i\(5))) # (!\datapath|timer|i\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|timer|i\(6),
	datab => \datapath|timer|i\(5),
	datac => \datapath|timer|i\(4),
	datad => \datapath|timer|i\(3),
	combout => \datapath|comp_t1000|LessThan0~0_combout\);

-- Location: LCCOMB_X17_Y34_N10
\datapath|comp_t1000|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|comp_t1000|LessThan0~1_combout\ = (((\datapath|comp_t1000|LessThan0~0_combout\) # (!\datapath|timer|i\(7))) # (!\datapath|timer|i\(8))) # (!\datapath|timer|i\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|timer|i\(9),
	datab => \datapath|timer|i\(8),
	datac => \datapath|comp_t1000|LessThan0~0_combout\,
	datad => \datapath|timer|i\(7),
	combout => \datapath|comp_t1000|LessThan0~1_combout\);

-- Location: LCCOMB_X17_Y34_N26
\controladora|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controladora|Selector0~0_combout\ = ((\controladora|atual_estado.s1~regout\ & !\datapath|comp_t1000|LessThan0~1_combout\)) # (!\controladora|atual_estado.s0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controladora|atual_estado.s0~regout\,
	datac => \controladora|atual_estado.s1~regout\,
	datad => \datapath|comp_t1000|LessThan0~1_combout\,
	combout => \controladora|Selector0~0_combout\);

-- Location: LCFF_X17_Y34_N27
\controladora|atual_estado.s1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \controladora|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controladora|atual_estado.s1~regout\);

-- Location: LCCOMB_X17_Y34_N30
\datapath|dp_E~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|dp_E~0_combout\ = (!\controladora|atual_estado.s7~regout\ & (!\controladora|atual_estado.s5~regout\ & (!\controladora|atual_estado.s3~regout\ & !\controladora|atual_estado.s1~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controladora|atual_estado.s7~regout\,
	datab => \controladora|atual_estado.s5~regout\,
	datac => \controladora|atual_estado.s3~regout\,
	datad => \controladora|atual_estado.s1~regout\,
	combout => \datapath|dp_E~0_combout\);

-- Location: LCCOMB_X16_Y34_N8
\datapath|dp_E~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|dp_E~1_combout\ = (\controladora|atual_estado.s11~regout\) # ((\controladora|atual_estado.s16~regout\) # (!\datapath|dp_E~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controladora|atual_estado.s11~regout\,
	datab => \controladora|atual_estado.s16~regout\,
	datad => \datapath|dp_E~0_combout\,
	combout => \datapath|dp_E~1_combout\);

-- Location: LCFF_X16_Y34_N21
\datapath|timer|i[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \datapath|timer|i[4]~15_combout\,
	aclr => \controladora|WideOr2~combout\,
	ena => \datapath|dp_E~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|timer|i\(4));

-- Location: LCFF_X16_Y34_N23
\datapath|timer|i[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \datapath|timer|i[5]~17_combout\,
	aclr => \controladora|WideOr2~combout\,
	ena => \datapath|dp_E~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|timer|i\(5));

-- Location: LCCOMB_X16_Y34_N16
\datapath|timer|i[2]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|timer|i[2]~11_combout\ = (\datapath|timer|i\(2) & (!\datapath|timer|i[1]~10\)) # (!\datapath|timer|i\(2) & ((\datapath|timer|i[1]~10\) # (GND)))
-- \datapath|timer|i[2]~12\ = CARRY((!\datapath|timer|i[1]~10\) # (!\datapath|timer|i\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|timer|i\(2),
	datad => VCC,
	cin => \datapath|timer|i[1]~10\,
	combout => \datapath|timer|i[2]~11_combout\,
	cout => \datapath|timer|i[2]~12\);

-- Location: LCFF_X16_Y34_N17
\datapath|timer|i[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \datapath|timer|i[2]~11_combout\,
	aclr => \controladora|WideOr2~combout\,
	ena => \datapath|dp_E~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|timer|i\(2));

-- Location: LCCOMB_X17_Y34_N16
\datapath|comp_t2|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|comp_t2|LessThan0~1_combout\ = (!\datapath|timer|i\(3) & (!\datapath|timer|i\(4) & !\datapath|timer|i\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|timer|i\(3),
	datac => \datapath|timer|i\(4),
	datad => \datapath|timer|i\(2),
	combout => \datapath|comp_t2|LessThan0~1_combout\);

-- Location: LCFF_X16_Y34_N25
\datapath|timer|i[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \datapath|timer|i[6]~19_combout\,
	aclr => \controladora|WideOr2~combout\,
	ena => \datapath|dp_E~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|timer|i\(6));

-- Location: LCCOMB_X17_Y34_N2
\datapath|comp_t100|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|comp_t100|LessThan0~1_combout\ = ((\datapath|timer|i\(5) & (!\datapath|comp_t2|LessThan0~1_combout\ & \datapath|timer|i\(6)))) # (!\datapath|comp_t100|LessThan0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|comp_t100|LessThan0~0_combout\,
	datab => \datapath|timer|i\(5),
	datac => \datapath|comp_t2|LessThan0~1_combout\,
	datad => \datapath|timer|i\(6),
	combout => \datapath|comp_t100|LessThan0~1_combout\);

-- Location: LCCOMB_X16_Y34_N4
\controladora|prox_estado.s4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controladora|prox_estado.s4~0_combout\ = (\controladora|atual_estado.s3~regout\ & \datapath|comp_t100|LessThan0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controladora|atual_estado.s3~regout\,
	datad => \datapath|comp_t100|LessThan0~1_combout\,
	combout => \controladora|prox_estado.s4~0_combout\);

-- Location: LCFF_X16_Y34_N5
\controladora|atual_estado.s4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \controladora|prox_estado.s4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controladora|atual_estado.s4~regout\);

-- Location: LCCOMB_X17_Y34_N0
\datapath|comp_t2|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|comp_t2|LessThan0~0_combout\ = (!\datapath|timer|i\(9) & (!\datapath|timer|i\(7) & (!\datapath|timer|i\(6) & !\datapath|timer|i\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|timer|i\(9),
	datab => \datapath|timer|i\(7),
	datac => \datapath|timer|i\(6),
	datad => \datapath|timer|i\(8),
	combout => \datapath|comp_t2|LessThan0~0_combout\);

-- Location: LCCOMB_X17_Y34_N6
\datapath|comp_t2|LessThan0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|comp_t2|LessThan0~2_combout\ = (\datapath|timer|i\(1)) # ((\datapath|timer|i\(5)) # ((!\datapath|comp_t2|LessThan0~0_combout\) # (!\datapath|comp_t2|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|timer|i\(1),
	datab => \datapath|timer|i\(5),
	datac => \datapath|comp_t2|LessThan0~1_combout\,
	datad => \datapath|comp_t2|LessThan0~0_combout\,
	combout => \datapath|comp_t2|LessThan0~2_combout\);

-- Location: LCCOMB_X17_Y34_N22
\controladora|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controladora|Selector2~0_combout\ = (\controladora|atual_estado.s4~regout\) # ((\controladora|atual_estado.s5~regout\ & !\datapath|comp_t2|LessThan0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controladora|atual_estado.s4~regout\,
	datac => \controladora|atual_estado.s5~regout\,
	datad => \datapath|comp_t2|LessThan0~2_combout\,
	combout => \controladora|Selector2~0_combout\);

-- Location: LCFF_X17_Y34_N23
\controladora|atual_estado.s5\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \controladora|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controladora|atual_estado.s5~regout\);

-- Location: LCCOMB_X16_Y34_N6
\controladora|prox_estado.s6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controladora|prox_estado.s6~0_combout\ = (\controladora|atual_estado.s5~regout\ & \datapath|comp_t2|LessThan0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controladora|atual_estado.s5~regout\,
	datad => \datapath|comp_t2|LessThan0~2_combout\,
	combout => \controladora|prox_estado.s6~0_combout\);

-- Location: LCFF_X16_Y34_N7
\controladora|atual_estado.s6\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \controladora|prox_estado.s6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controladora|atual_estado.s6~regout\);

-- Location: LCCOMB_X17_Y34_N24
\controladora|Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controladora|Selector3~0_combout\ = (\controladora|atual_estado.s6~regout\) # ((\controladora|atual_estado.s7~regout\ & !\datapath|comp_t2|LessThan0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controladora|atual_estado.s6~regout\,
	datac => \controladora|atual_estado.s7~regout\,
	datad => \datapath|comp_t2|LessThan0~2_combout\,
	combout => \controladora|Selector3~0_combout\);

-- Location: LCFF_X17_Y34_N25
\controladora|atual_estado.s7\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \controladora|Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controladora|atual_estado.s7~regout\);

-- Location: LCCOMB_X17_Y34_N20
\controladora|prox_estado.s8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controladora|prox_estado.s8~0_combout\ = (\controladora|atual_estado.s7~regout\ & \datapath|comp_t2|LessThan0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controladora|atual_estado.s7~regout\,
	datad => \datapath|comp_t2|LessThan0~2_combout\,
	combout => \controladora|prox_estado.s8~0_combout\);

-- Location: LCFF_X17_Y34_N21
\controladora|atual_estado.s8\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \controladora|prox_estado.s8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controladora|atual_estado.s8~regout\);

-- Location: LCFF_X19_Y34_N27
\controladora|atual_estado.s9\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \controladora|atual_estado.s8~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controladora|atual_estado.s9~regout\);

-- Location: LCFF_X16_Y34_N9
\controladora|atual_estado.s10\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \controladora|atual_estado.s9~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controladora|atual_estado.s10~regout\);

-- Location: LCCOMB_X16_Y34_N2
\controladora|prox_estado.s2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controladora|prox_estado.s2~0_combout\ = (\controladora|atual_estado.s1~regout\ & \datapath|comp_t1000|LessThan0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controladora|atual_estado.s1~regout\,
	datac => \datapath|comp_t1000|LessThan0~1_combout\,
	combout => \controladora|prox_estado.s2~0_combout\);

-- Location: LCFF_X16_Y34_N3
\controladora|atual_estado.s2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \controladora|prox_estado.s2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controladora|atual_estado.s2~regout\);

-- Location: LCCOMB_X16_Y34_N12
\controladora|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controladora|WideOr2~0_combout\ = (!\controladora|atual_estado.s2~regout\ & (!\controladora|atual_estado.s4~regout\ & !\controladora|atual_estado.s6~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controladora|atual_estado.s2~regout\,
	datac => \controladora|atual_estado.s4~regout\,
	datad => \controladora|atual_estado.s6~regout\,
	combout => \controladora|WideOr2~0_combout\);

-- Location: LCCOMB_X16_Y34_N0
\controladora|WideOr2\ : cycloneii_lcell_comb
-- Equation(s):
-- \controladora|WideOr2~combout\ = (\controladora|atual_estado.s14~regout\) # (((\controladora|atual_estado.s10~regout\) # (!\controladora|WideOr2~0_combout\)) # (!\controladora|atual_estado.s0~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controladora|atual_estado.s14~regout\,
	datab => \controladora|atual_estado.s0~regout\,
	datac => \controladora|atual_estado.s10~regout\,
	datad => \controladora|WideOr2~0_combout\,
	combout => \controladora|WideOr2~combout\);

-- Location: LCFF_X16_Y34_N15
\datapath|timer|i[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \datapath|timer|i[1]~9_combout\,
	aclr => \controladora|WideOr2~combout\,
	ena => \datapath|dp_E~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|timer|i\(1));

-- Location: LCFF_X16_Y34_N19
\datapath|timer|i[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \datapath|timer|i[3]~13_combout\,
	aclr => \controladora|WideOr2~combout\,
	ena => \datapath|dp_E~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|timer|i\(3));

-- Location: LCCOMB_X17_Y34_N18
\datapath|comp_t40|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|comp_t40|LessThan0~0_combout\ = ((\datapath|timer|i\(5) & ((\datapath|timer|i\(3)) # (\datapath|timer|i\(4))))) # (!\datapath|comp_t2|LessThan0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|timer|i\(5),
	datab => \datapath|timer|i\(3),
	datac => \datapath|timer|i\(4),
	datad => \datapath|comp_t2|LessThan0~0_combout\,
	combout => \datapath|comp_t40|LessThan0~0_combout\);

-- Location: LCCOMB_X19_Y34_N14
\controladora|prox_estado.s12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controladora|prox_estado.s12~0_combout\ = (\controladora|atual_estado.s11~regout\ & \datapath|comp_t40|LessThan0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controladora|atual_estado.s11~regout\,
	datad => \datapath|comp_t40|LessThan0~0_combout\,
	combout => \controladora|prox_estado.s12~0_combout\);

-- Location: LCFF_X19_Y34_N15
\controladora|atual_estado.s12\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \controladora|prox_estado.s12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controladora|atual_estado.s12~regout\);

-- Location: LCFF_X19_Y34_N19
\controladora|atual_estado.s13\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \controladora|atual_estado.s12~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controladora|atual_estado.s13~regout\);

-- Location: LCCOMB_X15_Y34_N24
\controladora|Selector5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controladora|Selector5~0_combout\ = (\controladora|atual_estado.s52~regout\) # ((\controladora|atual_estado.s13~regout\) # ((!\render~combout\ & \controladora|atual_estado.s14~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \render~combout\,
	datab => \controladora|atual_estado.s52~regout\,
	datac => \controladora|atual_estado.s14~regout\,
	datad => \controladora|atual_estado.s13~regout\,
	combout => \controladora|Selector5~0_combout\);

-- Location: LCFF_X15_Y34_N25
\controladora|atual_estado.s14\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \controladora|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controladora|atual_estado.s14~regout\);

-- Location: LCCOMB_X15_Y34_N6
\datapath|dp_E~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|dp_E~2_combout\ = (\controladora|atual_estado.s30~regout\) # (((\controladora|atual_estado.s14~regout\) # (\controladora|atual_estado.s32~regout\)) # (!\controladora|atual_estado.s0~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controladora|atual_estado.s30~regout\,
	datab => \controladora|atual_estado.s0~regout\,
	datac => \controladora|atual_estado.s14~regout\,
	datad => \controladora|atual_estado.s32~regout\,
	combout => \datapath|dp_E~2_combout\);

-- Location: LCFF_X10_Y34_N11
\datapath|cont_pos|i[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \datapath|cont_pos|i[0]~3_combout\,
	aclr => \datapath|dp_E~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|cont_pos|i\(0));

-- Location: LCCOMB_X10_Y34_N24
\datapath|cont_pos|i[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|cont_pos|i[1]~2_combout\ = \datapath|cont_pos|i\(1) $ (((\datapath|cont_pos|i\(0) & \controladora|atual_estado.s28~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|cont_pos|i\(0),
	datac => \datapath|cont_pos|i\(1),
	datad => \controladora|atual_estado.s28~regout\,
	combout => \datapath|cont_pos|i[1]~2_combout\);

-- Location: LCFF_X10_Y34_N25
\datapath|cont_pos|i[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \datapath|cont_pos|i[1]~2_combout\,
	aclr => \datapath|dp_E~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|cont_pos|i\(1));

-- Location: LCCOMB_X12_Y34_N4
\datapath|cont_pos|i[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|cont_pos|i[2]~1_combout\ = \datapath|cont_pos|i\(2) $ (((\controladora|atual_estado.s28~regout\ & (\datapath|cont_pos|i\(1) & \datapath|cont_pos|i\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controladora|atual_estado.s28~regout\,
	datab => \datapath|cont_pos|i\(1),
	datac => \datapath|cont_pos|i\(2),
	datad => \datapath|cont_pos|i\(0),
	combout => \datapath|cont_pos|i[2]~1_combout\);

-- Location: LCFF_X12_Y34_N5
\datapath|cont_pos|i[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \datapath|cont_pos|i[2]~1_combout\,
	aclr => \datapath|dp_E~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|cont_pos|i\(2));

-- Location: LCCOMB_X9_Y34_N28
\controladora|prox_estado.s29~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controladora|prox_estado.s29~0_combout\ = (\datapath|cont_pos|i\(1) & (\datapath|cont_pos|i\(0) & \datapath|cont_pos|i\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|cont_pos|i\(1),
	datac => \datapath|cont_pos|i\(0),
	datad => \datapath|cont_pos|i\(2),
	combout => \controladora|prox_estado.s29~0_combout\);

-- Location: LCCOMB_X12_Y34_N20
\controladora|prox_estado.s28~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controladora|prox_estado.s28~0_combout\ = (\controladora|atual_estado.s27~regout\ & ((!\controladora|prox_estado.s29~0_combout\) # (!\datapath|cont_pos|i\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|cont_pos|i\(3),
	datac => \controladora|atual_estado.s27~regout\,
	datad => \controladora|prox_estado.s29~0_combout\,
	combout => \controladora|prox_estado.s28~0_combout\);

-- Location: LCFF_X12_Y34_N21
\controladora|atual_estado.s28\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \controladora|prox_estado.s28~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controladora|atual_estado.s28~regout\);

-- Location: LCCOMB_X15_Y34_N28
\datapath|dp_E~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|dp_E~7_combout\ = (\controladora|atual_estado.s14~regout\) # ((\controladora|atual_estado.s32~regout\) # (!\controladora|atual_estado.s0~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controladora|atual_estado.s14~regout\,
	datac => \controladora|atual_estado.s0~regout\,
	datad => \controladora|atual_estado.s32~regout\,
	combout => \datapath|dp_E~7_combout\);

-- Location: LCCOMB_X15_Y34_N26
\datapath|reg_linha|qi~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|reg_linha|qi~1_combout\ = (!\controladora|atual_estado.s30~regout\ & ((\datapath|dp_E~7_combout\) # (\datapath|reg_linha|qi~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|dp_E~7_combout\,
	datac => \controladora|atual_estado.s30~regout\,
	datad => \datapath|reg_linha|qi~1_combout\,
	combout => \datapath|reg_linha|qi~1_combout\);

-- Location: LCCOMB_X15_Y34_N2
\datapath|reg_linha|qi~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|reg_linha|qi~3_combout\ = \datapath|reg_linha|qi~2_combout\ $ (\datapath|reg_linha|qi~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|reg_linha|qi~2_combout\,
	datad => \datapath|reg_linha|qi~1_combout\,
	combout => \datapath|reg_linha|qi~3_combout\);

-- Location: LCCOMB_X15_Y34_N22
\datapath|reg_linha|qi~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|reg_linha|qi~0_combout\ = (\controladora|atual_estado.s30~regout\) # (\datapath|dp_E~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controladora|atual_estado.s30~regout\,
	datad => \datapath|dp_E~7_combout\,
	combout => \datapath|reg_linha|qi~0_combout\);

-- Location: LCFF_X15_Y34_N3
\datapath|reg_linha|qi~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \datapath|reg_linha|qi~3_combout\,
	aclr => \datapath|reg_linha|qi~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|reg_linha|qi~_emulated_regout\);

-- Location: LCCOMB_X15_Y34_N20
\datapath|reg_linha|qi~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|reg_linha|qi~2_combout\ = (!\controladora|atual_estado.s30~regout\ & ((\datapath|dp_E~7_combout\) # (\datapath|reg_linha|qi~1_combout\ $ (\datapath|reg_linha|qi~_emulated_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controladora|atual_estado.s30~regout\,
	datab => \datapath|reg_linha|qi~1_combout\,
	datac => \datapath|dp_E~7_combout\,
	datad => \datapath|reg_linha|qi~_emulated_regout\,
	combout => \datapath|reg_linha|qi~2_combout\);

-- Location: LCCOMB_X15_Y34_N14
\controladora|prox_estado.s30~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controladora|prox_estado.s30~0_combout\ = (\controladora|atual_estado.s29~regout\ & !\datapath|reg_linha|qi~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controladora|atual_estado.s29~regout\,
	datad => \datapath|reg_linha|qi~2_combout\,
	combout => \controladora|prox_estado.s30~0_combout\);

-- Location: LCFF_X15_Y34_N15
\controladora|atual_estado.s30\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \controladora|prox_estado.s30~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controladora|atual_estado.s30~regout\);

-- Location: LCCOMB_X18_Y34_N6
\controladora|atual_estado.s31~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \controladora|atual_estado.s31~feeder_combout\ = \controladora|atual_estado.s30~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \controladora|atual_estado.s30~regout\,
	combout => \controladora|atual_estado.s31~feeder_combout\);

-- Location: LCFF_X18_Y34_N7
\controladora|atual_estado.s31\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \controladora|atual_estado.s31~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controladora|atual_estado.s31~regout\);

-- Location: LCCOMB_X18_Y34_N10
\controladora|Selector8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controladora|Selector8~0_combout\ = (\controladora|atual_estado.s28~regout\) # ((\controladora|atual_estado.s31~regout\) # ((\controladora|atual_estado.s19~regout\ & !\datapath|cont_obj|cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controladora|atual_estado.s19~regout\,
	datab => \datapath|cont_obj|cnt\(1),
	datac => \controladora|atual_estado.s28~regout\,
	datad => \controladora|atual_estado.s31~regout\,
	combout => \controladora|Selector8~0_combout\);

-- Location: LCFF_X18_Y34_N11
\controladora|atual_estado.s20\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \controladora|Selector8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controladora|atual_estado.s20~regout\);

-- Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\q0_moeda[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_q0_moeda(14),
	combout => \q0_moeda~combout\(14));

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\q0_moeda[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_q0_moeda(10),
	combout => \q0_moeda~combout\(10));

-- Location: LCCOMB_X12_Y34_N10
\datapath|cont_pos|i[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|cont_pos|i[3]~0_combout\ = \datapath|cont_pos|i\(3) $ (((\controladora|atual_estado.s28~regout\ & \controladora|prox_estado.s29~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controladora|atual_estado.s28~regout\,
	datac => \datapath|cont_pos|i\(3),
	datad => \controladora|prox_estado.s29~0_combout\,
	combout => \datapath|cont_pos|i[3]~0_combout\);

-- Location: LCFF_X12_Y34_N11
\datapath|cont_pos|i[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \datapath|cont_pos|i[3]~0_combout\,
	aclr => \datapath|dp_E~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|cont_pos|i\(3));

-- Location: LCCOMB_X12_Y34_N22
\datapath|mux2_q0|mux2_output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|mux2_q0|mux2_output~0_combout\ = (\datapath|cont_pos|i\(2) & (((\datapath|cont_pos|i\(3))))) # (!\datapath|cont_pos|i\(2) & ((\datapath|cont_pos|i\(3) & ((\q0_moeda~combout\(10)))) # (!\datapath|cont_pos|i\(3) & (\q0_moeda~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q0_moeda~combout\(2),
	datab => \q0_moeda~combout\(10),
	datac => \datapath|cont_pos|i\(2),
	datad => \datapath|cont_pos|i\(3),
	combout => \datapath|mux2_q0|mux2_output~0_combout\);

-- Location: LCCOMB_X12_Y34_N0
\datapath|mux2_q0|mux2_output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|mux2_q0|mux2_output~1_combout\ = (\datapath|cont_pos|i\(2) & ((\datapath|mux2_q0|mux2_output~0_combout\ & ((\q0_moeda~combout\(14)))) # (!\datapath|mux2_q0|mux2_output~0_combout\ & (\q0_moeda~combout\(6))))) # (!\datapath|cont_pos|i\(2) & 
-- (((\datapath|mux2_q0|mux2_output~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q0_moeda~combout\(6),
	datab => \datapath|cont_pos|i\(2),
	datac => \q0_moeda~combout\(14),
	datad => \datapath|mux2_q0|mux2_output~0_combout\,
	combout => \datapath|mux2_q0|mux2_output~1_combout\);

-- Location: PIN_E5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\q0_moeda[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_q0_moeda(8),
	combout => \q0_moeda~combout\(8));

-- Location: PIN_G9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\q0_moeda[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_q0_moeda(0),
	combout => \q0_moeda~combout\(0));

-- Location: LCCOMB_X11_Y34_N22
\datapath|mux2_q0|mux2_output~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|mux2_q0|mux2_output~4_combout\ = (\datapath|cont_pos|i\(3) & (((\datapath|cont_pos|i\(2))))) # (!\datapath|cont_pos|i\(3) & ((\datapath|cont_pos|i\(2) & (\q0_moeda~combout\(4))) # (!\datapath|cont_pos|i\(2) & ((\q0_moeda~combout\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q0_moeda~combout\(4),
	datab => \q0_moeda~combout\(0),
	datac => \datapath|cont_pos|i\(3),
	datad => \datapath|cont_pos|i\(2),
	combout => \datapath|mux2_q0|mux2_output~4_combout\);

-- Location: LCCOMB_X11_Y34_N8
\datapath|mux2_q0|mux2_output~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|mux2_q0|mux2_output~5_combout\ = (\datapath|cont_pos|i\(3) & ((\datapath|mux2_q0|mux2_output~4_combout\ & (\q0_moeda~combout\(12))) # (!\datapath|mux2_q0|mux2_output~4_combout\ & ((\q0_moeda~combout\(8)))))) # (!\datapath|cont_pos|i\(3) & 
-- (((\datapath|mux2_q0|mux2_output~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q0_moeda~combout\(12),
	datab => \datapath|cont_pos|i\(3),
	datac => \q0_moeda~combout\(8),
	datad => \datapath|mux2_q0|mux2_output~4_combout\,
	combout => \datapath|mux2_q0|mux2_output~5_combout\);

-- Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\q0_moeda[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_q0_moeda(13),
	combout => \q0_moeda~combout\(13));

-- Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\q0_moeda[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_q0_moeda(9),
	combout => \q0_moeda~combout\(9));

-- Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\q0_moeda[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_q0_moeda(5),
	combout => \q0_moeda~combout\(5));

-- Location: LCCOMB_X12_Y34_N26
\datapath|mux2_q0|mux2_output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|mux2_q0|mux2_output~2_combout\ = (\datapath|cont_pos|i\(2) & (((\q0_moeda~combout\(5)) # (\datapath|cont_pos|i\(3))))) # (!\datapath|cont_pos|i\(2) & (\q0_moeda~combout\(1) & ((!\datapath|cont_pos|i\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q0_moeda~combout\(1),
	datab => \q0_moeda~combout\(5),
	datac => \datapath|cont_pos|i\(2),
	datad => \datapath|cont_pos|i\(3),
	combout => \datapath|mux2_q0|mux2_output~2_combout\);

-- Location: LCCOMB_X12_Y34_N28
\datapath|mux2_q0|mux2_output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|mux2_q0|mux2_output~3_combout\ = (\datapath|cont_pos|i\(3) & ((\datapath|mux2_q0|mux2_output~2_combout\ & (\q0_moeda~combout\(13))) # (!\datapath|mux2_q0|mux2_output~2_combout\ & ((\q0_moeda~combout\(9)))))) # (!\datapath|cont_pos|i\(3) & 
-- (((\datapath|mux2_q0|mux2_output~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|cont_pos|i\(3),
	datab => \q0_moeda~combout\(13),
	datac => \q0_moeda~combout\(9),
	datad => \datapath|mux2_q0|mux2_output~2_combout\,
	combout => \datapath|mux2_q0|mux2_output~3_combout\);

-- Location: LCCOMB_X11_Y34_N30
\datapath|mux2_q0|mux2_output~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|mux2_q0|mux2_output~6_combout\ = (\datapath|cont_pos|i\(0) & ((\datapath|cont_pos|i\(1)) # ((\datapath|mux2_q0|mux2_output~3_combout\)))) # (!\datapath|cont_pos|i\(0) & (!\datapath|cont_pos|i\(1) & (\datapath|mux2_q0|mux2_output~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|cont_pos|i\(0),
	datab => \datapath|cont_pos|i\(1),
	datac => \datapath|mux2_q0|mux2_output~5_combout\,
	datad => \datapath|mux2_q0|mux2_output~3_combout\,
	combout => \datapath|mux2_q0|mux2_output~6_combout\);

-- Location: LCCOMB_X11_Y34_N16
\datapath|mux2_q0|mux2_output~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|mux2_q0|mux2_output~9_combout\ = (\datapath|cont_pos|i\(1) & ((\datapath|mux2_q0|mux2_output~6_combout\ & (\datapath|mux2_q0|mux2_output~8_combout\)) # (!\datapath|mux2_q0|mux2_output~6_combout\ & ((\datapath|mux2_q0|mux2_output~1_combout\))))) 
-- # (!\datapath|cont_pos|i\(1) & (((\datapath|mux2_q0|mux2_output~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|mux2_q0|mux2_output~8_combout\,
	datab => \datapath|cont_pos|i\(1),
	datac => \datapath|mux2_q0|mux2_output~1_combout\,
	datad => \datapath|mux2_q0|mux2_output~6_combout\,
	combout => \datapath|mux2_q0|mux2_output~9_combout\);

-- Location: PIN_J5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\q0_obstaculo[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_q0_obstaculo(15),
	combout => \q0_obstaculo~combout\(15));

-- Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\q0_obstaculo[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_q0_obstaculo(13),
	combout => \q0_obstaculo~combout\(13));

-- Location: LCCOMB_X10_Y34_N6
\datapath|mux2_q0|mux2_output~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|mux2_q0|mux2_output~17_combout\ = (\datapath|cont_pos|i\(1) & (((\datapath|cont_pos|i\(0))))) # (!\datapath|cont_pos|i\(1) & ((\datapath|cont_pos|i\(0) & ((\q0_obstaculo~combout\(13)))) # (!\datapath|cont_pos|i\(0) & 
-- (\q0_obstaculo~combout\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q0_obstaculo~combout\(12),
	datab => \q0_obstaculo~combout\(13),
	datac => \datapath|cont_pos|i\(1),
	datad => \datapath|cont_pos|i\(0),
	combout => \datapath|mux2_q0|mux2_output~17_combout\);

-- Location: LCCOMB_X10_Y34_N4
\datapath|mux2_q0|mux2_output~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|mux2_q0|mux2_output~18_combout\ = (\datapath|cont_pos|i\(1) & ((\datapath|mux2_q0|mux2_output~17_combout\ & ((\q0_obstaculo~combout\(15)))) # (!\datapath|mux2_q0|mux2_output~17_combout\ & (\q0_obstaculo~combout\(14))))) # 
-- (!\datapath|cont_pos|i\(1) & (((\datapath|mux2_q0|mux2_output~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q0_obstaculo~combout\(14),
	datab => \q0_obstaculo~combout\(15),
	datac => \datapath|cont_pos|i\(1),
	datad => \datapath|mux2_q0|mux2_output~17_combout\,
	combout => \datapath|mux2_q0|mux2_output~18_combout\);

-- Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\q0_obstaculo[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_q0_obstaculo(10),
	combout => \q0_obstaculo~combout\(10));

-- Location: PIN_C4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\q0_obstaculo[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_q0_obstaculo(8),
	combout => \q0_obstaculo~combout\(8));

-- Location: LCCOMB_X9_Y34_N2
\datapath|mux2_q0|mux2_output~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|mux2_q0|mux2_output~10_combout\ = (\datapath|cont_pos|i\(0) & ((\q0_obstaculo~combout\(9)) # ((\datapath|cont_pos|i\(1))))) # (!\datapath|cont_pos|i\(0) & (((\q0_obstaculo~combout\(8) & !\datapath|cont_pos|i\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q0_obstaculo~combout\(9),
	datab => \datapath|cont_pos|i\(0),
	datac => \q0_obstaculo~combout\(8),
	datad => \datapath|cont_pos|i\(1),
	combout => \datapath|mux2_q0|mux2_output~10_combout\);

-- Location: LCCOMB_X9_Y34_N4
\datapath|mux2_q0|mux2_output~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|mux2_q0|mux2_output~11_combout\ = (\datapath|cont_pos|i\(1) & ((\datapath|mux2_q0|mux2_output~10_combout\ & (\q0_obstaculo~combout\(11))) # (!\datapath|mux2_q0|mux2_output~10_combout\ & ((\q0_obstaculo~combout\(10)))))) # 
-- (!\datapath|cont_pos|i\(1) & (((\datapath|mux2_q0|mux2_output~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q0_obstaculo~combout\(11),
	datab => \q0_obstaculo~combout\(10),
	datac => \datapath|cont_pos|i\(1),
	datad => \datapath|mux2_q0|mux2_output~10_combout\,
	combout => \datapath|mux2_q0|mux2_output~11_combout\);

-- Location: PIN_A5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\q0_obstaculo[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_q0_obstaculo(3),
	combout => \q0_obstaculo~combout\(3));

-- Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\q0_obstaculo[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_q0_obstaculo(0),
	combout => \q0_obstaculo~combout\(0));

-- Location: LCCOMB_X10_Y34_N8
\datapath|mux2_q0|mux2_output~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|mux2_q0|mux2_output~14_combout\ = (\datapath|cont_pos|i\(1) & ((\q0_obstaculo~combout\(2)) # ((\datapath|cont_pos|i\(0))))) # (!\datapath|cont_pos|i\(1) & (((\q0_obstaculo~combout\(0) & !\datapath|cont_pos|i\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q0_obstaculo~combout\(2),
	datab => \q0_obstaculo~combout\(0),
	datac => \datapath|cont_pos|i\(1),
	datad => \datapath|cont_pos|i\(0),
	combout => \datapath|mux2_q0|mux2_output~14_combout\);

-- Location: LCCOMB_X10_Y34_N22
\datapath|mux2_q0|mux2_output~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|mux2_q0|mux2_output~15_combout\ = (\datapath|mux2_q0|mux2_output~14_combout\ & (((\q0_obstaculo~combout\(3)) # (!\datapath|cont_pos|i\(0))))) # (!\datapath|mux2_q0|mux2_output~14_combout\ & (\q0_obstaculo~combout\(1) & 
-- ((\datapath|cont_pos|i\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q0_obstaculo~combout\(1),
	datab => \q0_obstaculo~combout\(3),
	datac => \datapath|mux2_q0|mux2_output~14_combout\,
	datad => \datapath|cont_pos|i\(0),
	combout => \datapath|mux2_q0|mux2_output~15_combout\);

-- Location: PIN_A4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\q0_obstaculo[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_q0_obstaculo(5),
	combout => \q0_obstaculo~combout\(5));

-- Location: PIN_J9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\q0_obstaculo[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_q0_obstaculo(4),
	combout => \q0_obstaculo~combout\(4));

-- Location: LCCOMB_X9_Y34_N6
\datapath|mux2_q0|mux2_output~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|mux2_q0|mux2_output~12_combout\ = (\datapath|cont_pos|i\(0) & (((\datapath|cont_pos|i\(1))))) # (!\datapath|cont_pos|i\(0) & ((\datapath|cont_pos|i\(1) & (\q0_obstaculo~combout\(6))) # (!\datapath|cont_pos|i\(1) & 
-- ((\q0_obstaculo~combout\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q0_obstaculo~combout\(6),
	datab => \q0_obstaculo~combout\(4),
	datac => \datapath|cont_pos|i\(0),
	datad => \datapath|cont_pos|i\(1),
	combout => \datapath|mux2_q0|mux2_output~12_combout\);

-- Location: LCCOMB_X9_Y34_N16
\datapath|mux2_q0|mux2_output~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|mux2_q0|mux2_output~13_combout\ = (\datapath|cont_pos|i\(0) & ((\datapath|mux2_q0|mux2_output~12_combout\ & (\q0_obstaculo~combout\(7))) # (!\datapath|mux2_q0|mux2_output~12_combout\ & ((\q0_obstaculo~combout\(5)))))) # 
-- (!\datapath|cont_pos|i\(0) & (((\datapath|mux2_q0|mux2_output~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q0_obstaculo~combout\(7),
	datab => \q0_obstaculo~combout\(5),
	datac => \datapath|cont_pos|i\(0),
	datad => \datapath|mux2_q0|mux2_output~12_combout\,
	combout => \datapath|mux2_q0|mux2_output~13_combout\);

-- Location: LCCOMB_X10_Y34_N28
\datapath|mux2_q0|mux2_output~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|mux2_q0|mux2_output~16_combout\ = (\datapath|cont_pos|i\(3) & (((\datapath|cont_pos|i\(2))))) # (!\datapath|cont_pos|i\(3) & ((\datapath|cont_pos|i\(2) & ((\datapath|mux2_q0|mux2_output~13_combout\))) # (!\datapath|cont_pos|i\(2) & 
-- (\datapath|mux2_q0|mux2_output~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|cont_pos|i\(3),
	datab => \datapath|mux2_q0|mux2_output~15_combout\,
	datac => \datapath|cont_pos|i\(2),
	datad => \datapath|mux2_q0|mux2_output~13_combout\,
	combout => \datapath|mux2_q0|mux2_output~16_combout\);

-- Location: LCCOMB_X10_Y34_N14
\datapath|mux2_q0|mux2_output~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|mux2_q0|mux2_output~19_combout\ = (\datapath|cont_pos|i\(3) & ((\datapath|mux2_q0|mux2_output~16_combout\ & (\datapath|mux2_q0|mux2_output~18_combout\)) # (!\datapath|mux2_q0|mux2_output~16_combout\ & 
-- ((\datapath|mux2_q0|mux2_output~11_combout\))))) # (!\datapath|cont_pos|i\(3) & (((\datapath|mux2_q0|mux2_output~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|cont_pos|i\(3),
	datab => \datapath|mux2_q0|mux2_output~18_combout\,
	datac => \datapath|mux2_q0|mux2_output~11_combout\,
	datad => \datapath|mux2_q0|mux2_output~16_combout\,
	combout => \datapath|mux2_q0|mux2_output~19_combout\);

-- Location: LCCOMB_X11_Y34_N12
\controladora|prox_estado.s21~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controladora|prox_estado.s21~0_combout\ = (\controladora|atual_estado.s20~regout\ & ((\datapath|cont_obj|cnt\(0) & ((\datapath|mux2_q0|mux2_output~19_combout\))) # (!\datapath|cont_obj|cnt\(0) & (\datapath|mux2_q0|mux2_output~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|cont_obj|cnt\(0),
	datab => \controladora|atual_estado.s20~regout\,
	datac => \datapath|mux2_q0|mux2_output~9_combout\,
	datad => \datapath|mux2_q0|mux2_output~19_combout\,
	combout => \controladora|prox_estado.s21~0_combout\);

-- Location: LCFF_X11_Y34_N13
\controladora|atual_estado.s21\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \controladora|prox_estado.s21~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controladora|atual_estado.s21~regout\);

-- Location: PIN_H10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\q1_moeda[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_q1_moeda(11),
	combout => \q1_moeda~combout\(11));

-- Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\q1_moeda[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_q1_moeda(7),
	combout => \q1_moeda~combout\(7));

-- Location: LCCOMB_X12_Y34_N2
\datapath|mux2_q1|mux2_output~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|mux2_q1|mux2_output~7_combout\ = (\datapath|cont_pos|i\(2) & (((\datapath|cont_pos|i\(3)) # (!\q1_moeda~combout\(7))))) # (!\datapath|cont_pos|i\(2) & (!\q1_moeda~combout\(3) & ((!\datapath|cont_pos|i\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q1_moeda~combout\(3),
	datab => \q1_moeda~combout\(7),
	datac => \datapath|cont_pos|i\(2),
	datad => \datapath|cont_pos|i\(3),
	combout => \datapath|mux2_q1|mux2_output~7_combout\);

-- Location: LCCOMB_X11_Y34_N26
\datapath|mux2_q1|mux2_output~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|mux2_q1|mux2_output~8_combout\ = (\datapath|cont_pos|i\(3) & ((\datapath|mux2_q1|mux2_output~7_combout\ & (!\q1_moeda~combout\(15))) # (!\datapath|mux2_q1|mux2_output~7_combout\ & ((!\q1_moeda~combout\(11)))))) # (!\datapath|cont_pos|i\(3) & 
-- (((\datapath|mux2_q1|mux2_output~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q1_moeda~combout\(15),
	datab => \datapath|cont_pos|i\(3),
	datac => \q1_moeda~combout\(11),
	datad => \datapath|mux2_q1|mux2_output~7_combout\,
	combout => \datapath|mux2_q1|mux2_output~8_combout\);

-- Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\q1_moeda[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_q1_moeda(13),
	combout => \q1_moeda~combout\(13));

-- Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\q1_moeda[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_q1_moeda(5),
	combout => \q1_moeda~combout\(5));

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\q1_moeda[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_q1_moeda(1),
	combout => \q1_moeda~combout\(1));

-- Location: LCCOMB_X12_Y34_N30
\datapath|mux2_q1|mux2_output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|mux2_q1|mux2_output~0_combout\ = (\datapath|cont_pos|i\(2) & (((\datapath|cont_pos|i\(3))))) # (!\datapath|cont_pos|i\(2) & ((\datapath|cont_pos|i\(3) & (!\q1_moeda~combout\(9))) # (!\datapath|cont_pos|i\(3) & ((!\q1_moeda~combout\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q1_moeda~combout\(9),
	datab => \q1_moeda~combout\(1),
	datac => \datapath|cont_pos|i\(2),
	datad => \datapath|cont_pos|i\(3),
	combout => \datapath|mux2_q1|mux2_output~0_combout\);

-- Location: LCCOMB_X11_Y34_N20
\datapath|mux2_q1|mux2_output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|mux2_q1|mux2_output~1_combout\ = (\datapath|cont_pos|i\(2) & ((\datapath|mux2_q1|mux2_output~0_combout\ & (!\q1_moeda~combout\(13))) # (!\datapath|mux2_q1|mux2_output~0_combout\ & ((!\q1_moeda~combout\(5)))))) # (!\datapath|cont_pos|i\(2) & 
-- (((\datapath|mux2_q1|mux2_output~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|cont_pos|i\(2),
	datab => \q1_moeda~combout\(13),
	datac => \q1_moeda~combout\(5),
	datad => \datapath|mux2_q1|mux2_output~0_combout\,
	combout => \datapath|mux2_q1|mux2_output~1_combout\);

-- Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\q1_moeda[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_q1_moeda(10),
	combout => \q1_moeda~combout\(10));

-- Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\q1_moeda[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_q1_moeda(14),
	combout => \q1_moeda~combout\(14));

-- Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\q1_moeda[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_q1_moeda(6),
	combout => \q1_moeda~combout\(6));

-- Location: LCCOMB_X12_Y34_N12
\datapath|mux2_q1|mux2_output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|mux2_q1|mux2_output~2_combout\ = (\datapath|cont_pos|i\(2) & (((\datapath|cont_pos|i\(3)) # (!\q1_moeda~combout\(6))))) # (!\datapath|cont_pos|i\(2) & (!\q1_moeda~combout\(2) & ((!\datapath|cont_pos|i\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q1_moeda~combout\(2),
	datab => \q1_moeda~combout\(6),
	datac => \datapath|cont_pos|i\(2),
	datad => \datapath|cont_pos|i\(3),
	combout => \datapath|mux2_q1|mux2_output~2_combout\);

-- Location: LCCOMB_X12_Y34_N14
\datapath|mux2_q1|mux2_output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|mux2_q1|mux2_output~3_combout\ = (\datapath|cont_pos|i\(3) & ((\datapath|mux2_q1|mux2_output~2_combout\ & ((!\q1_moeda~combout\(14)))) # (!\datapath|mux2_q1|mux2_output~2_combout\ & (!\q1_moeda~combout\(10))))) # (!\datapath|cont_pos|i\(3) & 
-- (((\datapath|mux2_q1|mux2_output~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|cont_pos|i\(3),
	datab => \q1_moeda~combout\(10),
	datac => \q1_moeda~combout\(14),
	datad => \datapath|mux2_q1|mux2_output~2_combout\,
	combout => \datapath|mux2_q1|mux2_output~3_combout\);

-- Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\q1_moeda[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_q1_moeda(12),
	combout => \q1_moeda~combout\(12));

-- Location: PIN_E8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\q1_moeda[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_q1_moeda(4),
	combout => \q1_moeda~combout\(4));

-- Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\q1_moeda[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_q1_moeda(8),
	combout => \q1_moeda~combout\(8));

-- Location: LCCOMB_X12_Y34_N24
\datapath|mux2_q1|mux2_output~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|mux2_q1|mux2_output~4_combout\ = (\datapath|cont_pos|i\(2) & (((\datapath|cont_pos|i\(3))))) # (!\datapath|cont_pos|i\(2) & ((\datapath|cont_pos|i\(3) & ((!\q1_moeda~combout\(8)))) # (!\datapath|cont_pos|i\(3) & (!\q1_moeda~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q1_moeda~combout\(0),
	datab => \q1_moeda~combout\(8),
	datac => \datapath|cont_pos|i\(2),
	datad => \datapath|cont_pos|i\(3),
	combout => \datapath|mux2_q1|mux2_output~4_combout\);

-- Location: LCCOMB_X11_Y34_N10
\datapath|mux2_q1|mux2_output~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|mux2_q1|mux2_output~5_combout\ = (\datapath|cont_pos|i\(2) & ((\datapath|mux2_q1|mux2_output~4_combout\ & (!\q1_moeda~combout\(12))) # (!\datapath|mux2_q1|mux2_output~4_combout\ & ((!\q1_moeda~combout\(4)))))) # (!\datapath|cont_pos|i\(2) & 
-- (((\datapath|mux2_q1|mux2_output~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|cont_pos|i\(2),
	datab => \q1_moeda~combout\(12),
	datac => \q1_moeda~combout\(4),
	datad => \datapath|mux2_q1|mux2_output~4_combout\,
	combout => \datapath|mux2_q1|mux2_output~5_combout\);

-- Location: LCCOMB_X11_Y34_N28
\datapath|mux2_q1|mux2_output~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|mux2_q1|mux2_output~6_combout\ = (\datapath|cont_pos|i\(0) & (\datapath|cont_pos|i\(1))) # (!\datapath|cont_pos|i\(0) & ((\datapath|cont_pos|i\(1) & (\datapath|mux2_q1|mux2_output~3_combout\)) # (!\datapath|cont_pos|i\(1) & 
-- ((\datapath|mux2_q1|mux2_output~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|cont_pos|i\(0),
	datab => \datapath|cont_pos|i\(1),
	datac => \datapath|mux2_q1|mux2_output~3_combout\,
	datad => \datapath|mux2_q1|mux2_output~5_combout\,
	combout => \datapath|mux2_q1|mux2_output~6_combout\);

-- Location: LCCOMB_X11_Y34_N24
\datapath|mux2_q1|mux2_output~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|mux2_q1|mux2_output~9_combout\ = (\datapath|cont_pos|i\(0) & ((\datapath|mux2_q1|mux2_output~6_combout\ & (\datapath|mux2_q1|mux2_output~8_combout\)) # (!\datapath|mux2_q1|mux2_output~6_combout\ & ((\datapath|mux2_q1|mux2_output~1_combout\))))) 
-- # (!\datapath|cont_pos|i\(0) & (((\datapath|mux2_q1|mux2_output~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|cont_pos|i\(0),
	datab => \datapath|mux2_q1|mux2_output~8_combout\,
	datac => \datapath|mux2_q1|mux2_output~1_combout\,
	datad => \datapath|mux2_q1|mux2_output~6_combout\,
	combout => \datapath|mux2_q1|mux2_output~9_combout\);

-- Location: PIN_F9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\q1_obstaculo[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_q1_obstaculo(6),
	combout => \q1_obstaculo~combout\(6));

-- Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\q1_obstaculo[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_q1_obstaculo(4),
	combout => \q1_obstaculo~combout\(4));

-- Location: LCCOMB_X10_Y34_N20
\datapath|mux2_q1|mux2_output~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|mux2_q1|mux2_output~10_combout\ = (\datapath|cont_pos|i\(1) & (((\datapath|cont_pos|i\(0))))) # (!\datapath|cont_pos|i\(1) & ((\datapath|cont_pos|i\(0) & (!\q1_obstaculo~combout\(5))) # (!\datapath|cont_pos|i\(0) & 
-- ((!\q1_obstaculo~combout\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q1_obstaculo~combout\(5),
	datab => \q1_obstaculo~combout\(4),
	datac => \datapath|cont_pos|i\(1),
	datad => \datapath|cont_pos|i\(0),
	combout => \datapath|mux2_q1|mux2_output~10_combout\);

-- Location: PIN_C7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\q1_obstaculo[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_q1_obstaculo(7),
	combout => \q1_obstaculo~combout\(7));

-- Location: LCCOMB_X10_Y34_N26
\datapath|mux2_q1|mux2_output~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|mux2_q1|mux2_output~11_combout\ = (\datapath|cont_pos|i\(1) & ((\datapath|mux2_q1|mux2_output~10_combout\ & ((!\q1_obstaculo~combout\(7)))) # (!\datapath|mux2_q1|mux2_output~10_combout\ & (!\q1_obstaculo~combout\(6))))) # 
-- (!\datapath|cont_pos|i\(1) & (((\datapath|mux2_q1|mux2_output~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|cont_pos|i\(1),
	datab => \q1_obstaculo~combout\(6),
	datac => \datapath|mux2_q1|mux2_output~10_combout\,
	datad => \q1_obstaculo~combout\(7),
	combout => \datapath|mux2_q1|mux2_output~11_combout\);

-- Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\q1_obstaculo[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_q1_obstaculo(2),
	combout => \q1_obstaculo~combout\(2));

-- Location: PIN_F4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\q1_obstaculo[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_q1_obstaculo(0),
	combout => \q1_obstaculo~combout\(0));

-- Location: LCCOMB_X10_Y34_N0
\datapath|mux2_q1|mux2_output~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|mux2_q1|mux2_output~14_combout\ = (\datapath|cont_pos|i\(1) & (((\datapath|cont_pos|i\(0))))) # (!\datapath|cont_pos|i\(1) & ((\datapath|cont_pos|i\(0) & (!\q1_obstaculo~combout\(1))) # (!\datapath|cont_pos|i\(0) & 
-- ((!\q1_obstaculo~combout\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q1_obstaculo~combout\(1),
	datab => \q1_obstaculo~combout\(0),
	datac => \datapath|cont_pos|i\(1),
	datad => \datapath|cont_pos|i\(0),
	combout => \datapath|mux2_q1|mux2_output~14_combout\);

-- Location: LCCOMB_X10_Y34_N30
\datapath|mux2_q1|mux2_output~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|mux2_q1|mux2_output~15_combout\ = (\datapath|cont_pos|i\(1) & ((\datapath|mux2_q1|mux2_output~14_combout\ & (!\q1_obstaculo~combout\(3))) # (!\datapath|mux2_q1|mux2_output~14_combout\ & ((!\q1_obstaculo~combout\(2)))))) # 
-- (!\datapath|cont_pos|i\(1) & (((\datapath|mux2_q1|mux2_output~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q1_obstaculo~combout\(3),
	datab => \q1_obstaculo~combout\(2),
	datac => \datapath|cont_pos|i\(1),
	datad => \datapath|mux2_q1|mux2_output~14_combout\,
	combout => \datapath|mux2_q1|mux2_output~15_combout\);

-- Location: PIN_F7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\q1_obstaculo[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_q1_obstaculo(11),
	combout => \q1_obstaculo~combout\(11));

-- Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\q1_obstaculo[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_q1_obstaculo(9),
	combout => \q1_obstaculo~combout\(9));

-- Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\q1_obstaculo[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_q1_obstaculo(10),
	combout => \q1_obstaculo~combout\(10));

-- Location: LCCOMB_X10_Y34_N12
\datapath|mux2_q1|mux2_output~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|mux2_q1|mux2_output~12_combout\ = (\datapath|cont_pos|i\(1) & (((\datapath|cont_pos|i\(0)) # (!\q1_obstaculo~combout\(10))))) # (!\datapath|cont_pos|i\(1) & (!\q1_obstaculo~combout\(8) & ((!\datapath|cont_pos|i\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q1_obstaculo~combout\(8),
	datab => \q1_obstaculo~combout\(10),
	datac => \datapath|cont_pos|i\(1),
	datad => \datapath|cont_pos|i\(0),
	combout => \datapath|mux2_q1|mux2_output~12_combout\);

-- Location: LCCOMB_X10_Y34_N18
\datapath|mux2_q1|mux2_output~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|mux2_q1|mux2_output~13_combout\ = (\datapath|cont_pos|i\(0) & ((\datapath|mux2_q1|mux2_output~12_combout\ & (!\q1_obstaculo~combout\(11))) # (!\datapath|mux2_q1|mux2_output~12_combout\ & ((!\q1_obstaculo~combout\(9)))))) # 
-- (!\datapath|cont_pos|i\(0) & (((\datapath|mux2_q1|mux2_output~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|cont_pos|i\(0),
	datab => \q1_obstaculo~combout\(11),
	datac => \q1_obstaculo~combout\(9),
	datad => \datapath|mux2_q1|mux2_output~12_combout\,
	combout => \datapath|mux2_q1|mux2_output~13_combout\);

-- Location: LCCOMB_X10_Y34_N16
\datapath|mux2_q1|mux2_output~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|mux2_q1|mux2_output~16_combout\ = (\datapath|cont_pos|i\(3) & (((\datapath|cont_pos|i\(2)) # (\datapath|mux2_q1|mux2_output~13_combout\)))) # (!\datapath|cont_pos|i\(3) & (\datapath|mux2_q1|mux2_output~15_combout\ & (!\datapath|cont_pos|i\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|cont_pos|i\(3),
	datab => \datapath|mux2_q1|mux2_output~15_combout\,
	datac => \datapath|cont_pos|i\(2),
	datad => \datapath|mux2_q1|mux2_output~13_combout\,
	combout => \datapath|mux2_q1|mux2_output~16_combout\);

-- Location: PIN_C6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\q1_obstaculo[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_q1_obstaculo(15),
	combout => \q1_obstaculo~combout\(15));

-- Location: PIN_B4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\q1_obstaculo[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_q1_obstaculo(14),
	combout => \q1_obstaculo~combout\(14));

-- Location: LCCOMB_X9_Y34_N10
\datapath|mux2_q1|mux2_output~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|mux2_q1|mux2_output~17_combout\ = (\datapath|cont_pos|i\(1) & (((\datapath|cont_pos|i\(0)) # (!\q1_obstaculo~combout\(14))))) # (!\datapath|cont_pos|i\(1) & (!\q1_obstaculo~combout\(12) & (!\datapath|cont_pos|i\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q1_obstaculo~combout\(12),
	datab => \datapath|cont_pos|i\(1),
	datac => \datapath|cont_pos|i\(0),
	datad => \q1_obstaculo~combout\(14),
	combout => \datapath|mux2_q1|mux2_output~17_combout\);

-- Location: LCCOMB_X9_Y34_N12
\datapath|mux2_q1|mux2_output~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|mux2_q1|mux2_output~18_combout\ = (\datapath|cont_pos|i\(0) & ((\datapath|mux2_q1|mux2_output~17_combout\ & ((!\q1_obstaculo~combout\(15)))) # (!\datapath|mux2_q1|mux2_output~17_combout\ & (!\q1_obstaculo~combout\(13))))) # 
-- (!\datapath|cont_pos|i\(0) & (((\datapath|mux2_q1|mux2_output~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q1_obstaculo~combout\(13),
	datab => \q1_obstaculo~combout\(15),
	datac => \datapath|cont_pos|i\(0),
	datad => \datapath|mux2_q1|mux2_output~17_combout\,
	combout => \datapath|mux2_q1|mux2_output~18_combout\);

-- Location: LCCOMB_X10_Y34_N2
\datapath|mux2_q1|mux2_output~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|mux2_q1|mux2_output~19_combout\ = (\datapath|cont_pos|i\(2) & ((\datapath|mux2_q1|mux2_output~16_combout\ & ((\datapath|mux2_q1|mux2_output~18_combout\))) # (!\datapath|mux2_q1|mux2_output~16_combout\ & 
-- (\datapath|mux2_q1|mux2_output~11_combout\)))) # (!\datapath|cont_pos|i\(2) & (((\datapath|mux2_q1|mux2_output~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|cont_pos|i\(2),
	datab => \datapath|mux2_q1|mux2_output~11_combout\,
	datac => \datapath|mux2_q1|mux2_output~16_combout\,
	datad => \datapath|mux2_q1|mux2_output~18_combout\,
	combout => \datapath|mux2_q1|mux2_output~19_combout\);

-- Location: LCCOMB_X11_Y34_N0
\controladora|prox_estado.s25~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controladora|prox_estado.s25~0_combout\ = (\controladora|atual_estado.s21~regout\ & ((\datapath|cont_obj|cnt\(0) & ((\datapath|mux2_q1|mux2_output~19_combout\))) # (!\datapath|cont_obj|cnt\(0) & (\datapath|mux2_q1|mux2_output~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|cont_obj|cnt\(0),
	datab => \controladora|atual_estado.s21~regout\,
	datac => \datapath|mux2_q1|mux2_output~9_combout\,
	datad => \datapath|mux2_q1|mux2_output~19_combout\,
	combout => \controladora|prox_estado.s25~0_combout\);

-- Location: LCFF_X11_Y34_N1
\controladora|atual_estado.s25\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \controladora|prox_estado.s25~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controladora|atual_estado.s25~regout\);

-- Location: LCCOMB_X11_Y34_N18
\controladora|Selector10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controladora|Selector10~0_combout\ = (\controladora|atual_estado.s20~regout\ & ((\datapath|cont_obj|cnt\(0) & ((!\datapath|mux2_q0|mux2_output~19_combout\))) # (!\datapath|cont_obj|cnt\(0) & (!\datapath|mux2_q0|mux2_output~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|cont_obj|cnt\(0),
	datab => \controladora|atual_estado.s20~regout\,
	datac => \datapath|mux2_q0|mux2_output~9_combout\,
	datad => \datapath|mux2_q0|mux2_output~19_combout\,
	combout => \controladora|Selector10~0_combout\);

-- Location: LCCOMB_X11_Y34_N2
\controladora|Selector10~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \controladora|Selector10~1_combout\ = (\controladora|Selector10~0_combout\) # ((\controladora|atual_estado.s25~regout\ & !\datapath|reg_linha|qi~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controladora|atual_estado.s25~regout\,
	datac => \datapath|reg_linha|qi~2_combout\,
	datad => \controladora|Selector10~0_combout\,
	combout => \controladora|Selector10~1_combout\);

-- Location: LCFF_X11_Y34_N3
\controladora|atual_estado.s26\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \controladora|Selector10~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controladora|atual_estado.s26~regout\);

-- Location: LCCOMB_X11_Y34_N6
\controladora|Selector9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controladora|Selector9~0_combout\ = (\controladora|atual_estado.s21~regout\ & ((\datapath|cont_obj|cnt\(0) & ((!\datapath|mux2_q1|mux2_output~19_combout\))) # (!\datapath|cont_obj|cnt\(0) & (!\datapath|mux2_q1|mux2_output~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|cont_obj|cnt\(0),
	datab => \controladora|atual_estado.s21~regout\,
	datac => \datapath|mux2_q1|mux2_output~9_combout\,
	datad => \datapath|mux2_q1|mux2_output~19_combout\,
	combout => \controladora|Selector9~0_combout\);

-- Location: LCCOMB_X11_Y34_N14
\controladora|Selector9~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \controladora|Selector9~1_combout\ = (\controladora|Selector9~0_combout\) # ((\controladora|atual_estado.s25~regout\ & \datapath|reg_linha|qi~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controladora|atual_estado.s25~regout\,
	datac => \datapath|reg_linha|qi~2_combout\,
	datad => \controladora|Selector9~0_combout\,
	combout => \controladora|Selector9~1_combout\);

-- Location: LCFF_X11_Y34_N15
\controladora|atual_estado.s22\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \controladora|Selector9~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controladora|atual_estado.s22~regout\);

-- Location: LCCOMB_X11_Y34_N4
\controladora|prox_estado.s24~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controladora|prox_estado.s24~0_combout\ = (\datapath|cont_obj|cnt\(0) & \controladora|atual_estado.s22~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|cont_obj|cnt\(0),
	datac => \controladora|atual_estado.s22~regout\,
	combout => \controladora|prox_estado.s24~0_combout\);

-- Location: LCFF_X11_Y34_N5
\controladora|atual_estado.s24\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \controladora|prox_estado.s24~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controladora|atual_estado.s24~regout\);

-- Location: LCCOMB_X19_Y34_N2
\controladora|WideOr7~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \controladora|WideOr7~3_combout\ = (\controladora|atual_estado.s23~regout\) # ((\controladora|atual_estado.s26~regout\) # (\controladora|atual_estado.s24~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controladora|atual_estado.s23~regout\,
	datac => \controladora|atual_estado.s26~regout\,
	datad => \controladora|atual_estado.s24~regout\,
	combout => \controladora|WideOr7~3_combout\);

-- Location: LCFF_X19_Y34_N3
\controladora|atual_estado.s27\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \controladora|WideOr7~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controladora|atual_estado.s27~regout\);

-- Location: LCCOMB_X12_Y34_N8
\controladora|prox_estado.s29~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \controladora|prox_estado.s29~1_combout\ = (\datapath|cont_pos|i\(3) & (\controladora|atual_estado.s27~regout\ & \controladora|prox_estado.s29~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|cont_pos|i\(3),
	datac => \controladora|atual_estado.s27~regout\,
	datad => \controladora|prox_estado.s29~0_combout\,
	combout => \controladora|prox_estado.s29~1_combout\);

-- Location: LCFF_X12_Y34_N9
\controladora|atual_estado.s29\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \controladora|prox_estado.s29~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controladora|atual_estado.s29~regout\);

-- Location: LCCOMB_X15_Y34_N12
\controladora|prox_estado.s32~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controladora|prox_estado.s32~0_combout\ = (\controladora|atual_estado.s29~regout\ & \datapath|reg_linha|qi~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controladora|atual_estado.s29~regout\,
	datad => \datapath|reg_linha|qi~2_combout\,
	combout => \controladora|prox_estado.s32~0_combout\);

-- Location: LCFF_X15_Y34_N13
\controladora|atual_estado.s32\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \controladora|prox_estado.s32~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controladora|atual_estado.s32~regout\);

-- Location: LCCOMB_X14_Y34_N28
\datapath|cont_obj|cnt[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|cont_obj|cnt[0]~0_combout\ = \controladora|atual_estado.s32~regout\ $ (\datapath|cont_obj|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controladora|atual_estado.s32~regout\,
	datac => \datapath|cont_obj|cnt\(0),
	combout => \datapath|cont_obj|cnt[0]~0_combout\);

-- Location: LCCOMB_X15_Y34_N16
\controladora|WideOr2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \controladora|WideOr2~1_combout\ = (\controladora|atual_estado.s14~regout\) # (!\controladora|atual_estado.s0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controladora|atual_estado.s0~regout\,
	datad => \controladora|atual_estado.s14~regout\,
	combout => \controladora|WideOr2~1_combout\);

-- Location: LCFF_X14_Y34_N29
\datapath|cont_obj|cnt[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \datapath|cont_obj|cnt[0]~0_combout\,
	aclr => \controladora|WideOr2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|cont_obj|cnt\(0));

-- Location: LCCOMB_X14_Y34_N18
\datapath|cont_obj|cnt[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|cont_obj|cnt[1]~1_combout\ = \datapath|cont_obj|cnt\(1) $ (((\controladora|atual_estado.s32~regout\ & \datapath|cont_obj|cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controladora|atual_estado.s32~regout\,
	datac => \datapath|cont_obj|cnt\(1),
	datad => \datapath|cont_obj|cnt\(0),
	combout => \datapath|cont_obj|cnt[1]~1_combout\);

-- Location: LCFF_X14_Y34_N19
\datapath|cont_obj|cnt[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \datapath|cont_obj|cnt[1]~1_combout\,
	aclr => \controladora|WideOr2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|cont_obj|cnt\(1));

-- Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\cmd[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_cmd(2),
	combout => \cmd~combout\(2));

-- Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\cmd[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_cmd(1),
	combout => \cmd~combout\(1));

-- Location: LCCOMB_X17_Y34_N14
\controladora|prox_estado.s17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controladora|prox_estado.s17~0_combout\ = (\controladora|atual_estado.s16~regout\ & \datapath|comp_t40|LessThan0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controladora|atual_estado.s16~regout\,
	datad => \datapath|comp_t40|LessThan0~0_combout\,
	combout => \controladora|prox_estado.s17~0_combout\);

-- Location: LCFF_X17_Y34_N15
\controladora|atual_estado.s17\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \controladora|prox_estado.s17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controladora|atual_estado.s17~regout\);

-- Location: LCCOMB_X18_Y34_N18
\controladora|Selector7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controladora|Selector7~0_combout\ = (!\cmd~combout\(0) & (!\cmd~combout\(2) & (!\cmd~combout\(1) & \controladora|atual_estado.s17~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmd~combout\(0),
	datab => \cmd~combout\(2),
	datac => \cmd~combout\(1),
	datad => \controladora|atual_estado.s17~regout\,
	combout => \controladora|Selector7~0_combout\);

-- Location: LCCOMB_X18_Y34_N20
\controladora|Selector7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \controladora|Selector7~1_combout\ = (\controladora|atual_estado.s32~regout\) # (\controladora|Selector7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controladora|atual_estado.s32~regout\,
	datad => \controladora|Selector7~0_combout\,
	combout => \controladora|Selector7~1_combout\);

-- Location: LCFF_X18_Y34_N21
\controladora|atual_estado.s18\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \controladora|Selector7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controladora|atual_estado.s18~regout\);

-- Location: LCFF_X18_Y34_N17
\controladora|atual_estado.s19\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \controladora|atual_estado.s18~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controladora|atual_estado.s19~regout\);

-- Location: LCCOMB_X18_Y34_N14
\controladora|prox_estado.s33~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controladora|prox_estado.s33~0_combout\ = (\datapath|cont_obj|cnt\(1) & \controladora|atual_estado.s19~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|cont_obj|cnt\(1),
	datac => \controladora|atual_estado.s19~regout\,
	combout => \controladora|prox_estado.s33~0_combout\);

-- Location: LCFF_X18_Y34_N15
\controladora|atual_estado.s33\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \controladora|prox_estado.s33~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controladora|atual_estado.s33~regout\);

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\player_pos~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_player_pos,
	combout => \player_pos~combout\);

-- Location: LCCOMB_X18_Y34_N8
\controladora|prox_estado.s35~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controladora|prox_estado.s35~0_combout\ = (\controladora|atual_estado.s33~regout\ & !\player_pos~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controladora|atual_estado.s33~regout\,
	datad => \player_pos~combout\,
	combout => \controladora|prox_estado.s35~0_combout\);

-- Location: LCFF_X18_Y34_N9
\controladora|atual_estado.s35\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \controladora|prox_estado.s35~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controladora|atual_estado.s35~regout\);

-- Location: LCCOMB_X18_Y34_N24
\controladora|Selector11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controladora|Selector11~0_combout\ = (\controladora|atual_estado.s35~regout\) # ((\controladora|atual_estado.s33~regout\ & \player_pos~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controladora|atual_estado.s35~regout\,
	datac => \controladora|atual_estado.s33~regout\,
	datad => \player_pos~combout\,
	combout => \controladora|Selector11~0_combout\);

-- Location: LCFF_X18_Y34_N25
\controladora|atual_estado.s34\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \controladora|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controladora|atual_estado.s34~regout\);

-- Location: LCCOMB_X18_Y34_N4
\controladora|Selector12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controladora|Selector12~0_combout\ = (\controladora|atual_estado.s17~regout\ & ((\cmd~combout\(0)) # ((\cmd~combout\(2)) # (\cmd~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmd~combout\(0),
	datab => \cmd~combout\(2),
	datac => \cmd~combout\(1),
	datad => \controladora|atual_estado.s17~regout\,
	combout => \controladora|Selector12~0_combout\);

-- Location: LCFF_X18_Y34_N5
\controladora|atual_estado.s37\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \controladora|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controladora|atual_estado.s37~regout\);

-- Location: LCCOMB_X18_Y34_N12
\controladora|prox_estado.s38~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controladora|prox_estado.s38~0_combout\ = (!\cmd~combout\(1) & (\controladora|atual_estado.s37~regout\ & \cmd~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cmd~combout\(1),
	datac => \controladora|atual_estado.s37~regout\,
	datad => \cmd~combout\(2),
	combout => \controladora|prox_estado.s38~0_combout\);

-- Location: LCFF_X18_Y34_N13
\controladora|atual_estado.s38\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \controladora|prox_estado.s38~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controladora|atual_estado.s38~regout\);

-- Location: LCCOMB_X20_Y34_N4
\controladora|atual_estado.s39~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \controladora|atual_estado.s39~feeder_combout\ = \controladora|atual_estado.s38~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \controladora|atual_estado.s38~regout\,
	combout => \controladora|atual_estado.s39~feeder_combout\);

-- Location: LCFF_X20_Y34_N5
\controladora|atual_estado.s39\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \controladora|atual_estado.s39~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controladora|atual_estado.s39~regout\);

-- Location: LCCOMB_X20_Y34_N8
\controladora|prox_estado.s40~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controladora|prox_estado.s40~0_combout\ = (!\cmd~combout\(0) & \controladora|atual_estado.s39~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmd~combout\(0),
	datac => \controladora|atual_estado.s39~regout\,
	combout => \controladora|prox_estado.s40~0_combout\);

-- Location: LCFF_X20_Y34_N9
\controladora|atual_estado.s40\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \controladora|prox_estado.s40~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controladora|atual_estado.s40~regout\);

-- Location: LCCOMB_X20_Y34_N30
\controladora|prox_estado.s41~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controladora|prox_estado.s41~0_combout\ = (\cmd~combout\(0) & \controladora|atual_estado.s39~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmd~combout\(0),
	datac => \controladora|atual_estado.s39~regout\,
	combout => \controladora|prox_estado.s41~0_combout\);

-- Location: LCFF_X20_Y34_N31
\controladora|atual_estado.s41\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \controladora|prox_estado.s41~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controladora|atual_estado.s41~regout\);

-- Location: LCCOMB_X20_Y34_N0
\controladora|prox_estado.s42\ : cycloneii_lcell_comb
-- Equation(s):
-- \controladora|prox_estado.s42~combout\ = (\controladora|atual_estado.s40~regout\) # (\controladora|atual_estado.s41~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controladora|atual_estado.s40~regout\,
	datad => \controladora|atual_estado.s41~regout\,
	combout => \controladora|prox_estado.s42~combout\);

-- Location: LCFF_X20_Y34_N1
\controladora|atual_estado.s42\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \controladora|prox_estado.s42~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controladora|atual_estado.s42~regout\);

-- Location: LCCOMB_X18_Y34_N0
\controladora|prox_estado.s43~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controladora|prox_estado.s43~0_combout\ = (\cmd~combout\(1) & (\controladora|atual_estado.s37~regout\ & \cmd~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cmd~combout\(1),
	datac => \controladora|atual_estado.s37~regout\,
	datad => \cmd~combout\(2),
	combout => \controladora|prox_estado.s43~0_combout\);

-- Location: LCFF_X19_Y34_N31
\controladora|atual_estado.s43\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \controladora|prox_estado.s43~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controladora|atual_estado.s43~regout\);

-- Location: LCCOMB_X20_Y34_N14
\controladora|prox_estado.s44~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controladora|prox_estado.s44~0_combout\ = (!\cmd~combout\(0) & \controladora|atual_estado.s43~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmd~combout\(0),
	datac => \controladora|atual_estado.s43~regout\,
	combout => \controladora|prox_estado.s44~0_combout\);

-- Location: LCFF_X20_Y34_N15
\controladora|atual_estado.s44\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \controladora|prox_estado.s44~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controladora|atual_estado.s44~regout\);

-- Location: LCCOMB_X20_Y34_N12
\controladora|prox_estado.s45~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controladora|prox_estado.s45~0_combout\ = (\cmd~combout\(0) & \controladora|atual_estado.s43~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmd~combout\(0),
	datac => \controladora|atual_estado.s43~regout\,
	combout => \controladora|prox_estado.s45~0_combout\);

-- Location: LCFF_X20_Y34_N13
\controladora|atual_estado.s45\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \controladora|prox_estado.s45~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controladora|atual_estado.s45~regout\);

-- Location: LCCOMB_X20_Y34_N2
\controladora|prox_estado.s46\ : cycloneii_lcell_comb
-- Equation(s):
-- \controladora|prox_estado.s46~combout\ = (\controladora|atual_estado.s44~regout\) # (\controladora|atual_estado.s45~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controladora|atual_estado.s44~regout\,
	datad => \controladora|atual_estado.s45~regout\,
	combout => \controladora|prox_estado.s46~combout\);

-- Location: LCFF_X20_Y34_N3
\controladora|atual_estado.s46\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \controladora|prox_estado.s46~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controladora|atual_estado.s46~regout\);

-- Location: LCCOMB_X20_Y34_N24
\controladora|atual_estado.s47~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \controladora|atual_estado.s47~feeder_combout\ = \controladora|atual_estado.s46~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \controladora|atual_estado.s46~regout\,
	combout => \controladora|atual_estado.s47~feeder_combout\);

-- Location: LCFF_X20_Y34_N25
\controladora|atual_estado.s47\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \controladora|atual_estado.s47~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controladora|atual_estado.s47~regout\);

-- Location: LCCOMB_X19_Y34_N22
\controladora|WideOr27~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controladora|WideOr27~0_combout\ = (\controladora|atual_estado.s51~regout\) # ((\controladora|atual_estado.s34~regout\) # ((\controladora|atual_estado.s42~regout\) # (\controladora|atual_estado.s47~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controladora|atual_estado.s51~regout\,
	datab => \controladora|atual_estado.s34~regout\,
	datac => \controladora|atual_estado.s42~regout\,
	datad => \controladora|atual_estado.s47~regout\,
	combout => \controladora|WideOr27~0_combout\);

-- Location: LCFF_X19_Y34_N23
\controladora|atual_estado.s52\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \controladora|WideOr27~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controladora|atual_estado.s52~regout\);

-- Location: LCCOMB_X15_Y34_N30
\controladora|fsm_finish\ : cycloneii_lcell_comb
-- Equation(s):
-- \controladora|fsm_finish~combout\ = (\controladora|atual_estado.s52~regout\) # (\controladora|atual_estado.s14~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controladora|atual_estado.s52~regout\,
	datad => \controladora|atual_estado.s14~regout\,
	combout => \controladora|fsm_finish~combout\);

-- Location: LCCOMB_X15_Y34_N0
\controladora|prox_estado.s23~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controladora|prox_estado.s23~0_combout\ = (\controladora|atual_estado.s22~regout\ & !\datapath|cont_obj|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controladora|atual_estado.s22~regout\,
	datad => \datapath|cont_obj|cnt\(0),
	combout => \controladora|prox_estado.s23~0_combout\);

-- Location: LCFF_X15_Y34_N1
\controladora|atual_estado.s23\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \controladora|prox_estado.s23~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controladora|atual_estado.s23~regout\);

-- Location: LCCOMB_X19_Y34_N24
\controladora|WideOr12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controladora|WideOr12~0_combout\ = (\controladora|atual_estado.s24~regout\) # ((\controladora|atual_estado.s23~regout\) # ((\controladora|atual_estado.s44~regout\) # (\controladora|atual_estado.s40~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controladora|atual_estado.s24~regout\,
	datab => \controladora|atual_estado.s23~regout\,
	datac => \controladora|atual_estado.s44~regout\,
	datad => \controladora|atual_estado.s40~regout\,
	combout => \controladora|WideOr12~0_combout\);

-- Location: LCCOMB_X18_Y34_N30
\controladora|prox_estado.s48~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controladora|prox_estado.s48~0_combout\ = (\controladora|atual_estado.s37~regout\ & !\cmd~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controladora|atual_estado.s37~regout\,
	datad => \cmd~combout\(2),
	combout => \controladora|prox_estado.s48~0_combout\);

-- Location: LCFF_X18_Y34_N31
\controladora|atual_estado.s48\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \controladora|prox_estado.s48~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controladora|atual_estado.s48~regout\);

-- Location: LCFF_X19_Y34_N21
\controladora|atual_estado.s49\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \controladora|atual_estado.s48~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controladora|atual_estado.s49~regout\);

-- Location: LCFF_X19_Y34_N9
\controladora|atual_estado.s50\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \controladora|atual_estado.s49~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controladora|atual_estado.s50~regout\);

-- Location: LCCOMB_X19_Y34_N8
\controladora|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controladora|WideOr6~0_combout\ = (!\controladora|atual_estado.s49~regout\ & (!\controladora|atual_estado.s34~regout\ & (!\controladora|atual_estado.s50~regout\ & !\controladora|atual_estado.s47~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controladora|atual_estado.s49~regout\,
	datab => \controladora|atual_estado.s34~regout\,
	datac => \controladora|atual_estado.s50~regout\,
	datad => \controladora|atual_estado.s47~regout\,
	combout => \controladora|WideOr6~0_combout\);

-- Location: LCCOMB_X19_Y34_N4
\controladora|WideOr12~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \controladora|WideOr12~1_combout\ = (\controladora|WideOr12~0_combout\) # ((\controladora|atual_estado.s10~regout\) # ((\controladora|atual_estado.s15~regout\) # (!\controladora|WideOr6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controladora|WideOr12~0_combout\,
	datab => \controladora|atual_estado.s10~regout\,
	datac => \controladora|atual_estado.s15~regout\,
	datad => \controladora|WideOr6~0_combout\,
	combout => \controladora|WideOr12~1_combout\);

-- Location: LCCOMB_X19_Y34_N16
\controladora|WideOr11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controladora|WideOr11~0_combout\ = (\controladora|atual_estado.s41~regout\) # ((\controladora|atual_estado.s34~regout\) # ((\controladora|atual_estado.s23~regout\) # (\controladora|atual_estado.s45~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controladora|atual_estado.s41~regout\,
	datab => \controladora|atual_estado.s34~regout\,
	datac => \controladora|atual_estado.s23~regout\,
	datad => \controladora|atual_estado.s45~regout\,
	combout => \controladora|WideOr11~0_combout\);

-- Location: LCCOMB_X20_Y34_N26
\controladora|WideOr11\ : cycloneii_lcell_comb
-- Equation(s):
-- \controladora|WideOr11~combout\ = (\controladora|atual_estado.s12~regout\) # ((\controladora|atual_estado.s47~regout\) # (\controladora|WideOr11~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controladora|atual_estado.s12~regout\,
	datac => \controladora|atual_estado.s47~regout\,
	datad => \controladora|WideOr11~0_combout\,
	combout => \controladora|WideOr11~combout\);

-- Location: LCFF_X19_Y34_N13
\controladora|atual_estado.s51\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \controladora|atual_estado.s50~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controladora|atual_estado.s51~regout\);

-- Location: LCCOMB_X19_Y34_N18
\controladora|WideOr10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controladora|WideOr10~0_combout\ = (\controladora|atual_estado.s48~regout\) # ((\controladora|atual_estado.s24~regout\) # ((\controladora|atual_estado.s12~regout\) # (\controladora|atual_estado.s47~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controladora|atual_estado.s48~regout\,
	datab => \controladora|atual_estado.s24~regout\,
	datac => \controladora|atual_estado.s12~regout\,
	datad => \controladora|atual_estado.s47~regout\,
	combout => \controladora|WideOr10~0_combout\);

-- Location: LCCOMB_X19_Y34_N12
\controladora|WideOr10\ : cycloneii_lcell_comb
-- Equation(s):
-- \controladora|WideOr10~combout\ = (\controladora|atual_estado.s50~regout\) # ((\controladora|atual_estado.s51~regout\) # (\controladora|WideOr10~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controladora|atual_estado.s50~regout\,
	datac => \controladora|atual_estado.s51~regout\,
	datad => \controladora|WideOr10~0_combout\,
	combout => \controladora|WideOr10~combout\);

-- Location: LCCOMB_X19_Y34_N0
\controladora|WideOr9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controladora|WideOr9~0_combout\ = (\controladora|atual_estado.s8~regout\) # ((\controladora|atual_estado.s34~regout\) # ((\controladora|atual_estado.s49~regout\) # (\controladora|atual_estado.s9~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controladora|atual_estado.s8~regout\,
	datab => \controladora|atual_estado.s34~regout\,
	datac => \controladora|atual_estado.s49~regout\,
	datad => \controladora|atual_estado.s9~regout\,
	combout => \controladora|WideOr9~0_combout\);

-- Location: LCCOMB_X19_Y34_N30
\controladora|WideOr9\ : cycloneii_lcell_comb
-- Equation(s):
-- \controladora|WideOr9~combout\ = (\controladora|atual_estado.s13~regout\) # (\controladora|WideOr9~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controladora|atual_estado.s13~regout\,
	datad => \controladora|WideOr9~0_combout\,
	combout => \controladora|WideOr9~combout\);

-- Location: LCCOMB_X20_Y34_N16
\controladora|WideOr12~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \controladora|WideOr12~2_combout\ = (!\controladora|atual_estado.s40~regout\ & !\controladora|atual_estado.s44~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controladora|atual_estado.s40~regout\,
	datac => \controladora|atual_estado.s44~regout\,
	combout => \controladora|WideOr12~2_combout\);

-- Location: LCCOMB_X19_Y34_N28
\controladora|WideOr7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controladora|WideOr7~0_combout\ = (!\controladora|atual_estado.s8~regout\ & (!\controladora|atual_estado.s34~regout\ & (!\controladora|atual_estado.s45~regout\ & !\controladora|atual_estado.s41~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controladora|atual_estado.s8~regout\,
	datab => \controladora|atual_estado.s34~regout\,
	datac => \controladora|atual_estado.s45~regout\,
	datad => \controladora|atual_estado.s41~regout\,
	combout => \controladora|WideOr7~0_combout\);

-- Location: LCCOMB_X20_Y34_N6
\controladora|WideOr8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controladora|WideOr8~0_combout\ = (\controladora|atual_estado.s43~regout\) # ((\controladora|atual_estado.s39~regout\) # ((\controladora|atual_estado.s47~regout\) # (\controladora|atual_estado.s48~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controladora|atual_estado.s43~regout\,
	datab => \controladora|atual_estado.s39~regout\,
	datac => \controladora|atual_estado.s47~regout\,
	datad => \controladora|atual_estado.s48~regout\,
	combout => \controladora|WideOr8~0_combout\);

-- Location: LCCOMB_X20_Y34_N18
\controladora|WideOr8\ : cycloneii_lcell_comb
-- Equation(s):
-- \controladora|WideOr8~combout\ = (((\controladora|WideOr8~0_combout\) # (!\controladora|WideOr2~0_combout\)) # (!\controladora|WideOr7~0_combout\)) # (!\controladora|WideOr12~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controladora|WideOr12~2_combout\,
	datab => \controladora|WideOr7~0_combout\,
	datac => \controladora|WideOr2~0_combout\,
	datad => \controladora|WideOr8~0_combout\,
	combout => \controladora|WideOr8~combout\);

-- Location: LCCOMB_X20_Y34_N20
\controladora|WideOr7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \controladora|WideOr7~1_combout\ = (\controladora|atual_estado.s38~regout\) # ((\controladora|atual_estado.s46~regout\) # (\controladora|atual_estado.s42~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controladora|atual_estado.s38~regout\,
	datab => \controladora|atual_estado.s46~regout\,
	datad => \controladora|atual_estado.s42~regout\,
	combout => \controladora|WideOr7~1_combout\);

-- Location: LCCOMB_X20_Y34_N22
\controladora|WideOr7~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \controladora|WideOr7~2_combout\ = (\controladora|WideOr2~0_combout\ & (!\controladora|atual_estado.s40~regout\ & (!\controladora|atual_estado.s44~regout\ & \controladora|WideOr7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controladora|WideOr2~0_combout\,
	datab => \controladora|atual_estado.s40~regout\,
	datac => \controladora|atual_estado.s44~regout\,
	datad => \controladora|WideOr7~0_combout\,
	combout => \controladora|WideOr7~2_combout\);

-- Location: LCCOMB_X20_Y34_N28
\controladora|WideOr7\ : cycloneii_lcell_comb
-- Equation(s):
-- \controladora|WideOr7~combout\ = (\controladora|WideOr7~1_combout\) # ((\controladora|WideOr7~3_combout\) # ((\controladora|atual_estado.s28~regout\) # (!\controladora|WideOr7~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controladora|WideOr7~1_combout\,
	datab => \controladora|WideOr7~3_combout\,
	datac => \controladora|atual_estado.s28~regout\,
	datad => \controladora|WideOr7~2_combout\,
	combout => \controladora|WideOr7~combout\);

-- Location: LCCOMB_X19_Y34_N20
\controladora|WideOr6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \controladora|WideOr6~1_combout\ = (\controladora|atual_estado.s51~regout\) # ((\controladora|atual_estado.s43~regout\) # ((\controladora|atual_estado.s48~regout\) # (\controladora|atual_estado.s39~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controladora|atual_estado.s51~regout\,
	datab => \controladora|atual_estado.s43~regout\,
	datac => \controladora|atual_estado.s48~regout\,
	datad => \controladora|atual_estado.s39~regout\,
	combout => \controladora|WideOr6~1_combout\);

-- Location: LCCOMB_X18_Y34_N2
\controladora|WideOr6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \controladora|WideOr6~2_combout\ = (\controladora|atual_estado.s31~regout\) # (((\controladora|atual_estado.s35~regout\) # (\controladora|WideOr6~1_combout\)) # (!\controladora|WideOr6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controladora|atual_estado.s31~regout\,
	datab => \controladora|WideOr6~0_combout\,
	datac => \controladora|atual_estado.s35~regout\,
	datad => \controladora|WideOr6~1_combout\,
	combout => \controladora|WideOr6~2_combout\);

-- Location: LCCOMB_X19_Y34_N10
\controladora|fsm_dt[7]\ : cycloneii_lcell_comb
-- Equation(s):
-- \controladora|fsm_dt\(7) = (\controladora|atual_estado.s24~regout\) # (\controladora|atual_estado.s34~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controladora|atual_estado.s24~regout\,
	datad => \controladora|atual_estado.s34~regout\,
	combout => \controladora|fsm_dt\(7));

-- Location: LCCOMB_X18_Y34_N22
\datapath|dp_E~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|dp_E~5_combout\ = (!\controladora|atual_estado.s28~regout\ & (!\controladora|atual_estado.s33~regout\ & (!\controladora|atual_estado.s37~regout\ & !\controladora|atual_estado.s29~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controladora|atual_estado.s28~regout\,
	datab => \controladora|atual_estado.s33~regout\,
	datac => \controladora|atual_estado.s37~regout\,
	datad => \controladora|atual_estado.s29~regout\,
	combout => \datapath|dp_E~5_combout\);

-- Location: LCCOMB_X15_Y34_N4
\datapath|dp_E~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|dp_E~6_combout\ = (\datapath|dp_E~4_combout\ & (\datapath|dp_E~5_combout\ & !\controladora|atual_estado.s52~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|dp_E~4_combout\,
	datab => \datapath|dp_E~5_combout\,
	datad => \controladora|atual_estado.s52~regout\,
	combout => \datapath|dp_E~6_combout\);

-- Location: LCCOMB_X18_Y34_N28
\datapath|dp_E~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|dp_E~3_combout\ = (\clk~combout\ & (!\controladora|atual_estado.s20~regout\ & (!\controladora|atual_estado.s19~regout\ & !\controladora|atual_estado.s17~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk~combout\,
	datab => \controladora|atual_estado.s20~regout\,
	datac => \controladora|atual_estado.s19~regout\,
	datad => \controladora|atual_estado.s17~regout\,
	combout => \datapath|dp_E~3_combout\);

-- Location: LCCOMB_X15_Y34_N10
\datapath|dp_E\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|dp_E~combout\ = (\datapath|dp_E~6_combout\ & (!\datapath|dp_E~2_combout\ & (!\datapath|dp_E~1_combout\ & \datapath|dp_E~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|dp_E~6_combout\,
	datab => \datapath|dp_E~2_combout\,
	datac => \datapath|dp_E~1_combout\,
	datad => \datapath|dp_E~3_combout\,
	combout => \datapath|dp_E~combout\);

-- Location: LCCOMB_X18_Y34_N26
\controladora|WideOr5\ : cycloneii_lcell_comb
-- Equation(s):
-- \controladora|WideOr5~combout\ = (\controladora|atual_estado.s31~regout\) # ((\controladora|atual_estado.s35~regout\) # (\controladora|atual_estado.s18~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controladora|atual_estado.s31~regout\,
	datab => \controladora|atual_estado.s35~regout\,
	datac => \controladora|atual_estado.s18~regout\,
	combout => \controladora|WideOr5~combout\);

-- Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\finished~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \controladora|fsm_finish~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_finished);

-- Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DATA[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \controladora|WideOr12~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DATA(0));

-- Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DATA[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \controladora|WideOr11~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DATA(1));

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DATA[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \controladora|WideOr10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DATA(2));

-- Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DATA[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \controladora|WideOr9~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DATA(3));

-- Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DATA[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \controladora|WideOr8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DATA(4));

-- Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DATA[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \controladora|WideOr7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DATA(5));

-- Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DATA[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \controladora|WideOr6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DATA(6));

-- Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DATA[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \controladora|fsm_dt\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DATA(7));

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\E~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \datapath|dp_E~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_E);

-- Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RS~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \controladora|WideOr5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RS);
END structure;


