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

-- DATE "12/02/2022 11:01:08"

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

ENTITY 	gerar_obst_aleatorio IS
    PORT (
	goa_CLK : IN std_logic;
	goa_Q0 : OUT std_logic_vector(17 DOWNTO 0);
	goa_Q1 : OUT std_logic_vector(17 DOWNTO 0)
	);
END gerar_obst_aleatorio;

-- Design Ports Information
-- goa_Q0[0]	=>  Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- goa_Q0[1]	=>  Location: PIN_T10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- goa_Q0[2]	=>  Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- goa_Q0[3]	=>  Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- goa_Q0[4]	=>  Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- goa_Q0[5]	=>  Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- goa_Q0[6]	=>  Location: PIN_R4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- goa_Q0[7]	=>  Location: PIN_U10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- goa_Q0[8]	=>  Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- goa_Q0[9]	=>  Location: PIN_V3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- goa_Q0[10]	=>  Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- goa_Q0[11]	=>  Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- goa_Q0[12]	=>  Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- goa_Q0[13]	=>  Location: PIN_U3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- goa_Q0[14]	=>  Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- goa_Q0[15]	=>  Location: PIN_P7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- goa_Q0[16]	=>  Location: PIN_U4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- goa_Q0[17]	=>  Location: PIN_V1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- goa_Q1[0]	=>  Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- goa_Q1[1]	=>  Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- goa_Q1[2]	=>  Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- goa_Q1[3]	=>  Location: PIN_L9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- goa_Q1[4]	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- goa_Q1[5]	=>  Location: PIN_L6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- goa_Q1[6]	=>  Location: PIN_K1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- goa_Q1[7]	=>  Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- goa_Q1[8]	=>  Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- goa_Q1[9]	=>  Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- goa_Q1[10]	=>  Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- goa_Q1[11]	=>  Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- goa_Q1[12]	=>  Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- goa_Q1[13]	=>  Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- goa_Q1[14]	=>  Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- goa_Q1[15]	=>  Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- goa_Q1[16]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- goa_Q1[17]	=>  Location: PIN_L10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- goa_CLK	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF gerar_obst_aleatorio IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_goa_CLK : std_logic;
SIGNAL ww_goa_Q0 : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_goa_Q1 : std_logic_vector(17 DOWNTO 0);
SIGNAL \goa_CLK~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \goa_CLK~combout\ : std_logic;
SIGNAL \goa_CLK~clkctrl_outclk\ : std_logic;
SIGNAL \instancia_cnt2|cnt[0]~1_combout\ : std_logic;
SIGNAL \instancia_cnt2|cnt[1]~0_combout\ : std_logic;
SIGNAL \IN0~combout\ : std_logic;
SIGNAL \instancia_sr18d|instancia0_reg|tmp[2]~feeder_combout\ : std_logic;
SIGNAL \instancia_sr18d|instancia0_reg|tmp[4]~feeder_combout\ : std_logic;
SIGNAL \instancia_sr18d|instancia0_reg|tmp[5]~feeder_combout\ : std_logic;
SIGNAL \instancia_sr18d|instancia0_reg|tmp[6]~feeder_combout\ : std_logic;
SIGNAL \instancia_sr18d|instancia0_reg|tmp[7]~feeder_combout\ : std_logic;
SIGNAL \instancia_sr18d|instancia0_reg|tmp[8]~feeder_combout\ : std_logic;
SIGNAL \instancia_sr18d|instancia0_reg|tmp[10]~feeder_combout\ : std_logic;
SIGNAL \instancia_sr18d|instancia0_reg|tmp[12]~feeder_combout\ : std_logic;
SIGNAL \instancia_sr18d|instancia0_reg|tmp[14]~feeder_combout\ : std_logic;
SIGNAL \instancia_sr18d|instancia0_reg|tmp[16]~feeder_combout\ : std_logic;
SIGNAL \instancia_sr18d|instancia0_reg|tmp[17]~feeder_combout\ : std_logic;
SIGNAL \instancia_lfsr|intern[6]~feeder_combout\ : std_logic;
SIGNAL \instancia_lfsr|intern[4]~2_combout\ : std_logic;
SIGNAL \instancia_lfsr|intern[3]~feeder_combout\ : std_logic;
SIGNAL \instancia_lfsr|intern[2]~0_combout\ : std_logic;
SIGNAL \instancia_lfsr|intern[1]~feeder_combout\ : std_logic;
SIGNAL \instancia_lfsr|intern[0]~1_combout\ : std_logic;
SIGNAL \instancia_lfsr|tmp~0_combout\ : std_logic;
SIGNAL \IN1~combout\ : std_logic;
SIGNAL \instancia_sr18d|instancia1_reg|tmp[1]~feeder_combout\ : std_logic;
SIGNAL \instancia_sr18d|instancia1_reg|tmp[2]~feeder_combout\ : std_logic;
SIGNAL \instancia_sr18d|instancia1_reg|tmp[3]~feeder_combout\ : std_logic;
SIGNAL \instancia_sr18d|instancia1_reg|tmp[4]~feeder_combout\ : std_logic;
SIGNAL \instancia_sr18d|instancia1_reg|tmp[5]~feeder_combout\ : std_logic;
SIGNAL \instancia_sr18d|instancia1_reg|tmp[6]~feeder_combout\ : std_logic;
SIGNAL \instancia_sr18d|instancia1_reg|tmp[8]~feeder_combout\ : std_logic;
SIGNAL \instancia_sr18d|instancia1_reg|tmp[10]~feeder_combout\ : std_logic;
SIGNAL \instancia_sr18d|instancia1_reg|tmp[12]~feeder_combout\ : std_logic;
SIGNAL \instancia_sr18d|instancia1_reg|tmp[14]~feeder_combout\ : std_logic;
SIGNAL \instancia_sr18d|instancia1_reg|tmp[16]~feeder_combout\ : std_logic;
SIGNAL \instancia_sr18d|instancia1_reg|tmp[17]~feeder_combout\ : std_logic;
SIGNAL \instancia_sr18d|instancia1_reg|tmp\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \instancia_cnt2|cnt\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \instancia_sr18d|instancia0_reg|tmp\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \instancia_lfsr|intern\ : std_logic_vector(7 DOWNTO 0);

