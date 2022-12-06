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

-- DATE "12/01/2022 22:35:37"

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

ENTITY 	timer_frame IS
    PORT (
	tmr_clk : IN std_logic;
	tmr_reset : IN std_logic;
	tmr_q : OUT std_logic
	);
END timer_frame;

-- Design Ports Information
-- tmr_q	=>  Location: PIN_K1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- tmr_clk	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- tmr_reset	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF timer_frame IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_tmr_clk : std_logic;
SIGNAL ww_tmr_reset : std_logic;
SIGNAL ww_tmr_q : std_logic;
SIGNAL \tmr_clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \tmr_reset~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \count[1]~20_combout\ : std_logic;
SIGNAL \count[3]~24_combout\ : std_logic;
SIGNAL \count[5]~28_combout\ : std_logic;
SIGNAL \count[17]~52_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \tmr_clk~combout\ : std_logic;
SIGNAL \tmr_clk~clkctrl_outclk\ : std_logic;
SIGNAL \count[0]~60_combout\ : std_logic;
SIGNAL \tmr_reset~combout\ : std_logic;
SIGNAL \tmr_reset~clkctrl_outclk\ : std_logic;
SIGNAL \count[1]~21\ : std_logic;
SIGNAL \count[2]~22_combout\ : std_logic;
SIGNAL \count[2]~23\ : std_logic;
SIGNAL \count[3]~25\ : std_logic;
SIGNAL \count[4]~26_combout\ : std_logic;
SIGNAL \count[4]~27\ : std_logic;
SIGNAL \count[5]~29\ : std_logic;
SIGNAL \count[6]~30_combout\ : std_logic;
SIGNAL \count[6]~31\ : std_logic;
SIGNAL \count[7]~33\ : std_logic;
SIGNAL \count[8]~34_combout\ : std_logic;
SIGNAL \count[8]~35\ : std_logic;
SIGNAL \count[9]~36_combout\ : std_logic;
SIGNAL \count[9]~37\ : std_logic;
SIGNAL \count[10]~38_combout\ : std_logic;
SIGNAL \count[10]~39\ : std_logic;
SIGNAL \count[11]~40_combout\ : std_logic;
SIGNAL \count[11]~41\ : std_logic;
SIGNAL \count[12]~42_combout\ : std_logic;
SIGNAL \count[12]~43\ : std_logic;
SIGNAL \count[13]~44_combout\ : std_logic;
SIGNAL \count[13]~45\ : std_logic;
SIGNAL \count[14]~47\ : std_logic;
SIGNAL \count[15]~48_combout\ : std_logic;
SIGNAL \count[15]~49\ : std_logic;
SIGNAL \count[16]~51\ : std_logic;
SIGNAL \count[17]~53\ : std_logic;
SIGNAL \count[18]~54_combout\ : std_logic;
SIGNAL \count[18]~55\ : std_logic;
SIGNAL \count[19]~57\ : std_logic;
SIGNAL \count[20]~58_combout\ : std_logic;
SIGNAL \count[19]~56_combout\ : std_logic;
SIGNAL \count[14]~46_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \count[7]~32_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \count[16]~50_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \LessThan0~7_combout\ : std_logic;
SIGNAL count : std_logic_vector(20 DOWNTO 0);

BEGIN

ww_tmr_clk <= tmr_clk;
ww_tmr_reset <= tmr_reset;
tmr_q <= ww_tmr_q;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\tmr_clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \tmr_clk~combout\);

\tmr_reset~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \tmr_reset~combout\);

-- Location: LCFF_X1_Y25_N13
\count[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \tmr_clk~clkctrl_outclk\,
	datain => \count[17]~52_combout\,
	aclr => \tmr_reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(17));

-- Location: LCFF_X1_Y26_N21
\count[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \tmr_clk~clkctrl_outclk\,
	datain => \count[5]~28_combout\,
	aclr => \tmr_reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(5));

-- Location: LCFF_X1_Y26_N17
\count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \tmr_clk~clkctrl_outclk\,
	datain => \count[3]~24_combout\,
	aclr => \tmr_reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(3));

-- Location: LCFF_X1_Y26_N13
\count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \tmr_clk~clkctrl_outclk\,
	datain => \count[1]~20_combout\,
	aclr => \tmr_reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(1));

