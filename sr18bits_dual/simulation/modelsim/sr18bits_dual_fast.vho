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

-- DATE "12/02/2022 10:03:04"

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

ENTITY 	sr18bits_dual IS
    PORT (
	sr_IN0 : IN std_logic;
	sr_IN1 : IN std_logic;
	sr_CLK : IN std_logic;
	sr_Q0 : OUT std_logic_vector(17 DOWNTO 0);
	sr_Q1 : OUT std_logic_vector(17 DOWNTO 0)
	);
END sr18bits_dual;

-- Design Ports Information
-- sr_Q0[0]	=>  Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sr_Q0[1]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sr_Q0[2]	=>  Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sr_Q0[3]	=>  Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sr_Q0[4]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sr_Q0[5]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sr_Q0[6]	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sr_Q0[7]	=>  Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sr_Q0[8]	=>  Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sr_Q0[9]	=>  Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sr_Q0[10]	=>  Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sr_Q0[11]	=>  Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sr_Q0[12]	=>  Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sr_Q0[13]	=>  Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sr_Q0[14]	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sr_Q0[15]	=>  Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sr_Q0[16]	=>  Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sr_Q0[17]	=>  Location: PIN_G10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sr_Q1[0]	=>  Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sr_Q1[1]	=>  Location: PIN_B21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sr_Q1[2]	=>  Location: PIN_A23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sr_Q1[3]	=>  Location: PIN_A21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sr_Q1[4]	=>  Location: PIN_K17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sr_Q1[5]	=>  Location: PIN_B23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sr_Q1[6]	=>  Location: PIN_B22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sr_Q1[7]	=>  Location: PIN_J16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sr_Q1[8]	=>  Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sr_Q1[9]	=>  Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sr_Q1[10]	=>  Location: PIN_K16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sr_Q1[11]	=>  Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sr_Q1[12]	=>  Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sr_Q1[13]	=>  Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sr_Q1[14]	=>  Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sr_Q1[15]	=>  Location: PIN_D20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sr_Q1[16]	=>  Location: PIN_A22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sr_Q1[17]	=>  Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sr_IN0	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sr_CLK	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sr_IN1	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF sr18bits_dual IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_sr_IN0 : std_logic;
SIGNAL ww_sr_IN1 : std_logic;
SIGNAL ww_sr_CLK : std_logic;
SIGNAL ww_sr_Q0 : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_sr_Q1 : std_logic_vector(17 DOWNTO 0);
SIGNAL \sr_CLK~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \sr_CLK~combout\ : std_logic;
SIGNAL \sr_CLK~clkctrl_outclk\ : std_logic;
SIGNAL \sr_IN0~combout\ : std_logic;
SIGNAL \instancia0_reg|tmp[0]~feeder_combout\ : std_logic;
SIGNAL \instancia0_reg|tmp[2]~feeder_combout\ : std_logic;
SIGNAL \instancia0_reg|tmp[3]~feeder_combout\ : std_logic;
SIGNAL \instancia0_reg|tmp[4]~feeder_combout\ : std_logic;
SIGNAL \instancia0_reg|tmp[5]~feeder_combout\ : std_logic;
SIGNAL \instancia0_reg|tmp[6]~feeder_combout\ : std_logic;
SIGNAL \instancia0_reg|tmp[7]~feeder_combout\ : std_logic;
SIGNAL \instancia0_reg|tmp[8]~feeder_combout\ : std_logic;
SIGNAL \instancia0_reg|tmp[9]~feeder_combout\ : std_logic;
SIGNAL \instancia0_reg|tmp[10]~feeder_combout\ : std_logic;
SIGNAL \instancia0_reg|tmp[11]~feeder_combout\ : std_logic;
SIGNAL \instancia0_reg|tmp[12]~feeder_combout\ : std_logic;
SIGNAL \instancia0_reg|tmp[13]~feeder_combout\ : std_logic;
SIGNAL \instancia0_reg|tmp[15]~feeder_combout\ : std_logic;
SIGNAL \instancia0_reg|tmp[16]~feeder_combout\ : std_logic;
SIGNAL \instancia0_reg|tmp[17]~feeder_combout\ : std_logic;
SIGNAL \sr_IN1~combout\ : std_logic;
SIGNAL \instancia1_reg|tmp[0]~feeder_combout\ : std_logic;
SIGNAL \instancia1_reg|tmp[1]~feeder_combout\ : std_logic;
SIGNAL \instancia1_reg|tmp[2]~feeder_combout\ : std_logic;
SIGNAL \instancia1_reg|tmp[3]~feeder_combout\ : std_logic;
SIGNAL \instancia1_reg|tmp[4]~feeder_combout\ : std_logic;
SIGNAL \instancia1_reg|tmp[5]~feeder_combout\ : std_logic;
SIGNAL \instancia1_reg|tmp[6]~feeder_combout\ : std_logic;
SIGNAL \instancia1_reg|tmp[7]~feeder_combout\ : std_logic;
SIGNAL \instancia1_reg|tmp[8]~feeder_combout\ : std_logic;
SIGNAL \instancia1_reg|tmp[9]~feeder_combout\ : std_logic;
SIGNAL \instancia1_reg|tmp[11]~feeder_combout\ : std_logic;
SIGNAL \instancia1_reg|tmp[13]~feeder_combout\ : std_logic;
SIGNAL \instancia1_reg|tmp[14]~feeder_combout\ : std_logic;
SIGNAL \instancia1_reg|tmp[15]~feeder_combout\ : std_logic;
SIGNAL \instancia1_reg|tmp[16]~feeder_combout\ : std_logic;
SIGNAL \instancia1_reg|tmp[17]~feeder_combout\ : std_logic;
SIGNAL \instancia1_reg|tmp\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \instancia0_reg|tmp\ : std_logic_vector(17 DOWNTO 0);