BEGIN

ww_goa_CLK <= goa_CLK;
goa_Q0 <= ww_goa_Q0;
goa_Q1 <= ww_goa_Q1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\goa_CLK~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \goa_CLK~combout\);

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\goa_CLK~I\ : cycloneii_io
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
	padio => ww_goa_CLK,
	combout => \goa_CLK~combout\);

-- Location: CLKCTRL_G3
\goa_CLK~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \goa_CLK~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \goa_CLK~clkctrl_outclk\);

-- Location: LCCOMB_X2_Y16_N28
\instancia_cnt2|cnt[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_cnt2|cnt[0]~1_combout\ = !\instancia_cnt2|cnt\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instancia_cnt2|cnt\(0),
	combout => \instancia_cnt2|cnt[0]~1_combout\);

-- Location: LCFF_X2_Y16_N29
\instancia_cnt2|cnt[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \goa_CLK~clkctrl_outclk\,
	datain => \instancia_cnt2|cnt[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_cnt2|cnt\(0));

-- Location: LCCOMB_X2_Y16_N14
\instancia_cnt2|cnt[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_cnt2|cnt[1]~0_combout\ = \instancia_cnt2|cnt\(1) $ (\instancia_cnt2|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instancia_cnt2|cnt\(1),
	datad => \instancia_cnt2|cnt\(0),
	combout => \instancia_cnt2|cnt[1]~0_combout\);

-- Location: LCFF_X2_Y16_N15
\instancia_cnt2|cnt[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \goa_CLK~clkctrl_outclk\,
	datain => \instancia_cnt2|cnt[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_cnt2|cnt\(1));

-- Location: LCCOMB_X2_Y16_N16
IN0 : cycloneii_lcell_comb
-- Equation(s):
-- \IN0~combout\ = (\instancia_cnt2|cnt\(1) & \instancia_cnt2|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instancia_cnt2|cnt\(1),
	datad => \instancia_cnt2|cnt\(0),
	combout => \IN0~combout\);

-- Location: LCFF_X2_Y16_N17
\instancia_sr18d|instancia0_reg|tmp[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \goa_CLK~clkctrl_outclk\,
	datain => \IN0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_sr18d|instancia0_reg|tmp\(0));

-- Location: LCFF_X2_Y16_N31
\instancia_sr18d|instancia0_reg|tmp[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \goa_CLK~clkctrl_outclk\,
	sdata => \instancia_sr18d|instancia0_reg|tmp\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_sr18d|instancia0_reg|tmp\(1));

-- Location: LCCOMB_X1_Y16_N24
\instancia_sr18d|instancia0_reg|tmp[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_sr18d|instancia0_reg|tmp[2]~feeder_combout\ = \instancia_sr18d|instancia0_reg|tmp\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instancia_sr18d|instancia0_reg|tmp\(1),
	combout => \instancia_sr18d|instancia0_reg|tmp[2]~feeder_combout\);

-- Location: LCFF_X1_Y16_N25
\instancia_sr18d|instancia0_reg|tmp[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \goa_CLK~clkctrl_outclk\,
	datain => \instancia_sr18d|instancia0_reg|tmp[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_sr18d|instancia0_reg|tmp\(2));

-- Location: LCFF_X1_Y16_N23
\instancia_sr18d|instancia0_reg|tmp[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \goa_CLK~clkctrl_outclk\,
	sdata => \instancia_sr18d|instancia0_reg|tmp\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_sr18d|instancia0_reg|tmp\(3));

-- Location: LCCOMB_X1_Y16_N28
\instancia_sr18d|instancia0_reg|tmp[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_sr18d|instancia0_reg|tmp[4]~feeder_combout\ = \instancia_sr18d|instancia0_reg|tmp\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instancia_sr18d|instancia0_reg|tmp\(3),
	combout => \instancia_sr18d|instancia0_reg|tmp[4]~feeder_combout\);

-- Location: LCFF_X1_Y16_N29
\instancia_sr18d|instancia0_reg|tmp[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \goa_CLK~clkctrl_outclk\,
	datain => \instancia_sr18d|instancia0_reg|tmp[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_sr18d|instancia0_reg|tmp\(4));

-- Location: LCCOMB_X1_Y16_N6
\instancia_sr18d|instancia0_reg|tmp[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_sr18d|instancia0_reg|tmp[5]~feeder_combout\ = \instancia_sr18d|instancia0_reg|tmp\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instancia_sr18d|instancia0_reg|tmp\(4),
	combout => \instancia_sr18d|instancia0_reg|tmp[5]~feeder_combout\);

-- Location: LCFF_X1_Y16_N7
\instancia_sr18d|instancia0_reg|tmp[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \goa_CLK~clkctrl_outclk\,
	datain => \instancia_sr18d|instancia0_reg|tmp[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_sr18d|instancia0_reg|tmp\(5));

-- Location: LCCOMB_X1_Y16_N0
\instancia_sr18d|instancia0_reg|tmp[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_sr18d|instancia0_reg|tmp[6]~feeder_combout\ = \instancia_sr18d|instancia0_reg|tmp\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instancia_sr18d|instancia0_reg|tmp\(5),
	combout => \instancia_sr18d|instancia0_reg|tmp[6]~feeder_combout\);

-- Location: LCFF_X1_Y16_N1
\instancia_sr18d|instancia0_reg|tmp[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \goa_CLK~clkctrl_outclk\,
	datain => \instancia_sr18d|instancia0_reg|tmp[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_sr18d|instancia0_reg|tmp\(6));

-- Location: LCCOMB_X1_Y16_N10
\instancia_sr18d|instancia0_reg|tmp[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_sr18d|instancia0_reg|tmp[7]~feeder_combout\ = \instancia_sr18d|instancia0_reg|tmp\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instancia_sr18d|instancia0_reg|tmp\(6),
	combout => \instancia_sr18d|instancia0_reg|tmp[7]~feeder_combout\);

-- Location: LCFF_X1_Y16_N11
\instancia_sr18d|instancia0_reg|tmp[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \goa_CLK~clkctrl_outclk\,
	datain => \instancia_sr18d|instancia0_reg|tmp[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_sr18d|instancia0_reg|tmp\(7));

-- Location: LCCOMB_X1_Y16_N8
\instancia_sr18d|instancia0_reg|tmp[8]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_sr18d|instancia0_reg|tmp[8]~feeder_combout\ = \instancia_sr18d|instancia0_reg|tmp\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instancia_sr18d|instancia0_reg|tmp\(7),
	combout => \instancia_sr18d|instancia0_reg|tmp[8]~feeder_combout\);

-- Location: LCFF_X1_Y16_N9
\instancia_sr18d|instancia0_reg|tmp[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \goa_CLK~clkctrl_outclk\,
	datain => \instancia_sr18d|instancia0_reg|tmp[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_sr18d|instancia0_reg|tmp\(8));

-- Location: LCFF_X1_Y16_N19
\instancia_sr18d|instancia0_reg|tmp[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \goa_CLK~clkctrl_outclk\,
	sdata => \instancia_sr18d|instancia0_reg|tmp\(8),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_sr18d|instancia0_reg|tmp\(9));

-- Location: LCCOMB_X1_Y16_N20
\instancia_sr18d|instancia0_reg|tmp[10]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_sr18d|instancia0_reg|tmp[10]~feeder_combout\ = \instancia_sr18d|instancia0_reg|tmp\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instancia_sr18d|instancia0_reg|tmp\(9),
	combout => \instancia_sr18d|instancia0_reg|tmp[10]~feeder_combout\);

-- Location: LCFF_X1_Y16_N21
\instancia_sr18d|instancia0_reg|tmp[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \goa_CLK~clkctrl_outclk\,
	datain => \instancia_sr18d|instancia0_reg|tmp[10]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_sr18d|instancia0_reg|tmp\(10));

-- Location: LCFF_X1_Y16_N27
\instancia_sr18d|instancia0_reg|tmp[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \goa_CLK~clkctrl_outclk\,
	sdata => \instancia_sr18d|instancia0_reg|tmp\(10),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_sr18d|instancia0_reg|tmp\(11));

-- Location: LCCOMB_X1_Y16_N4
\instancia_sr18d|instancia0_reg|tmp[12]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_sr18d|instancia0_reg|tmp[12]~feeder_combout\ = \instancia_sr18d|instancia0_reg|tmp\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instancia_sr18d|instancia0_reg|tmp\(11),
	combout => \instancia_sr18d|instancia0_reg|tmp[12]~feeder_combout\);

-- Location: LCFF_X1_Y16_N5
\instancia_sr18d|instancia0_reg|tmp[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \goa_CLK~clkctrl_outclk\,
	datain => \instancia_sr18d|instancia0_reg|tmp[12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_sr18d|instancia0_reg|tmp\(12));

-- Location: LCFF_X1_Y16_N3
\instancia_sr18d|instancia0_reg|tmp[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \goa_CLK~clkctrl_outclk\,
	sdata => \instancia_sr18d|instancia0_reg|tmp\(12),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_sr18d|instancia0_reg|tmp\(13));

-- Location: LCCOMB_X1_Y16_N16
\instancia_sr18d|instancia0_reg|tmp[14]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_sr18d|instancia0_reg|tmp[14]~feeder_combout\ = \instancia_sr18d|instancia0_reg|tmp\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instancia_sr18d|instancia0_reg|tmp\(13),
	combout => \instancia_sr18d|instancia0_reg|tmp[14]~feeder_combout\);

-- Location: LCFF_X1_Y16_N17
\instancia_sr18d|instancia0_reg|tmp[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \goa_CLK~clkctrl_outclk\,
	datain => \instancia_sr18d|instancia0_reg|tmp[14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_sr18d|instancia0_reg|tmp\(14));

-- Location: LCFF_X1_Y16_N31
\instancia_sr18d|instancia0_reg|tmp[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \goa_CLK~clkctrl_outclk\,
	sdata => \instancia_sr18d|instancia0_reg|tmp\(14),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_sr18d|instancia0_reg|tmp\(15));

-- Location: LCCOMB_X1_Y16_N12
\instancia_sr18d|instancia0_reg|tmp[16]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_sr18d|instancia0_reg|tmp[16]~feeder_combout\ = \instancia_sr18d|instancia0_reg|tmp\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instancia_sr18d|instancia0_reg|tmp\(15),
	combout => \instancia_sr18d|instancia0_reg|tmp[16]~feeder_combout\);

-- Location: LCFF_X1_Y16_N13
\instancia_sr18d|instancia0_reg|tmp[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \goa_CLK~clkctrl_outclk\,
	datain => \instancia_sr18d|instancia0_reg|tmp[16]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_sr18d|instancia0_reg|tmp\(16));

-- Location: LCCOMB_X1_Y16_N14
\instancia_sr18d|instancia0_reg|tmp[17]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_sr18d|instancia0_reg|tmp[17]~feeder_combout\ = \instancia_sr18d|instancia0_reg|tmp\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instancia_sr18d|instancia0_reg|tmp\(16),
	combout => \instancia_sr18d|instancia0_reg|tmp[17]~feeder_combout\);

-- Location: LCFF_X1_Y16_N15
\instancia_sr18d|instancia0_reg|tmp[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \goa_CLK~clkctrl_outclk\,
	datain => \instancia_sr18d|instancia0_reg|tmp[17]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_sr18d|instancia0_reg|tmp\(17));

-- Location: LCCOMB_X2_Y16_N20
\instancia_lfsr|intern[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_lfsr|intern[6]~feeder_combout\ = \instancia_lfsr|intern\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instancia_lfsr|intern\(7),
	combout => \instancia_lfsr|intern[6]~feeder_combout\);

-- Location: LCFF_X2_Y16_N21
\instancia_lfsr|intern[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \goa_CLK~clkctrl_outclk\,
	datain => \instancia_lfsr|intern[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_lfsr|intern\(6));

-- Location: LCFF_X2_Y16_N7
\instancia_lfsr|intern[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \goa_CLK~clkctrl_outclk\,
	sdata => \instancia_lfsr|intern\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_lfsr|intern\(5));

-- Location: LCCOMB_X2_Y16_N10
\instancia_lfsr|intern[4]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_lfsr|intern[4]~2_combout\ = !\instancia_lfsr|intern\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instancia_lfsr|intern\(5),
	combout => \instancia_lfsr|intern[4]~2_combout\);

-- Location: LCFF_X2_Y16_N11
\instancia_lfsr|intern[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \goa_CLK~clkctrl_outclk\,
	datain => \instancia_lfsr|intern[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_lfsr|intern\(4));

-- Location: LCCOMB_X2_Y16_N24
\instancia_lfsr|intern[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_lfsr|intern[3]~feeder_combout\ = \instancia_lfsr|intern\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instancia_lfsr|intern\(4),
	combout => \instancia_lfsr|intern[3]~feeder_combout\);

-- Location: LCFF_X2_Y16_N25
\instancia_lfsr|intern[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \goa_CLK~clkctrl_outclk\,
	datain => \instancia_lfsr|intern[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_lfsr|intern\(3));

-- Location: LCCOMB_X2_Y16_N12
\instancia_lfsr|intern[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_lfsr|intern[2]~0_combout\ = !\instancia_lfsr|intern\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instancia_lfsr|intern\(3),
	combout => \instancia_lfsr|intern[2]~0_combout\);

-- Location: LCFF_X2_Y16_N13
\instancia_lfsr|intern[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \goa_CLK~clkctrl_outclk\,
	datain => \instancia_lfsr|intern[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_lfsr|intern\(2));

-- Location: LCCOMB_X2_Y16_N4
\instancia_lfsr|intern[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_lfsr|intern[1]~feeder_combout\ = \instancia_lfsr|intern\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instancia_lfsr|intern\(2),
	combout => \instancia_lfsr|intern[1]~feeder_combout\);

-- Location: LCFF_X2_Y16_N5
\instancia_lfsr|intern[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \goa_CLK~clkctrl_outclk\,
	datain => \instancia_lfsr|intern[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_lfsr|intern\(1));

-- Location: LCCOMB_X2_Y16_N22
\instancia_lfsr|intern[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_lfsr|intern[0]~1_combout\ = !\instancia_lfsr|intern\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instancia_lfsr|intern\(1),
	combout => \instancia_lfsr|intern[0]~1_combout\);

-- Location: LCFF_X2_Y16_N23
\instancia_lfsr|intern[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \goa_CLK~clkctrl_outclk\,
	datain => \instancia_lfsr|intern[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_lfsr|intern\(0));

-- Location: LCCOMB_X2_Y16_N2
\instancia_lfsr|tmp~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_lfsr|tmp~0_combout\ = \instancia_lfsr|intern\(4) $ (\instancia_lfsr|intern\(0) $ (\instancia_lfsr|intern\(3) $ (!\instancia_lfsr|intern\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_lfsr|intern\(4),
	datab => \instancia_lfsr|intern\(0),
	datac => \instancia_lfsr|intern\(3),
	datad => \instancia_lfsr|intern\(2),
	combout => \instancia_lfsr|tmp~0_combout\);

-- Location: LCFF_X2_Y16_N3
\instancia_lfsr|intern[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \goa_CLK~clkctrl_outclk\,
	datain => \instancia_lfsr|tmp~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_lfsr|intern\(7));

-- Location: LCCOMB_X2_Y16_N0
IN1 : cycloneii_lcell_comb
-- Equation(s):
-- \IN1~combout\ = (\instancia_lfsr|intern\(7) & (\instancia_cnt2|cnt\(1) & \instancia_cnt2|cnt\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instancia_lfsr|intern\(7),
	datac => \instancia_cnt2|cnt\(1),
	datad => \instancia_cnt2|cnt\(0),
	combout => \IN1~combout\);

-- Location: LCFF_X2_Y16_N1
\instancia_sr18d|instancia1_reg|tmp[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \goa_CLK~clkctrl_outclk\,
	datain => \IN1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_sr18d|instancia1_reg|tmp\(0));

-- Location: LCCOMB_X2_Y17_N4
\instancia_sr18d|instancia1_reg|tmp[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_sr18d|instancia1_reg|tmp[1]~feeder_combout\ = \instancia_sr18d|instancia1_reg|tmp\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instancia_sr18d|instancia1_reg|tmp\(0),
	combout => \instancia_sr18d|instancia1_reg|tmp[1]~feeder_combout\);

-- Location: LCFF_X2_Y17_N5
\instancia_sr18d|instancia1_reg|tmp[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \goa_CLK~clkctrl_outclk\,
	datain => \instancia_sr18d|instancia1_reg|tmp[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_sr18d|instancia1_reg|tmp\(1));

-- Location: LCCOMB_X1_Y17_N28
\instancia_sr18d|instancia1_reg|tmp[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_sr18d|instancia1_reg|tmp[2]~feeder_combout\ = \instancia_sr18d|instancia1_reg|tmp\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instancia_sr18d|instancia1_reg|tmp\(1),
	combout => \instancia_sr18d|instancia1_reg|tmp[2]~feeder_combout\);

-- Location: LCFF_X1_Y17_N29
\instancia_sr18d|instancia1_reg|tmp[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \goa_CLK~clkctrl_outclk\,
	datain => \instancia_sr18d|instancia1_reg|tmp[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_sr18d|instancia1_reg|tmp\(2));

-- Location: LCCOMB_X1_Y17_N10
\instancia_sr18d|instancia1_reg|tmp[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_sr18d|instancia1_reg|tmp[3]~feeder_combout\ = \instancia_sr18d|instancia1_reg|tmp\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instancia_sr18d|instancia1_reg|tmp\(2),
	combout => \instancia_sr18d|instancia1_reg|tmp[3]~feeder_combout\);

-- Location: LCFF_X1_Y17_N11
\instancia_sr18d|instancia1_reg|tmp[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \goa_CLK~clkctrl_outclk\,
	datain => \instancia_sr18d|instancia1_reg|tmp[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_sr18d|instancia1_reg|tmp\(3));

-- Location: LCCOMB_X1_Y17_N0
\instancia_sr18d|instancia1_reg|tmp[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_sr18d|instancia1_reg|tmp[4]~feeder_combout\ = \instancia_sr18d|instancia1_reg|tmp\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instancia_sr18d|instancia1_reg|tmp\(3),
	combout => \instancia_sr18d|instancia1_reg|tmp[4]~feeder_combout\);

-- Location: LCFF_X1_Y17_N1
\instancia_sr18d|instancia1_reg|tmp[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \goa_CLK~clkctrl_outclk\,
	datain => \instancia_sr18d|instancia1_reg|tmp[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_sr18d|instancia1_reg|tmp\(4));

-- Location: LCCOMB_X1_Y17_N22
\instancia_sr18d|instancia1_reg|tmp[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_sr18d|instancia1_reg|tmp[5]~feeder_combout\ = \instancia_sr18d|instancia1_reg|tmp\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instancia_sr18d|instancia1_reg|tmp\(4),
	combout => \instancia_sr18d|instancia1_reg|tmp[5]~feeder_combout\);

-- Location: LCFF_X1_Y17_N23
\instancia_sr18d|instancia1_reg|tmp[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \goa_CLK~clkctrl_outclk\,
	datain => \instancia_sr18d|instancia1_reg|tmp[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_sr18d|instancia1_reg|tmp\(5));

-- Location: LCCOMB_X1_Y17_N16
\instancia_sr18d|instancia1_reg|tmp[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_sr18d|instancia1_reg|tmp[6]~feeder_combout\ = \instancia_sr18d|instancia1_reg|tmp\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instancia_sr18d|instancia1_reg|tmp\(5),
	combout => \instancia_sr18d|instancia1_reg|tmp[6]~feeder_combout\);

-- Location: LCFF_X1_Y17_N17
\instancia_sr18d|instancia1_reg|tmp[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \goa_CLK~clkctrl_outclk\,
	datain => \instancia_sr18d|instancia1_reg|tmp[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_sr18d|instancia1_reg|tmp\(6));

-- Location: LCFF_X1_Y17_N27
\instancia_sr18d|instancia1_reg|tmp[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \goa_CLK~clkctrl_outclk\,
	sdata => \instancia_sr18d|instancia1_reg|tmp\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_sr18d|instancia1_reg|tmp\(7));

-- Location: LCCOMB_X1_Y17_N24
\instancia_sr18d|instancia1_reg|tmp[8]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_sr18d|instancia1_reg|tmp[8]~feeder_combout\ = \instancia_sr18d|instancia1_reg|tmp\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instancia_sr18d|instancia1_reg|tmp\(7),
	combout => \instancia_sr18d|instancia1_reg|tmp[8]~feeder_combout\);

-- Location: LCFF_X1_Y17_N25
\instancia_sr18d|instancia1_reg|tmp[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \goa_CLK~clkctrl_outclk\,
	datain => \instancia_sr18d|instancia1_reg|tmp[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_sr18d|instancia1_reg|tmp\(8));

-- Location: LCFF_X1_Y17_N3
\instancia_sr18d|instancia1_reg|tmp[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \goa_CLK~clkctrl_outclk\,
	sdata => \instancia_sr18d|instancia1_reg|tmp\(8),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_sr18d|instancia1_reg|tmp\(9));

-- Location: LCCOMB_X1_Y17_N8
\instancia_sr18d|instancia1_reg|tmp[10]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_sr18d|instancia1_reg|tmp[10]~feeder_combout\ = \instancia_sr18d|instancia1_reg|tmp\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instancia_sr18d|instancia1_reg|tmp\(9),
	combout => \instancia_sr18d|instancia1_reg|tmp[10]~feeder_combout\);

-- Location: LCFF_X1_Y17_N9
\instancia_sr18d|instancia1_reg|tmp[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \goa_CLK~clkctrl_outclk\,
	datain => \instancia_sr18d|instancia1_reg|tmp[10]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_sr18d|instancia1_reg|tmp\(10));

-- Location: LCFF_X1_Y17_N31
\instancia_sr18d|instancia1_reg|tmp[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \goa_CLK~clkctrl_outclk\,
	sdata => \instancia_sr18d|instancia1_reg|tmp\(10),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_sr18d|instancia1_reg|tmp\(11));

-- Location: LCCOMB_X1_Y17_N20
\instancia_sr18d|instancia1_reg|tmp[12]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_sr18d|instancia1_reg|tmp[12]~feeder_combout\ = \instancia_sr18d|instancia1_reg|tmp\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instancia_sr18d|instancia1_reg|tmp\(11),
	combout => \instancia_sr18d|instancia1_reg|tmp[12]~feeder_combout\);

-- Location: LCFF_X1_Y17_N21
\instancia_sr18d|instancia1_reg|tmp[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \goa_CLK~clkctrl_outclk\,
	datain => \instancia_sr18d|instancia1_reg|tmp[12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_sr18d|instancia1_reg|tmp\(12));

-- Location: LCFF_X1_Y17_N19
\instancia_sr18d|instancia1_reg|tmp[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \goa_CLK~clkctrl_outclk\,
	sdata => \instancia_sr18d|instancia1_reg|tmp\(12),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_sr18d|instancia1_reg|tmp\(13));

-- Location: LCCOMB_X1_Y17_N4
\instancia_sr18d|instancia1_reg|tmp[14]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_sr18d|instancia1_reg|tmp[14]~feeder_combout\ = \instancia_sr18d|instancia1_reg|tmp\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instancia_sr18d|instancia1_reg|tmp\(13),
	combout => \instancia_sr18d|instancia1_reg|tmp[14]~feeder_combout\);

-- Location: LCFF_X1_Y17_N5
\instancia_sr18d|instancia1_reg|tmp[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \goa_CLK~clkctrl_outclk\,
	datain => \instancia_sr18d|instancia1_reg|tmp[14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_sr18d|instancia1_reg|tmp\(14));

-- Location: LCFF_X1_Y17_N7
\instancia_sr18d|instancia1_reg|tmp[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \goa_CLK~clkctrl_outclk\,
	sdata => \instancia_sr18d|instancia1_reg|tmp\(14),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_sr18d|instancia1_reg|tmp\(15));

-- Location: LCCOMB_X1_Y17_N12
\instancia_sr18d|instancia1_reg|tmp[16]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_sr18d|instancia1_reg|tmp[16]~feeder_combout\ = \instancia_sr18d|instancia1_reg|tmp\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instancia_sr18d|instancia1_reg|tmp\(15),
	combout => \instancia_sr18d|instancia1_reg|tmp[16]~feeder_combout\);

-- Location: LCFF_X1_Y17_N13
\instancia_sr18d|instancia1_reg|tmp[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \goa_CLK~clkctrl_outclk\,
	datain => \instancia_sr18d|instancia1_reg|tmp[16]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_sr18d|instancia1_reg|tmp\(16));

-- Location: LCCOMB_X1_Y17_N14
\instancia_sr18d|instancia1_reg|tmp[17]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_sr18d|instancia1_reg|tmp[17]~feeder_combout\ = \instancia_sr18d|instancia1_reg|tmp\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instancia_sr18d|instancia1_reg|tmp\(16),
	combout => \instancia_sr18d|instancia1_reg|tmp[17]~feeder_combout\);

-- Location: LCFF_X1_Y17_N15
\instancia_sr18d|instancia1_reg|tmp[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \goa_CLK~clkctrl_outclk\,
	datain => \instancia_sr18d|instancia1_reg|tmp[17]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_sr18d|instancia1_reg|tmp\(17));

-- Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\goa_Q0[0]~I\ : cycloneii_io
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
	datain => \instancia_sr18d|instancia0_reg|tmp\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_goa_Q0(0));

-- Location: PIN_T10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\goa_Q0[1]~I\ : cycloneii_io
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
	datain => \instancia_sr18d|instancia0_reg|tmp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_goa_Q0(1));

-- Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\goa_Q0[2]~I\ : cycloneii_io
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
	datain => \instancia_sr18d|instancia0_reg|tmp\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_goa_Q0(2));

-- Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\goa_Q0[3]~I\ : cycloneii_io
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
	datain => \instancia_sr18d|instancia0_reg|tmp\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_goa_Q0(3));

-- Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\goa_Q0[4]~I\ : cycloneii_io
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
	datain => \instancia_sr18d|instancia0_reg|tmp\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_goa_Q0(4));

-- Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\goa_Q0[5]~I\ : cycloneii_io
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
	datain => \instancia_sr18d|instancia0_reg|tmp\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_goa_Q0(5));

-- Location: PIN_R4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\goa_Q0[6]~I\ : cycloneii_io
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
	datain => \instancia_sr18d|instancia0_reg|tmp\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_goa_Q0(6));

-- Location: PIN_U10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\goa_Q0[7]~I\ : cycloneii_io
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
	datain => \instancia_sr18d|instancia0_reg|tmp\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_goa_Q0(7));

-- Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\goa_Q0[8]~I\ : cycloneii_io
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
	datain => \instancia_sr18d|instancia0_reg|tmp\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_goa_Q0(8));

-- Location: PIN_V3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\goa_Q0[9]~I\ : cycloneii_io
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
	datain => \instancia_sr18d|instancia0_reg|tmp\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_goa_Q0(9));

-- Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\goa_Q0[10]~I\ : cycloneii_io
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
	datain => \instancia_sr18d|instancia0_reg|tmp\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_goa_Q0(10));

-- Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\goa_Q0[11]~I\ : cycloneii_io
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
	datain => \instancia_sr18d|instancia0_reg|tmp\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_goa_Q0(11));

-- Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\goa_Q0[12]~I\ : cycloneii_io
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
	datain => \instancia_sr18d|instancia0_reg|tmp\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_goa_Q0(12));

-- Location: PIN_U3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\goa_Q0[13]~I\ : cycloneii_io
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
	datain => \instancia_sr18d|instancia0_reg|tmp\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_goa_Q0(13));

-- Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\goa_Q0[14]~I\ : cycloneii_io
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
	datain => \instancia_sr18d|instancia0_reg|tmp\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_goa_Q0(14));

-- Location: PIN_P7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\goa_Q0[15]~I\ : cycloneii_io
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
	datain => \instancia_sr18d|instancia0_reg|tmp\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_goa_Q0(15));

