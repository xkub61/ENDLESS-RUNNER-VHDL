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

-- DATE "12/15/2022 16:25:46"

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

ENTITY 	controladora_jogo IS
    PORT (
	ctrl_CLK : IN std_logic;
	ctrl_FINISH : IN std_logic;
	ctrl_START : IN std_logic;
	ctrl_Q0_MOEDA : IN std_logic;
	ctrl_COLLECTED : IN std_logic;
	ctrl_Q0_OBST : IN std_logic;
	ctrl_ENDED : IN std_logic;
	ctrl_PLAYER : IN std_logic;
	ctrl_FRAME_TIMER : IN std_logic;
	ctrl_RESULT : IN std_logic_vector(2 DOWNTO 0);
	ctrl_LFSR_SHFT : OUT std_logic;
	ctrl_CNT_MOEDA1 : OUT std_logic;
	ctrl_CNT_MOEDA2 : OUT std_logic;
	ctrl_RMV_MOEDA : OUT std_logic;
	ctrl_RMV_OBST : OUT std_logic;
	ctrl_SET_PLAYER : OUT std_logic;
	ctrl_CLR_MOEDA1 : OUT std_logic;
	ctrl_CLR_MOEDA2 : OUT std_logic;
	ctrl_CLR_PLAYER : OUT std_logic;
	ctrl_CLR_TIMER : OUT std_logic;
	ctrl_CLR_START : OUT std_logic;
	ctrl_RENDER : OUT std_logic;
	ctrl_CMD : OUT std_logic_vector(2 DOWNTO 0)
	);
END controladora_jogo;

