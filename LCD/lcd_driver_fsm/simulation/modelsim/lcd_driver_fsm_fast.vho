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

-- DATE "12/15/2022 15:56:33"

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

ENTITY 	lcd_driver_fsm IS
    PORT (
	fsm_clk : IN std_logic;
	fsm_cmd : IN std_logic_vector(2 DOWNTO 0);
	fsm_q0_pos : IN std_logic;
	fsm_q1_pos : IN std_logic;
	fsm_player_pos : IN std_logic;
	fsm_pos : IN std_logic;
	fsm_linha : IN std_logic;
	fsm_t2 : IN std_logic;
	fsm_t40 : IN std_logic;
	fsm_t100 : IN std_logic;
	fsm_t1000 : IN std_logic;
	fsm_obj : IN std_logic_vector(1 DOWNTO 0);
	fsm_render : IN std_logic;
	fsm_clr_pos : OUT std_logic;
	fsm_en_pos : OUT std_logic;
	fsm_clr_linha : OUT std_logic;
	fsm_set_linha : OUT std_logic;
	fsm_clr_timer : OUT std_logic;
	fsm_en_timer : OUT std_logic;
	fsm_clr_obj : OUT std_logic;
	fsm_en_obj : OUT std_logic;
	fsm_en_E : OUT std_logic;
	fsm_finish : OUT std_logic;
	fsm_rs : OUT std_logic;
	fsm_dt : OUT std_logic_vector(7 DOWNTO 0)
	);
END lcd_driver_fsm;

-- Design Ports Information
-- fsm_clr_pos	=>  Location: PIN_J22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- fsm_en_pos	=>  Location: PIN_G21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- fsm_clr_linha	=>  Location: PIN_K17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- fsm_set_linha	=>  Location: PIN_C24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- fsm_clr_timer	=>  Location: PIN_D26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- fsm_en_timer	=>  Location: PIN_F24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- fsm_clr_obj	=>  Location: PIN_A21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- fsm_en_obj	=>  Location: PIN_D25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- fsm_en_E	=>  Location: PIN_B23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- fsm_finish	=>  Location: PIN_E25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- fsm_rs	=>  Location: PIN_J21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- fsm_dt[0]	=>  Location: PIN_G22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- fsm_dt[1]	=>  Location: PIN_B22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- fsm_dt[2]	=>  Location: PIN_A22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- fsm_dt[3]	=>  Location: PIN_B21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- fsm_dt[4]	=>  Location: PIN_E23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- fsm_dt[5]	=>  Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- fsm_dt[6]	=>  Location: PIN_C21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- fsm_dt[7]	=>  Location: PIN_F21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- fsm_linha	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- fsm_clk	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- fsm_render	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- fsm_pos	=>  Location: PIN_H21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- fsm_t1000	=>  Location: PIN_A23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- fsm_t100	=>  Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- fsm_t2	=>  Location: PIN_D23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- fsm_t40	=>  Location: PIN_B24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- fsm_obj[1]	=>  Location: PIN_E26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- fsm_q0_pos	=>  Location: PIN_C25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- fsm_q1_pos	=>  Location: PIN_E24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- fsm_cmd[0]	=>  Location: PIN_B25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- fsm_cmd[1]	=>  Location: PIN_C22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- fsm_cmd[2]	=>  Location: PIN_C23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- fsm_player_pos	=>  Location: PIN_D21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- fsm_obj[0]	=>  Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF lcd_driver_fsm IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_fsm_clk : std_logic;
SIGNAL ww_fsm_cmd : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_fsm_q0_pos : std_logic;
SIGNAL ww_fsm_q1_pos : std_logic;
SIGNAL ww_fsm_player_pos : std_logic;
SIGNAL ww_fsm_pos : std_logic;
SIGNAL ww_fsm_linha : std_logic;
SIGNAL ww_fsm_t2 : std_logic;
SIGNAL ww_fsm_t40 : std_logic;
SIGNAL ww_fsm_t100 : std_logic;
SIGNAL ww_fsm_t1000 : std_logic;
SIGNAL ww_fsm_obj : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_fsm_render : std_logic;
SIGNAL ww_fsm_clr_pos : std_logic;
SIGNAL ww_fsm_en_pos : std_logic;
SIGNAL ww_fsm_clr_linha : std_logic;
SIGNAL ww_fsm_set_linha : std_logic;
SIGNAL ww_fsm_clr_timer : std_logic;
SIGNAL ww_fsm_en_timer : std_logic;
SIGNAL ww_fsm_clr_obj : std_logic;
SIGNAL ww_fsm_en_obj : std_logic;
SIGNAL ww_fsm_en_E : std_logic;
SIGNAL ww_fsm_finish : std_logic;
SIGNAL ww_fsm_rs : std_logic;
SIGNAL ww_fsm_dt : std_logic_vector(7 DOWNTO 0);
SIGNAL \fsm_clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \fsm_clk~combout\ : std_logic;
SIGNAL \fsm_clk~clkctrl_outclk\ : std_logic;
SIGNAL \fsm_linha~combout\ : std_logic;
SIGNAL \fsm_pos~combout\ : std_logic;
SIGNAL \fsm_q0_pos~combout\ : std_logic;
SIGNAL \prox_estado.s28~0_combout\ : std_logic;
SIGNAL \atual_estado.s28~regout\ : std_logic;
SIGNAL \fsm_player_pos~combout\ : std_logic;
SIGNAL \prox_estado.s33~0_combout\ : std_logic;
SIGNAL \atual_estado.s33~regout\ : std_logic;
SIGNAL \prox_estado.s35~0_combout\ : std_logic;
SIGNAL \atual_estado.s35~regout\ : std_logic;
SIGNAL \Selector11~0_combout\ : std_logic;
SIGNAL \atual_estado.s34~regout\ : std_logic;
SIGNAL \fsm_t40~combout\ : std_logic;
SIGNAL \fsm_render~combout\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL \atual_estado.s37~regout\ : std_logic;
SIGNAL \prox_estado.s48~0_combout\ : std_logic;
SIGNAL \atual_estado.s48~regout\ : std_logic;
SIGNAL \atual_estado.s49~regout\ : std_logic;
SIGNAL \atual_estado.s50~regout\ : std_logic;
SIGNAL \atual_estado.s51~regout\ : std_logic;
SIGNAL \prox_estado.s38~0_combout\ : std_logic;
SIGNAL \atual_estado.s38~regout\ : std_logic;
SIGNAL \atual_estado.s39~regout\ : std_logic;
SIGNAL \prox_estado.s41~0_combout\ : std_logic;
SIGNAL \atual_estado.s41~regout\ : std_logic;
SIGNAL \prox_estado.s42~combout\ : std_logic;
SIGNAL \atual_estado.s42~regout\ : std_logic;
SIGNAL \fsm_t2~combout\ : std_logic;
SIGNAL \fsm_t100~combout\ : std_logic;
SIGNAL \fsm_t1000~combout\ : std_logic;
SIGNAL \atual_estado.s0~feeder_combout\ : std_logic;
SIGNAL \atual_estado.s0~regout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \atual_estado.s1~regout\ : std_logic;
SIGNAL \prox_estado.s2~0_combout\ : std_logic;
SIGNAL \atual_estado.s2~regout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \atual_estado.s3~regout\ : std_logic;
SIGNAL \prox_estado.s4~0_combout\ : std_logic;
SIGNAL \atual_estado.s4~regout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \atual_estado.s5~regout\ : std_logic;
SIGNAL \prox_estado.s6~0_combout\ : std_logic;
SIGNAL \atual_estado.s6~regout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \atual_estado.s7~regout\ : std_logic;
SIGNAL \prox_estado.s8~0_combout\ : std_logic;
SIGNAL \atual_estado.s8~regout\ : std_logic;
SIGNAL \atual_estado.s9~regout\ : std_logic;
SIGNAL \atual_estado.s10~regout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \atual_estado.s11~regout\ : std_logic;
SIGNAL \prox_estado.s12~0_combout\ : std_logic;
SIGNAL \atual_estado.s12~regout\ : std_logic;
SIGNAL \atual_estado.s13~regout\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \prox_estado.s43~0_combout\ : std_logic;
SIGNAL \atual_estado.s43~regout\ : std_logic;
SIGNAL \prox_estado.s44~0_combout\ : std_logic;
SIGNAL \atual_estado.s44~regout\ : std_logic;
SIGNAL \prox_estado.s45~0_combout\ : std_logic;
SIGNAL \atual_estado.s45~regout\ : std_logic;
SIGNAL \prox_estado.s46~combout\ : std_logic;
SIGNAL \atual_estado.s46~regout\ : std_logic;
SIGNAL \atual_estado.s47~regout\ : std_logic;
SIGNAL \Selector5~1_combout\ : std_logic;
SIGNAL \atual_estado.s14~regout\ : std_logic;
SIGNAL \prox_estado.s15~0_combout\ : std_logic;
SIGNAL \atual_estado.s15~regout\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \atual_estado.s16~regout\ : std_logic;
SIGNAL \prox_estado.s17~0_combout\ : std_logic;
SIGNAL \atual_estado.s17~regout\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \Selector7~1_combout\ : std_logic;
SIGNAL \atual_estado.s18~regout\ : std_logic;
SIGNAL \atual_estado.s19~regout\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \atual_estado.s20~regout\ : std_logic;
SIGNAL \prox_estado.s21~0_combout\ : std_logic;
SIGNAL \atual_estado.s21~regout\ : std_logic;
SIGNAL \fsm_q1_pos~combout\ : std_logic;
SIGNAL \prox_estado.s25~0_combout\ : std_logic;
SIGNAL \atual_estado.s25~regout\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \atual_estado.s22~regout\ : std_logic;
SIGNAL \prox_estado.s23~0_combout\ : std_logic;
SIGNAL \atual_estado.s23~regout\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \atual_estado.s26~regout\ : std_logic;
SIGNAL \WideOr5~4_combout\ : std_logic;
SIGNAL \atual_estado.s27~regout\ : std_logic;
SIGNAL \prox_estado.s29~0_combout\ : std_logic;
SIGNAL \atual_estado.s29~regout\ : std_logic;
SIGNAL \prox_estado.s32~0_combout\ : std_logic;
SIGNAL \atual_estado.s32~regout\ : std_logic;
SIGNAL \prox_estado.s30~0_combout\ : std_logic;
SIGNAL \atual_estado.s30~regout\ : std_logic;
SIGNAL \WideOr0~0_combout\ : std_logic;
SIGNAL \fsm_clr_linha~0_combout\ : std_logic;
SIGNAL \fsm_clr_timer~1_combout\ : std_logic;
SIGNAL \WideOr1~0_combout\ : std_logic;
SIGNAL \WideOr1~1_combout\ : std_logic;
SIGNAL \fsm_clr_obj~0_combout\ : std_logic;
SIGNAL \WideOr2~1_combout\ : std_logic;
SIGNAL \WideOr2~0_combout\ : std_logic;
SIGNAL \WideOr2~2_combout\ : std_logic;
SIGNAL \WideOr2~3_combout\ : std_logic;
SIGNAL \WideOr2~combout\ : std_logic;
SIGNAL \atual_estado.s31~regout\ : std_logic;
SIGNAL \WideOr3~combout\ : std_logic;
SIGNAL \prox_estado.s24~0_combout\ : std_logic;
SIGNAL \atual_estado.s24~regout\ : std_logic;
SIGNAL \prox_estado.s40~0_combout\ : std_logic;
SIGNAL \atual_estado.s40~regout\ : std_logic;
SIGNAL \WideOr10~0_combout\ : std_logic;
SIGNAL \WideOr4~0_combout\ : std_logic;
SIGNAL \WideOr10~1_combout\ : std_logic;
SIGNAL \WideOr9~2_combout\ : std_logic;
SIGNAL \WideOr9~combout\ : std_logic;
SIGNAL \WideOr8~0_combout\ : std_logic;
SIGNAL \WideOr8~combout\ : std_logic;
SIGNAL \WideOr7~0_combout\ : std_logic;
SIGNAL \WideOr7~combout\ : std_logic;
SIGNAL \WideOr5~0_combout\ : std_logic;
SIGNAL \WideOr5~1_combout\ : std_logic;
SIGNAL \WideOr6~0_combout\ : std_logic;
SIGNAL \WideOr6~combout\ : std_logic;
SIGNAL \WideOr5~3_combout\ : std_logic;
SIGNAL \WideOr5~2_combout\ : std_logic;
SIGNAL \WideOr5~combout\ : std_logic;
SIGNAL \WideOr4~1_combout\ : std_logic;
SIGNAL \WideOr4~2_combout\ : std_logic;
SIGNAL \fsm_dt~2_combout\ : std_logic;
SIGNAL \fsm_obj~combout\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \fsm_cmd~combout\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \ALT_INV_WideOr2~combout\ : std_logic;
SIGNAL \ALT_INV_WideOr1~1_combout\ : std_logic;
SIGNAL \ALT_INV_fsm_clr_linha~0_combout\ : std_logic;
SIGNAL \ALT_INV_WideOr0~0_combout\ : std_logic;

