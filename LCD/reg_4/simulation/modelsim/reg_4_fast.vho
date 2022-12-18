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

-- DATE "12/07/2022 16:37:59"

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

ENTITY 	cont_4 IS
    PORT (
	cont4_H : IN std_logic;
	cont4_CLK : IN std_logic;
	cont4_CLR : IN std_logic;
	cont4_Q : OUT std_logic_vector(3 DOWNTO 0)
	);
END cont_4;

-- Design Ports Information
-- cont4_Q[0]	=>  Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- cont4_Q[1]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- cont4_Q[2]	=>  Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- cont4_Q[3]	=>  Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- cont4_H	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- cont4_CLK	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- cont4_CLR	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF cont_4 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_cont4_H : std_logic;
SIGNAL ww_cont4_CLK : std_logic;
SIGNAL ww_cont4_CLR : std_logic;
SIGNAL ww_cont4_Q : std_logic_vector(3 DOWNTO 0);
SIGNAL \cont4_CLK~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \cont4_CLR~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \cont4_H~combout\ : std_logic;
SIGNAL \cont4_CLK~combout\ : std_logic;
SIGNAL \cont4_CLK~clkctrl_outclk\ : std_logic;
SIGNAL \i[0]~0_combout\ : std_logic;
SIGNAL \cont4_CLR~combout\ : std_logic;
SIGNAL \cont4_CLR~clkctrl_outclk\ : std_logic;
SIGNAL \i[1]~1_combout\ : std_logic;
SIGNAL \i[2]~2_combout\ : std_logic;
SIGNAL \i[3]~3_combout\ : std_logic;
SIGNAL \i[3]~4_combout\ : std_logic;
SIGNAL i : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_cont4_H <= cont4_H;
ww_cont4_CLK <= cont4_CLK;
ww_cont4_CLR <= cont4_CLR;
cont4_Q <= ww_cont4_Q;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\cont4_CLK~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \cont4_CLK~combout\);

\cont4_CLR~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \cont4_CLR~combout\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\cont4_H~I\ : cycloneii_io
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
	padio => ww_cont4_H,
	combout => \cont4_H~combout\);

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\cont4_CLK~I\ : cycloneii_io
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
	padio => ww_cont4_CLK,
	combout => \cont4_CLK~combout\);

-- Location: CLKCTRL_G3
\cont4_CLK~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \cont4_CLK~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \cont4_CLK~clkctrl_outclk\);

-- Location: LCCOMB_X20_Y35_N24
\i[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i[0]~0_combout\ = \cont4_H~combout\ $ (i(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont4_H~combout\,
	datac => i(0),
	combout => \i[0]~0_combout\);

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\cont4_CLR~I\ : cycloneii_io
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
	padio => ww_cont4_CLR,
	combout => \cont4_CLR~combout\);

-- Location: CLKCTRL_G1
\cont4_CLR~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \cont4_CLR~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \cont4_CLR~clkctrl_outclk\);

-- Location: LCFF_X20_Y35_N25
\i[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \cont4_CLK~clkctrl_outclk\,
	datain => \i[0]~0_combout\,
	aclr => \cont4_CLR~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => i(0));

-- Location: LCCOMB_X20_Y35_N14
\i[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i[1]~1_combout\ = i(1) $ (((\cont4_H~combout\ & i(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont4_H~combout\,
	datac => i(1),
	datad => i(0),
	combout => \i[1]~1_combout\);

-- Location: LCFF_X20_Y35_N15
\i[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \cont4_CLK~clkctrl_outclk\,
	datain => \i[1]~1_combout\,
	aclr => \cont4_CLR~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => i(1));

-- Location: LCCOMB_X20_Y35_N0
\i[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i[2]~2_combout\ = i(2) $ (((\cont4_H~combout\ & (i(1) & i(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont4_H~combout\,
	datab => i(1),
	datac => i(2),
	datad => i(0),
	combout => \i[2]~2_combout\);

-- Location: LCFF_X20_Y35_N1
\i[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \cont4_CLK~clkctrl_outclk\,
	datain => \i[2]~2_combout\,
	aclr => \cont4_CLR~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => i(2));

-- Location: LCCOMB_X20_Y35_N28
\i[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \i[3]~3_combout\ = (\cont4_H~combout\ & (i(1) & (i(0) & i(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont4_H~combout\,
	datab => i(1),
	datac => i(0),
	datad => i(2),
	combout => \i[3]~3_combout\);

-- Location: LCCOMB_X20_Y35_N22
\i[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \i[3]~4_combout\ = i(3) $ (\i[3]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => i(3),
	datad => \i[3]~3_combout\,
	combout => \i[3]~4_combout\);

-- Location: LCFF_X20_Y35_N23
\i[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \cont4_CLK~clkctrl_outclk\,
	datain => \i[3]~4_combout\,
	aclr => \cont4_CLR~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => i(3));

-- Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\cont4_Q[0]~I\ : cycloneii_io
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
	padio => ww_cont4_Q(0));

-- Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\cont4_Q[1]~I\ : cycloneii_io
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
	padio => ww_cont4_Q(1));

-- Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\cont4_Q[2]~I\ : cycloneii_io
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
	padio => ww_cont4_Q(2));

-- Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\cont4_Q[3]~I\ : cycloneii_io
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
	padio => ww_cont4_Q(3));
END structure;