-- Location: LCCOMB_X1_Y26_N12
\count[1]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[1]~20_combout\ = (count(1) & (count(0) $ (VCC))) # (!count(1) & (count(0) & VCC))
-- \count[1]~21\ = CARRY((count(1) & count(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(1),
	datab => count(0),
	datad => VCC,
	combout => \count[1]~20_combout\,
	cout => \count[1]~21\);

-- Location: LCCOMB_X1_Y26_N16
\count[3]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[3]~24_combout\ = (count(3) & (\count[2]~23\ $ (GND))) # (!count(3) & (!\count[2]~23\ & VCC))
-- \count[3]~25\ = CARRY((count(3) & !\count[2]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(3),
	datad => VCC,
	cin => \count[2]~23\,
	combout => \count[3]~24_combout\,
	cout => \count[3]~25\);

-- Location: LCCOMB_X1_Y26_N20
\count[5]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[5]~28_combout\ = (count(5) & (\count[4]~27\ $ (GND))) # (!count(5) & (!\count[4]~27\ & VCC))
-- \count[5]~29\ = CARRY((count(5) & !\count[4]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(5),
	datad => VCC,
	cin => \count[4]~27\,
	combout => \count[5]~28_combout\,
	cout => \count[5]~29\);

-- Location: LCCOMB_X1_Y25_N12
\count[17]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[17]~52_combout\ = (count(17) & (\count[16]~51\ $ (GND))) # (!count(17) & (!\count[16]~51\ & VCC))
-- \count[17]~53\ = CARRY((count(17) & !\count[16]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(17),
	datad => VCC,
	cin => \count[16]~51\,
	combout => \count[17]~52_combout\,
	cout => \count[17]~53\);

-- Location: LCCOMB_X1_Y26_N10
\LessThan0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = (count(5) & ((count(4)) # ((count(2) & count(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(2),
	datab => count(3),
	datac => count(5),
	datad => count(4),
	combout => \LessThan0~4_combout\);

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\tmr_clk~I\ : cycloneii_io
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
	padio => ww_tmr_clk,
	combout => \tmr_clk~combout\);

-- Location: CLKCTRL_G3
\tmr_clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \tmr_clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \tmr_clk~clkctrl_outclk\);

-- Location: LCCOMB_X1_Y26_N2
\count[0]~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[0]~60_combout\ = !count(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => count(0),
	combout => \count[0]~60_combout\);

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\tmr_reset~I\ : cycloneii_io
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
	padio => ww_tmr_reset,
	combout => \tmr_reset~combout\);

-- Location: CLKCTRL_G1
\tmr_reset~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \tmr_reset~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \tmr_reset~clkctrl_outclk\);

-- Location: LCFF_X1_Y26_N3
\count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \tmr_clk~clkctrl_outclk\,
	datain => \count[0]~60_combout\,
	aclr => \tmr_reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(0));

-- Location: LCCOMB_X1_Y26_N14
\count[2]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[2]~22_combout\ = (count(2) & (!\count[1]~21\)) # (!count(2) & ((\count[1]~21\) # (GND)))
-- \count[2]~23\ = CARRY((!\count[1]~21\) # (!count(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(2),
	datad => VCC,
	cin => \count[1]~21\,
	combout => \count[2]~22_combout\,
	cout => \count[2]~23\);

-- Location: LCFF_X1_Y26_N15
\count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \tmr_clk~clkctrl_outclk\,
	datain => \count[2]~22_combout\,
	aclr => \tmr_reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(2));

-- Location: LCCOMB_X1_Y26_N18
\count[4]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[4]~26_combout\ = (count(4) & (!\count[3]~25\)) # (!count(4) & ((\count[3]~25\) # (GND)))
-- \count[4]~27\ = CARRY((!\count[3]~25\) # (!count(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(4),
	datad => VCC,
	cin => \count[3]~25\,
	combout => \count[4]~26_combout\,
	cout => \count[4]~27\);

-- Location: LCFF_X1_Y26_N19
\count[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \tmr_clk~clkctrl_outclk\,
	datain => \count[4]~26_combout\,
	aclr => \tmr_reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(4));

-- Location: LCCOMB_X1_Y26_N22
\count[6]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[6]~30_combout\ = (count(6) & (!\count[5]~29\)) # (!count(6) & ((\count[5]~29\) # (GND)))
-- \count[6]~31\ = CARRY((!\count[5]~29\) # (!count(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(6),
	datad => VCC,
	cin => \count[5]~29\,
	combout => \count[6]~30_combout\,
	cout => \count[6]~31\);

-- Location: LCFF_X1_Y26_N23
\count[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \tmr_clk~clkctrl_outclk\,
	datain => \count[6]~30_combout\,
	aclr => \tmr_reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(6));