BEGIN

ww_fsm_clk <= fsm_clk;
ww_fsm_cmd <= fsm_cmd;
ww_fsm_q0_pos <= fsm_q0_pos;
ww_fsm_q1_pos <= fsm_q1_pos;
ww_fsm_player_pos <= fsm_player_pos;
ww_fsm_pos <= fsm_pos;
ww_fsm_linha <= fsm_linha;
ww_fsm_t2 <= fsm_t2;
ww_fsm_t40 <= fsm_t40;
ww_fsm_t100 <= fsm_t100;
ww_fsm_t1000 <= fsm_t1000;
ww_fsm_obj <= fsm_obj;
ww_fsm_render <= fsm_render;
fsm_clr_pos <= ww_fsm_clr_pos;
fsm_en_pos <= ww_fsm_en_pos;
fsm_clr_linha <= ww_fsm_clr_linha;
fsm_set_linha <= ww_fsm_set_linha;
fsm_clr_timer <= ww_fsm_clr_timer;
fsm_en_timer <= ww_fsm_en_timer;
fsm_clr_obj <= ww_fsm_clr_obj;
fsm_en_obj <= ww_fsm_en_obj;
fsm_en_E <= ww_fsm_en_E;
fsm_finish <= ww_fsm_finish;
fsm_rs <= ww_fsm_rs;
fsm_dt <= ww_fsm_dt;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\fsm_clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \fsm_clk~combout\);
\ALT_INV_WideOr2~combout\ <= NOT \WideOr2~combout\;
\ALT_INV_WideOr1~1_combout\ <= NOT \WideOr1~1_combout\;
\ALT_INV_fsm_clr_linha~0_combout\ <= NOT \fsm_clr_linha~0_combout\;
\ALT_INV_WideOr0~0_combout\ <= NOT \WideOr0~0_combout\;

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\fsm_clk~I\ : cycloneii_io
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
	padio => ww_fsm_clk,
	combout => \fsm_clk~combout\);

