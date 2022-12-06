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

-- DATE "11/29/2022 02:07:25"

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

ENTITY 	lfsr IS
    PORT (
	lfsr_clk : IN std_logic;
	lfsr_s : OUT std_logic_vector(7 DOWNTO 0)
	);
END lfsr;

-- Design Ports Information
-- lfsr_s[0]	=>  Location: PIN_K5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- lfsr_s[1]	=>  Location: PIN_K6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- lfsr_s[2]	=>  Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- lfsr_s[3]	=>  Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- lfsr_s[4]	=>  Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- lfsr_s[5]	=>  Location: PIN_G4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- lfsr_s[6]	=>  Location: PIN_J8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- lfsr_s[7]	=>  Location: PIN_J5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- lfsr_clk	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF lfsr IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_lfsr_clk : std_logic;
SIGNAL ww_lfsr_s : std_logic_vector(7 DOWNTO 0);
SIGNAL \lfsr_clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \lfsr_clk~combout\ : std_logic;
SIGNAL \lfsr_clk~clkctrl_outclk\ : std_logic;
SIGNAL \tmp~0_combout\ : std_logic;
SIGNAL \intern[6]~feeder_combout\ : std_logic;
SIGNAL \intern[5]~feeder_combout\ : std_logic;
SIGNAL \intern[4]~2_combout\ : std_logic;
SIGNAL \intern[3]~feeder_combout\ : std_logic;
SIGNAL \intern[2]~1_combout\ : std_logic;
SIGNAL \intern[1]~feeder_combout\ : std_logic;
SIGNAL \intern[0]~0_combout\ : std_logic;
SIGNAL intern : std_logic_vector(7 DOWNTO 0);
SIGNAL ALT_INV_intern : std_logic_vector(4 DOWNTO 0);

BEGIN

ww_lfsr_clk <= lfsr_clk;
lfsr_s <= ww_lfsr_s;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\lfsr_clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \lfsr_clk~combout\);
ALT_INV_intern(4) <= NOT intern(4);
ALT_INV_intern(3) <= NOT intern(3);
ALT_INV_intern(0) <= NOT intern(0);

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\lfsr_clk~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_lfsr_clk,
	combout => \lfsr_clk~combout\);

-- Location: CLKCTRL_G3
\lfsr_clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \lfsr_clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \lfsr_clk~clkctrl_outclk\);

-- Location: LCCOMB_X1_Y30_N26
\tmp~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmp~0_combout\ = intern(0) $ (intern(4) $ (intern(3) $ (!intern(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => intern(0),
	datab => intern(4),
	datac => intern(3),
	datad => intern(2),
	combout => \tmp~0_combout\);

-- Location: LCFF_X1_Y30_N27
\intern[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \lfsr_clk~clkctrl_outclk\,
	datain => \tmp~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => intern(7));

-- Location: LCCOMB_X1_Y30_N0
\intern[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \intern[6]~feeder_combout\ = intern(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => intern(7),
	combout => \intern[6]~feeder_combout\);

-- Location: LCFF_X1_Y30_N1
\intern[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \lfsr_clk~clkctrl_outclk\,
	datain => \intern[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => intern(6));

-- Location: LCCOMB_X1_Y30_N22
\intern[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \intern[5]~feeder_combout\ = intern(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => intern(6),
	combout => \intern[5]~feeder_combout\);

-- Location: LCFF_X1_Y30_N23
\intern[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \lfsr_clk~clkctrl_outclk\,
	datain => \intern[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => intern(5));

-- Location: LCCOMB_X1_Y30_N28
\intern[4]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \intern[4]~2_combout\ = !intern(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => intern(5),
	combout => \intern[4]~2_combout\);

-- Location: LCFF_X1_Y30_N29
\intern[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \lfsr_clk~clkctrl_outclk\,
	datain => \intern[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => intern(4));

-- Location: LCCOMB_X1_Y30_N14
\intern[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \intern[3]~feeder_combout\ = intern(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => intern(4),
	combout => \intern[3]~feeder_combout\);

-- Location: LCFF_X1_Y30_N15
\intern[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \lfsr_clk~clkctrl_outclk\,
	datain => \intern[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => intern(3));

-- Location: LCCOMB_X1_Y30_N12
\intern[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \intern[2]~1_combout\ = !intern(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => intern(3),
	combout => \intern[2]~1_combout\);

-- Location: LCFF_X1_Y30_N13
\intern[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \lfsr_clk~clkctrl_outclk\,
	datain => \intern[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => intern(2));

-- Location: LCCOMB_X1_Y30_N30
\intern[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \intern[1]~feeder_combout\ = intern(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => intern(2),
	combout => \intern[1]~feeder_combout\);

-- Location: LCFF_X1_Y30_N31
\intern[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \lfsr_clk~clkctrl_outclk\,
	datain => \intern[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => intern(1));

-- Location: LCCOMB_X1_Y30_N20
\intern[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \intern[0]~0_combout\ = !intern(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => intern(1),
	combout => \intern[0]~0_combout\);

-- Location: LCFF_X1_Y30_N21
\intern[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \lfsr_clk~clkctrl_outclk\,
	datain => \intern[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => intern(0));

-- Location: PIN_K5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\lfsr_s[0]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => ALT_INV_intern(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_lfsr_s(0));

-- Location: PIN_K6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\lfsr_s[1]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => intern(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_lfsr_s(1));

-- Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\lfsr_s[2]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => intern(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_lfsr_s(2));

-- Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\lfsr_s[3]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => ALT_INV_intern(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_lfsr_s(3));

-- Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\lfsr_s[4]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => ALT_INV_intern(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_lfsr_s(4));

-- Location: PIN_G4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\lfsr_s[5]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => intern(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_lfsr_s(5));

-- Location: PIN_J8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\lfsr_s[6]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => intern(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_lfsr_s(6));

-- Location: PIN_J5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\lfsr_s[7]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => intern(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_lfsr_s(7));
END structure;


