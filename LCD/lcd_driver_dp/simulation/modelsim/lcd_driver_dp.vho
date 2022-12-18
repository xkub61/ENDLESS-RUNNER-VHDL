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

-- DATE "12/15/2022 15:02:34"

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

ENTITY 	lcd_driver_dp IS
    PORT (
	dp_clk : IN std_logic;
	dp_q0obst : IN std_logic_vector(15 DOWNTO 0);
	dp_q0moeda : IN std_logic_vector(15 DOWNTO 0);
	dp_q1obst : IN std_logic_vector(15 DOWNTO 0);
	dp_q1moeda : IN std_logic_vector(15 DOWNTO 0);
	dp_cnt_pos : IN std_logic;
	dp_clr_pos : IN std_logic;
	dp_cnt_obj : IN std_logic;
	dp_clr_obj : IN std_logic;
	dp_set_linha : IN std_logic;
	dp_clr_linha : IN std_logic;
	dp_en_timer : IN std_logic;
	dp_clr_timer : IN std_logic;
	dp_q0_pos : OUT std_logic;
	dp_q1_pos : OUT std_logic;
	dp_pos_15 : OUT std_logic;
	dp_obj : OUT std_logic_vector(1 DOWNTO 0);
	dp_linha : OUT std_logic;
	dp_t2 : OUT std_logic;
	dp_t40 : OUT std_logic;
	dp_t100 : OUT std_logic;
	dp_t1000 : OUT std_logic
	);
END lcd_driver_dp;

-- Design Ports Information
-- dp_q0_pos	=>  Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dp_q1_pos	=>  Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dp_pos_15	=>  Location: PIN_D7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dp_obj[0]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dp_obj[1]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dp_linha	=>  Location: PIN_AB4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dp_t2	=>  Location: PIN_T24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dp_t40	=>  Location: PIN_P17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dp_t100	=>  Location: PIN_R17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dp_t1000	=>  Location: PIN_T25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dp_q0obst[10]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dp_q0obst[9]	=>  Location: PIN_F17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dp_q0obst[8]	=>  Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dp_q0obst[11]	=>  Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dp_q0obst[5]	=>  Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dp_q0obst[6]	=>  Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dp_q0obst[4]	=>  Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dp_q0obst[7]	=>  Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dp_q0obst[1]	=>  Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dp_q0obst[2]	=>  Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dp_q0obst[0]	=>  Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dp_q0obst[3]	=>  Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dp_q0obst[14]	=>  Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dp_q0obst[13]	=>  Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dp_q0obst[12]	=>  Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dp_q0obst[15]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dp_q0moeda[6]	=>  Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dp_q0moeda[10]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dp_q0moeda[2]	=>  Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dp_q0moeda[14]	=>  Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dp_q0moeda[9]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dp_q0moeda[5]	=>  Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dp_q0moeda[1]	=>  Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dp_q0moeda[13]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dp_q0moeda[8]	=>  Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dp_q0moeda[4]	=>  Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dp_q0moeda[0]	=>  Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dp_q0moeda[12]	=>  Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dp_q0moeda[7]	=>  Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dp_q0moeda[11]	=>  Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dp_q0moeda[3]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dp_q0moeda[15]	=>  Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dp_q1obst[6]	=>  Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dp_q1obst[5]	=>  Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dp_q1obst[4]	=>  Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dp_q1obst[7]	=>  Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dp_q1obst[9]	=>  Location: PIN_C7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dp_q1obst[10]	=>  Location: PIN_H10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dp_q1obst[8]	=>  Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dp_q1obst[11]	=>  Location: PIN_G10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dp_q1obst[2]	=>  Location: PIN_G9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dp_q1obst[1]	=>  Location: PIN_E8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dp_q1obst[0]	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dp_q1obst[3]	=>  Location: PIN_H8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dp_q1obst[13]	=>  Location: PIN_F9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dp_q1obst[14]	=>  Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dp_q1obst[12]	=>  Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dp_q1obst[15]	=>  Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dp_q1moeda[5]	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dp_q1moeda[9]	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dp_q1moeda[1]	=>  Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dp_q1moeda[13]	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dp_q1moeda[10]	=>  Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dp_q1moeda[6]	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dp_q1moeda[2]	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dp_q1moeda[14]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dp_q1moeda[4]	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dp_q1moeda[8]	=>  Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dp_q1moeda[0]	=>  Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dp_q1moeda[12]	=>  Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dp_q1moeda[11]	=>  Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dp_q1moeda[7]	=>  Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dp_q1moeda[3]	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dp_q1moeda[15]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dp_cnt_pos	=>  Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dp_clk	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dp_clr_pos	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dp_cnt_obj	=>  Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dp_clr_obj	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dp_set_linha	=>  Location: PIN_AE2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dp_clr_linha	=>  Location: PIN_AE3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dp_clr_timer	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dp_en_timer	=>  Location: PIN_T17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF lcd_driver_dp IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_dp_clk : std_logic;
SIGNAL ww_dp_q0obst : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_dp_q0moeda : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_dp_q1obst : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_dp_q1moeda : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_dp_cnt_pos : std_logic;
SIGNAL ww_dp_clr_pos : std_logic;
SIGNAL ww_dp_cnt_obj : std_logic;
SIGNAL ww_dp_clr_obj : std_logic;
SIGNAL ww_dp_set_linha : std_logic;
SIGNAL ww_dp_clr_linha : std_logic;
SIGNAL ww_dp_en_timer : std_logic;
SIGNAL ww_dp_clr_timer : std_logic;
SIGNAL ww_dp_q0_pos : std_logic;
SIGNAL ww_dp_q1_pos : std_logic;
SIGNAL ww_dp_pos_15 : std_logic;
SIGNAL ww_dp_obj : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_dp_linha : std_logic;
SIGNAL ww_dp_t2 : std_logic;
SIGNAL ww_dp_t40 : std_logic;
SIGNAL ww_dp_t100 : std_logic;
SIGNAL ww_dp_t1000 : std_logic;
SIGNAL \dp_clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dp_clr_timer~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dp_clr_pos~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dp_clr_obj~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \mux2_q0|mux2_output~7_combout\ : std_logic;
SIGNAL \mux2_q0|mux2_output~12_combout\ : std_logic;
SIGNAL \mux2_q0|mux2_output~13_combout\ : std_logic;
SIGNAL \mux2_q0|mux2_output~14_combout\ : std_logic;
SIGNAL \mux2_q0|mux2_output~15_combout\ : std_logic;
SIGNAL \mux2_q0|mux2_output~16_combout\ : std_logic;
SIGNAL \mux2_q0|mux2_output~17_combout\ : std_logic;
SIGNAL \mux2_q1|mux2_output~0_combout\ : std_logic;
SIGNAL \mux2_q1|mux2_output~2_combout\ : std_logic;
SIGNAL \mux2_q1|mux2_output~3_combout\ : std_logic;
SIGNAL \mux2_q1|mux2_output~7_combout\ : std_logic;
SIGNAL \mux2_q1|mux2_output~8_combout\ : std_logic;
SIGNAL \mux2_q1|mux2_output~10_combout\ : std_logic;
SIGNAL \mux2_q1|mux2_output~11_combout\ : std_logic;
SIGNAL \mux2_q1|mux2_output~12_combout\ : std_logic;
SIGNAL \mux2_q1|mux2_output~17_combout\ : std_logic;
SIGNAL \dp_cnt_pos~combout\ : std_logic;
SIGNAL \cont_pos|i[0]~1_combout\ : std_logic;
SIGNAL \dp_clr_pos~combout\ : std_logic;
SIGNAL \dp_clr_pos~clkctrl_outclk\ : std_logic;
SIGNAL \cont_pos|i[1]~0_combout\ : std_logic;
SIGNAL \cont_pos|i[2]~4_combout\ : std_logic;
SIGNAL \mux2_q0|mux2_output~18_combout\ : std_logic;
SIGNAL \mux2_q0|mux2_output~10_combout\ : std_logic;
SIGNAL \mux2_q0|mux2_output~11_combout\ : std_logic;
SIGNAL \mux2_q0|mux2_output~19_combout\ : std_logic;
SIGNAL \mux2_q0|mux2_output~8_combout\ : std_logic;
SIGNAL \mux2_q0|mux2_output~0_combout\ : std_logic;
SIGNAL \mux2_q0|mux2_output~1_combout\ : std_logic;
SIGNAL \mux2_q0|mux2_output~4_combout\ : std_logic;
SIGNAL \mux2_q0|mux2_output~5_combout\ : std_logic;
SIGNAL \mux2_q0|mux2_output~2_combout\ : std_logic;
SIGNAL \mux2_q0|mux2_output~3_combout\ : std_logic;
SIGNAL \mux2_q0|mux2_output~6_combout\ : std_logic;
SIGNAL \mux2_q0|mux2_output~9_combout\ : std_logic;
SIGNAL \dp_cnt_obj~combout\ : std_logic;
SIGNAL \cont_obj|cnt[0]~0_combout\ : std_logic;
SIGNAL \dp_clr_obj~combout\ : std_logic;
SIGNAL \dp_clr_obj~clkctrl_outclk\ : std_logic;
SIGNAL \mux2_q0|mux2_output~20_combout\ : std_logic;
SIGNAL \cont_pos|i[3]~2_combout\ : std_logic;
SIGNAL \cont_pos|i[3]~3_combout\ : std_logic;
SIGNAL \mux2_q1|mux2_output~18_combout\ : std_logic;
SIGNAL \mux2_q1|mux2_output~14_combout\ : std_logic;
SIGNAL \mux2_q1|mux2_output~15_combout\ : std_logic;
SIGNAL \mux2_q1|mux2_output~13_combout\ : std_logic;
SIGNAL \mux2_q1|mux2_output~16_combout\ : std_logic;
SIGNAL \mux2_q1|mux2_output~19_combout\ : std_logic;
SIGNAL \mux2_q1|mux2_output~4_combout\ : std_logic;
SIGNAL \mux2_q1|mux2_output~5_combout\ : std_logic;
SIGNAL \mux2_q1|mux2_output~6_combout\ : std_logic;
SIGNAL \mux2_q1|mux2_output~1_combout\ : std_logic;
SIGNAL \mux2_q1|mux2_output~9_combout\ : std_logic;
SIGNAL \mux2_q1|mux2_output~20_combout\ : std_logic;
SIGNAL \dp_pos_15~0_combout\ : std_logic;
SIGNAL \dp_clk~combout\ : std_logic;
SIGNAL \dp_clk~clkctrl_outclk\ : std_logic;
SIGNAL \cont_obj|cnt[1]~1_combout\ : std_logic;
SIGNAL \dp_clr_linha~combout\ : std_logic;
SIGNAL \dp_set_linha~combout\ : std_logic;
SIGNAL \reg_linha|qi~1_combout\ : std_logic;
SIGNAL \reg_linha|qi~3_combout\ : std_logic;
SIGNAL \reg_linha|qi~0_combout\ : std_logic;
SIGNAL \reg_linha|qi~_emulated_regout\ : std_logic;
SIGNAL \reg_linha|qi~2_combout\ : std_logic;
SIGNAL \dp_en_timer~combout\ : std_logic;
SIGNAL \timer|i[0]~27_combout\ : std_logic;
SIGNAL \dp_clr_timer~combout\ : std_logic;
SIGNAL \dp_clr_timer~clkctrl_outclk\ : std_logic;
SIGNAL \timer|i[1]~9_combout\ : std_logic;
SIGNAL \timer|i[1]~10\ : std_logic;
SIGNAL \timer|i[2]~11_combout\ : std_logic;
SIGNAL \timer|i[2]~12\ : std_logic;
SIGNAL \timer|i[3]~13_combout\ : std_logic;
SIGNAL \timer|i[3]~14\ : std_logic;
SIGNAL \timer|i[4]~15_combout\ : std_logic;
SIGNAL \comp_t100|LessThan0~0_combout\ : std_logic;
SIGNAL \timer|i[4]~16\ : std_logic;
SIGNAL \timer|i[5]~17_combout\ : std_logic;
SIGNAL \timer|i[5]~18\ : std_logic;
SIGNAL \timer|i[6]~20\ : std_logic;
SIGNAL \timer|i[7]~21_combout\ : std_logic;
SIGNAL \timer|i[7]~22\ : std_logic;
SIGNAL \timer|i[8]~24\ : std_logic;
SIGNAL \timer|i[9]~25_combout\ : std_logic;
SIGNAL \timer|i[8]~23_combout\ : std_logic;
SIGNAL \comp_t40|LessThan0~0_combout\ : std_logic;
SIGNAL \comp_t2|LessThan0~0_combout\ : std_logic;
SIGNAL \comp_t40|LessThan0~1_combout\ : std_logic;
SIGNAL \comp_t40|LessThan0~2_combout\ : std_logic;
SIGNAL \timer|i[6]~19_combout\ : std_logic;
SIGNAL \comp_t100|LessThan0~1_combout\ : std_logic;
SIGNAL \comp_t1000|LessThan0~0_combout\ : std_logic;
SIGNAL \comp_t1000|LessThan0~1_combout\ : std_logic;
SIGNAL \dp_q1obst~combout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \dp_q1moeda~combout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \dp_q0obst~combout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \dp_q0moeda~combout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \cont_pos|i\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \timer|i\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \cont_obj|cnt\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \comp_t1000|ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \comp_t100|ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \comp_t40|ALT_INV_LessThan0~1_combout\ : std_logic;