-- Location: CLKCTRL_G3
\fsm_clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \fsm_clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \fsm_clk~clkctrl_outclk\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\fsm_linha~I\ : cycloneii_io
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
	padio => ww_fsm_linha,
	combout => \fsm_linha~combout\);

-- Location: PIN_H21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\fsm_pos~I\ : cycloneii_io
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
	padio => ww_fsm_pos,
	combout => \fsm_pos~combout\);

-- Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\fsm_obj[0]~I\ : cycloneii_io
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
	padio => ww_fsm_obj(0),
	combout => \fsm_obj~combout\(0));

-- Location: PIN_C25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\fsm_q0_pos~I\ : cycloneii_io
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
	padio => ww_fsm_q0_pos,
	combout => \fsm_q0_pos~combout\);

-- Location: LCCOMB_X64_Y32_N10
\prox_estado.s28~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \prox_estado.s28~0_combout\ = (!\fsm_pos~combout\ & \atual_estado.s27~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fsm_pos~combout\,
	datad => \atual_estado.s27~regout\,
	combout => \prox_estado.s28~0_combout\);

-- Location: LCFF_X64_Y32_N11
\atual_estado.s28\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fsm_clk~clkctrl_outclk\,
	datain => \prox_estado.s28~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \atual_estado.s28~regout\);

-- Location: PIN_E26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\fsm_obj[1]~I\ : cycloneii_io
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
	padio => ww_fsm_obj(1),
	combout => \fsm_obj~combout\(1));

-- Location: PIN_D21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\fsm_player_pos~I\ : cycloneii_io
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
	padio => ww_fsm_player_pos,
	combout => \fsm_player_pos~combout\);

-- Location: LCCOMB_X64_Y32_N30
\prox_estado.s33~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \prox_estado.s33~0_combout\ = (!\fsm_obj~combout\(1) & \atual_estado.s19~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fsm_obj~combout\(1),
	datad => \atual_estado.s19~regout\,
	combout => \prox_estado.s33~0_combout\);

-- Location: LCFF_X64_Y32_N31
\atual_estado.s33\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fsm_clk~clkctrl_outclk\,
	datain => \prox_estado.s33~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \atual_estado.s33~regout\);

-- Location: LCCOMB_X63_Y32_N18
\prox_estado.s35~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \prox_estado.s35~0_combout\ = (!\fsm_player_pos~combout\ & \atual_estado.s33~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fsm_player_pos~combout\,
	datad => \atual_estado.s33~regout\,
	combout => \prox_estado.s35~0_combout\);

-- Location: LCFF_X63_Y32_N19
\atual_estado.s35\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fsm_clk~clkctrl_outclk\,
	datain => \prox_estado.s35~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \atual_estado.s35~regout\);

-- Location: LCCOMB_X63_Y32_N0
\Selector11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector11~0_combout\ = (\atual_estado.s35~regout\) # ((\fsm_player_pos~combout\ & \atual_estado.s33~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \atual_estado.s35~regout\,
	datac => \fsm_player_pos~combout\,
	datad => \atual_estado.s33~regout\,
	combout => \Selector11~0_combout\);

-- Location: LCFF_X63_Y32_N1
\atual_estado.s34\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fsm_clk~clkctrl_outclk\,
	datain => \Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \atual_estado.s34~regout\);

-- Location: PIN_C23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\fsm_cmd[2]~I\ : cycloneii_io
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
	padio => ww_fsm_cmd(2),
	combout => \fsm_cmd~combout\(2));

-- Location: PIN_C22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\fsm_cmd[1]~I\ : cycloneii_io
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
	padio => ww_fsm_cmd(1),
	combout => \fsm_cmd~combout\(1));

-- Location: PIN_B24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\fsm_t40~I\ : cycloneii_io
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
	padio => ww_fsm_t40,
	combout => \fsm_t40~combout\);

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\fsm_render~I\ : cycloneii_io
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
	padio => ww_fsm_render,
	combout => \fsm_render~combout\);

-- Location: LCCOMB_X63_Y32_N4
\Selector12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector12~0_combout\ = (\atual_estado.s17~regout\ & ((\fsm_cmd~combout\(0)) # ((\fsm_cmd~combout\(2)) # (\fsm_cmd~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm_cmd~combout\(0),
	datab => \fsm_cmd~combout\(2),
	datac => \fsm_cmd~combout\(1),
	datad => \atual_estado.s17~regout\,
	combout => \Selector12~0_combout\);

-- Location: LCFF_X63_Y32_N5
\atual_estado.s37\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fsm_clk~clkctrl_outclk\,
	datain => \Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \atual_estado.s37~regout\);

-- Location: LCCOMB_X63_Y32_N22
\prox_estado.s48~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \prox_estado.s48~0_combout\ = (!\fsm_cmd~combout\(2) & \atual_estado.s37~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm_cmd~combout\(2),
	datac => \atual_estado.s37~regout\,
	combout => \prox_estado.s48~0_combout\);

-- Location: LCFF_X63_Y32_N23
\atual_estado.s48\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fsm_clk~clkctrl_outclk\,
	datain => \prox_estado.s48~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \atual_estado.s48~regout\);

-- Location: LCFF_X61_Y32_N25
\atual_estado.s49\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fsm_clk~clkctrl_outclk\,
	sdata => \atual_estado.s48~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \atual_estado.s49~regout\);

-- Location: LCFF_X61_Y32_N15
\atual_estado.s50\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fsm_clk~clkctrl_outclk\,
	sdata => \atual_estado.s49~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \atual_estado.s50~regout\);

-- Location: LCFF_X60_Y32_N25
\atual_estado.s51\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fsm_clk~clkctrl_outclk\,
	sdata => \atual_estado.s50~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \atual_estado.s51~regout\);

-- Location: LCCOMB_X63_Y32_N12
\prox_estado.s38~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \prox_estado.s38~0_combout\ = (\fsm_cmd~combout\(2) & (\atual_estado.s37~regout\ & !\fsm_cmd~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm_cmd~combout\(2),
	datac => \atual_estado.s37~regout\,
	datad => \fsm_cmd~combout\(1),
	combout => \prox_estado.s38~0_combout\);

-- Location: LCFF_X63_Y32_N13
\atual_estado.s38\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fsm_clk~clkctrl_outclk\,
	datain => \prox_estado.s38~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \atual_estado.s38~regout\);

-- Location: LCFF_X62_Y32_N17
\atual_estado.s39\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fsm_clk~clkctrl_outclk\,
	sdata => \atual_estado.s38~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \atual_estado.s39~regout\);

-- Location: PIN_B25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\fsm_cmd[0]~I\ : cycloneii_io
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
	padio => ww_fsm_cmd(0),
	combout => \fsm_cmd~combout\(0));

-- Location: LCCOMB_X62_Y32_N10
\prox_estado.s41~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \prox_estado.s41~0_combout\ = (\atual_estado.s39~regout\ & \fsm_cmd~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \atual_estado.s39~regout\,
	datad => \fsm_cmd~combout\(0),
	combout => \prox_estado.s41~0_combout\);