BEGIN

ww_sr_IN0 <= sr_IN0;
ww_sr_IN1 <= sr_IN1;
ww_sr_CLK <= sr_CLK;
sr_Q0 <= ww_sr_Q0;
sr_Q1 <= ww_sr_Q1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\sr_CLK~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \sr_CLK~combout\);

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sr_CLK~I\ : cycloneii_io
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
	padio => ww_sr_CLK,
	combout => \sr_CLK~combout\);

-- Location: CLKCTRL_G3
\sr_CLK~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \sr_CLK~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \sr_CLK~clkctrl_outclk\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sr_IN0~I\ : cycloneii_io
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
	padio => ww_sr_IN0,
	combout => \sr_IN0~combout\);

-- Location: LCCOMB_X19_Y35_N20
\instancia0_reg|tmp[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia0_reg|tmp[0]~feeder_combout\ = \sr_IN0~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sr_IN0~combout\,
	combout => \instancia0_reg|tmp[0]~feeder_combout\);

-- Location: LCFF_X19_Y35_N21
\instancia0_reg|tmp[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \sr_CLK~clkctrl_outclk\,
	datain => \instancia0_reg|tmp[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia0_reg|tmp\(0));

-- Location: LCFF_X19_Y35_N3
\instancia0_reg|tmp[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \sr_CLK~clkctrl_outclk\,
	sdata => \instancia0_reg|tmp\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia0_reg|tmp\(1));

-- Location: LCCOMB_X19_Y35_N0
\instancia0_reg|tmp[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia0_reg|tmp[2]~feeder_combout\ = \instancia0_reg|tmp\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instancia0_reg|tmp\(1),
	combout => \instancia0_reg|tmp[2]~feeder_combout\);

-- Location: LCFF_X19_Y35_N1
\instancia0_reg|tmp[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \sr_CLK~clkctrl_outclk\,
	datain => \instancia0_reg|tmp[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia0_reg|tmp\(2));

-- Location: LCCOMB_X19_Y35_N18
\instancia0_reg|tmp[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia0_reg|tmp[3]~feeder_combout\ = \instancia0_reg|tmp\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instancia0_reg|tmp\(2),
	combout => \instancia0_reg|tmp[3]~feeder_combout\);

-- Location: LCFF_X19_Y35_N19
\instancia0_reg|tmp[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \sr_CLK~clkctrl_outclk\,
	datain => \instancia0_reg|tmp[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia0_reg|tmp\(3));

-- Location: LCCOMB_X19_Y35_N12
\instancia0_reg|tmp[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia0_reg|tmp[4]~feeder_combout\ = \instancia0_reg|tmp\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instancia0_reg|tmp\(3),
	combout => \instancia0_reg|tmp[4]~feeder_combout\);

-- Location: LCFF_X19_Y35_N13
\instancia0_reg|tmp[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \sr_CLK~clkctrl_outclk\,
	datain => \instancia0_reg|tmp[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia0_reg|tmp\(4));

-- Location: LCCOMB_X19_Y35_N22
\instancia0_reg|tmp[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia0_reg|tmp[5]~feeder_combout\ = \instancia0_reg|tmp\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instancia0_reg|tmp\(4),
	combout => \instancia0_reg|tmp[5]~feeder_combout\);

-- Location: LCFF_X19_Y35_N23
\instancia0_reg|tmp[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \sr_CLK~clkctrl_outclk\,
	datain => \instancia0_reg|tmp[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia0_reg|tmp\(5));

-- Location: LCCOMB_X19_Y35_N28
\instancia0_reg|tmp[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia0_reg|tmp[6]~feeder_combout\ = \instancia0_reg|tmp\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instancia0_reg|tmp\(5),
	combout => \instancia0_reg|tmp[6]~feeder_combout\);

-- Location: LCFF_X19_Y35_N29
\instancia0_reg|tmp[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \sr_CLK~clkctrl_outclk\,
	datain => \instancia0_reg|tmp[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia0_reg|tmp\(6));

-- Location: LCCOMB_X19_Y35_N10
\instancia0_reg|tmp[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia0_reg|tmp[7]~feeder_combout\ = \instancia0_reg|tmp\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instancia0_reg|tmp\(6),
	combout => \instancia0_reg|tmp[7]~feeder_combout\);

-- Location: LCFF_X19_Y35_N11
\instancia0_reg|tmp[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \sr_CLK~clkctrl_outclk\,
	datain => \instancia0_reg|tmp[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia0_reg|tmp\(7));

-- Location: LCCOMB_X19_Y35_N24
\instancia0_reg|tmp[8]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia0_reg|tmp[8]~feeder_combout\ = \instancia0_reg|tmp\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instancia0_reg|tmp\(7),
	combout => \instancia0_reg|tmp[8]~feeder_combout\);

-- Location: LCFF_X19_Y35_N25
\instancia0_reg|tmp[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \sr_CLK~clkctrl_outclk\,
	datain => \instancia0_reg|tmp[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia0_reg|tmp\(8));

-- Location: LCCOMB_X18_Y35_N12
\instancia0_reg|tmp[9]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia0_reg|tmp[9]~feeder_combout\ = \instancia0_reg|tmp\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instancia0_reg|tmp\(8),
	combout => \instancia0_reg|tmp[9]~feeder_combout\);

-- Location: LCFF_X18_Y35_N13
\instancia0_reg|tmp[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \sr_CLK~clkctrl_outclk\,
	datain => \instancia0_reg|tmp[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia0_reg|tmp\(9));

-- Location: LCCOMB_X18_Y35_N10
\instancia0_reg|tmp[10]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia0_reg|tmp[10]~feeder_combout\ = \instancia0_reg|tmp\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instancia0_reg|tmp\(9),
	combout => \instancia0_reg|tmp[10]~feeder_combout\);

-- Location: LCFF_X18_Y35_N11
\instancia0_reg|tmp[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \sr_CLK~clkctrl_outclk\,
	datain => \instancia0_reg|tmp[10]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia0_reg|tmp\(10));

-- Location: LCCOMB_X18_Y35_N28
\instancia0_reg|tmp[11]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia0_reg|tmp[11]~feeder_combout\ = \instancia0_reg|tmp\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instancia0_reg|tmp\(10),
	combout => \instancia0_reg|tmp[11]~feeder_combout\);

-- Location: LCFF_X18_Y35_N29
\instancia0_reg|tmp[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \sr_CLK~clkctrl_outclk\,
	datain => \instancia0_reg|tmp[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia0_reg|tmp\(11));

-- Location: LCCOMB_X18_Y35_N2
\instancia0_reg|tmp[12]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia0_reg|tmp[12]~feeder_combout\ = \instancia0_reg|tmp\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instancia0_reg|tmp\(11),
	combout => \instancia0_reg|tmp[12]~feeder_combout\);

-- Location: LCFF_X18_Y35_N3
\instancia0_reg|tmp[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \sr_CLK~clkctrl_outclk\,
	datain => \instancia0_reg|tmp[12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia0_reg|tmp\(12));

-- Location: LCCOMB_X18_Y35_N20
\instancia0_reg|tmp[13]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia0_reg|tmp[13]~feeder_combout\ = \instancia0_reg|tmp\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instancia0_reg|tmp\(12),
	combout => \instancia0_reg|tmp[13]~feeder_combout\);

-- Location: LCFF_X18_Y35_N21
\instancia0_reg|tmp[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \sr_CLK~clkctrl_outclk\,
	datain => \instancia0_reg|tmp[13]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia0_reg|tmp\(13));

-- Location: LCFF_X18_Y35_N23
\instancia0_reg|tmp[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \sr_CLK~clkctrl_outclk\,
	sdata => \instancia0_reg|tmp\(13),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia0_reg|tmp\(14));

-- Location: LCCOMB_X18_Y35_N0
\instancia0_reg|tmp[15]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia0_reg|tmp[15]~feeder_combout\ = \instancia0_reg|tmp\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instancia0_reg|tmp\(14),
	combout => \instancia0_reg|tmp[15]~feeder_combout\);

-- Location: LCFF_X18_Y35_N1
\instancia0_reg|tmp[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \sr_CLK~clkctrl_outclk\,
	datain => \instancia0_reg|tmp[15]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia0_reg|tmp\(15));

-- Location: LCCOMB_X18_Y35_N26
\instancia0_reg|tmp[16]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia0_reg|tmp[16]~feeder_combout\ = \instancia0_reg|tmp\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instancia0_reg|tmp\(15),
	combout => \instancia0_reg|tmp[16]~feeder_combout\);

-- Location: LCFF_X18_Y35_N27
\instancia0_reg|tmp[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \sr_CLK~clkctrl_outclk\,
	datain => \instancia0_reg|tmp[16]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia0_reg|tmp\(16));

-- Location: LCCOMB_X18_Y35_N16
\instancia0_reg|tmp[17]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia0_reg|tmp[17]~feeder_combout\ = \instancia0_reg|tmp\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instancia0_reg|tmp\(16),
	combout => \instancia0_reg|tmp[17]~feeder_combout\);

-- Location: LCFF_X18_Y35_N17
\instancia0_reg|tmp[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \sr_CLK~clkctrl_outclk\,
	datain => \instancia0_reg|tmp[17]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia0_reg|tmp\(17));

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sr_IN1~I\ : cycloneii_io
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
	padio => ww_sr_IN1,
	combout => \sr_IN1~combout\);

-- Location: LCCOMB_X59_Y35_N0
\instancia1_reg|tmp[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia1_reg|tmp[0]~feeder_combout\ = \sr_IN1~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sr_IN1~combout\,
	combout => \instancia1_reg|tmp[0]~feeder_combout\);

-- Location: LCFF_X59_Y35_N1
\instancia1_reg|tmp[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \sr_CLK~clkctrl_outclk\,
	datain => \instancia1_reg|tmp[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia1_reg|tmp\(0));

-- Location: LCCOMB_X59_Y35_N22
\instancia1_reg|tmp[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia1_reg|tmp[1]~feeder_combout\ = \instancia1_reg|tmp\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instancia1_reg|tmp\(0),
	combout => \instancia1_reg|tmp[1]~feeder_combout\);

-- Location: LCFF_X59_Y35_N23
\instancia1_reg|tmp[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \sr_CLK~clkctrl_outclk\,
	datain => \instancia1_reg|tmp[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia1_reg|tmp\(1));

-- Location: LCCOMB_X59_Y35_N28
\instancia1_reg|tmp[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia1_reg|tmp[2]~feeder_combout\ = \instancia1_reg|tmp\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instancia1_reg|tmp\(1),
	combout => \instancia1_reg|tmp[2]~feeder_combout\);

-- Location: LCFF_X59_Y35_N29
\instancia1_reg|tmp[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \sr_CLK~clkctrl_outclk\,
	datain => \instancia1_reg|tmp[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia1_reg|tmp\(2));

-- Location: LCCOMB_X59_Y35_N10
\instancia1_reg|tmp[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia1_reg|tmp[3]~feeder_combout\ = \instancia1_reg|tmp\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instancia1_reg|tmp\(2),
	combout => \instancia1_reg|tmp[3]~feeder_combout\);

-- Location: LCFF_X59_Y35_N11
\instancia1_reg|tmp[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \sr_CLK~clkctrl_outclk\,
	datain => \instancia1_reg|tmp[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia1_reg|tmp\(3));

-- Location: LCCOMB_X59_Y35_N12
\instancia1_reg|tmp[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia1_reg|tmp[4]~feeder_combout\ = \instancia1_reg|tmp\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instancia1_reg|tmp\(3),
	combout => \instancia1_reg|tmp[4]~feeder_combout\);

-- Location: LCFF_X59_Y35_N13
\instancia1_reg|tmp[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \sr_CLK~clkctrl_outclk\,
	datain => \instancia1_reg|tmp[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia1_reg|tmp\(4));

-- Location: LCCOMB_X59_Y35_N2
\instancia1_reg|tmp[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia1_reg|tmp[5]~feeder_combout\ = \instancia1_reg|tmp\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instancia1_reg|tmp\(4),
	combout => \instancia1_reg|tmp[5]~feeder_combout\);

-- Location: LCFF_X59_Y35_N3
\instancia1_reg|tmp[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \sr_CLK~clkctrl_outclk\,
	datain => \instancia1_reg|tmp[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia1_reg|tmp\(5));

-- Location: LCCOMB_X59_Y35_N4
\instancia1_reg|tmp[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia1_reg|tmp[6]~feeder_combout\ = \instancia1_reg|tmp\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instancia1_reg|tmp\(5),
	combout => \instancia1_reg|tmp[6]~feeder_combout\);

-- Location: LCFF_X59_Y35_N5
\instancia1_reg|tmp[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \sr_CLK~clkctrl_outclk\,
	datain => \instancia1_reg|tmp[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia1_reg|tmp\(6));

-- Location: LCCOMB_X58_Y35_N0
\instancia1_reg|tmp[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia1_reg|tmp[7]~feeder_combout\ = \instancia1_reg|tmp\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instancia1_reg|tmp\(6),
	combout => \instancia1_reg|tmp[7]~feeder_combout\);

-- Location: LCFF_X58_Y35_N1
\instancia1_reg|tmp[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \sr_CLK~clkctrl_outclk\,
	datain => \instancia1_reg|tmp[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia1_reg|tmp\(7));

-- Location: LCCOMB_X58_Y35_N26
\instancia1_reg|tmp[8]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia1_reg|tmp[8]~feeder_combout\ = \instancia1_reg|tmp\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instancia1_reg|tmp\(7),
	combout => \instancia1_reg|tmp[8]~feeder_combout\);

-- Location: LCFF_X58_Y35_N27
\instancia1_reg|tmp[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \sr_CLK~clkctrl_outclk\,
	datain => \instancia1_reg|tmp[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia1_reg|tmp\(8));

-- Location: LCCOMB_X58_Y35_N16
\instancia1_reg|tmp[9]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia1_reg|tmp[9]~feeder_combout\ = \instancia1_reg|tmp\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instancia1_reg|tmp\(8),
	combout => \instancia1_reg|tmp[9]~feeder_combout\);

-- Location: LCFF_X58_Y35_N17
\instancia1_reg|tmp[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \sr_CLK~clkctrl_outclk\,
	datain => \instancia1_reg|tmp[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia1_reg|tmp\(9));

-- Location: LCFF_X58_Y35_N3
\instancia1_reg|tmp[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \sr_CLK~clkctrl_outclk\,
	sdata => \instancia1_reg|tmp\(9),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia1_reg|tmp\(10));

-- Location: LCCOMB_X58_Y35_N24
\instancia1_reg|tmp[11]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia1_reg|tmp[11]~feeder_combout\ = \instancia1_reg|tmp\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instancia1_reg|tmp\(10),
	combout => \instancia1_reg|tmp[11]~feeder_combout\);

-- Location: LCFF_X58_Y35_N25
\instancia1_reg|tmp[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \sr_CLK~clkctrl_outclk\,
	datain => \instancia1_reg|tmp[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia1_reg|tmp\(11));

-- Location: LCFF_X58_Y35_N11
\instancia1_reg|tmp[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \sr_CLK~clkctrl_outclk\,
	sdata => \instancia1_reg|tmp\(11),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia1_reg|tmp\(12));

-- Location: LCCOMB_X58_Y35_N28
\instancia1_reg|tmp[13]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia1_reg|tmp[13]~feeder_combout\ = \instancia1_reg|tmp\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instancia1_reg|tmp\(12),
	combout => \instancia1_reg|tmp[13]~feeder_combout\);

-- Location: LCFF_X58_Y35_N29
\instancia1_reg|tmp[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \sr_CLK~clkctrl_outclk\,
	datain => \instancia1_reg|tmp[13]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia1_reg|tmp\(13));

-- Location: LCCOMB_X58_Y35_N6
\instancia1_reg|tmp[14]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia1_reg|tmp[14]~feeder_combout\ = \instancia1_reg|tmp\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instancia1_reg|tmp\(13),
	combout => \instancia1_reg|tmp[14]~feeder_combout\);

-- Location: LCFF_X58_Y35_N7
\instancia1_reg|tmp[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \sr_CLK~clkctrl_outclk\,
	datain => \instancia1_reg|tmp[14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia1_reg|tmp\(14));

-- Location: LCCOMB_X58_Y35_N12
\instancia1_reg|tmp[15]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia1_reg|tmp[15]~feeder_combout\ = \instancia1_reg|tmp\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instancia1_reg|tmp\(14),
	combout => \instancia1_reg|tmp[15]~feeder_combout\);

-- Location: LCFF_X58_Y35_N13
\instancia1_reg|tmp[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \sr_CLK~clkctrl_outclk\,
	datain => \instancia1_reg|tmp[15]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia1_reg|tmp\(15));

-- Location: LCCOMB_X58_Y35_N18
\instancia1_reg|tmp[16]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia1_reg|tmp[16]~feeder_combout\ = \instancia1_reg|tmp\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instancia1_reg|tmp\(15),
	combout => \instancia1_reg|tmp[16]~feeder_combout\);

-- Location: LCFF_X58_Y35_N19
\instancia1_reg|tmp[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \sr_CLK~clkctrl_outclk\,
	datain => \instancia1_reg|tmp[16]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia1_reg|tmp\(16));

-- Location: LCCOMB_X58_Y35_N8
\instancia1_reg|tmp[17]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia1_reg|tmp[17]~feeder_combout\ = \instancia1_reg|tmp\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instancia1_reg|tmp\(16),
	combout => \instancia1_reg|tmp[17]~feeder_combout\);

-- Location: LCFF_X58_Y35_N9
\instancia1_reg|tmp[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \sr_CLK~clkctrl_outclk\,
	datain => \instancia1_reg|tmp[17]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia1_reg|tmp\(17));

-- Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\sr_Q0[0]~I\ : cycloneii_io
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
	datain => \instancia0_reg|tmp\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sr_Q0(0));

-- Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\sr_Q0[1]~I\ : cycloneii_io
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
	datain => \instancia0_reg|tmp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sr_Q0(1));

-- Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\sr_Q0[2]~I\ : cycloneii_io
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
	datain => \instancia0_reg|tmp\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sr_Q0(2));

-- Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\sr_Q0[3]~I\ : cycloneii_io
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
	datain => \instancia0_reg|tmp\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sr_Q0(3));

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\sr_Q0[4]~I\ : cycloneii_io
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
	datain => \instancia0_reg|tmp\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sr_Q0(4));

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\sr_Q0[5]~I\ : cycloneii_io
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
	datain => \instancia0_reg|tmp\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sr_Q0(5));

-- Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\sr_Q0[6]~I\ : cycloneii_io
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
	datain => \instancia0_reg|tmp\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sr_Q0(6));

-- Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\sr_Q0[7]~I\ : cycloneii_io
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
	datain => \instancia0_reg|tmp\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sr_Q0(7));

-- Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\sr_Q0[8]~I\ : cycloneii_io
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
	datain => \instancia0_reg|tmp\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sr_Q0(8));

-- Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\sr_Q0[9]~I\ : cycloneii_io
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
	datain => \instancia0_reg|tmp\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sr_Q0(9));

-- Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\sr_Q0[10]~I\ : cycloneii_io
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
	datain => \instancia0_reg|tmp\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sr_Q0(10));

-- Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\sr_Q0[11]~I\ : cycloneii_io
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
	datain => \instancia0_reg|tmp\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sr_Q0(11));

-- Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\sr_Q0[12]~I\ : cycloneii_io
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
	datain => \instancia0_reg|tmp\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sr_Q0(12));

-- Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\sr_Q0[13]~I\ : cycloneii_io
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
	datain => \instancia0_reg|tmp\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sr_Q0(13));

-- Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\sr_Q0[14]~I\ : cycloneii_io
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
	datain => \instancia0_reg|tmp\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sr_Q0(14));

-- Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\sr_Q0[15]~I\ : cycloneii_io
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
	datain => \instancia0_reg|tmp\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sr_Q0(15));

-- Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\sr_Q0[16]~I\ : cycloneii_io
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
	datain => \instancia0_reg|tmp\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sr_Q0(16));

-- Location: PIN_G10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\sr_Q0[17]~I\ : cycloneii_io
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
	datain => \instancia0_reg|tmp\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sr_Q0(17));

-- Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\sr_Q1[0]~I\ : cycloneii_io
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
	datain => \instancia1_reg|tmp\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sr_Q1(0));

-- Location: PIN_B21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\sr_Q1[1]~I\ : cycloneii_io
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
	datain => \instancia1_reg|tmp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sr_Q1(1));

-- Location: PIN_A23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\sr_Q1[2]~I\ : cycloneii_io
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
	datain => \instancia1_reg|tmp\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sr_Q1(2));

-- Location: PIN_A21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\sr_Q1[3]~I\ : cycloneii_io
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
	datain => \instancia1_reg|tmp\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sr_Q1(3));

-- Location: PIN_K17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\sr_Q1[4]~I\ : cycloneii_io
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
	datain => \instancia1_reg|tmp\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sr_Q1(4));

-- Location: PIN_B23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\sr_Q1[5]~I\ : cycloneii_io
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
	datain => \instancia1_reg|tmp\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sr_Q1(5));

-- Location: PIN_B22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\sr_Q1[6]~I\ : cycloneii_io
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
	datain => \instancia1_reg|tmp\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sr_Q1(6));