BEGIN

ww_dp_clk <= dp_clk;
ww_dp_q0obst <= dp_q0obst;
ww_dp_q0moeda <= dp_q0moeda;
ww_dp_q1obst <= dp_q1obst;
ww_dp_q1moeda <= dp_q1moeda;
ww_dp_cnt_pos <= dp_cnt_pos;
ww_dp_clr_pos <= dp_clr_pos;
ww_dp_cnt_obj <= dp_cnt_obj;
ww_dp_clr_obj <= dp_clr_obj;
ww_dp_set_linha <= dp_set_linha;
ww_dp_clr_linha <= dp_clr_linha;
ww_dp_en_timer <= dp_en_timer;
ww_dp_clr_timer <= dp_clr_timer;
dp_q0_pos <= ww_dp_q0_pos;
dp_q1_pos <= ww_dp_q1_pos;
dp_pos_15 <= ww_dp_pos_15;
dp_obj <= ww_dp_obj;
dp_linha <= ww_dp_linha;
dp_t2 <= ww_dp_t2;
dp_t40 <= ww_dp_t40;
dp_t100 <= ww_dp_t100;
dp_t1000 <= ww_dp_t1000;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\dp_clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \dp_clk~combout\);

\dp_clr_timer~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \dp_clr_timer~combout\);

\dp_clr_pos~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \dp_clr_pos~combout\);

\dp_clr_obj~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \dp_clr_obj~combout\);
\comp_t1000|ALT_INV_LessThan0~1_combout\ <= NOT \comp_t1000|LessThan0~1_combout\;
\comp_t100|ALT_INV_LessThan0~1_combout\ <= NOT \comp_t100|LessThan0~1_combout\;
\comp_t40|ALT_INV_LessThan0~1_combout\ <= NOT \comp_t40|LessThan0~1_combout\;

