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

-- DATE "11/22/2022 22:17:34"

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

ENTITY 	Contador_7_bits IS
    PORT (
	cnt_RESET : IN std_logic;
	cnt_H : IN std_logic;
	cnt_CLK : IN std_logic;
	cnt_Q : OUT std_logic_vector(6 DOWNTO 0);
	cnt_MAX : OUT std_logic
	);
END Contador_7_bits;

-- Design Ports Information
-- cnt_Q[0]	=>  Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- cnt_Q[1]	=>  Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- cnt_Q[2]	=>  Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- cnt_Q[3]	=>  Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- cnt_Q[4]	=>  Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- cnt_Q[5]	=>  Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- cnt_Q[6]	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- cnt_MAX	=>  Location: PIN_G10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- cnt_H	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- cnt_CLK	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- cnt_RESET	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Contador_7_bits IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_cnt_RESET : std_logic;
SIGNAL ww_cnt_H : std_logic;
SIGNAL ww_cnt_CLK : std_logic;
SIGNAL ww_cnt_Q : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_cnt_MAX : std_logic;
SIGNAL \cnt_CLK~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \cnt_RESET~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \cnt_CLK~combout\ : std_logic;
SIGNAL \cnt_CLK~clkctrl_outclk\ : std_logic;
SIGNAL \cnt[0]~6_combout\ : std_logic;
SIGNAL \cnt_RESET~combout\ : std_logic;
SIGNAL \cnt_RESET~clkctrl_outclk\ : std_logic;
SIGNAL \cnt[1]~7_combout\ : std_logic;
SIGNAL \cnt_H~combout\ : std_logic;
SIGNAL \cnt[1]~8\ : std_logic;
SIGNAL \cnt[2]~9_combout\ : std_logic;
SIGNAL \cnt[2]~10\ : std_logic;
SIGNAL \cnt[3]~11_combout\ : std_logic;
SIGNAL \cnt[3]~12\ : std_logic;
SIGNAL \cnt[4]~13_combout\ : std_logic;
SIGNAL \cnt[4]~14\ : std_logic;
SIGNAL \cnt[5]~15_combout\ : std_logic;
SIGNAL \cnt[5]~16\ : std_logic;
SIGNAL \cnt[6]~17_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL cnt : std_logic_vector(6 DOWNTO 0);

BEGIN

ww_cnt_RESET <= cnt_RESET;
ww_cnt_H <= cnt_H;
ww_cnt_CLK <= cnt_CLK;
cnt_Q <= ww_cnt_Q;
cnt_MAX <= ww_cnt_MAX;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\cnt_CLK~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \cnt_CLK~combout\);

\cnt_RESET~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \cnt_RESET~combout\);

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\cnt_CLK~I\ : cycloneii_io
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
	padio => ww_cnt_CLK,
	combout => \cnt_CLK~combout\);

-- Location: CLKCTRL_G3
\cnt_CLK~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \cnt_CLK~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \cnt_CLK~clkctrl_outclk\);

-- Location: LCCOMB_X16_Y35_N0
\cnt[0]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt[0]~6_combout\ = \cnt_H~combout\ $ (cnt(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt_H~combout\,
	datac => cnt(0),
	combout => \cnt[0]~6_combout\);

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\cnt_RESET~I\ : cycloneii_io
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
	padio => ww_cnt_RESET,
	combout => \cnt_RESET~combout\);

-- Location: CLKCTRL_G1
\cnt_RESET~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \cnt_RESET~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \cnt_RESET~clkctrl_outclk\);

-- Location: LCFF_X16_Y35_N1
\cnt[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \cnt_CLK~clkctrl_outclk\,
	datain => \cnt[0]~6_combout\,
	aclr => \cnt_RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(0));