-- Design Ports Information
-- ctrl_LFSR_SHFT	=>  Location: PIN_L25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ctrl_CNT_MOEDA1	=>  Location: PIN_L19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ctrl_CNT_MOEDA2	=>  Location: PIN_L24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ctrl_RMV_MOEDA	=>  Location: PIN_L23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ctrl_RMV_OBST	=>  Location: PIN_AD19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ctrl_SET_PLAYER	=>  Location: PIN_K21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ctrl_CLR_MOEDA1	=>  Location: PIN_H25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ctrl_CLR_MOEDA2	=>  Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ctrl_CLR_PLAYER	=>  Location: PIN_J24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ctrl_CLR_TIMER	=>  Location: PIN_K25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ctrl_CLR_START	=>  Location: PIN_K24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ctrl_RENDER	=>  Location: PIN_K26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ctrl_CMD[0]	=>  Location: PIN_K19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ctrl_CMD[1]	=>  Location: PIN_J26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ctrl_CMD[2]	=>  Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ctrl_RESULT[0]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ctrl_RESULT[1]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ctrl_RESULT[2]	=>  Location: PIN_R25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ctrl_FRAME_TIMER	=>  Location: PIN_H26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ctrl_CLK	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ctrl_PLAYER	=>  Location: PIN_M23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ctrl_COLLECTED	=>  Location: PIN_J23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ctrl_Q0_MOEDA	=>  Location: PIN_K23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ctrl_ENDED	=>  Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ctrl_START	=>  Location: PIN_L20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ctrl_FINISH	=>  Location: PIN_J25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ctrl_Q0_OBST	=>  Location: PIN_K18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF controladora_jogo IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_ctrl_CLK : std_logic;
SIGNAL ww_ctrl_FINISH : std_logic;
SIGNAL ww_ctrl_START : std_logic;
SIGNAL ww_ctrl_Q0_MOEDA : std_logic;
SIGNAL ww_ctrl_COLLECTED : std_logic;
SIGNAL ww_ctrl_Q0_OBST : std_logic;
SIGNAL ww_ctrl_ENDED : std_logic;
SIGNAL ww_ctrl_PLAYER : std_logic;
SIGNAL ww_ctrl_FRAME_TIMER : std_logic;
SIGNAL ww_ctrl_RESULT : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_ctrl_LFSR_SHFT : std_logic;
SIGNAL ww_ctrl_CNT_MOEDA1 : std_logic;
SIGNAL ww_ctrl_CNT_MOEDA2 : std_logic;
SIGNAL ww_ctrl_RMV_MOEDA : std_logic;
SIGNAL ww_ctrl_RMV_OBST : std_logic;
SIGNAL ww_ctrl_SET_PLAYER : std_logic;
SIGNAL ww_ctrl_CLR_MOEDA1 : std_logic;
SIGNAL ww_ctrl_CLR_MOEDA2 : std_logic;
SIGNAL ww_ctrl_CLR_PLAYER : std_logic;
SIGNAL ww_ctrl_CLR_TIMER : std_logic;
SIGNAL ww_ctrl_CLR_START : std_logic;
SIGNAL ww_ctrl_RENDER : std_logic;
SIGNAL ww_ctrl_CMD : std_logic_vector(2 DOWNTO 0);
SIGNAL \ctrl_CLK~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ctrl_CLK~combout\ : std_logic;
SIGNAL \ctrl_CLK~clkctrl_outclk\ : std_logic;
SIGNAL \ctrl_FRAME_TIMER~combout\ : std_logic;
SIGNAL \ctrl_FINISH~combout\ : std_logic;
SIGNAL \ctrl_ENDED~combout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \estado_atual.s10~regout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \estado_atual.s11~regout\ : std_logic;
SIGNAL \prox_estado.s12~0_combout\ : std_logic;
SIGNAL \estado_atual.s12~regout\ : std_logic;
SIGNAL \ctrl_PLAYER~combout\ : std_logic;
SIGNAL \ctrl_COLLECTED~combout\ : std_logic;
SIGNAL \prox_estado.s5~0_combout\ : std_logic;
SIGNAL \estado_atual.s5~regout\ : std_logic;
SIGNAL \prox_estado.s6~0_combout\ : std_logic;
SIGNAL \estado_atual.s6~regout\ : std_logic;
SIGNAL \prox_estado.s7~0_combout\ : std_logic;
SIGNAL \estado_atual.s7~regout\ : std_logic;
SIGNAL \ctrl_Q0_MOEDA~combout\ : std_logic;
SIGNAL \ctrl_START~combout\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \estado_atual.s15~regout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \estado_atual.s4~regout\ : std_logic;
SIGNAL \ctrl_Q0_OBST~combout\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \estado_atual.s19~regout\ : std_logic;
SIGNAL \estado_atual.s0~0_combout\ : std_logic;
SIGNAL \estado_atual.s0~regout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \estado_atual.s1~regout\ : std_logic;
SIGNAL \prox_estado.s2~0_combout\ : std_logic;
SIGNAL \estado_atual.s2~regout\ : std_logic;
SIGNAL \ctrl_CLR_TIMER~2_combout\ : std_logic;
SIGNAL \estado_atual.s3~regout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \Selector2~1_combout\ : std_logic;
SIGNAL \estado_atual.s8~regout\ : std_logic;
SIGNAL \prox_estado.s9~0_combout\ : std_logic;
SIGNAL \estado_atual.s9~regout\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \estado_atual.s14~regout\ : std_logic;
SIGNAL \ctrl_CLR_START~1_combout\ : std_logic;
SIGNAL \WideOr0~combout\ : std_logic;
SIGNAL \WideOr3~combout\ : std_logic;

BEGIN

ww_ctrl_CLK <= ctrl_CLK;
ww_ctrl_FINISH <= ctrl_FINISH;
ww_ctrl_START <= ctrl_START;
ww_ctrl_Q0_MOEDA <= ctrl_Q0_MOEDA;
ww_ctrl_COLLECTED <= ctrl_COLLECTED;
ww_ctrl_Q0_OBST <= ctrl_Q0_OBST;
ww_ctrl_ENDED <= ctrl_ENDED;
ww_ctrl_PLAYER <= ctrl_PLAYER;
ww_ctrl_FRAME_TIMER <= ctrl_FRAME_TIMER;
ww_ctrl_RESULT <= ctrl_RESULT;
ctrl_LFSR_SHFT <= ww_ctrl_LFSR_SHFT;
ctrl_CNT_MOEDA1 <= ww_ctrl_CNT_MOEDA1;
ctrl_CNT_MOEDA2 <= ww_ctrl_CNT_MOEDA2;
ctrl_RMV_MOEDA <= ww_ctrl_RMV_MOEDA;
ctrl_RMV_OBST <= ww_ctrl_RMV_OBST;
ctrl_SET_PLAYER <= ww_ctrl_SET_PLAYER;
ctrl_CLR_MOEDA1 <= ww_ctrl_CLR_MOEDA1;
ctrl_CLR_MOEDA2 <= ww_ctrl_CLR_MOEDA2;
ctrl_CLR_PLAYER <= ww_ctrl_CLR_PLAYER;
ctrl_CLR_TIMER <= ww_ctrl_CLR_TIMER;
ctrl_CLR_START <= ww_ctrl_CLR_START;
ctrl_RENDER <= ww_ctrl_RENDER;
ctrl_CMD <= ww_ctrl_CMD;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\ctrl_CLK~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \ctrl_CLK~combout\);

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ctrl_CLK~I\ : cycloneii_io
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
	padio => ww_ctrl_CLK,
	combout => \ctrl_CLK~combout\);

