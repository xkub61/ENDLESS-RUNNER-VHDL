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

-- DATE "12/07/2022 16:04:51"

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

ENTITY 	cont_10 IS
    PORT (
	cnt10_clk : IN std_logic;
	cnt10_reset : IN std_logic;
	cnt10_h : IN std_logic;
	cnt10_q : OUT std_logic_vector(9 DOWNTO 0)
	);
END cont_10;

-- Design Ports Information
-- cnt10_q[0]	=>  Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- cnt10_q[1]	=>  Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- cnt10_q[2]	=>  Location: PIN_G10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- cnt10_q[3]	=>  Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- cnt10_q[4]	=>  Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- cnt10_q[5]	=>  Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- cnt10_q[6]	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- cnt10_q[7]	=>  Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- cnt10_q[8]	=>  Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- cnt10_q[9]	=>  Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- cnt10_h	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- cnt10_clk	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- cnt10_reset	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF cont_10 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_cnt10_clk : std_logic;
SIGNAL ww_cnt10_reset : std_logic;
SIGNAL ww_cnt10_h : std_logic;
SIGNAL ww_cnt10_q : std_logic_vector(9 DOWNTO 0);
SIGNAL \cnt10_clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \cnt10_reset~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \cnt10_clk~combout\ : std_logic;
SIGNAL \cnt10_clk~clkctrl_outclk\ : std_logic;
SIGNAL \i[0]~9_combout\ : std_logic;
SIGNAL \cnt10_reset~combout\ : std_logic;
SIGNAL \cnt10_reset~clkctrl_outclk\ : std_logic;
SIGNAL \i[1]~10_combout\ : std_logic;
SIGNAL \cnt10_h~combout\ : std_logic;
SIGNAL \i[1]~11\ : std_logic;
SIGNAL \i[2]~12_combout\ : std_logic;
SIGNAL \i[2]~13\ : std_logic;
SIGNAL \i[3]~14_combout\ : std_logic;
SIGNAL \i[3]~15\ : std_logic;
SIGNAL \i[4]~16_combout\ : std_logic;
SIGNAL \i[4]~17\ : std_logic;
SIGNAL \i[5]~18_combout\ : std_logic;
SIGNAL \i[5]~19\ : std_logic;
SIGNAL \i[6]~20_combout\ : std_logic;
SIGNAL \i[6]~21\ : std_logic;
SIGNAL \i[7]~22_combout\ : std_logic;
SIGNAL \i[7]~23\ : std_logic;
SIGNAL \i[8]~24_combout\ : std_logic;
SIGNAL \i[8]~25\ : std_logic;
SIGNAL \i[9]~26_combout\ : std_logic;
SIGNAL i : std_logic_vector(9 DOWNTO 0);

BEGIN

ww_cnt10_clk <= cnt10_clk;
ww_cnt10_reset <= cnt10_reset;
ww_cnt10_h <= cnt10_h;
cnt10_q <= ww_cnt10_q;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\cnt10_clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \cnt10_clk~combout\);

\cnt10_reset~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \cnt10_reset~combout\);

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\cnt10_clk~I\ : cycloneii_io
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
	padio => ww_cnt10_clk,
	combout => \cnt10_clk~combout\);

-- Location: CLKCTRL_G3
\cnt10_clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \cnt10_clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \cnt10_clk~clkctrl_outclk\);

-- Location: LCCOMB_X16_Y35_N0
\i[0]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \i[0]~9_combout\ = \cnt10_h~combout\ $ (i(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt10_h~combout\,
	datac => i(0),
	combout => \i[0]~9_combout\);

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\cnt10_reset~I\ : cycloneii_io
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
	padio => ww_cnt10_reset,
	combout => \cnt10_reset~combout\);

-- Location: CLKCTRL_G1
\cnt10_reset~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \cnt10_reset~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \cnt10_reset~clkctrl_outclk\);

-- Location: LCFF_X16_Y35_N1
\i[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \cnt10_clk~clkctrl_outclk\,
	datain => \i[0]~9_combout\,
	aclr => \cnt10_reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => i(0));