-- Location: LCCOMB_X1_Y26_N24
\count[7]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[7]~32_combout\ = (count(7) & (\count[6]~31\ $ (GND))) # (!count(7) & (!\count[6]~31\ & VCC))
-- \count[7]~33\ = CARRY((count(7) & !\count[6]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(7),
	datad => VCC,
	cin => \count[6]~31\,
	combout => \count[7]~32_combout\,
	cout => \count[7]~33\);

-- Location: LCCOMB_X1_Y26_N26
\count[8]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[8]~34_combout\ = (count(8) & (!\count[7]~33\)) # (!count(8) & ((\count[7]~33\) # (GND)))
-- \count[8]~35\ = CARRY((!\count[7]~33\) # (!count(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(8),
	datad => VCC,
	cin => \count[7]~33\,
	combout => \count[8]~34_combout\,
	cout => \count[8]~35\);

-- Location: LCFF_X1_Y26_N27
\count[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \tmr_clk~clkctrl_outclk\,
	datain => \count[8]~34_combout\,
	aclr => \tmr_reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(8));

-- Location: LCCOMB_X1_Y26_N28
\count[9]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[9]~36_combout\ = (count(9) & (\count[8]~35\ $ (GND))) # (!count(9) & (!\count[8]~35\ & VCC))
-- \count[9]~37\ = CARRY((count(9) & !\count[8]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(9),
	datad => VCC,
	cin => \count[8]~35\,
	combout => \count[9]~36_combout\,
	cout => \count[9]~37\);

-- Location: LCFF_X1_Y26_N29
\count[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \tmr_clk~clkctrl_outclk\,
	datain => \count[9]~36_combout\,
	aclr => \tmr_reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(9));

-- Location: LCCOMB_X1_Y26_N30
\count[10]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[10]~38_combout\ = (count(10) & (!\count[9]~37\)) # (!count(10) & ((\count[9]~37\) # (GND)))
-- \count[10]~39\ = CARRY((!\count[9]~37\) # (!count(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(10),
	datad => VCC,
	cin => \count[9]~37\,
	combout => \count[10]~38_combout\,
	cout => \count[10]~39\);

-- Location: LCFF_X1_Y26_N31
\count[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \tmr_clk~clkctrl_outclk\,
	datain => \count[10]~38_combout\,
	aclr => \tmr_reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(10));

-- Location: LCCOMB_X1_Y25_N0
\count[11]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[11]~40_combout\ = (count(11) & (\count[10]~39\ $ (GND))) # (!count(11) & (!\count[10]~39\ & VCC))
-- \count[11]~41\ = CARRY((count(11) & !\count[10]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(11),
	datad => VCC,
	cin => \count[10]~39\,
	combout => \count[11]~40_combout\,
	cout => \count[11]~41\);

-- Location: LCFF_X1_Y25_N1
\count[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \tmr_clk~clkctrl_outclk\,
	datain => \count[11]~40_combout\,
	aclr => \tmr_reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(11));

-- Location: LCCOMB_X1_Y25_N2
\count[12]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[12]~42_combout\ = (count(12) & (!\count[11]~41\)) # (!count(12) & ((\count[11]~41\) # (GND)))
-- \count[12]~43\ = CARRY((!\count[11]~41\) # (!count(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(12),
	datad => VCC,
	cin => \count[11]~41\,
	combout => \count[12]~42_combout\,
	cout => \count[12]~43\);

-- Location: LCFF_X1_Y25_N3
\count[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \tmr_clk~clkctrl_outclk\,
	datain => \count[12]~42_combout\,
	aclr => \tmr_reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(12));

-- Location: LCCOMB_X1_Y25_N4
\count[13]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[13]~44_combout\ = (count(13) & (\count[12]~43\ $ (GND))) # (!count(13) & (!\count[12]~43\ & VCC))
-- \count[13]~45\ = CARRY((count(13) & !\count[12]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(13),
	datad => VCC,
	cin => \count[12]~43\,
	combout => \count[13]~44_combout\,
	cout => \count[13]~45\);

-- Location: LCFF_X1_Y25_N5
\count[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \tmr_clk~clkctrl_outclk\,
	datain => \count[13]~44_combout\,
	aclr => \tmr_reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(13));

-- Location: LCCOMB_X1_Y25_N6
\count[14]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[14]~46_combout\ = (count(14) & (!\count[13]~45\)) # (!count(14) & ((\count[13]~45\) # (GND)))
-- \count[14]~47\ = CARRY((!\count[13]~45\) # (!count(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(14),
	datad => VCC,
	cin => \count[13]~45\,
	combout => \count[14]~46_combout\,
	cout => \count[14]~47\);

-- Location: LCCOMB_X1_Y25_N8
\count[15]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[15]~48_combout\ = (count(15) & (\count[14]~47\ $ (GND))) # (!count(15) & (!\count[14]~47\ & VCC))
-- \count[15]~49\ = CARRY((count(15) & !\count[14]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(15),
	datad => VCC,
	cin => \count[14]~47\,
	combout => \count[15]~48_combout\,
	cout => \count[15]~49\);

-- Location: LCFF_X1_Y25_N9
\count[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \tmr_clk~clkctrl_outclk\,
	datain => \count[15]~48_combout\,
	aclr => \tmr_reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(15));

-- Location: LCCOMB_X1_Y25_N10
\count[16]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[16]~50_combout\ = (count(16) & (!\count[15]~49\)) # (!count(16) & ((\count[15]~49\) # (GND)))
-- \count[16]~51\ = CARRY((!\count[15]~49\) # (!count(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(16),
	datad => VCC,
	cin => \count[15]~49\,
	combout => \count[16]~50_combout\,
	cout => \count[16]~51\);

-- Location: LCCOMB_X1_Y25_N14
\count[18]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[18]~54_combout\ = (count(18) & (!\count[17]~53\)) # (!count(18) & ((\count[17]~53\) # (GND)))
-- \count[18]~55\ = CARRY((!\count[17]~53\) # (!count(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(18),
	datad => VCC,
	cin => \count[17]~53\,
	combout => \count[18]~54_combout\,
	cout => \count[18]~55\);

-- Location: LCFF_X1_Y25_N15
\count[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \tmr_clk~clkctrl_outclk\,
	datain => \count[18]~54_combout\,
	aclr => \tmr_reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(18));

-- Location: LCCOMB_X1_Y25_N16
\count[19]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[19]~56_combout\ = (count(19) & (\count[18]~55\ $ (GND))) # (!count(19) & (!\count[18]~55\ & VCC))
-- \count[19]~57\ = CARRY((count(19) & !\count[18]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(19),
	datad => VCC,
	cin => \count[18]~55\,
	combout => \count[19]~56_combout\,
	cout => \count[19]~57\);

-- Location: LCCOMB_X1_Y25_N18
\count[20]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[20]~58_combout\ = \count[19]~57\ $ (count(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => count(20),
	cin => \count[19]~57\,
	combout => \count[20]~58_combout\);

-- Location: LCFF_X1_Y25_N19
\count[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \tmr_clk~clkctrl_outclk\,
	datain => \count[20]~58_combout\,
	aclr => \tmr_reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(20));

-- Location: LCFF_X1_Y25_N17
\count[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \tmr_clk~clkctrl_outclk\,
	datain => \count[19]~56_combout\,
	aclr => \tmr_reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(19));

-- Location: LCFF_X1_Y25_N7
\count[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \tmr_clk~clkctrl_outclk\,
	datain => \count[14]~46_combout\,
	aclr => \tmr_reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(14));

-- Location: LCCOMB_X1_Y25_N28
\LessThan0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (count(16) & (count(9) & (count(13) & count(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(16),
	datab => count(9),
	datac => count(13),
	datad => count(14),
	combout => \LessThan0~2_combout\);

-- Location: LCFF_X1_Y26_N25
\count[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \tmr_clk~clkctrl_outclk\,
	datain => \count[7]~32_combout\,
	aclr => \tmr_reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(7));

-- Location: LCCOMB_X1_Y26_N0
\LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (count(7)) # (count(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => count(7),
	datad => count(8),
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X1_Y26_N8
\LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = (\LessThan0~2_combout\ & ((\LessThan0~3_combout\) # ((\LessThan0~4_combout\ & count(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~4_combout\,
	datab => count(6),
	datac => \LessThan0~2_combout\,
	datad => \LessThan0~3_combout\,
	combout => \LessThan0~5_combout\);

-- Location: LCCOMB_X1_Y25_N24
\LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (count(15)) # ((count(14) & (count(13) & count(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(14),
	datab => count(15),
	datac => count(13),
	datad => count(12),
	combout => \LessThan0~0_combout\);

-- Location: LCFF_X1_Y25_N11
\count[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \tmr_clk~clkctrl_outclk\,
	datain => \count[16]~50_combout\,
	aclr => \tmr_reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(16));

-- Location: LCCOMB_X1_Y25_N26
\LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (count(17)) # ((count(18)) # ((\LessThan0~0_combout\ & count(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(17),
	datab => count(18),
	datac => \LessThan0~0_combout\,
	datad => count(16),
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X1_Y25_N22
\LessThan0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = (\LessThan0~1_combout\) # ((count(10) & (count(11) & \LessThan0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(10),
	datab => count(11),
	datac => \LessThan0~5_combout\,
	datad => \LessThan0~1_combout\,
	combout => \LessThan0~6_combout\);

-- Location: LCCOMB_X1_Y25_N20
\LessThan0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~7_combout\ = (count(20) & (count(19) & \LessThan0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(20),
	datac => count(19),
	datad => \LessThan0~6_combout\,
	combout => \LessThan0~7_combout\);

-- Location: PIN_K1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\tmr_q~I\ : cycloneii_io
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
	datain => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_tmr_q);
END structure;