-- Location: CLKCTRL_G3
\ctrl_CLK~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \ctrl_CLK~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \ctrl_CLK~clkctrl_outclk\);

-- Location: PIN_H26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ctrl_FRAME_TIMER~I\ : cycloneii_io
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
	padio => ww_ctrl_FRAME_TIMER,
	combout => \ctrl_FRAME_TIMER~combout\);

-- Location: PIN_J25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ctrl_FINISH~I\ : cycloneii_io
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
	padio => ww_ctrl_FINISH,
	combout => \ctrl_FINISH~combout\);

-- Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ctrl_ENDED~I\ : cycloneii_io
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
	padio => ww_ctrl_ENDED,
	combout => \ctrl_ENDED~combout\);

-- Location: LCCOMB_X64_Y24_N18
\Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\estado_atual.s9~regout\ & (((!\ctrl_FINISH~combout\ & \estado_atual.s10~regout\)) # (!\ctrl_ENDED~combout\))) # (!\estado_atual.s9~regout\ & (!\ctrl_FINISH~combout\ & (\estado_atual.s10~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_atual.s9~regout\,
	datab => \ctrl_FINISH~combout\,
	datac => \estado_atual.s10~regout\,
	datad => \ctrl_ENDED~combout\,
	combout => \Selector3~0_combout\);

-- Location: LCFF_X64_Y24_N19
\estado_atual.s10\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ctrl_CLK~clkctrl_outclk\,
	datain => \Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estado_atual.s10~regout\);

-- Location: LCCOMB_X64_Y24_N0
\Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\ctrl_FINISH~combout\ & ((\estado_atual.s10~regout\) # ((!\ctrl_FRAME_TIMER~combout\ & \estado_atual.s11~regout\)))) # (!\ctrl_FINISH~combout\ & (!\ctrl_FRAME_TIMER~combout\ & (\estado_atual.s11~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl_FINISH~combout\,
	datab => \ctrl_FRAME_TIMER~combout\,
	datac => \estado_atual.s11~regout\,
	datad => \estado_atual.s10~regout\,
	combout => \Selector4~0_combout\);

-- Location: LCFF_X64_Y24_N1
\estado_atual.s11\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ctrl_CLK~clkctrl_outclk\,
	datain => \Selector4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estado_atual.s11~regout\);

-- Location: LCCOMB_X64_Y24_N4
\prox_estado.s12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \prox_estado.s12~0_combout\ = (\estado_atual.s11~regout\ & \ctrl_FRAME_TIMER~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estado_atual.s11~regout\,
	datad => \ctrl_FRAME_TIMER~combout\,
	combout => \prox_estado.s12~0_combout\);

-- Location: LCFF_X64_Y24_N5
\estado_atual.s12\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ctrl_CLK~clkctrl_outclk\,
	datain => \prox_estado.s12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estado_atual.s12~regout\);

-- Location: PIN_M23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ctrl_PLAYER~I\ : cycloneii_io
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
	padio => ww_ctrl_PLAYER,
	combout => \ctrl_PLAYER~combout\);

-- Location: PIN_J23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ctrl_COLLECTED~I\ : cycloneii_io
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
	padio => ww_ctrl_COLLECTED,
	combout => \ctrl_COLLECTED~combout\);