-- Location: LCCOMB_X16_Y35_N12
\i[1]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \i[1]~10_combout\ = (i(1) & (i(0) $ (VCC))) # (!i(1) & (i(0) & VCC))
-- \i[1]~11\ = CARRY((i(1) & i(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(1),
	datab => i(0),
	datad => VCC,
	combout => \i[1]~10_combout\,
	cout => \i[1]~11\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\cnt10_h~I\ : cycloneii_io
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
	padio => ww_cnt10_h,
	combout => \cnt10_h~combout\);

-- Location: LCFF_X16_Y35_N13
\i[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \cnt10_clk~clkctrl_outclk\,
	datain => \i[1]~10_combout\,
	aclr => \cnt10_reset~clkctrl_outclk\,
	ena => \cnt10_h~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => i(1));

-- Location: LCCOMB_X16_Y35_N14
\i[2]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \i[2]~12_combout\ = (i(2) & (!\i[1]~11\)) # (!i(2) & ((\i[1]~11\) # (GND)))
-- \i[2]~13\ = CARRY((!\i[1]~11\) # (!i(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i(2),
	datad => VCC,
	cin => \i[1]~11\,
	combout => \i[2]~12_combout\,
	cout => \i[2]~13\);

-- Location: LCFF_X16_Y35_N15
\i[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \cnt10_clk~clkctrl_outclk\,
	datain => \i[2]~12_combout\,
	aclr => \cnt10_reset~clkctrl_outclk\,
	ena => \cnt10_h~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => i(2));

-- Location: LCCOMB_X16_Y35_N16
\i[3]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \i[3]~14_combout\ = (i(3) & (\i[2]~13\ $ (GND))) # (!i(3) & (!\i[2]~13\ & VCC))
-- \i[3]~15\ = CARRY((i(3) & !\i[2]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i(3),
	datad => VCC,
	cin => \i[2]~13\,
	combout => \i[3]~14_combout\,
	cout => \i[3]~15\);

-- Location: LCFF_X16_Y35_N17
\i[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \cnt10_clk~clkctrl_outclk\,
	datain => \i[3]~14_combout\,
	aclr => \cnt10_reset~clkctrl_outclk\,
	ena => \cnt10_h~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => i(3));

-- Location: LCCOMB_X16_Y35_N18
\i[4]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \i[4]~16_combout\ = (i(4) & (!\i[3]~15\)) # (!i(4) & ((\i[3]~15\) # (GND)))
-- \i[4]~17\ = CARRY((!\i[3]~15\) # (!i(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i(4),
	datad => VCC,
	cin => \i[3]~15\,
	combout => \i[4]~16_combout\,
	cout => \i[4]~17\);

-- Location: LCFF_X16_Y35_N19
\i[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \cnt10_clk~clkctrl_outclk\,
	datain => \i[4]~16_combout\,
	aclr => \cnt10_reset~clkctrl_outclk\,
	ena => \cnt10_h~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => i(4));

-- Location: LCCOMB_X16_Y35_N20
\i[5]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \i[5]~18_combout\ = (i(5) & (\i[4]~17\ $ (GND))) # (!i(5) & (!\i[4]~17\ & VCC))
-- \i[5]~19\ = CARRY((i(5) & !\i[4]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i(5),
	datad => VCC,
	cin => \i[4]~17\,
	combout => \i[5]~18_combout\,
	cout => \i[5]~19\);

-- Location: LCFF_X16_Y35_N21
\i[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \cnt10_clk~clkctrl_outclk\,
	datain => \i[5]~18_combout\,
	aclr => \cnt10_reset~clkctrl_outclk\,
	ena => \cnt10_h~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => i(5));

-- Location: LCCOMB_X16_Y35_N22
\i[6]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \i[6]~20_combout\ = (i(6) & (!\i[5]~19\)) # (!i(6) & ((\i[5]~19\) # (GND)))
-- \i[6]~21\ = CARRY((!\i[5]~19\) # (!i(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i(6),
	datad => VCC,
	cin => \i[5]~19\,
	combout => \i[6]~20_combout\,
	cout => \i[6]~21\);

-- Location: LCFF_X16_Y35_N23
\i[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \cnt10_clk~clkctrl_outclk\,
	datain => \i[6]~20_combout\,
	aclr => \cnt10_reset~clkctrl_outclk\,
	ena => \cnt10_h~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => i(6));

-- Location: LCCOMB_X16_Y35_N24
\i[7]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \i[7]~22_combout\ = (i(7) & (\i[6]~21\ $ (GND))) # (!i(7) & (!\i[6]~21\ & VCC))
-- \i[7]~23\ = CARRY((i(7) & !\i[6]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i(7),
	datad => VCC,
	cin => \i[6]~21\,
	combout => \i[7]~22_combout\,
	cout => \i[7]~23\);

-- Location: LCFF_X16_Y35_N25
\i[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \cnt10_clk~clkctrl_outclk\,
	datain => \i[7]~22_combout\,
	aclr => \cnt10_reset~clkctrl_outclk\,
	ena => \cnt10_h~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => i(7));

-- Location: LCCOMB_X16_Y35_N26
\i[8]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \i[8]~24_combout\ = (i(8) & (!\i[7]~23\)) # (!i(8) & ((\i[7]~23\) # (GND)))
-- \i[8]~25\ = CARRY((!\i[7]~23\) # (!i(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i(8),
	datad => VCC,
	cin => \i[7]~23\,
	combout => \i[8]~24_combout\,
	cout => \i[8]~25\);

-- Location: LCFF_X16_Y35_N27
\i[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \cnt10_clk~clkctrl_outclk\,
	datain => \i[8]~24_combout\,
	aclr => \cnt10_reset~clkctrl_outclk\,
	ena => \cnt10_h~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => i(8));

-- Location: LCCOMB_X16_Y35_N28
\i[9]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \i[9]~26_combout\ = \i[8]~25\ $ (!i(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => i(9),
	cin => \i[8]~25\,
	combout => \i[9]~26_combout\);

-- Location: LCFF_X16_Y35_N29
\i[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \cnt10_clk~clkctrl_outclk\,
	datain => \i[9]~26_combout\,
	aclr => \cnt10_reset~clkctrl_outclk\,
	ena => \cnt10_h~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => i(9));

-- Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\cnt10_q[0]~I\ : cycloneii_io
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
	datain => i(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_cnt10_q(0));

-- Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\cnt10_q[1]~I\ : cycloneii_io
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
	datain => i(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_cnt10_q(1));

-- Location: PIN_G10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\cnt10_q[2]~I\ : cycloneii_io
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
	datain => i(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_cnt10_q(2));

-- Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\cnt10_q[3]~I\ : cycloneii_io
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
	datain => i(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_cnt10_q(3));

-- Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\cnt10_q[4]~I\ : cycloneii_io
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
	datain => i(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_cnt10_q(4));

-- Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\cnt10_q[5]~I\ : cycloneii_io
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
	datain => i(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_cnt10_q(5));

-- Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\cnt10_q[6]~I\ : cycloneii_io
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
	datain => i(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_cnt10_q(6));

-- Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\cnt10_q[7]~I\ : cycloneii_io
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
	datain => i(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_cnt10_q(7));

-- Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\cnt10_q[8]~I\ : cycloneii_io
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
	datain => i(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_cnt10_q(8));

-- Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\cnt10_q[9]~I\ : cycloneii_io
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
	datain => i(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_cnt10_q(9));
END structure;