-- Location: LCCOMB_X36_Y35_N12
\mux2_q0|mux2_output~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux2_q0|mux2_output~7_combout\ = (\cont_pos|i\(0) & (((\cont_pos|i\(1)) # (\dp_q0obst~combout\(13))))) # (!\cont_pos|i\(0) & (\dp_q0obst~combout\(12) & (!\cont_pos|i\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp_q0obst~combout\(12),
	datab => \cont_pos|i\(0),
	datac => \cont_pos|i\(1),
	datad => \dp_q0obst~combout\(13),
	combout => \mux2_q0|mux2_output~7_combout\);

-- Location: LCCOMB_X36_Y35_N10
\mux2_q0|mux2_output~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux2_q0|mux2_output~12_combout\ = (\cont_pos|i\(3) & (((\cont_pos|i\(2))))) # (!\cont_pos|i\(3) & ((\cont_pos|i\(2) & ((\dp_q0moeda~combout\(5)))) # (!\cont_pos|i\(2) & (\dp_q0moeda~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont_pos|i\(3),
	datab => \dp_q0moeda~combout\(1),
	datac => \cont_pos|i\(2),
	datad => \dp_q0moeda~combout\(5),
	combout => \mux2_q0|mux2_output~12_combout\);

-- Location: LCCOMB_X36_Y35_N20
\mux2_q0|mux2_output~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux2_q0|mux2_output~13_combout\ = (\cont_pos|i\(3) & ((\mux2_q0|mux2_output~12_combout\ & (\dp_q0moeda~combout\(13))) # (!\mux2_q0|mux2_output~12_combout\ & ((\dp_q0moeda~combout\(9)))))) # (!\cont_pos|i\(3) & (((\mux2_q0|mux2_output~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp_q0moeda~combout\(13),
	datab => \dp_q0moeda~combout\(9),
	datac => \cont_pos|i\(3),
	datad => \mux2_q0|mux2_output~12_combout\,
	combout => \mux2_q0|mux2_output~13_combout\);

-- Location: LCCOMB_X36_Y35_N30
\mux2_q0|mux2_output~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux2_q0|mux2_output~14_combout\ = (\cont_pos|i\(3) & (((\cont_pos|i\(2))))) # (!\cont_pos|i\(3) & ((\cont_pos|i\(2) & (\dp_q0moeda~combout\(4))) # (!\cont_pos|i\(2) & ((\dp_q0moeda~combout\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont_pos|i\(3),
	datab => \dp_q0moeda~combout\(4),
	datac => \cont_pos|i\(2),
	datad => \dp_q0moeda~combout\(0),
	combout => \mux2_q0|mux2_output~14_combout\);

-- Location: LCCOMB_X36_Y35_N0
\mux2_q0|mux2_output~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux2_q0|mux2_output~15_combout\ = (\cont_pos|i\(3) & ((\mux2_q0|mux2_output~14_combout\ & ((\dp_q0moeda~combout\(12)))) # (!\mux2_q0|mux2_output~14_combout\ & (\dp_q0moeda~combout\(8))))) # (!\cont_pos|i\(3) & (\mux2_q0|mux2_output~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont_pos|i\(3),
	datab => \mux2_q0|mux2_output~14_combout\,
	datac => \dp_q0moeda~combout\(8),
	datad => \dp_q0moeda~combout\(12),
	combout => \mux2_q0|mux2_output~15_combout\);

-- Location: LCCOMB_X36_Y35_N6
\mux2_q0|mux2_output~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux2_q0|mux2_output~16_combout\ = (\cont_pos|i\(0) & ((\mux2_q0|mux2_output~13_combout\) # ((\cont_pos|i\(1))))) # (!\cont_pos|i\(0) & (((!\cont_pos|i\(1) & \mux2_q0|mux2_output~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux2_q0|mux2_output~13_combout\,
	datab => \cont_pos|i\(0),
	datac => \cont_pos|i\(1),
	datad => \mux2_q0|mux2_output~15_combout\,
	combout => \mux2_q0|mux2_output~16_combout\);

-- Location: LCCOMB_X19_Y35_N12
\mux2_q0|mux2_output~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux2_q0|mux2_output~17_combout\ = (\cont_pos|i\(3) & ((\dp_q0moeda~combout\(11)) # ((\cont_pos|i\(2))))) # (!\cont_pos|i\(3) & (((\dp_q0moeda~combout\(3) & !\cont_pos|i\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp_q0moeda~combout\(11),
	datab => \cont_pos|i\(3),
	datac => \dp_q0moeda~combout\(3),
	datad => \cont_pos|i\(2),
	combout => \mux2_q0|mux2_output~17_combout\);

-- Location: LCCOMB_X15_Y35_N20
\mux2_q1|mux2_output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux2_q1|mux2_output~0_combout\ = (\cont_pos|i\(1) & (((\cont_pos|i\(0))))) # (!\cont_pos|i\(1) & ((\cont_pos|i\(0) & (\dp_q1obst~combout\(5))) # (!\cont_pos|i\(0) & ((\dp_q1obst~combout\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp_q1obst~combout\(5),
	datab => \cont_pos|i\(1),
	datac => \dp_q1obst~combout\(4),
	datad => \cont_pos|i\(0),
	combout => \mux2_q1|mux2_output~0_combout\);

-- Location: LCCOMB_X15_Y35_N4
\mux2_q1|mux2_output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux2_q1|mux2_output~2_combout\ = (\cont_pos|i\(1) & ((\dp_q1obst~combout\(10)) # ((\cont_pos|i\(0))))) # (!\cont_pos|i\(1) & (((\dp_q1obst~combout\(8) & !\cont_pos|i\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp_q1obst~combout\(10),
	datab => \cont_pos|i\(1),
	datac => \dp_q1obst~combout\(8),
	datad => \cont_pos|i\(0),
	combout => \mux2_q1|mux2_output~2_combout\);

-- Location: LCCOMB_X15_Y35_N10
\mux2_q1|mux2_output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux2_q1|mux2_output~3_combout\ = (\mux2_q1|mux2_output~2_combout\ & (((\dp_q1obst~combout\(11)) # (!\cont_pos|i\(0))))) # (!\mux2_q1|mux2_output~2_combout\ & (\dp_q1obst~combout\(9) & ((\cont_pos|i\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp_q1obst~combout\(9),
	datab => \dp_q1obst~combout\(11),
	datac => \mux2_q1|mux2_output~2_combout\,
	datad => \cont_pos|i\(0),
	combout => \mux2_q1|mux2_output~3_combout\);

-- Location: LCCOMB_X15_Y35_N26
\mux2_q1|mux2_output~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux2_q1|mux2_output~7_combout\ = (\cont_pos|i\(1) & ((\dp_q1obst~combout\(14)) # ((\cont_pos|i\(0))))) # (!\cont_pos|i\(1) & (((\dp_q1obst~combout\(12) & !\cont_pos|i\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp_q1obst~combout\(14),
	datab => \cont_pos|i\(1),
	datac => \dp_q1obst~combout\(12),
	datad => \cont_pos|i\(0),
	combout => \mux2_q1|mux2_output~7_combout\);

-- Location: LCCOMB_X15_Y35_N24
\mux2_q1|mux2_output~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux2_q1|mux2_output~8_combout\ = (\cont_pos|i\(0) & ((\mux2_q1|mux2_output~7_combout\ & (\dp_q1obst~combout\(15))) # (!\mux2_q1|mux2_output~7_combout\ & ((\dp_q1obst~combout\(13)))))) # (!\cont_pos|i\(0) & (((\mux2_q1|mux2_output~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp_q1obst~combout\(15),
	datab => \cont_pos|i\(0),
	datac => \dp_q1obst~combout\(13),
	datad => \mux2_q1|mux2_output~7_combout\,
	combout => \mux2_q1|mux2_output~8_combout\);

-- Location: LCCOMB_X23_Y35_N10
\mux2_q1|mux2_output~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux2_q1|mux2_output~10_combout\ = (\cont_pos|i\(3) & (((\cont_pos|i\(2)) # (\dp_q1moeda~combout\(9))))) # (!\cont_pos|i\(3) & (\dp_q1moeda~combout\(1) & (!\cont_pos|i\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp_q1moeda~combout\(1),
	datab => \cont_pos|i\(3),
	datac => \cont_pos|i\(2),
	datad => \dp_q1moeda~combout\(9),
	combout => \mux2_q1|mux2_output~10_combout\);

-- Location: LCCOMB_X23_Y35_N16
\mux2_q1|mux2_output~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux2_q1|mux2_output~11_combout\ = (\mux2_q1|mux2_output~10_combout\ & (((\dp_q1moeda~combout\(13))) # (!\cont_pos|i\(2)))) # (!\mux2_q1|mux2_output~10_combout\ & (\cont_pos|i\(2) & (\dp_q1moeda~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux2_q1|mux2_output~10_combout\,
	datab => \cont_pos|i\(2),
	datac => \dp_q1moeda~combout\(5),
	datad => \dp_q1moeda~combout\(13),
	combout => \mux2_q1|mux2_output~11_combout\);

-- Location: LCCOMB_X23_Y35_N6
\mux2_q1|mux2_output~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux2_q1|mux2_output~12_combout\ = (\cont_pos|i\(3) & (((\cont_pos|i\(2))))) # (!\cont_pos|i\(3) & ((\cont_pos|i\(2) & ((\dp_q1moeda~combout\(6)))) # (!\cont_pos|i\(2) & (\dp_q1moeda~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp_q1moeda~combout\(2),
	datab => \cont_pos|i\(3),
	datac => \cont_pos|i\(2),
	datad => \dp_q1moeda~combout\(6),
	combout => \mux2_q1|mux2_output~12_combout\);

-- Location: LCCOMB_X23_Y35_N20
\mux2_q1|mux2_output~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux2_q1|mux2_output~17_combout\ = (\cont_pos|i\(3) & (((\cont_pos|i\(2))))) # (!\cont_pos|i\(3) & ((\cont_pos|i\(2) & ((\dp_q1moeda~combout\(7)))) # (!\cont_pos|i\(2) & (\dp_q1moeda~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp_q1moeda~combout\(3),
	datab => \cont_pos|i\(3),
	datac => \cont_pos|i\(2),
	datad => \dp_q1moeda~combout\(7),
	combout => \mux2_q1|mux2_output~17_combout\);

-- Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dp_q0obst[8]~I\ : cycloneii_io
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
	padio => ww_dp_q0obst(8),
	combout => \dp_q0obst~combout\(8));

-- Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dp_q0obst[11]~I\ : cycloneii_io
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
	padio => ww_dp_q0obst(11),
	combout => \dp_q0obst~combout\(11));

-- Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dp_q0obst[4]~I\ : cycloneii_io
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
	padio => ww_dp_q0obst(4),
	combout => \dp_q0obst~combout\(4));

-- Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dp_q0obst[7]~I\ : cycloneii_io
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
	padio => ww_dp_q0obst(7),
	combout => \dp_q0obst~combout\(7));

-- Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dp_q0obst[1]~I\ : cycloneii_io
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
	padio => ww_dp_q0obst(1),
	combout => \dp_q0obst~combout\(1));

-- Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dp_q0obst[2]~I\ : cycloneii_io
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
	padio => ww_dp_q0obst(2),
	combout => \dp_q0obst~combout\(2));

-- Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dp_q0obst[13]~I\ : cycloneii_io
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
	padio => ww_dp_q0obst(13),
	combout => \dp_q0obst~combout\(13));

-- Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dp_q0obst[12]~I\ : cycloneii_io
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
	padio => ww_dp_q0obst(12),
	combout => \dp_q0obst~combout\(12));

-- Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dp_q0moeda[6]~I\ : cycloneii_io
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
	padio => ww_dp_q0moeda(6),
	combout => \dp_q0moeda~combout\(6));

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dp_q0moeda[9]~I\ : cycloneii_io
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
	padio => ww_dp_q0moeda(9),
	combout => \dp_q0moeda~combout\(9));

-- Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dp_q0moeda[5]~I\ : cycloneii_io
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
	padio => ww_dp_q0moeda(5),
	combout => \dp_q0moeda~combout\(5));

-- Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dp_q0moeda[1]~I\ : cycloneii_io
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
	padio => ww_dp_q0moeda(1),
	combout => \dp_q0moeda~combout\(1));

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dp_q0moeda[13]~I\ : cycloneii_io
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
	padio => ww_dp_q0moeda(13),
	combout => \dp_q0moeda~combout\(13));

-- Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dp_q0moeda[8]~I\ : cycloneii_io
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
	padio => ww_dp_q0moeda(8),
	combout => \dp_q0moeda~combout\(8));

-- Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dp_q0moeda[4]~I\ : cycloneii_io
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
	padio => ww_dp_q0moeda(4),
	combout => \dp_q0moeda~combout\(4));

-- Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dp_q0moeda[0]~I\ : cycloneii_io
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
	padio => ww_dp_q0moeda(0),
	combout => \dp_q0moeda~combout\(0));

-- Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dp_q0moeda[12]~I\ : cycloneii_io
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
	padio => ww_dp_q0moeda(12),
	combout => \dp_q0moeda~combout\(12));

-- Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dp_q0moeda[11]~I\ : cycloneii_io
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
	padio => ww_dp_q0moeda(11),
	combout => \dp_q0moeda~combout\(11));

-- Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dp_q0moeda[3]~I\ : cycloneii_io
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
	padio => ww_dp_q0moeda(3),
	combout => \dp_q0moeda~combout\(3));

-- Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dp_q1obst[5]~I\ : cycloneii_io
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
	padio => ww_dp_q1obst(5),
	combout => \dp_q1obst~combout\(5));

-- Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dp_q1obst[4]~I\ : cycloneii_io
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
	padio => ww_dp_q1obst(4),
	combout => \dp_q1obst~combout\(4));

-- Location: PIN_C7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dp_q1obst[9]~I\ : cycloneii_io
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
	padio => ww_dp_q1obst(9),
	combout => \dp_q1obst~combout\(9));

-- Location: PIN_H10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dp_q1obst[10]~I\ : cycloneii_io
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
	padio => ww_dp_q1obst(10),
	combout => \dp_q1obst~combout\(10));

-- Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dp_q1obst[8]~I\ : cycloneii_io
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
	padio => ww_dp_q1obst(8),
	combout => \dp_q1obst~combout\(8));

-- Location: PIN_G10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dp_q1obst[11]~I\ : cycloneii_io
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
	padio => ww_dp_q1obst(11),
	combout => \dp_q1obst~combout\(11));

-- Location: PIN_E8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dp_q1obst[1]~I\ : cycloneii_io
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
	padio => ww_dp_q1obst(1),
	combout => \dp_q1obst~combout\(1));

-- Location: PIN_H8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dp_q1obst[3]~I\ : cycloneii_io
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
	padio => ww_dp_q1obst(3),
	combout => \dp_q1obst~combout\(3));

-- Location: PIN_F9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dp_q1obst[13]~I\ : cycloneii_io
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
	padio => ww_dp_q1obst(13),
	combout => \dp_q1obst~combout\(13));

-- Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dp_q1obst[14]~I\ : cycloneii_io
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
	padio => ww_dp_q1obst(14),
	combout => \dp_q1obst~combout\(14));

-- Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dp_q1obst[12]~I\ : cycloneii_io
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
	padio => ww_dp_q1obst(12),
	combout => \dp_q1obst~combout\(12));

-- Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dp_q1obst[15]~I\ : cycloneii_io
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
	padio => ww_dp_q1obst(15),
	combout => \dp_q1obst~combout\(15));

-- Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dp_q1moeda[5]~I\ : cycloneii_io
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
	padio => ww_dp_q1moeda(5),
	combout => \dp_q1moeda~combout\(5));

-- Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dp_q1moeda[9]~I\ : cycloneii_io
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
	padio => ww_dp_q1moeda(9),
	combout => \dp_q1moeda~combout\(9));

-- Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dp_q1moeda[1]~I\ : cycloneii_io
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
	padio => ww_dp_q1moeda(1),
	combout => \dp_q1moeda~combout\(1));

-- Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dp_q1moeda[13]~I\ : cycloneii_io
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
	padio => ww_dp_q1moeda(13),
	combout => \dp_q1moeda~combout\(13));

-- Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dp_q1moeda[6]~I\ : cycloneii_io
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
	padio => ww_dp_q1moeda(6),
	combout => \dp_q1moeda~combout\(6));

-- Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dp_q1moeda[2]~I\ : cycloneii_io
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
	padio => ww_dp_q1moeda(2),
	combout => \dp_q1moeda~combout\(2));

-- Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dp_q1moeda[0]~I\ : cycloneii_io
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
	padio => ww_dp_q1moeda(0),
	combout => \dp_q1moeda~combout\(0));

-- Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dp_q1moeda[12]~I\ : cycloneii_io
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
	padio => ww_dp_q1moeda(12),
	combout => \dp_q1moeda~combout\(12));

-- Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dp_q1moeda[7]~I\ : cycloneii_io
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
	padio => ww_dp_q1moeda(7),
	combout => \dp_q1moeda~combout\(7));

-- Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dp_q1moeda[3]~I\ : cycloneii_io
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
	padio => ww_dp_q1moeda(3),
	combout => \dp_q1moeda~combout\(3));

-- Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dp_q0moeda[15]~I\ : cycloneii_io
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
	padio => ww_dp_q0moeda(15),
	combout => \dp_q0moeda~combout\(15));

-- Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dp_cnt_pos~I\ : cycloneii_io
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
	padio => ww_dp_cnt_pos,
	combout => \dp_cnt_pos~combout\);

-- Location: LCCOMB_X15_Y35_N14
\cont_pos|i[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cont_pos|i[0]~1_combout\ = \cont_pos|i\(0) $ (\dp_cnt_pos~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cont_pos|i\(0),
	datad => \dp_cnt_pos~combout\,
	combout => \cont_pos|i[0]~1_combout\);

-- Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dp_clr_pos~I\ : cycloneii_io
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
	padio => ww_dp_clr_pos,
	combout => \dp_clr_pos~combout\);

-- Location: CLKCTRL_G2
\dp_clr_pos~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \dp_clr_pos~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \dp_clr_pos~clkctrl_outclk\);

-- Location: LCFF_X15_Y35_N15
\cont_pos|i[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \dp_clk~clkctrl_outclk\,
	datain => \cont_pos|i[0]~1_combout\,
	aclr => \dp_clr_pos~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cont_pos|i\(0));