-- Location: PIN_U4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\goa_Q0[16]~I\ : cycloneii_io
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
	datain => \instancia_sr18d|instancia0_reg|tmp\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_goa_Q0(16));

-- Location: PIN_V1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\goa_Q0[17]~I\ : cycloneii_io
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
	datain => \instancia_sr18d|instancia0_reg|tmp\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_goa_Q0(17));

-- Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\goa_Q1[0]~I\ : cycloneii_io
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
	datain => \instancia_sr18d|instancia1_reg|tmp\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_goa_Q1(0));

-- Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\goa_Q1[1]~I\ : cycloneii_io
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
	datain => \instancia_sr18d|instancia1_reg|tmp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_goa_Q1(1));

-- Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\goa_Q1[2]~I\ : cycloneii_io
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
	datain => \instancia_sr18d|instancia1_reg|tmp\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_goa_Q1(2));

-- Location: PIN_L9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\goa_Q1[3]~I\ : cycloneii_io
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
	datain => \instancia_sr18d|instancia1_reg|tmp\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_goa_Q1(3));

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\goa_Q1[4]~I\ : cycloneii_io
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
	datain => \instancia_sr18d|instancia1_reg|tmp\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_goa_Q1(4));

-- Location: PIN_L6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\goa_Q1[5]~I\ : cycloneii_io
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
	datain => \instancia_sr18d|instancia1_reg|tmp\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_goa_Q1(5));