-- Location: LCCOMB_X16_Y35_N6
\cnt[1]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt[1]~7_combout\ = (cnt(1) & (cnt(0) $ (VCC))) # (!cnt(1) & (cnt(0) & VCC))
-- \cnt[1]~8\ = CARRY((cnt(1) & cnt(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(1),
	datab => cnt(0),
	datad => VCC,
	combout => \cnt[1]~7_combout\,
	cout => \cnt[1]~8\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\cnt_H~I\ : cycloneii_io
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
	padio => ww_cnt_H,
	combout => \cnt_H~combout\);

-- Location: LCFF_X16_Y35_N7
\cnt[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \cnt_CLK~clkctrl_outclk\,
	datain => \cnt[1]~7_combout\,
	aclr => \cnt_RESET~clkctrl_outclk\,
	ena => \cnt_H~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(1));

-- Location: LCCOMB_X16_Y35_N8
\cnt[2]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt[2]~9_combout\ = (cnt(2) & (!\cnt[1]~8\)) # (!cnt(2) & ((\cnt[1]~8\) # (GND)))
-- \cnt[2]~10\ = CARRY((!\cnt[1]~8\) # (!cnt(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(2),
	datad => VCC,
	cin => \cnt[1]~8\,
	combout => \cnt[2]~9_combout\,
	cout => \cnt[2]~10\);

-- Location: LCFF_X16_Y35_N9
\cnt[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \cnt_CLK~clkctrl_outclk\,
	datain => \cnt[2]~9_combout\,
	aclr => \cnt_RESET~clkctrl_outclk\,
	ena => \cnt_H~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(2));

-- Location: LCCOMB_X16_Y35_N10
\cnt[3]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt[3]~11_combout\ = (cnt(3) & (\cnt[2]~10\ $ (GND))) # (!cnt(3) & (!\cnt[2]~10\ & VCC))
-- \cnt[3]~12\ = CARRY((cnt(3) & !\cnt[2]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(3),
	datad => VCC,
	cin => \cnt[2]~10\,
	combout => \cnt[3]~11_combout\,
	cout => \cnt[3]~12\);

-- Location: LCFF_X16_Y35_N11
\cnt[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \cnt_CLK~clkctrl_outclk\,
	datain => \cnt[3]~11_combout\,
	aclr => \cnt_RESET~clkctrl_outclk\,
	ena => \cnt_H~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(3));

-- Location: LCCOMB_X16_Y35_N12
\cnt[4]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt[4]~13_combout\ = (cnt(4) & (!\cnt[3]~12\)) # (!cnt(4) & ((\cnt[3]~12\) # (GND)))
-- \cnt[4]~14\ = CARRY((!\cnt[3]~12\) # (!cnt(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(4),
	datad => VCC,
	cin => \cnt[3]~12\,
	combout => \cnt[4]~13_combout\,
	cout => \cnt[4]~14\);

-- Location: LCFF_X16_Y35_N13
\cnt[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \cnt_CLK~clkctrl_outclk\,
	datain => \cnt[4]~13_combout\,
	aclr => \cnt_RESET~clkctrl_outclk\,
	ena => \cnt_H~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(4));

-- Location: LCCOMB_X16_Y35_N14
\cnt[5]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt[5]~15_combout\ = (cnt(5) & (\cnt[4]~14\ $ (GND))) # (!cnt(5) & (!\cnt[4]~14\ & VCC))
-- \cnt[5]~16\ = CARRY((cnt(5) & !\cnt[4]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(5),
	datad => VCC,
	cin => \cnt[4]~14\,
	combout => \cnt[5]~15_combout\,
	cout => \cnt[5]~16\);

-- Location: LCFF_X16_Y35_N15
\cnt[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \cnt_CLK~clkctrl_outclk\,
	datain => \cnt[5]~15_combout\,
	aclr => \cnt_RESET~clkctrl_outclk\,
	ena => \cnt_H~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(5));

-- Location: LCCOMB_X16_Y35_N16
\cnt[6]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt[6]~17_combout\ = cnt(6) $ (\cnt[5]~16\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(6),
	cin => \cnt[5]~16\,
	combout => \cnt[6]~17_combout\);

-- Location: LCFF_X16_Y35_N17
\cnt[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \cnt_CLK~clkctrl_outclk\,
	datain => \cnt[6]~17_combout\,
	aclr => \cnt_RESET~clkctrl_outclk\,
	ena => \cnt_H~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(6));

-- Location: LCCOMB_X16_Y35_N2
\LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (cnt(5) & ((cnt(3)) # ((cnt(2)) # (cnt(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(3),
	datab => cnt(2),
	datac => cnt(5),
	datad => cnt(4),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X16_Y35_N28
\LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (cnt(6) & \LessThan0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => cnt(6),
	datad => \LessThan0~0_combout\,
	combout => \LessThan0~1_combout\);

-- Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\cnt_Q[0]~I\ : cycloneii_io
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
	datain => cnt(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_cnt_Q(0));

-- Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\cnt_Q[1]~I\ : cycloneii_io
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
	datain => cnt(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_cnt_Q(1));

-- Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\cnt_Q[2]~I\ : cycloneii_io
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
	datain => cnt(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_cnt_Q(2));

-- Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\cnt_Q[3]~I\ : cycloneii_io
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
	datain => cnt(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_cnt_Q(3));

-- Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\cnt_Q[4]~I\ : cycloneii_io
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
	datain => cnt(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_cnt_Q(4));

-- Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\cnt_Q[5]~I\ : cycloneii_io
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
	datain => cnt(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_cnt_Q(5));

-- Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\cnt_Q[6]~I\ : cycloneii_io
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
	datain => cnt(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_cnt_Q(6));

-- Location: PIN_G10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\cnt_MAX~I\ : cycloneii_io
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
	datain => \LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_cnt_MAX);
END structure;