-- Location: PIN_J16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\sr_Q1[7]~I\ : cycloneii_io
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
	datain => \instancia1_reg|tmp\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sr_Q1(7));

-- Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\sr_Q1[8]~I\ : cycloneii_io
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
	datain => \instancia1_reg|tmp\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sr_Q1(8));

-- Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\sr_Q1[9]~I\ : cycloneii_io
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
	datain => \instancia1_reg|tmp\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sr_Q1(9));

-- Location: PIN_K16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\sr_Q1[10]~I\ : cycloneii_io
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
	datain => \instancia1_reg|tmp\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sr_Q1(10));

-- Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\sr_Q1[11]~I\ : cycloneii_io
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
	datain => \instancia1_reg|tmp\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sr_Q1(11));

-- Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\sr_Q1[12]~I\ : cycloneii_io
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
	datain => \instancia1_reg|tmp\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sr_Q1(12));

-- Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\sr_Q1[13]~I\ : cycloneii_io
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
	datain => \instancia1_reg|tmp\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sr_Q1(13));

-- Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\sr_Q1[14]~I\ : cycloneii_io
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
	datain => \instancia1_reg|tmp\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sr_Q1(14));

-- Location: PIN_D20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\sr_Q1[15]~I\ : cycloneii_io
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
	datain => \instancia1_reg|tmp\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sr_Q1(15));

-- Location: PIN_A22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\sr_Q1[16]~I\ : cycloneii_io
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
	datain => \instancia1_reg|tmp\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sr_Q1(16));

-- Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\sr_Q1[17]~I\ : cycloneii_io
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
	datain => \instancia1_reg|tmp\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sr_Q1(17));
END structure;