-- Location: PIN_K1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\goa_Q1[6]~I\ : cycloneii_io
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
	datain => \instancia_sr18d|instancia1_reg|tmp\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_goa_Q1(6));

-- Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\goa_Q1[7]~I\ : cycloneii_io
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
	datain => \instancia_sr18d|instancia1_reg|tmp\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_goa_Q1(7));

-- Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\goa_Q1[8]~I\ : cycloneii_io
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
	datain => \instancia_sr18d|instancia1_reg|tmp\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_goa_Q1(8));

-- Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\goa_Q1[9]~I\ : cycloneii_io
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
	datain => \instancia_sr18d|instancia1_reg|tmp\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_goa_Q1(9));

-- Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\goa_Q1[10]~I\ : cycloneii_io
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
	datain => \instancia_sr18d|instancia1_reg|tmp\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_goa_Q1(10));

-- Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\goa_Q1[11]~I\ : cycloneii_io
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
	datain => \instancia_sr18d|instancia1_reg|tmp\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_goa_Q1(11));

-- Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\goa_Q1[12]~I\ : cycloneii_io
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
	datain => \instancia_sr18d|instancia1_reg|tmp\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_goa_Q1(12));

-- Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\goa_Q1[13]~I\ : cycloneii_io
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
	datain => \instancia_sr18d|instancia1_reg|tmp\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_goa_Q1(13));

-- Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\goa_Q1[14]~I\ : cycloneii_io
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
	datain => \instancia_sr18d|instancia1_reg|tmp\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_goa_Q1(14));

-- Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\goa_Q1[15]~I\ : cycloneii_io
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
	datain => \instancia_sr18d|instancia1_reg|tmp\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_goa_Q1(15));

-- Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\goa_Q1[16]~I\ : cycloneii_io
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
	datain => \instancia_sr18d|instancia1_reg|tmp\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_goa_Q1(16));

-- Location: PIN_L10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\goa_Q1[17]~I\ : cycloneii_io
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
	datain => \instancia_sr18d|instancia1_reg|tmp\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_goa_Q1(17));
END structure;


