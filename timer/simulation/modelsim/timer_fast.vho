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

-- DATE "12/15/2022 23:23:28"

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

ENTITY 	timer IS
    PORT (
	tmr_clk : IN std_logic;
	tmr_reset : IN std_logic;
	tmr_q : OUT std_logic
	);
END timer;

-- Design Ports Information
-- tmr_q	=>  Location: PIN_AB4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- tmr_clk	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- tmr_reset	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF timer IS
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
SIGNAL \temp[1]~22_combout\ : std_logic;
SIGNAL \temp[2]~24_combout\ : std_logic;
SIGNAL \temp[4]~28_combout\ : std_logic;
SIGNAL \temp[6]~32_combout\ : std_logic;
SIGNAL \temp[18]~56_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \tmr_clk~combout\ : std_logic;
SIGNAL \tmr_clk~clkctrl_outclk\ : std_logic;
SIGNAL \temp[0]~66_combout\ : std_logic;
SIGNAL \tmr_reset~combout\ : std_logic;
SIGNAL \tmr_reset~clkctrl_outclk\ : std_logic;
SIGNAL \temp[1]~23\ : std_logic;
SIGNAL \temp[2]~25\ : std_logic;
SIGNAL \temp[3]~26_combout\ : std_logic;
SIGNAL \temp[3]~27\ : std_logic;
SIGNAL \temp[4]~29\ : std_logic;
SIGNAL \temp[5]~30_combout\ : std_logic;
SIGNAL \temp[5]~31\ : std_logic;
SIGNAL \temp[6]~33\ : std_logic;
SIGNAL \temp[7]~34_combout\ : std_logic;
SIGNAL \temp[7]~35\ : std_logic;
SIGNAL \temp[8]~37\ : std_logic;
SIGNAL \temp[9]~38_combout\ : std_logic;
SIGNAL \temp[9]~39\ : std_logic;
SIGNAL \temp[10]~40_combout\ : std_logic;
SIGNAL \temp[10]~41\ : std_logic;
SIGNAL \temp[11]~42_combout\ : std_logic;
SIGNAL \temp[11]~43\ : std_logic;
SIGNAL \temp[12]~44_combout\ : std_logic;
SIGNAL \temp[12]~45\ : std_logic;
SIGNAL \temp[13]~46_combout\ : std_logic;
SIGNAL \temp[13]~47\ : std_logic;
SIGNAL \temp[14]~48_combout\ : std_logic;
SIGNAL \temp[14]~49\ : std_logic;
SIGNAL \temp[15]~50_combout\ : std_logic;
SIGNAL \LessThan0~7_combout\ : std_logic;
SIGNAL \temp[15]~51\ : std_logic;
SIGNAL \temp[16]~52_combout\ : std_logic;
SIGNAL \temp[16]~53\ : std_logic;
SIGNAL \temp[17]~55\ : std_logic;
SIGNAL \temp[18]~57\ : std_logic;
SIGNAL \temp[19]~58_combout\ : std_logic;
SIGNAL \temp[19]~59\ : std_logic;
SIGNAL \temp[20]~61\ : std_logic;
SIGNAL \temp[21]~62_combout\ : std_logic;
SIGNAL \temp[21]~63\ : std_logic;
SIGNAL \temp[22]~64_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \temp[17]~54_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \temp[8]~36_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \temp[20]~60_combout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \LessThan0~8_combout\ : std_logic;
SIGNAL temp : std_logic_vector(22 DOWNTO 0);

BEGIN

ww_tmr_clk <= tmr_clk;
ww_tmr_reset <= tmr_reset;
tmr_q <= ww_tmr_q;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\tmr_clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \tmr_clk~combout\);

\tmr_reset~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \tmr_reset~combout\);

-- Location: LCFF_X1_Y3_N13
\temp[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \tmr_clk~clkctrl_outclk\,
	datain => \temp[18]~56_combout\,
	aclr => \tmr_reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => temp(18));

-- Location: LCFF_X1_Y4_N21
\temp[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \tmr_clk~clkctrl_outclk\,
	datain => \temp[6]~32_combout\,
	aclr => \tmr_reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => temp(6));

-- Location: LCFF_X1_Y4_N17
\temp[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \tmr_clk~clkctrl_outclk\,
	datain => \temp[4]~28_combout\,
	aclr => \tmr_reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => temp(4));