-- Location: LCFF_X62_Y32_N11
\atual_estado.s41\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fsm_clk~clkctrl_outclk\,
	datain => \prox_estado.s41~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \atual_estado.s41~regout\);

-- Location: LCCOMB_X61_Y32_N28
\prox_estado.s42\ : cycloneii_lcell_comb
-- Equation(s):
-- \prox_estado.s42~combout\ = (\atual_estado.s40~regout\) # (\atual_estado.s41~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \atual_estado.s40~regout\,
	datac => \atual_estado.s41~regout\,
	combout => \prox_estado.s42~combout\);

-- Location: LCFF_X61_Y32_N29
\atual_estado.s42\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fsm_clk~clkctrl_outclk\,
	datain => \prox_estado.s42~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \atual_estado.s42~regout\);

-- Location: PIN_D23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\fsm_t2~I\ : cycloneii_io
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
	padio => ww_fsm_t2,
	combout => \fsm_t2~combout\);

-- Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\fsm_t100~I\ : cycloneii_io
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
	padio => ww_fsm_t100,
	combout => \fsm_t100~combout\);

-- Location: PIN_A23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\fsm_t1000~I\ : cycloneii_io
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
	padio => ww_fsm_t1000,
	combout => \fsm_t1000~combout\);

-- Location: LCCOMB_X60_Y32_N18
\atual_estado.s0~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \atual_estado.s0~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \atual_estado.s0~feeder_combout\);

-- Location: LCFF_X60_Y32_N19
\atual_estado.s0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fsm_clk~clkctrl_outclk\,
	datain => \atual_estado.s0~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \atual_estado.s0~regout\);

-- Location: LCCOMB_X60_Y32_N20
\Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = ((!\fsm_t1000~combout\ & \atual_estado.s1~regout\)) # (!\atual_estado.s0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm_t1000~combout\,
	datac => \atual_estado.s1~regout\,
	datad => \atual_estado.s0~regout\,
	combout => \Selector0~0_combout\);

-- Location: LCFF_X60_Y32_N21
\atual_estado.s1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fsm_clk~clkctrl_outclk\,
	datain => \Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \atual_estado.s1~regout\);

-- Location: LCCOMB_X60_Y32_N28
\prox_estado.s2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \prox_estado.s2~0_combout\ = (\fsm_t1000~combout\ & \atual_estado.s1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm_t1000~combout\,
	datac => \atual_estado.s1~regout\,
	combout => \prox_estado.s2~0_combout\);

-- Location: LCFF_X60_Y32_N29
\atual_estado.s2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fsm_clk~clkctrl_outclk\,
	datain => \prox_estado.s2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \atual_estado.s2~regout\);

-- Location: LCCOMB_X60_Y32_N10
\Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\atual_estado.s2~regout\) # ((!\fsm_t100~combout\ & \atual_estado.s3~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm_t100~combout\,
	datac => \atual_estado.s3~regout\,
	datad => \atual_estado.s2~regout\,
	combout => \Selector1~0_combout\);

-- Location: LCFF_X60_Y32_N11
\atual_estado.s3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fsm_clk~clkctrl_outclk\,
	datain => \Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \atual_estado.s3~regout\);

-- Location: LCCOMB_X60_Y32_N30
\prox_estado.s4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \prox_estado.s4~0_combout\ = (\fsm_t100~combout\ & \atual_estado.s3~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm_t100~combout\,
	datad => \atual_estado.s3~regout\,
	combout => \prox_estado.s4~0_combout\);

-- Location: LCFF_X61_Y32_N7
\atual_estado.s4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fsm_clk~clkctrl_outclk\,
	sdata => \prox_estado.s4~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \atual_estado.s4~regout\);

-- Location: LCCOMB_X62_Y32_N6
\Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\atual_estado.s4~regout\) # ((!\fsm_t2~combout\ & \atual_estado.s5~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm_t2~combout\,
	datac => \atual_estado.s5~regout\,
	datad => \atual_estado.s4~regout\,
	combout => \Selector2~0_combout\);

-- Location: LCFF_X62_Y32_N7
\atual_estado.s5\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fsm_clk~clkctrl_outclk\,
	datain => \Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \atual_estado.s5~regout\);

-- Location: LCCOMB_X62_Y32_N30
\prox_estado.s6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \prox_estado.s6~0_combout\ = (\fsm_t2~combout\ & \atual_estado.s5~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fsm_t2~combout\,
	datad => \atual_estado.s5~regout\,
	combout => \prox_estado.s6~0_combout\);

-- Location: LCFF_X62_Y32_N31
\atual_estado.s6\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fsm_clk~clkctrl_outclk\,
	datain => \prox_estado.s6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \atual_estado.s6~regout\);

-- Location: LCCOMB_X62_Y32_N12
\Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\atual_estado.s6~regout\) # ((!\fsm_t2~combout\ & \atual_estado.s7~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm_t2~combout\,
	datac => \atual_estado.s7~regout\,
	datad => \atual_estado.s6~regout\,
	combout => \Selector3~0_combout\);

-- Location: LCFF_X62_Y32_N13
\atual_estado.s7\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fsm_clk~clkctrl_outclk\,
	datain => \Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \atual_estado.s7~regout\);

-- Location: LCCOMB_X62_Y32_N14
\prox_estado.s8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \prox_estado.s8~0_combout\ = (\fsm_t2~combout\ & \atual_estado.s7~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fsm_t2~combout\,
	datad => \atual_estado.s7~regout\,
	combout => \prox_estado.s8~0_combout\);

-- Location: LCFF_X61_Y32_N5
\atual_estado.s8\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fsm_clk~clkctrl_outclk\,
	sdata => \prox_estado.s8~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \atual_estado.s8~regout\);

-- Location: LCFF_X61_Y32_N17
\atual_estado.s9\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fsm_clk~clkctrl_outclk\,
	sdata => \atual_estado.s8~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \atual_estado.s9~regout\);

-- Location: LCFF_X61_Y32_N3
\atual_estado.s10\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fsm_clk~clkctrl_outclk\,
	sdata => \atual_estado.s9~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \atual_estado.s10~regout\);

-- Location: LCCOMB_X61_Y32_N22
\Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\atual_estado.s10~regout\) # ((!\fsm_t40~combout\ & \atual_estado.s11~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm_t40~combout\,
	datac => \atual_estado.s11~regout\,
	datad => \atual_estado.s10~regout\,
	combout => \Selector4~0_combout\);

-- Location: LCFF_X61_Y32_N23
\atual_estado.s11\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fsm_clk~clkctrl_outclk\,
	datain => \Selector4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \atual_estado.s11~regout\);

-- Location: LCCOMB_X61_Y32_N8
\prox_estado.s12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \prox_estado.s12~0_combout\ = (\fsm_t40~combout\ & \atual_estado.s11~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fsm_t40~combout\,
	datad => \atual_estado.s11~regout\,
	combout => \prox_estado.s12~0_combout\);

-- Location: LCFF_X61_Y32_N9
\atual_estado.s12\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fsm_clk~clkctrl_outclk\,
	datain => \prox_estado.s12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \atual_estado.s12~regout\);

-- Location: LCFF_X61_Y32_N21
\atual_estado.s13\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fsm_clk~clkctrl_outclk\,
	sdata => \atual_estado.s12~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \atual_estado.s13~regout\);

