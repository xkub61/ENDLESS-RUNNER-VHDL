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

-- DATE "11/30/2022 22:57:09"

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

ENTITY 	reg18bits IS
    PORT (
	reg18_IN : IN std_logic;
	reg18_E : IN std_logic;
	reg18_CLK : IN std_logic;
	reg18_Q : OUT std_logic_vector(17 DOWNTO 0)
	);
END reg18bits;

-- Design Ports Information
-- reg18_Q[0]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- reg18_Q[1]	=>  Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- reg18_Q[2]	=>  Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- reg18_Q[3]	=>  Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- reg18_Q[4]	=>  Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- reg18_Q[5]	=>  Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- reg18_Q[6]	=>  Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- reg18_Q[7]	=>  Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- reg18_Q[8]	=>  Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- reg18_Q[9]	=>  Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- reg18_Q[10]	=>  Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- reg18_Q[11]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- reg18_Q[12]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- reg18_Q[13]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- reg18_Q[14]	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- reg18_Q[15]	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- reg18_Q[16]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- reg18_Q[17]	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- reg18_IN	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reg18_CLK	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reg18_E	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF reg18bits IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_reg18_IN : std_logic;
SIGNAL ww_reg18_E : std_logic;
SIGNAL ww_reg18_CLK : std_logic;
SIGNAL ww_reg18_Q : std_logic_vector(17 DOWNTO 0);
SIGNAL \reg18_CLK~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reg18_CLK~combout\ : std_logic;
SIGNAL \reg18_CLK~clkctrl_outclk\ : std_logic;
SIGNAL \reg18_IN~combout\ : std_logic;
SIGNAL \tmp[0]~feeder_combout\ : std_logic;
SIGNAL \reg18_E~combout\ : std_logic;
SIGNAL \tmp[1]~feeder_combout\ : std_logic;
SIGNAL \tmp[2]~feeder_combout\ : std_logic;
SIGNAL \tmp[3]~feeder_combout\ : std_logic;
SIGNAL \tmp[4]~feeder_combout\ : std_logic;
SIGNAL \tmp[6]~feeder_combout\ : std_logic;
SIGNAL \tmp[8]~feeder_combout\ : std_logic;
SIGNAL \tmp[9]~feeder_combout\ : std_logic;
SIGNAL \tmp[10]~feeder_combout\ : std_logic;
SIGNAL \tmp[11]~feeder_combout\ : std_logic;
SIGNAL \tmp[12]~feeder_combout\ : std_logic;
SIGNAL \tmp[14]~feeder_combout\ : std_logic;
SIGNAL \tmp[15]~feeder_combout\ : std_logic;
SIGNAL \tmp[16]~feeder_combout\ : std_logic;
SIGNAL \tmp[17]~feeder_combout\ : std_logic;
SIGNAL tmp : std_logic_vector(17 DOWNTO 0);

BEGIN

ww_reg18_IN <= reg18_IN;
ww_reg18_E <= reg18_E;
ww_reg18_CLK <= reg18_CLK;
reg18_Q <= ww_reg18_Q;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\reg18_CLK~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \reg18_CLK~combout\);

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reg18_CLK~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_reg18_CLK,
	combout => \reg18_CLK~combout\);

-- Location: CLKCTRL_G3
\reg18_CLK~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reg18_CLK~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reg18_CLK~clkctrl_outclk\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reg18_IN~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_reg18_IN,
	combout => \reg18_IN~combout\);

-- Location: LCCOMB_X35_Y35_N0
\tmp[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmp[0]~feeder_combout\ = \reg18_IN~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg18_IN~combout\,
	combout => \tmp[0]~feeder_combout\);

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reg18_E~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_reg18_E,
	combout => \reg18_E~combout\);

-- Location: LCFF_X35_Y35_N1
\tmp[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \reg18_CLK~clkctrl_outclk\,
	datain => \tmp[0]~feeder_combout\,
	ena => \reg18_E~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tmp(0));