-- Location: LCCOMB_X15_Y35_N0
\cont_pos|i[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cont_pos|i[1]~0_combout\ = \cont_pos|i\(1) $ (((\dp_cnt_pos~combout\ & \cont_pos|i\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp_cnt_pos~combout\,
	datab => \cont_pos|i\(0),
	datac => \cont_pos|i\(1),
	combout => \cont_pos|i[1]~0_combout\);

-- Location: LCFF_X15_Y35_N1
\cont_pos|i[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \dp_clk~clkctrl_outclk\,
	datain => \cont_pos|i[1]~0_combout\,
	aclr => \dp_clr_pos~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cont_pos|i\(1));

-- Location: LCCOMB_X15_Y35_N30
\cont_pos|i[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \cont_pos|i[2]~4_combout\ = \cont_pos|i\(2) $ (((\dp_cnt_pos~combout\ & (\cont_pos|i\(0) & \cont_pos|i\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp_cnt_pos~combout\,
	datab => \cont_pos|i\(0),
	datac => \cont_pos|i\(2),
	datad => \cont_pos|i\(1),
	combout => \cont_pos|i[2]~4_combout\);

-- Location: LCFF_X15_Y35_N31
\cont_pos|i[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \dp_clk~clkctrl_outclk\,
	datain => \cont_pos|i[2]~4_combout\,
	aclr => \dp_clr_pos~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cont_pos|i\(2));

-- Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dp_q0moeda[7]~I\ : cycloneii_io
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
	padio => ww_dp_q0moeda(7),
	combout => \dp_q0moeda~combout\(7));

-- Location: LCCOMB_X19_Y35_N6
\mux2_q0|mux2_output~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux2_q0|mux2_output~18_combout\ = (\mux2_q0|mux2_output~17_combout\ & ((\dp_q0moeda~combout\(15)) # ((!\cont_pos|i\(2))))) # (!\mux2_q0|mux2_output~17_combout\ & (((\cont_pos|i\(2) & \dp_q0moeda~combout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux2_q0|mux2_output~17_combout\,
	datab => \dp_q0moeda~combout\(15),
	datac => \cont_pos|i\(2),
	datad => \dp_q0moeda~combout\(7),
	combout => \mux2_q0|mux2_output~18_combout\);

-- Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dp_q0moeda[10]~I\ : cycloneii_io
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
	padio => ww_dp_q0moeda(10),
	combout => \dp_q0moeda~combout\(10));

-- Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dp_q0moeda[2]~I\ : cycloneii_io
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
	padio => ww_dp_q0moeda(2),
	combout => \dp_q0moeda~combout\(2));

-- Location: LCCOMB_X36_Y35_N26
\mux2_q0|mux2_output~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux2_q0|mux2_output~10_combout\ = (\cont_pos|i\(3) & ((\dp_q0moeda~combout\(10)) # ((\cont_pos|i\(2))))) # (!\cont_pos|i\(3) & (((!\cont_pos|i\(2) & \dp_q0moeda~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont_pos|i\(3),
	datab => \dp_q0moeda~combout\(10),
	datac => \cont_pos|i\(2),
	datad => \dp_q0moeda~combout\(2),
	combout => \mux2_q0|mux2_output~10_combout\);

-- Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dp_q0moeda[14]~I\ : cycloneii_io
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
	padio => ww_dp_q0moeda(14),
	combout => \dp_q0moeda~combout\(14));

-- Location: LCCOMB_X36_Y35_N28
\mux2_q0|mux2_output~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux2_q0|mux2_output~11_combout\ = (\mux2_q0|mux2_output~10_combout\ & (((\dp_q0moeda~combout\(14)) # (!\cont_pos|i\(2))))) # (!\mux2_q0|mux2_output~10_combout\ & (\dp_q0moeda~combout\(6) & (\cont_pos|i\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp_q0moeda~combout\(6),
	datab => \mux2_q0|mux2_output~10_combout\,
	datac => \cont_pos|i\(2),
	datad => \dp_q0moeda~combout\(14),
	combout => \mux2_q0|mux2_output~11_combout\);

-- Location: LCCOMB_X36_Y35_N24
\mux2_q0|mux2_output~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux2_q0|mux2_output~19_combout\ = (\mux2_q0|mux2_output~16_combout\ & ((\mux2_q0|mux2_output~18_combout\) # ((!\cont_pos|i\(1))))) # (!\mux2_q0|mux2_output~16_combout\ & (((\cont_pos|i\(1) & \mux2_q0|mux2_output~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux2_q0|mux2_output~16_combout\,
	datab => \mux2_q0|mux2_output~18_combout\,
	datac => \cont_pos|i\(1),
	datad => \mux2_q0|mux2_output~11_combout\,
	combout => \mux2_q0|mux2_output~19_combout\);

-- Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dp_q0obst[14]~I\ : cycloneii_io
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
	padio => ww_dp_q0obst(14),
	combout => \dp_q0obst~combout\(14));

-- Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dp_q0obst[15]~I\ : cycloneii_io
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
	padio => ww_dp_q0obst(15),
	combout => \dp_q0obst~combout\(15));

-- Location: LCCOMB_X36_Y35_N18
\mux2_q0|mux2_output~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux2_q0|mux2_output~8_combout\ = (\mux2_q0|mux2_output~7_combout\ & (((\dp_q0obst~combout\(15)) # (!\cont_pos|i\(1))))) # (!\mux2_q0|mux2_output~7_combout\ & (\dp_q0obst~combout\(14) & (\cont_pos|i\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux2_q0|mux2_output~7_combout\,
	datab => \dp_q0obst~combout\(14),
	datac => \cont_pos|i\(1),
	datad => \dp_q0obst~combout\(15),
	combout => \mux2_q0|mux2_output~8_combout\);

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dp_q0obst[10]~I\ : cycloneii_io
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
	padio => ww_dp_q0obst(10),
	combout => \dp_q0obst~combout\(10));

-- Location: PIN_F17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dp_q0obst[9]~I\ : cycloneii_io
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
	padio => ww_dp_q0obst(9),
	combout => \dp_q0obst~combout\(9));

-- Location: LCCOMB_X44_Y35_N20
\mux2_q0|mux2_output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux2_q0|mux2_output~0_combout\ = (\cont_pos|i\(1) & (((\cont_pos|i\(0))))) # (!\cont_pos|i\(1) & ((\cont_pos|i\(0) & ((\dp_q0obst~combout\(9)))) # (!\cont_pos|i\(0) & (\dp_q0obst~combout\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp_q0obst~combout\(8),
	datab => \cont_pos|i\(1),
	datac => \cont_pos|i\(0),
	datad => \dp_q0obst~combout\(9),
	combout => \mux2_q0|mux2_output~0_combout\);

-- Location: LCCOMB_X36_Y35_N4
\mux2_q0|mux2_output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux2_q0|mux2_output~1_combout\ = (\cont_pos|i\(1) & ((\mux2_q0|mux2_output~0_combout\ & (\dp_q0obst~combout\(11))) # (!\mux2_q0|mux2_output~0_combout\ & ((\dp_q0obst~combout\(10)))))) # (!\cont_pos|i\(1) & (((\mux2_q0|mux2_output~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp_q0obst~combout\(11),
	datab => \dp_q0obst~combout\(10),
	datac => \cont_pos|i\(1),
	datad => \mux2_q0|mux2_output~0_combout\,
	combout => \mux2_q0|mux2_output~1_combout\);

-- Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dp_q0obst[0]~I\ : cycloneii_io
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
	padio => ww_dp_q0obst(0),
	combout => \dp_q0obst~combout\(0));

-- Location: LCCOMB_X44_Y35_N2
\mux2_q0|mux2_output~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux2_q0|mux2_output~4_combout\ = (\cont_pos|i\(1) & ((\dp_q0obst~combout\(2)) # ((\cont_pos|i\(0))))) # (!\cont_pos|i\(1) & (((!\cont_pos|i\(0) & \dp_q0obst~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp_q0obst~combout\(2),
	datab => \cont_pos|i\(1),
	datac => \cont_pos|i\(0),
	datad => \dp_q0obst~combout\(0),
	combout => \mux2_q0|mux2_output~4_combout\);

-- Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dp_q0obst[3]~I\ : cycloneii_io
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
	padio => ww_dp_q0obst(3),
	combout => \dp_q0obst~combout\(3));

-- Location: LCCOMB_X44_Y35_N12
\mux2_q0|mux2_output~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux2_q0|mux2_output~5_combout\ = (\mux2_q0|mux2_output~4_combout\ & (((\dp_q0obst~combout\(3)) # (!\cont_pos|i\(0))))) # (!\mux2_q0|mux2_output~4_combout\ & (\dp_q0obst~combout\(1) & (\cont_pos|i\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp_q0obst~combout\(1),
	datab => \mux2_q0|mux2_output~4_combout\,
	datac => \cont_pos|i\(0),
	datad => \dp_q0obst~combout\(3),
	combout => \mux2_q0|mux2_output~5_combout\);

-- Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dp_q0obst[6]~I\ : cycloneii_io
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
	padio => ww_dp_q0obst(6),
	combout => \dp_q0obst~combout\(6));

-- Location: LCCOMB_X44_Y35_N18
\mux2_q0|mux2_output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux2_q0|mux2_output~2_combout\ = (\cont_pos|i\(1) & (((\cont_pos|i\(0)) # (\dp_q0obst~combout\(6))))) # (!\cont_pos|i\(1) & (\dp_q0obst~combout\(4) & (!\cont_pos|i\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp_q0obst~combout\(4),
	datab => \cont_pos|i\(1),
	datac => \cont_pos|i\(0),
	datad => \dp_q0obst~combout\(6),
	combout => \mux2_q0|mux2_output~2_combout\);

-- Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dp_q0obst[5]~I\ : cycloneii_io
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
	padio => ww_dp_q0obst(5),
	combout => \dp_q0obst~combout\(5));

-- Location: LCCOMB_X44_Y35_N8
\mux2_q0|mux2_output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux2_q0|mux2_output~3_combout\ = (\mux2_q0|mux2_output~2_combout\ & ((\dp_q0obst~combout\(7)) # ((!\cont_pos|i\(0))))) # (!\mux2_q0|mux2_output~2_combout\ & (((\cont_pos|i\(0) & \dp_q0obst~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp_q0obst~combout\(7),
	datab => \mux2_q0|mux2_output~2_combout\,
	datac => \cont_pos|i\(0),
	datad => \dp_q0obst~combout\(5),
	combout => \mux2_q0|mux2_output~3_combout\);

-- Location: LCCOMB_X36_Y35_N22
\mux2_q0|mux2_output~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux2_q0|mux2_output~6_combout\ = (\cont_pos|i\(3) & (\cont_pos|i\(2))) # (!\cont_pos|i\(3) & ((\cont_pos|i\(2) & ((\mux2_q0|mux2_output~3_combout\))) # (!\cont_pos|i\(2) & (\mux2_q0|mux2_output~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont_pos|i\(3),
	datab => \cont_pos|i\(2),
	datac => \mux2_q0|mux2_output~5_combout\,
	datad => \mux2_q0|mux2_output~3_combout\,
	combout => \mux2_q0|mux2_output~6_combout\);

-- Location: LCCOMB_X36_Y35_N16
\mux2_q0|mux2_output~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux2_q0|mux2_output~9_combout\ = (\cont_pos|i\(3) & ((\mux2_q0|mux2_output~6_combout\ & (\mux2_q0|mux2_output~8_combout\)) # (!\mux2_q0|mux2_output~6_combout\ & ((\mux2_q0|mux2_output~1_combout\))))) # (!\cont_pos|i\(3) & 
-- (((\mux2_q0|mux2_output~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont_pos|i\(3),
	datab => \mux2_q0|mux2_output~8_combout\,
	datac => \mux2_q0|mux2_output~1_combout\,
	datad => \mux2_q0|mux2_output~6_combout\,
	combout => \mux2_q0|mux2_output~9_combout\);

-- Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dp_cnt_obj~I\ : cycloneii_io
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
	padio => ww_dp_cnt_obj,
	combout => \dp_cnt_obj~combout\);

-- Location: LCCOMB_X23_Y35_N28
\cont_obj|cnt[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cont_obj|cnt[0]~0_combout\ = \cont_obj|cnt\(0) $ (\dp_cnt_obj~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cont_obj|cnt\(0),
	datad => \dp_cnt_obj~combout\,
	combout => \cont_obj|cnt[0]~0_combout\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dp_clr_obj~I\ : cycloneii_io
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
	padio => ww_dp_clr_obj,
	combout => \dp_clr_obj~combout\);

-- Location: CLKCTRL_G11
\dp_clr_obj~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \dp_clr_obj~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \dp_clr_obj~clkctrl_outclk\);

-- Location: LCFF_X23_Y35_N29
\cont_obj|cnt[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \dp_clk~clkctrl_outclk\,
	datain => \cont_obj|cnt[0]~0_combout\,
	aclr => \dp_clr_obj~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cont_obj|cnt\(0));

-- Location: LCCOMB_X36_Y35_N2
\mux2_q0|mux2_output~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux2_q0|mux2_output~20_combout\ = (\cont_obj|cnt\(0) & ((\mux2_q0|mux2_output~9_combout\))) # (!\cont_obj|cnt\(0) & (\mux2_q0|mux2_output~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux2_q0|mux2_output~19_combout\,
	datac => \mux2_q0|mux2_output~9_combout\,
	datad => \cont_obj|cnt\(0),
	combout => \mux2_q0|mux2_output~20_combout\);

-- Location: LCCOMB_X15_Y35_N6
\cont_pos|i[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \cont_pos|i[3]~2_combout\ = (\dp_cnt_pos~combout\ & (\cont_pos|i\(1) & (\cont_pos|i\(0) & \cont_pos|i\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp_cnt_pos~combout\,
	datab => \cont_pos|i\(1),
	datac => \cont_pos|i\(0),
	datad => \cont_pos|i\(2),
	combout => \cont_pos|i[3]~2_combout\);

-- Location: LCCOMB_X15_Y35_N12
\cont_pos|i[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \cont_pos|i[3]~3_combout\ = \cont_pos|i\(3) $ (\cont_pos|i[3]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cont_pos|i\(3),
	datad => \cont_pos|i[3]~2_combout\,
	combout => \cont_pos|i[3]~3_combout\);

-- Location: LCFF_X15_Y35_N13
\cont_pos|i[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \dp_clk~clkctrl_outclk\,
	datain => \cont_pos|i[3]~3_combout\,
	aclr => \dp_clr_pos~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cont_pos|i\(3));

-- Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dp_q1moeda[11]~I\ : cycloneii_io
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
	padio => ww_dp_q1moeda(11),
	combout => \dp_q1moeda~combout\(11));

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dp_q1moeda[15]~I\ : cycloneii_io
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
	padio => ww_dp_q1moeda(15),
	combout => \dp_q1moeda~combout\(15));

-- Location: LCCOMB_X23_Y35_N18
\mux2_q1|mux2_output~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux2_q1|mux2_output~18_combout\ = (\mux2_q1|mux2_output~17_combout\ & (((\dp_q1moeda~combout\(15))) # (!\cont_pos|i\(3)))) # (!\mux2_q1|mux2_output~17_combout\ & (\cont_pos|i\(3) & (\dp_q1moeda~combout\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux2_q1|mux2_output~17_combout\,
	datab => \cont_pos|i\(3),
	datac => \dp_q1moeda~combout\(11),
	datad => \dp_q1moeda~combout\(15),
	combout => \mux2_q1|mux2_output~18_combout\);

-- Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dp_q1moeda[8]~I\ : cycloneii_io
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
	padio => ww_dp_q1moeda(8),
	combout => \dp_q1moeda~combout\(8));

-- Location: LCCOMB_X19_Y35_N0
\mux2_q1|mux2_output~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux2_q1|mux2_output~14_combout\ = (\cont_pos|i\(3) & (((\cont_pos|i\(2)) # (\dp_q1moeda~combout\(8))))) # (!\cont_pos|i\(3) & (\dp_q1moeda~combout\(0) & (!\cont_pos|i\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp_q1moeda~combout\(0),
	datab => \cont_pos|i\(3),
	datac => \cont_pos|i\(2),
	datad => \dp_q1moeda~combout\(8),
	combout => \mux2_q1|mux2_output~14_combout\);

-- Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dp_q1moeda[4]~I\ : cycloneii_io
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
	padio => ww_dp_q1moeda(4),
	combout => \dp_q1moeda~combout\(4));

-- Location: LCCOMB_X19_Y35_N10
\mux2_q1|mux2_output~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux2_q1|mux2_output~15_combout\ = (\mux2_q1|mux2_output~14_combout\ & ((\dp_q1moeda~combout\(12)) # ((!\cont_pos|i\(2))))) # (!\mux2_q1|mux2_output~14_combout\ & (((\cont_pos|i\(2) & \dp_q1moeda~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp_q1moeda~combout\(12),
	datab => \mux2_q1|mux2_output~14_combout\,
	datac => \cont_pos|i\(2),
	datad => \dp_q1moeda~combout\(4),
	combout => \mux2_q1|mux2_output~15_combout\);

-- Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dp_q1moeda[10]~I\ : cycloneii_io
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
	padio => ww_dp_q1moeda(10),
	combout => \dp_q1moeda~combout\(10));

-- Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dp_q1moeda[14]~I\ : cycloneii_io
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
	padio => ww_dp_q1moeda(14),
	combout => \dp_q1moeda~combout\(14));

-- Location: LCCOMB_X23_Y35_N8
\mux2_q1|mux2_output~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux2_q1|mux2_output~13_combout\ = (\mux2_q1|mux2_output~12_combout\ & (((\dp_q1moeda~combout\(14))) # (!\cont_pos|i\(3)))) # (!\mux2_q1|mux2_output~12_combout\ & (\cont_pos|i\(3) & (\dp_q1moeda~combout\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux2_q1|mux2_output~12_combout\,
	datab => \cont_pos|i\(3),
	datac => \dp_q1moeda~combout\(10),
	datad => \dp_q1moeda~combout\(14),
	combout => \mux2_q1|mux2_output~13_combout\);

-- Location: LCCOMB_X23_Y35_N14
\mux2_q1|mux2_output~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux2_q1|mux2_output~16_combout\ = (\cont_pos|i\(1) & (((\mux2_q1|mux2_output~13_combout\) # (\cont_pos|i\(0))))) # (!\cont_pos|i\(1) & (\mux2_q1|mux2_output~15_combout\ & ((!\cont_pos|i\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont_pos|i\(1),
	datab => \mux2_q1|mux2_output~15_combout\,
	datac => \mux2_q1|mux2_output~13_combout\,
	datad => \cont_pos|i\(0),
	combout => \mux2_q1|mux2_output~16_combout\);

-- Location: LCCOMB_X23_Y35_N24
\mux2_q1|mux2_output~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux2_q1|mux2_output~19_combout\ = (\mux2_q1|mux2_output~16_combout\ & (((\mux2_q1|mux2_output~18_combout\) # (!\cont_pos|i\(0))))) # (!\mux2_q1|mux2_output~16_combout\ & (\mux2_q1|mux2_output~11_combout\ & ((\cont_pos|i\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux2_q1|mux2_output~11_combout\,
	datab => \mux2_q1|mux2_output~18_combout\,
	datac => \mux2_q1|mux2_output~16_combout\,
	datad => \cont_pos|i\(0),
	combout => \mux2_q1|mux2_output~19_combout\);

-- Location: PIN_G9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dp_q1obst[2]~I\ : cycloneii_io
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
	padio => ww_dp_q1obst(2),
	combout => \dp_q1obst~combout\(2));

-- Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dp_q1obst[0]~I\ : cycloneii_io
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
	padio => ww_dp_q1obst(0),
	combout => \dp_q1obst~combout\(0));

-- Location: LCCOMB_X15_Y35_N28
\mux2_q1|mux2_output~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux2_q1|mux2_output~4_combout\ = (\cont_pos|i\(1) & (((\cont_pos|i\(0))))) # (!\cont_pos|i\(1) & ((\cont_pos|i\(0) & (\dp_q1obst~combout\(1))) # (!\cont_pos|i\(0) & ((\dp_q1obst~combout\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp_q1obst~combout\(1),
	datab => \cont_pos|i\(1),
	datac => \dp_q1obst~combout\(0),
	datad => \cont_pos|i\(0),
	combout => \mux2_q1|mux2_output~4_combout\);

-- Location: LCCOMB_X15_Y35_N18
\mux2_q1|mux2_output~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux2_q1|mux2_output~5_combout\ = (\cont_pos|i\(1) & ((\mux2_q1|mux2_output~4_combout\ & (\dp_q1obst~combout\(3))) # (!\mux2_q1|mux2_output~4_combout\ & ((\dp_q1obst~combout\(2)))))) # (!\cont_pos|i\(1) & (((\mux2_q1|mux2_output~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp_q1obst~combout\(3),
	datab => \cont_pos|i\(1),
	datac => \dp_q1obst~combout\(2),
	datad => \mux2_q1|mux2_output~4_combout\,
	combout => \mux2_q1|mux2_output~5_combout\);

-- Location: LCCOMB_X15_Y35_N16
\mux2_q1|mux2_output~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux2_q1|mux2_output~6_combout\ = (\cont_pos|i\(3) & ((\mux2_q1|mux2_output~3_combout\) # ((\cont_pos|i\(2))))) # (!\cont_pos|i\(3) & (((\mux2_q1|mux2_output~5_combout\ & !\cont_pos|i\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux2_q1|mux2_output~3_combout\,
	datab => \mux2_q1|mux2_output~5_combout\,
	datac => \cont_pos|i\(3),
	datad => \cont_pos|i\(2),
	combout => \mux2_q1|mux2_output~6_combout\);

-- Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dp_q1obst[7]~I\ : cycloneii_io
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
	padio => ww_dp_q1obst(7),
	combout => \dp_q1obst~combout\(7));

-- Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dp_q1obst[6]~I\ : cycloneii_io
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
	padio => ww_dp_q1obst(6),
	combout => \dp_q1obst~combout\(6));

-- Location: LCCOMB_X15_Y35_N22
\mux2_q1|mux2_output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux2_q1|mux2_output~1_combout\ = (\mux2_q1|mux2_output~0_combout\ & (((\dp_q1obst~combout\(7))) # (!\cont_pos|i\(1)))) # (!\mux2_q1|mux2_output~0_combout\ & (\cont_pos|i\(1) & ((\dp_q1obst~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux2_q1|mux2_output~0_combout\,
	datab => \cont_pos|i\(1),
	datac => \dp_q1obst~combout\(7),
	datad => \dp_q1obst~combout\(6),
	combout => \mux2_q1|mux2_output~1_combout\);

-- Location: LCCOMB_X15_Y35_N2
\mux2_q1|mux2_output~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux2_q1|mux2_output~9_combout\ = (\cont_pos|i\(2) & ((\mux2_q1|mux2_output~6_combout\ & (\mux2_q1|mux2_output~8_combout\)) # (!\mux2_q1|mux2_output~6_combout\ & ((\mux2_q1|mux2_output~1_combout\))))) # (!\cont_pos|i\(2) & 
-- (((\mux2_q1|mux2_output~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux2_q1|mux2_output~8_combout\,
	datab => \cont_pos|i\(2),
	datac => \mux2_q1|mux2_output~6_combout\,
	datad => \mux2_q1|mux2_output~1_combout\,
	combout => \mux2_q1|mux2_output~9_combout\);

-- Location: LCCOMB_X23_Y35_N22
\mux2_q1|mux2_output~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux2_q1|mux2_output~20_combout\ = (\cont_obj|cnt\(0) & ((\mux2_q1|mux2_output~9_combout\))) # (!\cont_obj|cnt\(0) & (\mux2_q1|mux2_output~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux2_q1|mux2_output~19_combout\,
	datac => \cont_obj|cnt\(0),
	datad => \mux2_q1|mux2_output~9_combout\,
	combout => \mux2_q1|mux2_output~20_combout\);

-- Location: LCCOMB_X15_Y35_N8
\dp_pos_15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dp_pos_15~0_combout\ = (\cont_pos|i\(3) & (\cont_pos|i\(0) & (\cont_pos|i\(1) & \cont_pos|i\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont_pos|i\(3),
	datab => \cont_pos|i\(0),
	datac => \cont_pos|i\(1),
	datad => \cont_pos|i\(2),
	combout => \dp_pos_15~0_combout\);

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dp_clk~I\ : cycloneii_io
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
	padio => ww_dp_clk,
	combout => \dp_clk~combout\);

-- Location: CLKCTRL_G3
\dp_clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \dp_clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \dp_clk~clkctrl_outclk\);

-- Location: LCCOMB_X23_Y35_N12
\cont_obj|cnt[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cont_obj|cnt[1]~1_combout\ = \cont_obj|cnt\(1) $ (((\dp_cnt_obj~combout\ & \cont_obj|cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dp_cnt_obj~combout\,
	datac => \cont_obj|cnt\(1),
	datad => \cont_obj|cnt\(0),
	combout => \cont_obj|cnt[1]~1_combout\);

-- Location: LCFF_X23_Y35_N13
\cont_obj|cnt[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \dp_clk~clkctrl_outclk\,
	datain => \cont_obj|cnt[1]~1_combout\,
	aclr => \dp_clr_obj~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cont_obj|cnt\(1));

-- Location: PIN_AE3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dp_clr_linha~I\ : cycloneii_io
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
	padio => ww_dp_clr_linha,
	combout => \dp_clr_linha~combout\);

-- Location: PIN_AE2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dp_set_linha~I\ : cycloneii_io
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
	padio => ww_dp_set_linha,
	combout => \dp_set_linha~combout\);

-- Location: LCCOMB_X1_Y3_N2
\reg_linha|qi~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_linha|qi~1_combout\ = (!\dp_clr_linha~combout\ & ((\dp_set_linha~combout\) # (\reg_linha|qi~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp_clr_linha~combout\,
	datac => \dp_set_linha~combout\,
	datad => \reg_linha|qi~1_combout\,
	combout => \reg_linha|qi~1_combout\);

-- Location: LCCOMB_X1_Y3_N12
\reg_linha|qi~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_linha|qi~3_combout\ = \reg_linha|qi~1_combout\ $ (\reg_linha|qi~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg_linha|qi~1_combout\,
	datad => \reg_linha|qi~2_combout\,
	combout => \reg_linha|qi~3_combout\);

-- Location: LCCOMB_X1_Y3_N0
\reg_linha|qi~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_linha|qi~0_combout\ = (\dp_set_linha~combout\) # (\dp_clr_linha~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dp_set_linha~combout\,
	datad => \dp_clr_linha~combout\,
	combout => \reg_linha|qi~0_combout\);

-- Location: LCFF_X1_Y3_N13
\reg_linha|qi~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \dp_clk~clkctrl_outclk\,
	datain => \reg_linha|qi~3_combout\,
	aclr => \reg_linha|qi~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_linha|qi~_emulated_regout\);

-- Location: LCCOMB_X1_Y3_N30
\reg_linha|qi~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_linha|qi~2_combout\ = (!\dp_clr_linha~combout\ & ((\dp_set_linha~combout\) # (\reg_linha|qi~1_combout\ $ (\reg_linha|qi~_emulated_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp_clr_linha~combout\,
	datab => \reg_linha|qi~1_combout\,
	datac => \dp_set_linha~combout\,
	datad => \reg_linha|qi~_emulated_regout\,
	combout => \reg_linha|qi~2_combout\);

-- Location: PIN_T17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dp_en_timer~I\ : cycloneii_io
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
	padio => ww_dp_en_timer,
	combout => \dp_en_timer~combout\);

-- Location: LCCOMB_X64_Y15_N2
\timer|i[0]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \timer|i[0]~27_combout\ = \timer|i\(0) $ (\dp_en_timer~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \timer|i\(0),
	datad => \dp_en_timer~combout\,
	combout => \timer|i[0]~27_combout\);

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dp_clr_timer~I\ : cycloneii_io
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
	padio => ww_dp_clr_timer,
	combout => \dp_clr_timer~combout\);

-- Location: CLKCTRL_G1
\dp_clr_timer~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \dp_clr_timer~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \dp_clr_timer~clkctrl_outclk\);

-- Location: LCFF_X64_Y15_N3
\timer|i[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \dp_clk~clkctrl_outclk\,
	datain => \timer|i[0]~27_combout\,
	aclr => \dp_clr_timer~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer|i\(0));

-- Location: LCCOMB_X64_Y15_N6
\timer|i[1]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \timer|i[1]~9_combout\ = (\timer|i\(1) & (\timer|i\(0) $ (VCC))) # (!\timer|i\(1) & (\timer|i\(0) & VCC))
-- \timer|i[1]~10\ = CARRY((\timer|i\(1) & \timer|i\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer|i\(1),
	datab => \timer|i\(0),
	datad => VCC,
	combout => \timer|i[1]~9_combout\,
	cout => \timer|i[1]~10\);

-- Location: LCFF_X64_Y15_N7
\timer|i[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \dp_clk~clkctrl_outclk\,
	datain => \timer|i[1]~9_combout\,
	aclr => \dp_clr_timer~clkctrl_outclk\,
	ena => \dp_en_timer~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer|i\(1));

-- Location: LCCOMB_X64_Y15_N8
\timer|i[2]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \timer|i[2]~11_combout\ = (\timer|i\(2) & (!\timer|i[1]~10\)) # (!\timer|i\(2) & ((\timer|i[1]~10\) # (GND)))
-- \timer|i[2]~12\ = CARRY((!\timer|i[1]~10\) # (!\timer|i\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer|i\(2),
	datad => VCC,
	cin => \timer|i[1]~10\,
	combout => \timer|i[2]~11_combout\,
	cout => \timer|i[2]~12\);

-- Location: LCFF_X64_Y15_N9
\timer|i[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \dp_clk~clkctrl_outclk\,
	datain => \timer|i[2]~11_combout\,
	aclr => \dp_clr_timer~clkctrl_outclk\,
	ena => \dp_en_timer~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer|i\(2));

-- Location: LCCOMB_X64_Y15_N10
\timer|i[3]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \timer|i[3]~13_combout\ = (\timer|i\(3) & (\timer|i[2]~12\ $ (GND))) # (!\timer|i\(3) & (!\timer|i[2]~12\ & VCC))
-- \timer|i[3]~14\ = CARRY((\timer|i\(3) & !\timer|i[2]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer|i\(3),
	datad => VCC,
	cin => \timer|i[2]~12\,
	combout => \timer|i[3]~13_combout\,
	cout => \timer|i[3]~14\);

-- Location: LCFF_X64_Y15_N11
\timer|i[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \dp_clk~clkctrl_outclk\,
	datain => \timer|i[3]~13_combout\,
	aclr => \dp_clr_timer~clkctrl_outclk\,
	ena => \dp_en_timer~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer|i\(3));

-- Location: LCCOMB_X64_Y15_N12
\timer|i[4]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \timer|i[4]~15_combout\ = (\timer|i\(4) & (!\timer|i[3]~14\)) # (!\timer|i\(4) & ((\timer|i[3]~14\) # (GND)))
-- \timer|i[4]~16\ = CARRY((!\timer|i[3]~14\) # (!\timer|i\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer|i\(4),
	datad => VCC,
	cin => \timer|i[3]~14\,
	combout => \timer|i[4]~15_combout\,
	cout => \timer|i[4]~16\);

-- Location: LCFF_X64_Y15_N13
\timer|i[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \dp_clk~clkctrl_outclk\,
	datain => \timer|i[4]~15_combout\,
	aclr => \dp_clr_timer~clkctrl_outclk\,
	ena => \dp_en_timer~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer|i\(4));

-- Location: LCCOMB_X63_Y15_N16
\comp_t100|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comp_t100|LessThan0~0_combout\ = (!\timer|i\(3) & (!\timer|i\(4) & !\timer|i\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timer|i\(3),
	datac => \timer|i\(4),
	datad => \timer|i\(2),
	combout => \comp_t100|LessThan0~0_combout\);

-- Location: LCCOMB_X64_Y15_N14
\timer|i[5]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \timer|i[5]~17_combout\ = (\timer|i\(5) & (\timer|i[4]~16\ $ (GND))) # (!\timer|i\(5) & (!\timer|i[4]~16\ & VCC))
-- \timer|i[5]~18\ = CARRY((\timer|i\(5) & !\timer|i[4]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer|i\(5),
	datad => VCC,
	cin => \timer|i[4]~16\,
	combout => \timer|i[5]~17_combout\,
	cout => \timer|i[5]~18\);

-- Location: LCFF_X64_Y15_N15
\timer|i[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \dp_clk~clkctrl_outclk\,
	datain => \timer|i[5]~17_combout\,
	aclr => \dp_clr_timer~clkctrl_outclk\,
	ena => \dp_en_timer~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer|i\(5));

-- Location: LCCOMB_X64_Y15_N16
\timer|i[6]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \timer|i[6]~19_combout\ = (\timer|i\(6) & (!\timer|i[5]~18\)) # (!\timer|i\(6) & ((\timer|i[5]~18\) # (GND)))
-- \timer|i[6]~20\ = CARRY((!\timer|i[5]~18\) # (!\timer|i\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer|i\(6),
	datad => VCC,
	cin => \timer|i[5]~18\,
	combout => \timer|i[6]~19_combout\,
	cout => \timer|i[6]~20\);

-- Location: LCCOMB_X64_Y15_N18
\timer|i[7]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \timer|i[7]~21_combout\ = (\timer|i\(7) & (\timer|i[6]~20\ $ (GND))) # (!\timer|i\(7) & (!\timer|i[6]~20\ & VCC))
-- \timer|i[7]~22\ = CARRY((\timer|i\(7) & !\timer|i[6]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer|i\(7),
	datad => VCC,
	cin => \timer|i[6]~20\,
	combout => \timer|i[7]~21_combout\,
	cout => \timer|i[7]~22\);

-- Location: LCFF_X64_Y15_N19
\timer|i[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \dp_clk~clkctrl_outclk\,
	datain => \timer|i[7]~21_combout\,
	aclr => \dp_clr_timer~clkctrl_outclk\,
	ena => \dp_en_timer~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer|i\(7));

-- Location: LCCOMB_X64_Y15_N20
\timer|i[8]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \timer|i[8]~23_combout\ = (\timer|i\(8) & (!\timer|i[7]~22\)) # (!\timer|i\(8) & ((\timer|i[7]~22\) # (GND)))
-- \timer|i[8]~24\ = CARRY((!\timer|i[7]~22\) # (!\timer|i\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer|i\(8),
	datad => VCC,
	cin => \timer|i[7]~22\,
	combout => \timer|i[8]~23_combout\,
	cout => \timer|i[8]~24\);

-- Location: LCCOMB_X64_Y15_N22
\timer|i[9]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \timer|i[9]~25_combout\ = \timer|i[8]~24\ $ (!\timer|i\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \timer|i\(9),
	cin => \timer|i[8]~24\,
	combout => \timer|i[9]~25_combout\);

-- Location: LCFF_X64_Y15_N23
\timer|i[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \dp_clk~clkctrl_outclk\,
	datain => \timer|i[9]~25_combout\,
	aclr => \dp_clr_timer~clkctrl_outclk\,
	ena => \dp_en_timer~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer|i\(9));

-- Location: LCFF_X64_Y15_N21
\timer|i[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \dp_clk~clkctrl_outclk\,
	datain => \timer|i[8]~23_combout\,
	aclr => \dp_clr_timer~clkctrl_outclk\,
	ena => \dp_en_timer~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer|i\(8));

-- Location: LCCOMB_X64_Y15_N28
\comp_t40|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comp_t40|LessThan0~0_combout\ = (!\timer|i\(6) & (!\timer|i\(9) & (!\timer|i\(8) & !\timer|i\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer|i\(6),
	datab => \timer|i\(9),
	datac => \timer|i\(8),
	datad => \timer|i\(7),
	combout => \comp_t40|LessThan0~0_combout\);

-- Location: LCCOMB_X64_Y15_N26
\comp_t2|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comp_t2|LessThan0~0_combout\ = (\timer|i\(1)) # (((\timer|i\(5)) # (!\comp_t40|LessThan0~0_combout\)) # (!\comp_t100|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer|i\(1),
	datab => \comp_t100|LessThan0~0_combout\,
	datac => \timer|i\(5),
	datad => \comp_t40|LessThan0~0_combout\,
	combout => \comp_t2|LessThan0~0_combout\);

-- Location: LCCOMB_X64_Y15_N0
\comp_t40|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \comp_t40|LessThan0~1_combout\ = (\comp_t40|LessThan0~0_combout\ & (((!\timer|i\(4) & !\timer|i\(3))) # (!\timer|i\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer|i\(4),
	datab => \timer|i\(3),
	datac => \timer|i\(5),
	datad => \comp_t40|LessThan0~0_combout\,
	combout => \comp_t40|LessThan0~1_combout\);

-- Location: LCCOMB_X64_Y15_N24
\comp_t40|LessThan0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \comp_t40|LessThan0~2_combout\ = (!\timer|i\(9) & (!\timer|i\(8) & !\timer|i\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timer|i\(9),
	datac => \timer|i\(8),
	datad => \timer|i\(7),
	combout => \comp_t40|LessThan0~2_combout\);

-- Location: LCFF_X64_Y15_N17
\timer|i[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \dp_clk~clkctrl_outclk\,
	datain => \timer|i[6]~19_combout\,
	aclr => \dp_clr_timer~clkctrl_outclk\,
	ena => \dp_en_timer~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer|i\(6));

-- Location: LCCOMB_X64_Y15_N30
\comp_t100|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \comp_t100|LessThan0~1_combout\ = (\comp_t40|LessThan0~2_combout\ & (((\comp_t100|LessThan0~0_combout\) # (!\timer|i\(6))) # (!\timer|i\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comp_t40|LessThan0~2_combout\,
	datab => \timer|i\(5),
	datac => \timer|i\(6),
	datad => \comp_t100|LessThan0~0_combout\,
	combout => \comp_t100|LessThan0~1_combout\);

-- Location: LCCOMB_X63_Y15_N14
\comp_t1000|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comp_t1000|LessThan0~0_combout\ = (((!\timer|i\(4) & !\timer|i\(3))) # (!\timer|i\(5))) # (!\timer|i\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer|i\(6),
	datab => \timer|i\(4),
	datac => \timer|i\(3),
	datad => \timer|i\(5),
	combout => \comp_t1000|LessThan0~0_combout\);

-- Location: LCCOMB_X64_Y15_N4
\comp_t1000|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \comp_t1000|LessThan0~1_combout\ = (\comp_t1000|LessThan0~0_combout\) # (((!\timer|i\(7)) # (!\timer|i\(8))) # (!\timer|i\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comp_t1000|LessThan0~0_combout\,
	datab => \timer|i\(9),
	datac => \timer|i\(8),
	datad => \timer|i\(7),
	combout => \comp_t1000|LessThan0~1_combout\);

-- Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dp_q0_pos~I\ : cycloneii_io
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
	datain => \mux2_q0|mux2_output~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dp_q0_pos);

-- Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dp_q1_pos~I\ : cycloneii_io
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
	datain => \mux2_q1|mux2_output~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dp_q1_pos);

-- Location: PIN_D7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dp_pos_15~I\ : cycloneii_io
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
	datain => \dp_pos_15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dp_pos_15);

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dp_obj[0]~I\ : cycloneii_io
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
	datain => \cont_obj|cnt\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dp_obj(0));

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dp_obj[1]~I\ : cycloneii_io
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
	datain => \cont_obj|cnt\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dp_obj(1));

-- Location: PIN_AB4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dp_linha~I\ : cycloneii_io
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
	datain => \reg_linha|qi~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dp_linha);

-- Location: PIN_T24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dp_t2~I\ : cycloneii_io
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
	datain => \comp_t2|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dp_t2);

-- Location: PIN_P17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dp_t40~I\ : cycloneii_io
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
	datain => \comp_t40|ALT_INV_LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dp_t40);

-- Location: PIN_R17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dp_t100~I\ : cycloneii_io
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
	datain => \comp_t100|ALT_INV_LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dp_t100);

-- Location: PIN_T25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dp_t1000~I\ : cycloneii_io
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
	datain => \comp_t1000|ALT_INV_LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dp_t1000);
END structure;