-- Location: LCCOMB_X64_Y24_N2
\prox_estado.s5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \prox_estado.s5~0_combout\ = (\estado_atual.s4~regout\ & \ctrl_COLLECTED~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_atual.s4~regout\,
	datac => \ctrl_COLLECTED~combout\,
	combout => \prox_estado.s5~0_combout\);

-- Location: LCFF_X64_Y24_N3
\estado_atual.s5\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ctrl_CLK~clkctrl_outclk\,
	datain => \prox_estado.s5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estado_atual.s5~regout\);

-- Location: LCCOMB_X64_Y24_N22
\prox_estado.s6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \prox_estado.s6~0_combout\ = (!\ctrl_PLAYER~combout\ & \estado_atual.s5~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ctrl_PLAYER~combout\,
	datad => \estado_atual.s5~regout\,
	combout => \prox_estado.s6~0_combout\);

-- Location: LCFF_X64_Y24_N23
\estado_atual.s6\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ctrl_CLK~clkctrl_outclk\,
	datain => \prox_estado.s6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estado_atual.s6~regout\);

-- Location: LCCOMB_X64_Y24_N20
\prox_estado.s7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \prox_estado.s7~0_combout\ = (\ctrl_PLAYER~combout\ & \estado_atual.s5~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ctrl_PLAYER~combout\,
	datad => \estado_atual.s5~regout\,
	combout => \prox_estado.s7~0_combout\);

-- Location: LCFF_X64_Y24_N21
\estado_atual.s7\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ctrl_CLK~clkctrl_outclk\,
	datain => \prox_estado.s7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estado_atual.s7~regout\);

-- Location: PIN_K23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ctrl_Q0_MOEDA~I\ : cycloneii_io
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
	padio => ww_ctrl_Q0_MOEDA,
	combout => \ctrl_Q0_MOEDA~combout\);

-- Location: PIN_L20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ctrl_START~I\ : cycloneii_io
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
	padio => ww_ctrl_START,
	combout => \ctrl_START~combout\);

-- Location: LCCOMB_X64_Y24_N14
\Selector6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (\estado_atual.s14~regout\) # ((!\ctrl_START~combout\ & \estado_atual.s15~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_atual.s14~regout\,
	datab => \ctrl_START~combout\,
	datac => \estado_atual.s15~regout\,
	combout => \Selector6~0_combout\);

-- Location: LCFF_X64_Y24_N15
\estado_atual.s15\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ctrl_CLK~clkctrl_outclk\,
	datain => \Selector6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estado_atual.s15~regout\);

-- Location: LCCOMB_X64_Y24_N16
\Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\estado_atual.s3~regout\ & ((\ctrl_Q0_MOEDA~combout\) # ((\ctrl_START~combout\ & \estado_atual.s15~regout\)))) # (!\estado_atual.s3~regout\ & (\ctrl_START~combout\ & (\estado_atual.s15~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_atual.s3~regout\,
	datab => \ctrl_START~combout\,
	datac => \estado_atual.s15~regout\,
	datad => \ctrl_Q0_MOEDA~combout\,
	combout => \Selector1~0_combout\);

-- Location: LCFF_X64_Y24_N17
\estado_atual.s4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ctrl_CLK~clkctrl_outclk\,
	datain => \Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estado_atual.s4~regout\);

-- Location: PIN_K18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ctrl_Q0_OBST~I\ : cycloneii_io
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
	padio => ww_ctrl_Q0_OBST,
	combout => \ctrl_Q0_OBST~combout\);

-- Location: LCCOMB_X64_Y24_N24
\Selector9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = (\ctrl_START~combout\ & (!\ctrl_Q0_OBST~combout\ & ((\estado_atual.s8~regout\)))) # (!\ctrl_START~combout\ & ((\estado_atual.s19~regout\) # ((!\ctrl_Q0_OBST~combout\ & \estado_atual.s8~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl_START~combout\,
	datab => \ctrl_Q0_OBST~combout\,
	datac => \estado_atual.s19~regout\,
	datad => \estado_atual.s8~regout\,
	combout => \Selector9~0_combout\);

-- Location: LCFF_X64_Y24_N25
\estado_atual.s19\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ctrl_CLK~clkctrl_outclk\,
	datain => \Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estado_atual.s19~regout\);