-- Location: LCCOMB_X61_Y32_N20
\Selector5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (\atual_estado.s42~regout\) # ((\atual_estado.s13~regout\) # ((!\fsm_render~combout\ & \atual_estado.s14~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm_render~combout\,
	datab => \atual_estado.s42~regout\,
	datac => \atual_estado.s13~regout\,
	datad => \atual_estado.s14~regout\,
	combout => \Selector5~0_combout\);

-- Location: LCCOMB_X63_Y32_N2
\prox_estado.s43~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \prox_estado.s43~0_combout\ = (\fsm_cmd~combout\(2) & (\atual_estado.s37~regout\ & \fsm_cmd~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm_cmd~combout\(2),
	datac => \atual_estado.s37~regout\,
	datad => \fsm_cmd~combout\(1),
	combout => \prox_estado.s43~0_combout\);

-- Location: LCFF_X63_Y32_N3
\atual_estado.s43\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fsm_clk~clkctrl_outclk\,
	datain => \prox_estado.s43~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \atual_estado.s43~regout\);

-- Location: LCCOMB_X63_Y32_N20
\prox_estado.s44~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \prox_estado.s44~0_combout\ = (!\fsm_cmd~combout\(0) & \atual_estado.s43~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm_cmd~combout\(0),
	datad => \atual_estado.s43~regout\,
	combout => \prox_estado.s44~0_combout\);

-- Location: LCFF_X63_Y32_N21
\atual_estado.s44\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fsm_clk~clkctrl_outclk\,
	datain => \prox_estado.s44~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \atual_estado.s44~regout\);

-- Location: LCCOMB_X63_Y32_N28
\prox_estado.s45~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \prox_estado.s45~0_combout\ = (\fsm_cmd~combout\(0) & \atual_estado.s43~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm_cmd~combout\(0),
	datad => \atual_estado.s43~regout\,
	combout => \prox_estado.s45~0_combout\);

-- Location: LCFF_X63_Y32_N29
\atual_estado.s45\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fsm_clk~clkctrl_outclk\,
	datain => \prox_estado.s45~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \atual_estado.s45~regout\);

-- Location: LCCOMB_X63_Y32_N16
\prox_estado.s46\ : cycloneii_lcell_comb
-- Equation(s):
-- \prox_estado.s46~combout\ = (\atual_estado.s44~regout\) # (\atual_estado.s45~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \atual_estado.s44~regout\,
	datad => \atual_estado.s45~regout\,
	combout => \prox_estado.s46~combout\);

-- Location: LCFF_X63_Y32_N17
\atual_estado.s46\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fsm_clk~clkctrl_outclk\,
	datain => \prox_estado.s46~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \atual_estado.s46~regout\);

-- Location: LCFF_X62_Y32_N21
\atual_estado.s47\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fsm_clk~clkctrl_outclk\,
	sdata => \atual_estado.s46~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \atual_estado.s47~regout\);

-- Location: LCCOMB_X61_Y32_N18
\Selector5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector5~1_combout\ = (\atual_estado.s51~regout\) # ((\Selector5~0_combout\) # (\atual_estado.s47~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \atual_estado.s51~regout\,
	datac => \Selector5~0_combout\,
	datad => \atual_estado.s47~regout\,
	combout => \Selector5~1_combout\);

-- Location: LCFF_X61_Y32_N19
\atual_estado.s14\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fsm_clk~clkctrl_outclk\,
	datain => \Selector5~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \atual_estado.s14~regout\);

-- Location: LCCOMB_X61_Y32_N30
\prox_estado.s15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \prox_estado.s15~0_combout\ = (\fsm_render~combout\ & \atual_estado.s14~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm_render~combout\,
	datad => \atual_estado.s14~regout\,
	combout => \prox_estado.s15~0_combout\);

-- Location: LCFF_X62_Y32_N19
\atual_estado.s15\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fsm_clk~clkctrl_outclk\,
	sdata => \prox_estado.s15~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \atual_estado.s15~regout\);

-- Location: LCCOMB_X62_Y32_N2
\Selector6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (\atual_estado.s15~regout\) # ((!\fsm_t40~combout\ & \atual_estado.s16~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm_t40~combout\,
	datac => \atual_estado.s16~regout\,
	datad => \atual_estado.s15~regout\,
	combout => \Selector6~0_combout\);

-- Location: LCFF_X62_Y32_N3
\atual_estado.s16\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fsm_clk~clkctrl_outclk\,
	datain => \Selector6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \atual_estado.s16~regout\);

-- Location: LCCOMB_X63_Y32_N6
\prox_estado.s17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \prox_estado.s17~0_combout\ = (\fsm_t40~combout\ & \atual_estado.s16~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fsm_t40~combout\,
	datad => \atual_estado.s16~regout\,
	combout => \prox_estado.s17~0_combout\);

-- Location: LCFF_X63_Y32_N7
\atual_estado.s17\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fsm_clk~clkctrl_outclk\,
	datain => \prox_estado.s17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \atual_estado.s17~regout\);

-- Location: LCCOMB_X63_Y32_N10
\Selector7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (!\fsm_cmd~combout\(0) & (!\fsm_cmd~combout\(2) & (!\fsm_cmd~combout\(1) & \atual_estado.s17~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm_cmd~combout\(0),
	datab => \fsm_cmd~combout\(2),
	datac => \fsm_cmd~combout\(1),
	datad => \atual_estado.s17~regout\,
	combout => \Selector7~0_combout\);

-- Location: LCCOMB_X63_Y32_N8
\Selector7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector7~1_combout\ = (\atual_estado.s32~regout\) # ((\atual_estado.s34~regout\) # (\Selector7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \atual_estado.s32~regout\,
	datac => \atual_estado.s34~regout\,
	datad => \Selector7~0_combout\,
	combout => \Selector7~1_combout\);

-- Location: LCFF_X63_Y32_N9
\atual_estado.s18\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fsm_clk~clkctrl_outclk\,
	datain => \Selector7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \atual_estado.s18~regout\);

-- Location: LCFF_X63_Y32_N15
\atual_estado.s19\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fsm_clk~clkctrl_outclk\,
	sdata => \atual_estado.s18~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \atual_estado.s19~regout\);

-- Location: LCCOMB_X64_Y32_N20
\Selector8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (\atual_estado.s31~regout\) # ((\atual_estado.s28~regout\) # ((\fsm_obj~combout\(1) & \atual_estado.s19~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \atual_estado.s31~regout\,
	datab => \atual_estado.s28~regout\,
	datac => \fsm_obj~combout\(1),
	datad => \atual_estado.s19~regout\,
	combout => \Selector8~0_combout\);

-- Location: LCFF_X64_Y32_N21
\atual_estado.s20\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fsm_clk~clkctrl_outclk\,
	datain => \Selector8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \atual_estado.s20~regout\);

-- Location: LCCOMB_X64_Y32_N26
\prox_estado.s21~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \prox_estado.s21~0_combout\ = (\fsm_q0_pos~combout\ & \atual_estado.s20~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm_q0_pos~combout\,
	datac => \atual_estado.s20~regout\,
	combout => \prox_estado.s21~0_combout\);

-- Location: LCFF_X64_Y32_N27
\atual_estado.s21\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fsm_clk~clkctrl_outclk\,
	datain => \prox_estado.s21~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \atual_estado.s21~regout\);