-- Location: LCFF_X1_Y4_N11
\temp[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \tmr_clk~clkctrl_outclk\,
	datain => \temp[1]~22_combout\,
	aclr => \tmr_reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => temp(1));

-- Location: LCFF_X1_Y4_N13
\temp[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \tmr_clk~clkctrl_outclk\,
	datain => \temp[2]~24_combout\,
	aclr => \tmr_reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => temp(2));

-- Location: LCCOMB_X1_Y4_N10
\temp[1]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \temp[1]~22_combout\ = (temp(1) & (temp(0) $ (VCC))) # (!temp(1) & (temp(0) & VCC))
-- \temp[1]~23\ = CARRY((temp(1) & temp(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp(1),
	datab => temp(0),
	datad => VCC,
	combout => \temp[1]~22_combout\,
	cout => \temp[1]~23\);

-- Location: LCCOMB_X1_Y4_N12
\temp[2]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \temp[2]~24_combout\ = (temp(2) & (!\temp[1]~23\)) # (!temp(2) & ((\temp[1]~23\) # (GND)))
-- \temp[2]~25\ = CARRY((!\temp[1]~23\) # (!temp(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => temp(2),
	datad => VCC,
	cin => \temp[1]~23\,
	combout => \temp[2]~24_combout\,
	cout => \temp[2]~25\);

-- Location: LCCOMB_X1_Y4_N16
\temp[4]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \temp[4]~28_combout\ = (temp(4) & (!\temp[3]~27\)) # (!temp(4) & ((\temp[3]~27\) # (GND)))
-- \temp[4]~29\ = CARRY((!\temp[3]~27\) # (!temp(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => temp(4),
	datad => VCC,
	cin => \temp[3]~27\,
	combout => \temp[4]~28_combout\,
	cout => \temp[4]~29\);

-- Location: LCCOMB_X1_Y4_N20
\temp[6]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \temp[6]~32_combout\ = (temp(6) & (!\temp[5]~31\)) # (!temp(6) & ((\temp[5]~31\) # (GND)))
-- \temp[6]~33\ = CARRY((!\temp[5]~31\) # (!temp(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => temp(6),
	datad => VCC,
	cin => \temp[5]~31\,
	combout => \temp[6]~32_combout\,
	cout => \temp[6]~33\);

-- Location: LCCOMB_X1_Y3_N12
\temp[18]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \temp[18]~56_combout\ = (temp(18) & (!\temp[17]~55\)) # (!temp(18) & ((\temp[17]~55\) # (GND)))
-- \temp[18]~57\ = CARRY((!\temp[17]~55\) # (!temp(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => temp(18),
	datad => VCC,
	cin => \temp[17]~55\,
	combout => \temp[18]~56_combout\,
	cout => \temp[18]~57\);

-- Location: LCCOMB_X1_Y4_N0
\LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (temp(4) & ((temp(3)) # ((temp(2) & temp(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp(3),
	datab => temp(2),
	datac => temp(1),
	datad => temp(4),
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X1_Y4_N6
\LessThan0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = (temp(6) & ((temp(5)) # (\LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => temp(5),
	datac => temp(6),
	datad => \LessThan0~3_combout\,
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

-- Location: LCCOMB_X1_Y4_N2
\temp[0]~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \temp[0]~66_combout\ = !temp(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => temp(0),
	combout => \temp[0]~66_combout\);

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

-- Location: LCFF_X1_Y4_N3
\temp[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \tmr_clk~clkctrl_outclk\,
	datain => \temp[0]~66_combout\,
	aclr => \tmr_reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => temp(0));

-- Location: LCCOMB_X1_Y4_N14
\temp[3]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \temp[3]~26_combout\ = (temp(3) & (\temp[2]~25\ $ (GND))) # (!temp(3) & (!\temp[2]~25\ & VCC))
-- \temp[3]~27\ = CARRY((temp(3) & !\temp[2]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => temp(3),
	datad => VCC,
	cin => \temp[2]~25\,
	combout => \temp[3]~26_combout\,
	cout => \temp[3]~27\);

-- Location: LCFF_X1_Y4_N15
\temp[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \tmr_clk~clkctrl_outclk\,
	datain => \temp[3]~26_combout\,
	aclr => \tmr_reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => temp(3));

-- Location: LCCOMB_X1_Y4_N18
\temp[5]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \temp[5]~30_combout\ = (temp(5) & (\temp[4]~29\ $ (GND))) # (!temp(5) & (!\temp[4]~29\ & VCC))
-- \temp[5]~31\ = CARRY((temp(5) & !\temp[4]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => temp(5),
	datad => VCC,
	cin => \temp[4]~29\,
	combout => \temp[5]~30_combout\,
	cout => \temp[5]~31\);

-- Location: LCFF_X1_Y4_N19
\temp[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \tmr_clk~clkctrl_outclk\,
	datain => \temp[5]~30_combout\,
	aclr => \tmr_reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => temp(5));

-- Location: LCCOMB_X1_Y4_N22
\temp[7]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \temp[7]~34_combout\ = (temp(7) & (\temp[6]~33\ $ (GND))) # (!temp(7) & (!\temp[6]~33\ & VCC))
-- \temp[7]~35\ = CARRY((temp(7) & !\temp[6]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => temp(7),
	datad => VCC,
	cin => \temp[6]~33\,
	combout => \temp[7]~34_combout\,
	cout => \temp[7]~35\);

-- Location: LCFF_X1_Y4_N23
\temp[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \tmr_clk~clkctrl_outclk\,
	datain => \temp[7]~34_combout\,
	aclr => \tmr_reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => temp(7));

-- Location: LCCOMB_X1_Y4_N24
\temp[8]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \temp[8]~36_combout\ = (temp(8) & (!\temp[7]~35\)) # (!temp(8) & ((\temp[7]~35\) # (GND)))
-- \temp[8]~37\ = CARRY((!\temp[7]~35\) # (!temp(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => temp(8),
	datad => VCC,
	cin => \temp[7]~35\,
	combout => \temp[8]~36_combout\,
	cout => \temp[8]~37\);

-- Location: LCCOMB_X1_Y4_N26
\temp[9]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \temp[9]~38_combout\ = (temp(9) & (\temp[8]~37\ $ (GND))) # (!temp(9) & (!\temp[8]~37\ & VCC))
-- \temp[9]~39\ = CARRY((temp(9) & !\temp[8]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => temp(9),
	datad => VCC,
	cin => \temp[8]~37\,
	combout => \temp[9]~38_combout\,
	cout => \temp[9]~39\);

-- Location: LCFF_X1_Y4_N27
\temp[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \tmr_clk~clkctrl_outclk\,
	datain => \temp[9]~38_combout\,
	aclr => \tmr_reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => temp(9));

-- Location: LCCOMB_X1_Y4_N28
\temp[10]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \temp[10]~40_combout\ = (temp(10) & (!\temp[9]~39\)) # (!temp(10) & ((\temp[9]~39\) # (GND)))
-- \temp[10]~41\ = CARRY((!\temp[9]~39\) # (!temp(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => temp(10),
	datad => VCC,
	cin => \temp[9]~39\,
	combout => \temp[10]~40_combout\,
	cout => \temp[10]~41\);

-- Location: LCFF_X1_Y4_N29
\temp[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \tmr_clk~clkctrl_outclk\,
	datain => \temp[10]~40_combout\,
	aclr => \tmr_reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => temp(10));

-- Location: LCCOMB_X1_Y4_N30
\temp[11]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \temp[11]~42_combout\ = (temp(11) & (\temp[10]~41\ $ (GND))) # (!temp(11) & (!\temp[10]~41\ & VCC))
-- \temp[11]~43\ = CARRY((temp(11) & !\temp[10]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => temp(11),
	datad => VCC,
	cin => \temp[10]~41\,
	combout => \temp[11]~42_combout\,
	cout => \temp[11]~43\);

-- Location: LCFF_X1_Y4_N31
\temp[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \tmr_clk~clkctrl_outclk\,
	datain => \temp[11]~42_combout\,
	aclr => \tmr_reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => temp(11));

-- Location: LCCOMB_X1_Y3_N0
\temp[12]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \temp[12]~44_combout\ = (temp(12) & (!\temp[11]~43\)) # (!temp(12) & ((\temp[11]~43\) # (GND)))
-- \temp[12]~45\ = CARRY((!\temp[11]~43\) # (!temp(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => temp(12),
	datad => VCC,
	cin => \temp[11]~43\,
	combout => \temp[12]~44_combout\,
	cout => \temp[12]~45\);

-- Location: LCFF_X1_Y3_N1
\temp[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \tmr_clk~clkctrl_outclk\,
	datain => \temp[12]~44_combout\,
	aclr => \tmr_reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => temp(12));

-- Location: LCCOMB_X1_Y3_N2
\temp[13]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \temp[13]~46_combout\ = (temp(13) & (\temp[12]~45\ $ (GND))) # (!temp(13) & (!\temp[12]~45\ & VCC))
-- \temp[13]~47\ = CARRY((temp(13) & !\temp[12]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => temp(13),
	datad => VCC,
	cin => \temp[12]~45\,
	combout => \temp[13]~46_combout\,
	cout => \temp[13]~47\);

-- Location: LCFF_X1_Y3_N3
\temp[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \tmr_clk~clkctrl_outclk\,
	datain => \temp[13]~46_combout\,
	aclr => \tmr_reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => temp(13));

-- Location: LCCOMB_X1_Y3_N4
\temp[14]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \temp[14]~48_combout\ = (temp(14) & (!\temp[13]~47\)) # (!temp(14) & ((\temp[13]~47\) # (GND)))
-- \temp[14]~49\ = CARRY((!\temp[13]~47\) # (!temp(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => temp(14),
	datad => VCC,
	cin => \temp[13]~47\,
	combout => \temp[14]~48_combout\,
	cout => \temp[14]~49\);

-- Location: LCFF_X1_Y3_N5
\temp[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \tmr_clk~clkctrl_outclk\,
	datain => \temp[14]~48_combout\,
	aclr => \tmr_reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => temp(14));

-- Location: LCCOMB_X1_Y3_N6
\temp[15]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \temp[15]~50_combout\ = (temp(15) & (\temp[14]~49\ $ (GND))) # (!temp(15) & (!\temp[14]~49\ & VCC))
-- \temp[15]~51\ = CARRY((temp(15) & !\temp[14]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => temp(15),
	datad => VCC,
	cin => \temp[14]~49\,
	combout => \temp[15]~50_combout\,
	cout => \temp[15]~51\);

-- Location: LCFF_X1_Y3_N7
\temp[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \tmr_clk~clkctrl_outclk\,
	datain => \temp[15]~50_combout\,
	aclr => \tmr_reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => temp(15));

-- Location: LCCOMB_X1_Y3_N24
\LessThan0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~7_combout\ = (temp(11) & (temp(12) & (temp(14) & temp(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp(11),
	datab => temp(12),
	datac => temp(14),
	datad => temp(15),
	combout => \LessThan0~7_combout\);

-- Location: LCCOMB_X1_Y3_N8
\temp[16]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \temp[16]~52_combout\ = (temp(16) & (!\temp[15]~51\)) # (!temp(16) & ((\temp[15]~51\) # (GND)))
-- \temp[16]~53\ = CARRY((!\temp[15]~51\) # (!temp(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => temp(16),
	datad => VCC,
	cin => \temp[15]~51\,
	combout => \temp[16]~52_combout\,
	cout => \temp[16]~53\);

-- Location: LCFF_X1_Y3_N9
\temp[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \tmr_clk~clkctrl_outclk\,
	datain => \temp[16]~52_combout\,
	aclr => \tmr_reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => temp(16));

-- Location: LCCOMB_X1_Y3_N10
\temp[17]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \temp[17]~54_combout\ = (temp(17) & (\temp[16]~53\ $ (GND))) # (!temp(17) & (!\temp[16]~53\ & VCC))
-- \temp[17]~55\ = CARRY((temp(17) & !\temp[16]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => temp(17),
	datad => VCC,
	cin => \temp[16]~53\,
	combout => \temp[17]~54_combout\,
	cout => \temp[17]~55\);

-- Location: LCCOMB_X1_Y3_N14
\temp[19]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \temp[19]~58_combout\ = (temp(19) & (\temp[18]~57\ $ (GND))) # (!temp(19) & (!\temp[18]~57\ & VCC))
-- \temp[19]~59\ = CARRY((temp(19) & !\temp[18]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => temp(19),
	datad => VCC,
	cin => \temp[18]~57\,
	combout => \temp[19]~58_combout\,
	cout => \temp[19]~59\);

-- Location: LCFF_X1_Y3_N15
\temp[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \tmr_clk~clkctrl_outclk\,
	datain => \temp[19]~58_combout\,
	aclr => \tmr_reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => temp(19));

-- Location: LCCOMB_X1_Y3_N16
\temp[20]~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \temp[20]~60_combout\ = (temp(20) & (!\temp[19]~59\)) # (!temp(20) & ((\temp[19]~59\) # (GND)))
-- \temp[20]~61\ = CARRY((!\temp[19]~59\) # (!temp(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => temp(20),
	datad => VCC,
	cin => \temp[19]~59\,
	combout => \temp[20]~60_combout\,
	cout => \temp[20]~61\);

-- Location: LCCOMB_X1_Y3_N18
\temp[21]~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \temp[21]~62_combout\ = (temp(21) & (\temp[20]~61\ $ (GND))) # (!temp(21) & (!\temp[20]~61\ & VCC))
-- \temp[21]~63\ = CARRY((temp(21) & !\temp[20]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => temp(21),
	datad => VCC,
	cin => \temp[20]~61\,
	combout => \temp[21]~62_combout\,
	cout => \temp[21]~63\);

-- Location: LCFF_X1_Y3_N19
\temp[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \tmr_clk~clkctrl_outclk\,
	datain => \temp[21]~62_combout\,
	aclr => \tmr_reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => temp(21));

-- Location: LCCOMB_X1_Y3_N20
\temp[22]~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \temp[22]~64_combout\ = temp(22) $ (\temp[21]~63\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => temp(22),
	cin => \temp[21]~63\,
	combout => \temp[22]~64_combout\);

-- Location: LCFF_X1_Y3_N21
\temp[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \tmr_clk~clkctrl_outclk\,
	datain => \temp[22]~64_combout\,
	aclr => \tmr_reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => temp(22));

-- Location: LCCOMB_X2_Y3_N24
\LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (temp(16)) # ((temp(13) & (temp(14) & temp(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp(13),
	datab => temp(14),
	datac => temp(15),
	datad => temp(16),
	combout => \LessThan0~0_combout\);

-- Location: LCFF_X1_Y3_N11
\temp[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \tmr_clk~clkctrl_outclk\,
	datain => \temp[17]~54_combout\,
	aclr => \tmr_reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => temp(17));

-- Location: LCCOMB_X1_Y3_N22
\LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (temp(18)) # ((temp(19)) # ((\LessThan0~0_combout\ & temp(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp(18),
	datab => \LessThan0~0_combout\,
	datac => temp(19),
	datad => temp(17),
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X1_Y3_N28
\LessThan0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (temp(22)) # ((temp(20) & (temp(21) & \LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp(20),
	datab => temp(21),
	datac => temp(22),
	datad => \LessThan0~1_combout\,
	combout => \LessThan0~2_combout\);

-- Location: LCFF_X1_Y4_N25
\temp[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \tmr_clk~clkctrl_outclk\,
	datain => \temp[8]~36_combout\,
	aclr => \tmr_reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => temp(8));

-- Location: LCCOMB_X1_Y4_N8
\LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = (temp(8)) # ((temp(9)) # ((\LessThan0~4_combout\ & temp(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~4_combout\,
	datab => temp(7),
	datac => temp(8),
	datad => temp(9),
	combout => \LessThan0~5_combout\);

-- Location: LCFF_X1_Y3_N17
\temp[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \tmr_clk~clkctrl_outclk\,
	datain => \temp[20]~60_combout\,
	aclr => \tmr_reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => temp(20));

-- Location: LCCOMB_X1_Y3_N26
\LessThan0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = (temp(17) & (temp(21) & (temp(20) & temp(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp(17),
	datab => temp(21),
	datac => temp(20),
	datad => temp(10),
	combout => \LessThan0~6_combout\);

-- Location: LCCOMB_X1_Y3_N30
\LessThan0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~8_combout\ = (\LessThan0~2_combout\) # ((\LessThan0~7_combout\ & (\LessThan0~5_combout\ & \LessThan0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~7_combout\,
	datab => \LessThan0~2_combout\,
	datac => \LessThan0~5_combout\,
	datad => \LessThan0~6_combout\,
	combout => \LessThan0~8_combout\);

-- Location: PIN_AB4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_tmr_q);
END structure;