-- Location: LCCOMB_X35_Y35_N2
\tmp[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmp[1]~feeder_combout\ = tmp(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tmp(0),
	combout => \tmp[1]~feeder_combout\);

-- Location: LCFF_X35_Y35_N3
\tmp[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \reg18_CLK~clkctrl_outclk\,
	datain => \tmp[1]~feeder_combout\,
	ena => \reg18_E~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tmp(1));

-- Location: LCCOMB_X35_Y35_N12
\tmp[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmp[2]~feeder_combout\ = tmp(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tmp(1),
	combout => \tmp[2]~feeder_combout\);

-- Location: LCFF_X35_Y35_N13
\tmp[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \reg18_CLK~clkctrl_outclk\,
	datain => \tmp[2]~feeder_combout\,
	ena => \reg18_E~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tmp(2));

-- Location: LCCOMB_X35_Y35_N6
\tmp[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmp[3]~feeder_combout\ = tmp(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tmp(2),
	combout => \tmp[3]~feeder_combout\);

-- Location: LCFF_X35_Y35_N7
\tmp[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \reg18_CLK~clkctrl_outclk\,
	datain => \tmp[3]~feeder_combout\,
	ena => \reg18_E~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tmp(3));

-- Location: LCCOMB_X35_Y35_N20
\tmp[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmp[4]~feeder_combout\ = tmp(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tmp(3),
	combout => \tmp[4]~feeder_combout\);

-- Location: LCFF_X35_Y35_N21
\tmp[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \reg18_CLK~clkctrl_outclk\,
	datain => \tmp[4]~feeder_combout\,
	ena => \reg18_E~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tmp(4));

-- Location: LCFF_X35_Y35_N27
\tmp[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \reg18_CLK~clkctrl_outclk\,
	sdata => tmp(4),
	sload => VCC,
	ena => \reg18_E~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tmp(5));

-- Location: LCCOMB_X35_Y35_N24
\tmp[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmp[6]~feeder_combout\ = tmp(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tmp(5),
	combout => \tmp[6]~feeder_combout\);

-- Location: LCFF_X35_Y35_N25
\tmp[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \reg18_CLK~clkctrl_outclk\,
	datain => \tmp[6]~feeder_combout\,
	ena => \reg18_E~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tmp(6));

-- Location: LCFF_X35_Y35_N19
\tmp[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \reg18_CLK~clkctrl_outclk\,
	sdata => tmp(6),
	sload => VCC,
	ena => \reg18_E~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tmp(7));

-- Location: LCCOMB_X35_Y35_N28
\tmp[8]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmp[8]~feeder_combout\ = tmp(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tmp(7),
	combout => \tmp[8]~feeder_combout\);

-- Location: LCFF_X35_Y35_N29
\tmp[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \reg18_CLK~clkctrl_outclk\,
	datain => \tmp[8]~feeder_combout\,
	ena => \reg18_E~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tmp(8));

-- Location: LCCOMB_X35_Y35_N30
\tmp[9]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmp[9]~feeder_combout\ = tmp(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tmp(8),
	combout => \tmp[9]~feeder_combout\);

-- Location: LCFF_X35_Y35_N31
\tmp[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \reg18_CLK~clkctrl_outclk\,
	datain => \tmp[9]~feeder_combout\,
	ena => \reg18_E~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tmp(9));

-- Location: LCCOMB_X34_Y35_N0
\tmp[10]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmp[10]~feeder_combout\ = tmp(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tmp(9),
	combout => \tmp[10]~feeder_combout\);

-- Location: LCFF_X34_Y35_N1
\tmp[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \reg18_CLK~clkctrl_outclk\,
	datain => \tmp[10]~feeder_combout\,
	ena => \reg18_E~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tmp(10));

-- Location: LCCOMB_X34_Y35_N26
\tmp[11]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmp[11]~feeder_combout\ = tmp(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tmp(10),
	combout => \tmp[11]~feeder_combout\);

-- Location: LCFF_X34_Y35_N27
\tmp[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \reg18_CLK~clkctrl_outclk\,
	datain => \tmp[11]~feeder_combout\,
	ena => \reg18_E~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tmp(11));

-- Location: LCCOMB_X34_Y35_N24
\tmp[12]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmp[12]~feeder_combout\ = tmp(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tmp(11),
	combout => \tmp[12]~feeder_combout\);

-- Location: LCFF_X34_Y35_N25
\tmp[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \reg18_CLK~clkctrl_outclk\,
	datain => \tmp[12]~feeder_combout\,
	ena => \reg18_E~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tmp(12));

-- Location: LCFF_X34_Y35_N3
\tmp[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \reg18_CLK~clkctrl_outclk\,
	sdata => tmp(12),
	sload => VCC,
	ena => \reg18_E~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tmp(13));

-- Location: LCCOMB_X34_Y35_N28
\tmp[14]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmp[14]~feeder_combout\ = tmp(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tmp(13),
	combout => \tmp[14]~feeder_combout\);

-- Location: LCFF_X34_Y35_N29
\tmp[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \reg18_CLK~clkctrl_outclk\,
	datain => \tmp[14]~feeder_combout\,
	ena => \reg18_E~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tmp(14));

-- Location: LCCOMB_X34_Y35_N18
\tmp[15]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmp[15]~feeder_combout\ = tmp(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tmp(14),
	combout => \tmp[15]~feeder_combout\);

-- Location: LCFF_X34_Y35_N19
\tmp[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \reg18_CLK~clkctrl_outclk\,
	datain => \tmp[15]~feeder_combout\,
	ena => \reg18_E~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tmp(15));

-- Location: LCCOMB_X34_Y35_N12
\tmp[16]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmp[16]~feeder_combout\ = tmp(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tmp(15),
	combout => \tmp[16]~feeder_combout\);

-- Location: LCFF_X34_Y35_N13
\tmp[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \reg18_CLK~clkctrl_outclk\,
	datain => \tmp[16]~feeder_combout\,
	ena => \reg18_E~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tmp(16));

-- Location: LCCOMB_X34_Y35_N22
\tmp[17]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmp[17]~feeder_combout\ = tmp(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tmp(16),
	combout => \tmp[17]~feeder_combout\);

-- Location: LCFF_X34_Y35_N23
\tmp[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \reg18_CLK~clkctrl_outclk\,
	datain => \tmp[17]~feeder_combout\,
	ena => \reg18_E~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tmp(17));

-- Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\reg18_Q[0]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => tmp(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_reg18_Q(0));

-- Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\reg18_Q[1]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => tmp(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_reg18_Q(1));

-- Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\reg18_Q[2]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => tmp(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_reg18_Q(2));

-- Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\reg18_Q[3]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => tmp(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_reg18_Q(3));

-- Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\reg18_Q[4]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => tmp(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_reg18_Q(4));

-- Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\reg18_Q[5]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => tmp(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_reg18_Q(5));

-- Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\reg18_Q[6]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => tmp(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_reg18_Q(6));

-- Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\reg18_Q[7]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => tmp(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_reg18_Q(7));

-- Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\reg18_Q[8]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => tmp(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_reg18_Q(8));

-- Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\reg18_Q[9]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => tmp(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_reg18_Q(9));

-- Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\reg18_Q[10]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => tmp(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_reg18_Q(10));

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\reg18_Q[11]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => tmp(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_reg18_Q(11));

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\reg18_Q[12]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => tmp(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_reg18_Q(12));

-- Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\reg18_Q[13]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => tmp(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_reg18_Q(13));

-- Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\reg18_Q[14]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => tmp(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_reg18_Q(14));

-- Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\reg18_Q[15]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => tmp(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_reg18_Q(15));

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\reg18_Q[16]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => tmp(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_reg18_Q(16));

-- Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\reg18_Q[17]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => tmp(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_reg18_Q(17));
END structure;