-- Location: PIN_E24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\fsm_q1_pos~I\ : cycloneii_io
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
	padio => ww_fsm_q1_pos,
	combout => \fsm_q1_pos~combout\);

-- Location: LCCOMB_X64_Y32_N28
\prox_estado.s25~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \prox_estado.s25~0_combout\ = (\atual_estado.s21~regout\ & !\fsm_q1_pos~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \atual_estado.s21~regout\,
	datad => \fsm_q1_pos~combout\,
	combout => \prox_estado.s25~0_combout\);

-- Location: LCFF_X64_Y32_N29
\atual_estado.s25\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fsm_clk~clkctrl_outclk\,
	datain => \prox_estado.s25~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \atual_estado.s25~regout\);

-- Location: LCCOMB_X64_Y32_N6
\Selector9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = (\fsm_q1_pos~combout\ & ((\atual_estado.s21~regout\) # ((\atual_estado.s25~regout\ & \fsm_linha~combout\)))) # (!\fsm_q1_pos~combout\ & (\atual_estado.s25~regout\ & ((\fsm_linha~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm_q1_pos~combout\,
	datab => \atual_estado.s25~regout\,
	datac => \atual_estado.s21~regout\,
	datad => \fsm_linha~combout\,
	combout => \Selector9~0_combout\);

-- Location: LCFF_X64_Y32_N7
\atual_estado.s22\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fsm_clk~clkctrl_outclk\,
	datain => \Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \atual_estado.s22~regout\);

-- Location: LCCOMB_X64_Y32_N0
\prox_estado.s23~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \prox_estado.s23~0_combout\ = (!\fsm_obj~combout\(0) & \atual_estado.s22~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fsm_obj~combout\(0),
	datad => \atual_estado.s22~regout\,
	combout => \prox_estado.s23~0_combout\);

-- Location: LCFF_X64_Y32_N1
\atual_estado.s23\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fsm_clk~clkctrl_outclk\,
	datain => \prox_estado.s23~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \atual_estado.s23~regout\);

-- Location: LCCOMB_X64_Y32_N18
\Selector10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = (\atual_estado.s20~regout\ & (((\atual_estado.s25~regout\ & !\fsm_linha~combout\)) # (!\fsm_q0_pos~combout\))) # (!\atual_estado.s20~regout\ & (\atual_estado.s25~regout\ & (!\fsm_linha~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \atual_estado.s20~regout\,
	datab => \atual_estado.s25~regout\,
	datac => \fsm_linha~combout\,
	datad => \fsm_q0_pos~combout\,
	combout => \Selector10~0_combout\);

-- Location: LCFF_X64_Y32_N19
\atual_estado.s26\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fsm_clk~clkctrl_outclk\,
	datain => \Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \atual_estado.s26~regout\);

-- Location: LCCOMB_X64_Y32_N4
\WideOr5~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr5~4_combout\ = (\atual_estado.s24~regout\) # ((\atual_estado.s23~regout\) # (\atual_estado.s26~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \atual_estado.s24~regout\,
	datab => \atual_estado.s23~regout\,
	datad => \atual_estado.s26~regout\,
	combout => \WideOr5~4_combout\);

-- Location: LCFF_X64_Y32_N3
\atual_estado.s27\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fsm_clk~clkctrl_outclk\,
	sdata => \WideOr5~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \atual_estado.s27~regout\);

-- Location: LCCOMB_X64_Y32_N12
\prox_estado.s29~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \prox_estado.s29~0_combout\ = (\fsm_pos~combout\ & \atual_estado.s27~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fsm_pos~combout\,
	datad => \atual_estado.s27~regout\,
	combout => \prox_estado.s29~0_combout\);

-- Location: LCFF_X64_Y32_N13
\atual_estado.s29\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fsm_clk~clkctrl_outclk\,
	datain => \prox_estado.s29~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \atual_estado.s29~regout\);

-- Location: LCCOMB_X64_Y32_N16
\prox_estado.s32~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \prox_estado.s32~0_combout\ = (\fsm_linha~combout\ & \atual_estado.s29~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fsm_linha~combout\,
	datad => \atual_estado.s29~regout\,
	combout => \prox_estado.s32~0_combout\);

-- Location: LCFF_X64_Y32_N17
\atual_estado.s32\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fsm_clk~clkctrl_outclk\,
	datain => \prox_estado.s32~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \atual_estado.s32~regout\);

-- Location: LCCOMB_X64_Y32_N8
\prox_estado.s30~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \prox_estado.s30~0_combout\ = (!\fsm_linha~combout\ & \atual_estado.s29~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fsm_linha~combout\,
	datad => \atual_estado.s29~regout\,
	combout => \prox_estado.s30~0_combout\);

-- Location: LCFF_X64_Y32_N9
\atual_estado.s30\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fsm_clk~clkctrl_outclk\,
	datain => \prox_estado.s30~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \atual_estado.s30~regout\);

-- Location: LCCOMB_X64_Y32_N2
\WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr0~0_combout\ = (!\atual_estado.s32~regout\ & (!\atual_estado.s30~regout\ & !\atual_estado.s14~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \atual_estado.s32~regout\,
	datab => \atual_estado.s30~regout\,
	datad => \atual_estado.s14~regout\,
	combout => \WideOr0~0_combout\);

-- Location: LCCOMB_X60_Y32_N24
\fsm_clr_linha~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \fsm_clr_linha~0_combout\ = (!\atual_estado.s32~regout\ & !\atual_estado.s14~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \atual_estado.s32~regout\,
	datab => \atual_estado.s14~regout\,
	combout => \fsm_clr_linha~0_combout\);

-- Location: LCCOMB_X62_Y32_N16
\fsm_clr_timer~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \fsm_clr_timer~1_combout\ = (\atual_estado.s14~regout\) # (\atual_estado.s10~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \atual_estado.s14~regout\,
	datad => \atual_estado.s10~regout\,
	combout => \fsm_clr_timer~1_combout\);

-- Location: LCCOMB_X60_Y32_N12
\WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr1~0_combout\ = (!\atual_estado.s1~regout\ & (!\atual_estado.s3~regout\ & (!\atual_estado.s5~regout\ & \atual_estado.s0~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \atual_estado.s1~regout\,
	datab => \atual_estado.s3~regout\,
	datac => \atual_estado.s5~regout\,
	datad => \atual_estado.s0~regout\,
	combout => \WideOr1~0_combout\);

-- Location: LCCOMB_X62_Y32_N24
\WideOr1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr1~1_combout\ = (!\atual_estado.s7~regout\ & (!\atual_estado.s11~regout\ & (\WideOr1~0_combout\ & !\atual_estado.s16~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \atual_estado.s7~regout\,
	datab => \atual_estado.s11~regout\,
	datac => \WideOr1~0_combout\,
	datad => \atual_estado.s16~regout\,
	combout => \WideOr1~1_combout\);

-- Location: LCCOMB_X60_Y32_N22
\fsm_clr_obj~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \fsm_clr_obj~0_combout\ = (\atual_estado.s14~regout\) # (!\atual_estado.s0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \atual_estado.s14~regout\,
	datad => \atual_estado.s0~regout\,
	combout => \fsm_clr_obj~0_combout\);

-- Location: LCCOMB_X63_Y32_N30
\WideOr2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr2~1_combout\ = (\atual_estado.s22~regout\) # ((\atual_estado.s19~regout\) # ((\atual_estado.s21~regout\) # (\atual_estado.s20~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \atual_estado.s22~regout\,
	datab => \atual_estado.s19~regout\,
	datac => \atual_estado.s21~regout\,
	datad => \atual_estado.s20~regout\,
	combout => \WideOr2~1_combout\);

-- Location: LCCOMB_X63_Y32_N26
\WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr2~0_combout\ = (\atual_estado.s32~regout\) # ((\atual_estado.s14~regout\) # ((\atual_estado.s30~regout\) # (\atual_estado.s17~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \atual_estado.s32~regout\,
	datab => \atual_estado.s14~regout\,
	datac => \atual_estado.s30~regout\,
	datad => \atual_estado.s17~regout\,
	combout => \WideOr2~0_combout\);

-- Location: LCCOMB_X64_Y32_N14
\WideOr2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr2~2_combout\ = (\atual_estado.s28~regout\) # ((\atual_estado.s27~regout\) # ((\atual_estado.s25~regout\) # (\atual_estado.s29~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \atual_estado.s28~regout\,
	datab => \atual_estado.s27~regout\,
	datac => \atual_estado.s25~regout\,
	datad => \atual_estado.s29~regout\,
	combout => \WideOr2~2_combout\);