-- Location: LCCOMB_X63_Y24_N0
\estado_atual.s0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \estado_atual.s0~0_combout\ = (\estado_atual.s0~regout\) # (\ctrl_FINISH~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \estado_atual.s0~regout\,
	datad => \ctrl_FINISH~combout\,
	combout => \estado_atual.s0~0_combout\);

-- Location: LCFF_X63_Y24_N1
\estado_atual.s0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ctrl_CLK~clkctrl_outclk\,
	datain => \estado_atual.s0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estado_atual.s0~regout\);

-- Location: LCCOMB_X63_Y24_N16
\Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\ctrl_START~combout\ & (!\estado_atual.s0~regout\ & ((\ctrl_FINISH~combout\)))) # (!\ctrl_START~combout\ & ((\estado_atual.s1~regout\) # ((!\estado_atual.s0~regout\ & \ctrl_FINISH~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl_START~combout\,
	datab => \estado_atual.s0~regout\,
	datac => \estado_atual.s1~regout\,
	datad => \ctrl_FINISH~combout\,
	combout => \Selector0~0_combout\);

-- Location: LCFF_X63_Y24_N17
\estado_atual.s1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ctrl_CLK~clkctrl_outclk\,
	datain => \Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estado_atual.s1~regout\);

-- Location: LCCOMB_X64_Y24_N26
\prox_estado.s2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \prox_estado.s2~0_combout\ = (\ctrl_START~combout\ & ((\estado_atual.s19~regout\) # (\estado_atual.s1~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ctrl_START~combout\,
	datac => \estado_atual.s19~regout\,
	datad => \estado_atual.s1~regout\,
	combout => \prox_estado.s2~0_combout\);

-- Location: LCFF_X64_Y24_N27
\estado_atual.s2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ctrl_CLK~clkctrl_outclk\,
	datain => \prox_estado.s2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estado_atual.s2~regout\);

-- Location: LCCOMB_X64_Y24_N8
\ctrl_CLR_TIMER~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ctrl_CLR_TIMER~2_combout\ = (\estado_atual.s12~regout\) # (\estado_atual.s2~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \estado_atual.s12~regout\,
	datad => \estado_atual.s2~regout\,
	combout => \ctrl_CLR_TIMER~2_combout\);

-- Location: LCFF_X64_Y24_N11
\estado_atual.s3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ctrl_CLK~clkctrl_outclk\,
	sdata => \ctrl_CLR_TIMER~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estado_atual.s3~regout\);

-- Location: LCCOMB_X64_Y24_N6
\Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\ctrl_COLLECTED~combout\ & (!\ctrl_Q0_MOEDA~combout\ & ((\estado_atual.s3~regout\)))) # (!\ctrl_COLLECTED~combout\ & ((\estado_atual.s4~regout\) # ((!\ctrl_Q0_MOEDA~combout\ & \estado_atual.s3~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl_COLLECTED~combout\,
	datab => \ctrl_Q0_MOEDA~combout\,
	datac => \estado_atual.s4~regout\,
	datad => \estado_atual.s3~regout\,
	combout => \Selector2~0_combout\);

-- Location: LCCOMB_X64_Y24_N30
\Selector2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector2~1_combout\ = (\estado_atual.s6~regout\) # ((\estado_atual.s7~regout\) # (\Selector2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estado_atual.s6~regout\,
	datac => \estado_atual.s7~regout\,
	datad => \Selector2~0_combout\,
	combout => \Selector2~1_combout\);

-- Location: LCFF_X64_Y24_N31
\estado_atual.s8\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ctrl_CLK~clkctrl_outclk\,
	datain => \Selector2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estado_atual.s8~regout\);

-- Location: LCCOMB_X64_Y24_N12
\prox_estado.s9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \prox_estado.s9~0_combout\ = (\ctrl_Q0_OBST~combout\ & \estado_atual.s8~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ctrl_Q0_OBST~combout\,
	datad => \estado_atual.s8~regout\,
	combout => \prox_estado.s9~0_combout\);

-- Location: LCFF_X64_Y24_N13
\estado_atual.s9\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ctrl_CLK~clkctrl_outclk\,
	datain => \prox_estado.s9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estado_atual.s9~regout\);