-- Location: LCCOMB_X63_Y32_N24
\WideOr2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr2~3_combout\ = (\WideOr2~2_combout\) # ((\atual_estado.s37~regout\) # (\atual_estado.s33~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WideOr2~2_combout\,
	datac => \atual_estado.s37~regout\,
	datad => \atual_estado.s33~regout\,
	combout => \WideOr2~3_combout\);

-- Location: LCCOMB_X62_Y32_N22
WideOr2 : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr2~combout\ = ((\WideOr2~1_combout\) # ((\WideOr2~0_combout\) # (\WideOr2~3_combout\))) # (!\WideOr1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr1~1_combout\,
	datab => \WideOr2~1_combout\,
	datac => \WideOr2~0_combout\,
	datad => \WideOr2~3_combout\,
	combout => \WideOr2~combout\);

-- Location: LCFF_X64_Y32_N5
\atual_estado.s31\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fsm_clk~clkctrl_outclk\,
	sdata => \atual_estado.s30~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \atual_estado.s31~regout\);

-- Location: LCCOMB_X63_Y32_N14
WideOr3 : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr3~combout\ = (\atual_estado.s35~regout\) # ((\atual_estado.s18~regout\) # (\atual_estado.s31~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \atual_estado.s35~regout\,
	datac => \atual_estado.s18~regout\,
	datad => \atual_estado.s31~regout\,
	combout => \WideOr3~combout\);

-- Location: LCCOMB_X64_Y32_N24
\prox_estado.s24~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \prox_estado.s24~0_combout\ = (\fsm_obj~combout\(0) & \atual_estado.s22~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fsm_obj~combout\(0),
	datad => \atual_estado.s22~regout\,
	combout => \prox_estado.s24~0_combout\);

-- Location: LCFF_X64_Y32_N25
\atual_estado.s24\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fsm_clk~clkctrl_outclk\,
	datain => \prox_estado.s24~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \atual_estado.s24~regout\);

-- Location: LCCOMB_X62_Y32_N4
\prox_estado.s40~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \prox_estado.s40~0_combout\ = (\atual_estado.s39~regout\ & !\fsm_cmd~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \atual_estado.s39~regout\,
	datad => \fsm_cmd~combout\(0),
	combout => \prox_estado.s40~0_combout\);

-- Location: LCFF_X62_Y32_N5
\atual_estado.s40\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fsm_clk~clkctrl_outclk\,
	datain => \prox_estado.s40~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \atual_estado.s40~regout\);

-- Location: LCCOMB_X61_Y32_N26
\WideOr10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr10~0_combout\ = (\atual_estado.s23~regout\) # ((\atual_estado.s44~regout\) # ((\atual_estado.s24~regout\) # (\atual_estado.s40~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \atual_estado.s23~regout\,
	datab => \atual_estado.s44~regout\,
	datac => \atual_estado.s24~regout\,
	datad => \atual_estado.s40~regout\,
	combout => \WideOr10~0_combout\);

-- Location: LCCOMB_X61_Y32_N12
\WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr4~0_combout\ = (!\atual_estado.s49~regout\ & (!\atual_estado.s50~regout\ & (!\atual_estado.s34~regout\ & !\atual_estado.s47~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \atual_estado.s49~regout\,
	datab => \atual_estado.s50~regout\,
	datac => \atual_estado.s34~regout\,
	datad => \atual_estado.s47~regout\,
	combout => \WideOr4~0_combout\);

-- Location: LCCOMB_X62_Y32_N18
\WideOr10~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr10~1_combout\ = (\atual_estado.s10~regout\) # ((\WideOr10~0_combout\) # ((\atual_estado.s15~regout\) # (!\WideOr4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \atual_estado.s10~regout\,
	datab => \WideOr10~0_combout\,
	datac => \atual_estado.s15~regout\,
	datad => \WideOr4~0_combout\,
	combout => \WideOr10~1_combout\);

-- Location: LCCOMB_X61_Y32_N10
\WideOr9~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr9~2_combout\ = (\atual_estado.s23~regout\) # ((\atual_estado.s41~regout\) # ((\atual_estado.s34~regout\) # (\atual_estado.s45~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \atual_estado.s23~regout\,
	datab => \atual_estado.s41~regout\,
	datac => \atual_estado.s34~regout\,
	datad => \atual_estado.s45~regout\,
	combout => \WideOr9~2_combout\);

-- Location: LCCOMB_X61_Y32_N16
WideOr9 : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr9~combout\ = (\WideOr9~2_combout\) # ((\atual_estado.s12~regout\) # (\atual_estado.s47~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr9~2_combout\,
	datab => \atual_estado.s12~regout\,
	datad => \atual_estado.s47~regout\,
	combout => \WideOr9~combout\);

-- Location: LCCOMB_X61_Y32_N6
\WideOr8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr8~0_combout\ = (!\atual_estado.s12~regout\ & !\atual_estado.s47~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \atual_estado.s12~regout\,
	datad => \atual_estado.s47~regout\,
	combout => \WideOr8~0_combout\);

-- Location: LCCOMB_X61_Y32_N14
WideOr8 : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr8~combout\ = (\atual_estado.s48~regout\) # ((\atual_estado.s51~regout\) # ((\atual_estado.s50~regout\) # (!\WideOr8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \atual_estado.s48~regout\,
	datab => \atual_estado.s51~regout\,
	datac => \atual_estado.s50~regout\,
	datad => \WideOr8~0_combout\,
	combout => \WideOr8~combout\);

-- Location: LCCOMB_X61_Y32_N2
\WideOr7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr7~0_combout\ = (\atual_estado.s49~regout\) # ((\atual_estado.s34~regout\) # ((\atual_estado.s9~regout\) # (\atual_estado.s8~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \atual_estado.s49~regout\,
	datab => \atual_estado.s34~regout\,
	datac => \atual_estado.s9~regout\,
	datad => \atual_estado.s8~regout\,
	combout => \WideOr7~0_combout\);