-- Location: LCCOMB_X64_Y24_N28
\Selector5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (\ctrl_ENDED~combout\ & \estado_atual.s9~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl_ENDED~combout\,
	datad => \estado_atual.s9~regout\,
	combout => \Selector5~0_combout\);

-- Location: LCFF_X64_Y24_N29
\estado_atual.s14\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ctrl_CLK~clkctrl_outclk\,
	datain => \Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estado_atual.s14~regout\);

-- Location: LCCOMB_X64_Y25_N0
\ctrl_CLR_START~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ctrl_CLR_START~1_combout\ = (\estado_atual.s2~regout\) # (\estado_atual.s14~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \estado_atual.s2~regout\,
	datad => \estado_atual.s14~regout\,
	combout => \ctrl_CLR_START~1_combout\);

-- Location: LCCOMB_X63_Y24_N26
WideOr0 : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr0~combout\ = (\estado_atual.s15~regout\) # ((\estado_atual.s1~regout\) # (\estado_atual.s19~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estado_atual.s15~regout\,
	datac => \estado_atual.s1~regout\,
	datad => \estado_atual.s19~regout\,
	combout => \WideOr0~combout\);

-- Location: LCCOMB_X64_Y24_N10
WideOr3 : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr3~combout\ = (\estado_atual.s19~regout\) # (\estado_atual.s15~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_atual.s19~regout\,
	datab => \estado_atual.s15~regout\,
	combout => \WideOr3~combout\);

-- Location: PIN_L25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ctrl_LFSR_SHFT~I\ : cycloneii_io
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
	datain => \estado_atual.s12~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ctrl_LFSR_SHFT);

-- Location: PIN_L19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ctrl_CNT_MOEDA1~I\ : cycloneii_io
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
	datain => \estado_atual.s6~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ctrl_CNT_MOEDA1);

-- Location: PIN_L24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ctrl_CNT_MOEDA2~I\ : cycloneii_io
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
	datain => \estado_atual.s7~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ctrl_CNT_MOEDA2);

-- Location: PIN_L23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ctrl_RMV_MOEDA~I\ : cycloneii_io
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
	datain => \estado_atual.s8~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ctrl_RMV_MOEDA);

-- Location: PIN_AD19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ctrl_RMV_OBST~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ctrl_RMV_OBST);

-- Location: PIN_K21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ctrl_SET_PLAYER~I\ : cycloneii_io
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
	datain => \estado_atual.s14~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ctrl_SET_PLAYER);

-- Location: PIN_H25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ctrl_CLR_MOEDA1~I\ : cycloneii_io
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
	datain => \estado_atual.s2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ctrl_CLR_MOEDA1);

-- Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ctrl_CLR_MOEDA2~I\ : cycloneii_io
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
	datain => \estado_atual.s2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ctrl_CLR_MOEDA2);

-- Location: PIN_J24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ctrl_CLR_PLAYER~I\ : cycloneii_io
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
	datain => \estado_atual.s2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ctrl_CLR_PLAYER);

-- Location: PIN_K25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ctrl_CLR_TIMER~I\ : cycloneii_io
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
	datain => \ctrl_CLR_TIMER~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ctrl_CLR_TIMER);

-- Location: PIN_K24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ctrl_CLR_START~I\ : cycloneii_io
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
	datain => \ctrl_CLR_START~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ctrl_CLR_START);

-- Location: PIN_K26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ctrl_RENDER~I\ : cycloneii_io
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
	datain => \WideOr0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ctrl_RENDER);

-- Location: PIN_K19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ctrl_CMD[0]~I\ : cycloneii_io
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
	padio => ww_ctrl_CMD(0));

-- Location: PIN_J26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ctrl_CMD[1]~I\ : cycloneii_io
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
	datain => \estado_atual.s19~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ctrl_CMD(1));

-- Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ctrl_CMD[2]~I\ : cycloneii_io
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
	datain => \WideOr0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ctrl_CMD(2));

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ctrl_RESULT[0]~I\ : cycloneii_io
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
	padio => ww_ctrl_RESULT(0));

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ctrl_RESULT[1]~I\ : cycloneii_io
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
	padio => ww_ctrl_RESULT(1));

-- Location: PIN_R25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ctrl_RESULT[2]~I\ : cycloneii_io
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
	padio => ww_ctrl_RESULT(2));
END structure;