-- Location: LCCOMB_X61_Y32_N24
WideOr7 : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr7~combout\ = (\WideOr7~0_combout\) # (\atual_estado.s13~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr7~0_combout\,
	datad => \atual_estado.s13~regout\,
	combout => \WideOr7~combout\);

-- Location: LCCOMB_X61_Y32_N0
\WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr5~0_combout\ = (!\atual_estado.s2~regout\ & (!\atual_estado.s41~regout\ & (!\atual_estado.s34~regout\ & !\atual_estado.s45~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \atual_estado.s2~regout\,
	datab => \atual_estado.s41~regout\,
	datac => \atual_estado.s34~regout\,
	datad => \atual_estado.s45~regout\,
	combout => \WideOr5~0_combout\);

-- Location: LCCOMB_X62_Y32_N28
\WideOr5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr5~1_combout\ = (!\atual_estado.s44~regout\ & (!\atual_estado.s4~regout\ & (!\atual_estado.s40~regout\ & !\atual_estado.s6~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \atual_estado.s44~regout\,
	datab => \atual_estado.s4~regout\,
	datac => \atual_estado.s40~regout\,
	datad => \atual_estado.s6~regout\,
	combout => \WideOr5~1_combout\);

-- Location: LCCOMB_X62_Y32_N0
\WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr6~0_combout\ = (\atual_estado.s47~regout\) # ((\atual_estado.s48~regout\) # ((\atual_estado.s39~regout\) # (\atual_estado.s43~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \atual_estado.s47~regout\,
	datab => \atual_estado.s48~regout\,
	datac => \atual_estado.s39~regout\,
	datad => \atual_estado.s43~regout\,
	combout => \WideOr6~0_combout\);

-- Location: LCCOMB_X62_Y33_N28
WideOr6 : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr6~combout\ = (((\atual_estado.s8~regout\) # (\WideOr6~0_combout\)) # (!\WideOr5~1_combout\)) # (!\WideOr5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr5~0_combout\,
	datab => \WideOr5~1_combout\,
	datac => \atual_estado.s8~regout\,
	datad => \WideOr6~0_combout\,
	combout => \WideOr6~combout\);

-- Location: LCCOMB_X62_Y33_N22
\WideOr5~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr5~3_combout\ = (\WideOr5~0_combout\ & (\WideOr5~1_combout\ & !\atual_estado.s8~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr5~0_combout\,
	datab => \WideOr5~1_combout\,
	datac => \atual_estado.s8~regout\,
	combout => \WideOr5~3_combout\);

-- Location: LCCOMB_X62_Y32_N20
\WideOr5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr5~2_combout\ = (\atual_estado.s38~regout\) # ((\atual_estado.s46~regout\) # (\atual_estado.s42~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \atual_estado.s38~regout\,
	datac => \atual_estado.s46~regout\,
	datad => \atual_estado.s42~regout\,
	combout => \WideOr5~2_combout\);

-- Location: LCCOMB_X64_Y32_N22
WideOr5 : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr5~combout\ = ((\WideOr5~2_combout\) # ((\WideOr5~4_combout\) # (\atual_estado.s28~regout\))) # (!\WideOr5~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr5~3_combout\,
	datab => \WideOr5~2_combout\,
	datac => \WideOr5~4_combout\,
	datad => \atual_estado.s28~regout\,
	combout => \WideOr5~combout\);

-- Location: LCCOMB_X62_Y32_N26
\WideOr4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr4~1_combout\ = (\atual_estado.s51~regout\) # ((\atual_estado.s48~regout\) # ((\atual_estado.s39~regout\) # (\atual_estado.s43~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \atual_estado.s51~regout\,
	datab => \atual_estado.s48~regout\,
	datac => \atual_estado.s39~regout\,
	datad => \atual_estado.s43~regout\,
	combout => \WideOr4~1_combout\);

-- Location: LCCOMB_X62_Y32_N8
\WideOr4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr4~2_combout\ = (\atual_estado.s31~regout\) # ((\WideOr4~1_combout\) # ((\atual_estado.s35~regout\) # (!\WideOr4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \atual_estado.s31~regout\,
	datab => \WideOr4~1_combout\,
	datac => \atual_estado.s35~regout\,
	datad => \WideOr4~0_combout\,
	combout => \WideOr4~2_combout\);

-- Location: LCCOMB_X61_Y32_N4
\fsm_dt~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \fsm_dt~2_combout\ = (\atual_estado.s34~regout\) # (\atual_estado.s24~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \atual_estado.s34~regout\,
	datad => \atual_estado.s24~regout\,
	combout => \fsm_dt~2_combout\);

-- Location: PIN_J22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\fsm_clr_pos~I\ : cycloneii_io
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
	datain => \ALT_INV_WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_fsm_clr_pos);

-- Location: PIN_G21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\fsm_en_pos~I\ : cycloneii_io
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
	datain => \atual_estado.s28~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_fsm_en_pos);

-- Location: PIN_K17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\fsm_clr_linha~I\ : cycloneii_io
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
	datain => \ALT_INV_fsm_clr_linha~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_fsm_clr_linha);

-- Location: PIN_C24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\fsm_set_linha~I\ : cycloneii_io
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
	datain => \atual_estado.s30~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_fsm_set_linha);

-- Location: PIN_D26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\fsm_clr_timer~I\ : cycloneii_io
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
	datain => \fsm_clr_timer~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_fsm_clr_timer);

-- Location: PIN_F24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\fsm_en_timer~I\ : cycloneii_io
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
	datain => \ALT_INV_WideOr1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_fsm_en_timer);

-- Location: PIN_A21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\fsm_clr_obj~I\ : cycloneii_io
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
	datain => \fsm_clr_obj~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_fsm_clr_obj);

-- Location: PIN_D25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\fsm_en_obj~I\ : cycloneii_io
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
	datain => \atual_estado.s32~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_fsm_en_obj);

-- Location: PIN_B23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\fsm_en_E~I\ : cycloneii_io
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
	datain => \ALT_INV_WideOr2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_fsm_en_E);

-- Location: PIN_E25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\fsm_finish~I\ : cycloneii_io
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
	datain => \atual_estado.s14~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_fsm_finish);

-- Location: PIN_J21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\fsm_rs~I\ : cycloneii_io
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
	datain => \WideOr3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_fsm_rs);

-- Location: PIN_G22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\fsm_dt[0]~I\ : cycloneii_io
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
	datain => \WideOr10~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_fsm_dt(0));

-- Location: PIN_B22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\fsm_dt[1]~I\ : cycloneii_io
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
	datain => \WideOr9~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_fsm_dt(1));

-- Location: PIN_A22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\fsm_dt[2]~I\ : cycloneii_io
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
	datain => \WideOr8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_fsm_dt(2));

-- Location: PIN_B21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\fsm_dt[3]~I\ : cycloneii_io
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
	datain => \WideOr7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_fsm_dt(3));

-- Location: PIN_E23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\fsm_dt[4]~I\ : cycloneii_io
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
	datain => \WideOr6~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_fsm_dt(4));

-- Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\fsm_dt[5]~I\ : cycloneii_io
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
	datain => \WideOr5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_fsm_dt(5));

-- Location: PIN_C21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\fsm_dt[6]~I\ : cycloneii_io
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
	datain => \WideOr4~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_fsm_dt(6));

-- Location: PIN_F21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\fsm_dt[7]~I\ : cycloneii_io
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
	datain => \fsm_dt~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_fsm_dt(7));
END structure;


