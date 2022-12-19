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

-- DATE "12/18/2022 17:56:46"

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

ENTITY 	GAME IS
    PORT (
	game_clock : IN std_logic;
	game_start : IN std_logic;
	game_a_button : IN std_logic;
	game_b_button : IN std_logic;
	lcd_data_pins : OUT std_logic_vector(7 DOWNTO 0);
	lcd_rs_pin : OUT std_logic;
	lcd_e_pin : OUT std_logic;
	lcd_on_pin : OUT std_logic;
	lcd_blon_pin : OUT std_logic;
	lcd_rw_pin : OUT std_logic;
	d7s_1_dez : OUT std_logic_vector(6 DOWNTO 0);
	d7s_1_un : OUT std_logic_vector(6 DOWNTO 0);
	d7s_2_dez : OUT std_logic_vector(6 DOWNTO 0);
	d7s_2_un : OUT std_logic_vector(6 DOWNTO 0)
	);
END GAME;

-- Design Ports Information
-- lcd_data_pins[0]	=>  Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- lcd_data_pins[1]	=>  Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- lcd_data_pins[2]	=>  Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- lcd_data_pins[3]	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- lcd_data_pins[4]	=>  Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- lcd_data_pins[5]	=>  Location: PIN_J3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- lcd_data_pins[6]	=>  Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- lcd_data_pins[7]	=>  Location: PIN_H3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- lcd_rs_pin	=>  Location: PIN_K1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- lcd_e_pin	=>  Location: PIN_K3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- lcd_on_pin	=>  Location: PIN_L4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- lcd_blon_pin	=>  Location: PIN_K2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- lcd_rw_pin	=>  Location: PIN_K4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d7s_1_dez[0]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d7s_1_dez[1]	=>  Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d7s_1_dez[2]	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d7s_1_dez[3]	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d7s_1_dez[4]	=>  Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d7s_1_dez[5]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d7s_1_dez[6]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d7s_1_un[0]	=>  Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d7s_1_un[1]	=>  Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d7s_1_un[2]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d7s_1_un[3]	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d7s_1_un[4]	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d7s_1_un[5]	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d7s_1_un[6]	=>  Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d7s_2_dez[0]	=>  Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d7s_2_dez[1]	=>  Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d7s_2_dez[2]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d7s_2_dez[3]	=>  Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d7s_2_dez[4]	=>  Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d7s_2_dez[5]	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d7s_2_dez[6]	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d7s_2_un[0]	=>  Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d7s_2_un[1]	=>  Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d7s_2_un[2]	=>  Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d7s_2_un[3]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d7s_2_un[4]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d7s_2_un[5]	=>  Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d7s_2_un[6]	=>  Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- game_clock	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- game_a_button	=>  Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- game_b_button	=>  Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- game_start	=>  Location: PIN_W26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF GAME IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_game_clock : std_logic;
SIGNAL ww_game_start : std_logic;
SIGNAL ww_game_a_button : std_logic;
SIGNAL ww_game_b_button : std_logic;
SIGNAL ww_lcd_data_pins : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_lcd_rs_pin : std_logic;
SIGNAL ww_lcd_e_pin : std_logic;
SIGNAL ww_lcd_on_pin : std_logic;
SIGNAL ww_lcd_blon_pin : std_logic;
SIGNAL ww_lcd_rw_pin : std_logic;
SIGNAL ww_d7s_1_dez : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_d7s_1_un : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_d7s_2_dez : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_d7s_2_un : std_logic_vector(6 DOWNTO 0);
SIGNAL \caminho_de_dados|div_freq_10kHz|tmp~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \caminho_de_dados|divisor_freq|tmp~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \game_clock~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \caminho_de_dados|contador_moedas_1|Add0~0_combout\ : std_logic;
SIGNAL \caminho_de_dados|contador_moedas_2|Add0~0_combout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|datapath|timer|i[1]~9_combout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|datapath|timer|i[4]~15_combout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|datapath|timer|i[6]~19_combout\ : std_logic;
SIGNAL \caminho_de_dados|div_freq_10kHz|cnt[4]~18_combout\ : std_logic;
SIGNAL \caminho_de_dados|div_freq_10kHz|cnt[5]~20_combout\ : std_logic;
SIGNAL \caminho_de_dados|div_freq_10kHz|cnt[7]~24_combout\ : std_logic;
SIGNAL \caminho_de_dados|frame_timer|temp[1]~22_combout\ : std_logic;
SIGNAL \caminho_de_dados|frame_timer|temp[2]~24_combout\ : std_logic;
SIGNAL \caminho_de_dados|frame_timer|temp[4]~28_combout\ : std_logic;
SIGNAL \caminho_de_dados|frame_timer|temp[6]~32_combout\ : std_logic;
SIGNAL \caminho_de_dados|frame_timer|temp[8]~36_combout\ : std_logic;
SIGNAL \caminho_de_dados|frame_timer|temp[15]~50_combout\ : std_logic;
SIGNAL \caminho_de_dados|frame_timer|temp[17]~54_combout\ : std_logic;
SIGNAL \caminho_de_dados|frame_timer|temp[18]~56_combout\ : std_logic;
SIGNAL \caminho_de_dados|frame_timer|temp[20]~60_combout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|controladora|atual_estado.s20~regout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|controladora|atual_estado.s21~regout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|controladora|atual_estado.s33~regout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|datapath|dp_E~5_combout\ : std_logic;
SIGNAL \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[18]~26_combout\ : std_logic;
SIGNAL \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[17]~29_combout\ : std_logic;
SIGNAL \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[16]~31_combout\ : std_logic;
SIGNAL \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[15]~33_combout\ : std_logic;
SIGNAL \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[23]~34_combout\ : std_logic;
SIGNAL \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[22]~35_combout\ : std_logic;
SIGNAL \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[21]~37_combout\ : std_logic;
SIGNAL \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[20]~39_combout\ : std_logic;
SIGNAL \caminho_de_dados|displa1|separador|Add1~0_combout\ : std_logic;
SIGNAL \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[25]~44_combout\ : std_logic;
SIGNAL \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[18]~26_combout\ : std_logic;
SIGNAL \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[17]~29_combout\ : std_logic;
SIGNAL \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[16]~31_combout\ : std_logic;
SIGNAL \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[15]~32_combout\ : std_logic;
SIGNAL \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[23]~34_combout\ : std_logic;
SIGNAL \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[22]~35_combout\ : std_logic;
SIGNAL \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[21]~37_combout\ : std_logic;
SIGNAL \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[20]~39_combout\ : std_logic;
SIGNAL \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[28]~40_combout\ : std_logic;
SIGNAL \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[26]~42_combout\ : std_logic;
SIGNAL \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[25]~44_combout\ : std_logic;
SIGNAL \controladora|WideOr0~0_combout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|datapath|comp_t1000|LessThan0~0_combout\ : std_logic;
SIGNAL \caminho_de_dados|div_freq_10kHz|Equal0~1_combout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|controladora|Selector8~0_combout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|controladora|prox_estado.s21~0_combout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|datapath|mux15_obstaculo_q1|Mux0~0_combout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|datapath|mux15_obstaculo_q1|Mux0~7_combout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|controladora|prox_estado.s33~0_combout\ : std_logic;
SIGNAL \caminho_de_dados|contador_moedas_1|cnt[1]~_emulated_regout\ : std_logic;
SIGNAL \caminho_de_dados|contador_moedas_1|cnt[0]~_emulated_regout\ : std_logic;
SIGNAL \caminho_de_dados|contador_moedas_2|cnt[1]~_emulated_regout\ : std_logic;
SIGNAL \caminho_de_dados|comparador_moedas|Equal0~2_combout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|datapath|reg_linha|qi~_emulated_regout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|datapath|cont_obj|cnt[1]~1_combout\ : std_logic;
SIGNAL \caminho_de_dados|contador_moedas_1|cnt[1]~5_combout\ : std_logic;
SIGNAL \caminho_de_dados|contador_moedas_1|cnt[0]~3_combout\ : std_logic;
SIGNAL \caminho_de_dados|contador_moedas_2|cnt[1]~5_combout\ : std_logic;
SIGNAL \caminho_de_dados|start_reg|qi~_emulated_regout\ : std_logic;
SIGNAL \controladora|estado_atual.sa8~regout\ : std_logic;
SIGNAL \caminho_de_dados|divisor_freq|tmp~0_combout\ : std_logic;
SIGNAL \caminho_de_dados|divisor_freq|tmp~1_combout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|datapath|reg_linha|qi~3_combout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|datapath|reg_linha|qi~0_combout\ : std_logic;
SIGNAL \caminho_de_dados|player_reg|qi~_emulated_regout\ : std_logic;
SIGNAL \caminho_de_dados|start_reg|qi~3_combout\ : std_logic;
SIGNAL \caminho_de_dados|start_reg|qi~0_combout\ : std_logic;
SIGNAL \controladora|prox_estado.sa8~combout\ : std_logic;
SIGNAL \caminho_de_dados|divisor_freq|cnt[1]~0_combout\ : std_logic;
SIGNAL \caminho_de_dados|player_reg|qi~3_combout\ : std_logic;
SIGNAL \caminho_de_dados|frame_timer|LessThan0~0_combout\ : std_logic;
SIGNAL \caminho_de_dados|frame_timer|LessThan0~1_combout\ : std_logic;
SIGNAL \caminho_de_dados|frame_timer|LessThan0~2_combout\ : std_logic;
SIGNAL \caminho_de_dados|frame_timer|LessThan0~3_combout\ : std_logic;
SIGNAL \caminho_de_dados|frame_timer|LessThan0~4_combout\ : std_logic;
SIGNAL \caminho_de_dados|frame_timer|LessThan0~5_combout\ : std_logic;
SIGNAL \caminho_de_dados|frame_timer|LessThan0~6_combout\ : std_logic;
SIGNAL \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[28]~45_combout\ : std_logic;
SIGNAL \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[27]~48_combout\ : std_logic;
SIGNAL \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[27]~48_combout\ : std_logic;
SIGNAL \caminho_de_dados|divisor_freq|cnt[0]~1_combout\ : std_logic;
SIGNAL \caminho_de_dados|divisor_freq|tmp~combout\ : std_logic;
SIGNAL \game_clock~combout\ : std_logic;
SIGNAL \caminho_de_dados|div_freq_10kHz|tmp~clkctrl_outclk\ : std_logic;
SIGNAL \caminho_de_dados|divisor_freq|tmp~clkctrl_outclk\ : std_logic;
SIGNAL \game_clock~clkctrl_outclk\ : std_logic;
SIGNAL \caminho_de_dados|contador_moedas_2|cnt[6]~17_combout\ : std_logic;
SIGNAL \caminho_de_dados|contador_moedas_2|cnt[1]~4_combout\ : std_logic;
SIGNAL \caminho_de_dados|contador_moedas_2|Add0~1\ : std_logic;
SIGNAL \caminho_de_dados|contador_moedas_2|Add0~2_combout\ : std_logic;
SIGNAL \caminho_de_dados|contador_moedas_2|cnt[4]~16_combout\ : std_logic;
SIGNAL \game_a_button~combout\ : std_logic;
SIGNAL \game_b_button~combout\ : std_logic;
SIGNAL \caminho_de_dados|player_position|qi~1_combout\ : std_logic;
SIGNAL \caminho_de_dados|player_position|qi~3_combout\ : std_logic;
SIGNAL \caminho_de_dados|player_position|qi~0_combout\ : std_logic;
SIGNAL \caminho_de_dados|player_position|qi~_emulated_regout\ : std_logic;
SIGNAL \caminho_de_dados|player_position|qi~2_combout\ : std_logic;
SIGNAL \caminho_de_dados|cont_2b|cnt[0]~1_combout\ : std_logic;
SIGNAL \caminho_de_dados|cont_2b|cnt[1]~0_combout\ : std_logic;
SIGNAL \caminho_de_dados|lfsr_instance|intern[10]~3_combout\ : std_logic;
SIGNAL \caminho_de_dados|lfsr_instance|intern[9]~2_combout\ : std_logic;
SIGNAL \caminho_de_dados|lfsr_instance|intern[8]~feeder_combout\ : std_logic;
SIGNAL \caminho_de_dados|lfsr_instance|intern[6]~feeder_combout\ : std_logic;
SIGNAL \caminho_de_dados|lfsr_instance|intern[5]~feeder_combout\ : std_logic;
SIGNAL \caminho_de_dados|lfsr_instance|intern[2]~feeder_combout\ : std_logic;
SIGNAL \caminho_de_dados|lfsr_instance|intern[1]~feeder_combout\ : std_logic;
SIGNAL \caminho_de_dados|lfsr_instance|intern[0]~feeder_combout\ : std_logic;
SIGNAL \caminho_de_dados|lfsr_instance|tmp~0_combout\ : std_logic;
SIGNAL \caminho_de_dados|lfsr_instance|intern[16]~feeder_combout\ : std_logic;
SIGNAL \caminho_de_dados|lfsr_instance|intern[15]~feeder_combout\ : std_logic;
SIGNAL \caminho_de_dados|lfsr_instance|intern[14]~1_combout\ : std_logic;
SIGNAL \caminho_de_dados|lfsr_instance|intern[13]~feeder_combout\ : std_logic;
SIGNAL \caminho_de_dados|lfsr_instance|intern[12]~0_combout\ : std_logic;
SIGNAL \caminho_de_dados|lfsr_instance|intern[11]~feeder_combout\ : std_logic;
SIGNAL \caminho_de_dados|s7~0_combout\ : std_logic;
SIGNAL \caminho_de_dados|sr_moeda|instancia0_reg|tmp[1]~feeder_combout\ : std_logic;
SIGNAL \caminho_de_dados|sr_moeda|instancia0_reg|tmp[3]~feeder_combout\ : std_logic;
SIGNAL \caminho_de_dados|sr_moeda|instancia0_reg|tmp[10]~feeder_combout\ : std_logic;
SIGNAL \caminho_de_dados|sr_moeda|instancia0_reg|tmp[12]~feeder_combout\ : std_logic;
SIGNAL \caminho_de_dados|sr_moeda|instancia0_reg|tmp[16]~feeder_combout\ : std_logic;
SIGNAL \caminho_de_dados|sr_obstaculo|instancia1_reg|tmp[12]~feeder_combout\ : std_logic;
SIGNAL \caminho_de_dados|sr_moeda|instancia1_reg|tmp[15]~feeder_combout\ : std_logic;
SIGNAL \caminho_de_dados|sr_obstaculo|instancia1_reg|tmp[16]~feeder_combout\ : std_logic;
SIGNAL \controladora|Selector2~0_combout\ : std_logic;
SIGNAL \controladora|Selector2~1_combout\ : std_logic;
SIGNAL \controladora|estado_atual.s8~regout\ : std_logic;
SIGNAL \caminho_de_dados|s12~combout\ : std_logic;
SIGNAL \caminho_de_dados|sr_obstaculo|instancia0_reg|tmp[9]~feeder_combout\ : std_logic;
SIGNAL \caminho_de_dados|sr_obstaculo|instancia0_reg|tmp[12]~feeder_combout\ : std_logic;
SIGNAL \caminho_de_dados|sr_obstaculo|instancia0_reg|tmp[14]~feeder_combout\ : std_logic;
SIGNAL \caminho_de_dados|sr_obstaculo|instancia0_reg|tmp[15]~feeder_combout\ : std_logic;
SIGNAL \caminho_de_dados|sr_obstaculo|instancia0_reg|tmp[16]~feeder_combout\ : std_logic;
SIGNAL \controladora|prox_estado.s9~0_combout\ : std_logic;
SIGNAL \controladora|estado_atual.s9~regout\ : std_logic;
SIGNAL \controladora|prox_estado.s13~0_combout\ : std_logic;
SIGNAL \controladora|estado_atual.s13~regout\ : std_logic;
SIGNAL \caminho_de_dados|player_reg|qi~1_combout\ : std_logic;
SIGNAL \caminho_de_dados|player_reg|qi~2_combout\ : std_logic;
SIGNAL \controladora|prox_estado.s14~0_combout\ : std_logic;
SIGNAL \controladora|estado_atual.s14~regout\ : std_logic;
SIGNAL \controladora|Selector5~0_combout\ : std_logic;
SIGNAL \controladora|estado_atual.s15~regout\ : std_logic;
SIGNAL \caminho_de_dados|frame_timer|temp[0]~66_combout\ : std_logic;
SIGNAL \controladora|ctrl_CLR_TIMER~combout\ : std_logic;
SIGNAL \caminho_de_dados|frame_timer|temp[1]~23\ : std_logic;
SIGNAL \caminho_de_dados|frame_timer|temp[2]~25\ : std_logic;
SIGNAL \caminho_de_dados|frame_timer|temp[3]~26_combout\ : std_logic;
SIGNAL \caminho_de_dados|frame_timer|temp[3]~27\ : std_logic;
SIGNAL \caminho_de_dados|frame_timer|temp[4]~29\ : std_logic;
SIGNAL \caminho_de_dados|frame_timer|temp[5]~30_combout\ : std_logic;
SIGNAL \caminho_de_dados|frame_timer|temp[5]~31\ : std_logic;
SIGNAL \caminho_de_dados|frame_timer|temp[6]~33\ : std_logic;
SIGNAL \caminho_de_dados|frame_timer|temp[7]~34_combout\ : std_logic;
SIGNAL \caminho_de_dados|frame_timer|temp[7]~35\ : std_logic;
SIGNAL \caminho_de_dados|frame_timer|temp[8]~37\ : std_logic;
SIGNAL \caminho_de_dados|frame_timer|temp[9]~38_combout\ : std_logic;
SIGNAL \caminho_de_dados|frame_timer|temp[9]~39\ : std_logic;
SIGNAL \caminho_de_dados|frame_timer|temp[10]~40_combout\ : std_logic;
SIGNAL \caminho_de_dados|frame_timer|temp[10]~41\ : std_logic;
SIGNAL \caminho_de_dados|frame_timer|temp[11]~42_combout\ : std_logic;
SIGNAL \caminho_de_dados|frame_timer|temp[11]~43\ : std_logic;
SIGNAL \caminho_de_dados|frame_timer|temp[12]~44_combout\ : std_logic;
SIGNAL \caminho_de_dados|frame_timer|temp[12]~45\ : std_logic;
SIGNAL \caminho_de_dados|frame_timer|temp[13]~46_combout\ : std_logic;
SIGNAL \caminho_de_dados|frame_timer|temp[13]~47\ : std_logic;
SIGNAL \caminho_de_dados|frame_timer|temp[14]~48_combout\ : std_logic;
SIGNAL \caminho_de_dados|frame_timer|temp[14]~49\ : std_logic;
SIGNAL \caminho_de_dados|frame_timer|temp[15]~51\ : std_logic;
SIGNAL \caminho_de_dados|frame_timer|temp[16]~52_combout\ : std_logic;
SIGNAL \caminho_de_dados|frame_timer|temp[16]~53\ : std_logic;
SIGNAL \caminho_de_dados|frame_timer|temp[17]~55\ : std_logic;
SIGNAL \caminho_de_dados|frame_timer|temp[18]~57\ : std_logic;
SIGNAL \caminho_de_dados|frame_timer|temp[19]~58_combout\ : std_logic;
SIGNAL \caminho_de_dados|frame_timer|temp[19]~59\ : std_logic;
SIGNAL \caminho_de_dados|frame_timer|temp[20]~61\ : std_logic;
SIGNAL \caminho_de_dados|frame_timer|temp[21]~62_combout\ : std_logic;
SIGNAL \caminho_de_dados|frame_timer|temp[21]~63\ : std_logic;
SIGNAL \caminho_de_dados|frame_timer|temp[22]~64_combout\ : std_logic;
SIGNAL \caminho_de_dados|contador_moedas_1|cnt[6]~17_combout\ : std_logic;
SIGNAL \caminho_de_dados|contador_moedas_1|cnt[1]~4_combout\ : std_logic;
SIGNAL \caminho_de_dados|contador_moedas_1|Add0~1\ : std_logic;
SIGNAL \caminho_de_dados|contador_moedas_1|Add0~2_combout\ : std_logic;
SIGNAL \caminho_de_dados|contador_moedas_1|cnt[4]~16_combout\ : std_logic;
SIGNAL \controladora|prox_estado.s6~0_combout\ : std_logic;
SIGNAL \controladora|estado_atual.s6~regout\ : std_logic;
SIGNAL \caminho_de_dados|contador_moedas_1|Add0~3\ : std_logic;
SIGNAL \caminho_de_dados|contador_moedas_1|Add0~4_combout\ : std_logic;
SIGNAL \caminho_de_dados|contador_moedas_1|Add0~5\ : std_logic;
SIGNAL \caminho_de_dados|contador_moedas_1|Add0~7\ : std_logic;
SIGNAL \caminho_de_dados|contador_moedas_1|Add0~8_combout\ : std_logic;
SIGNAL \caminho_de_dados|contador_moedas_1|cnt[5]~7_combout\ : std_logic;
SIGNAL \caminho_de_dados|contador_moedas_1|cnt[0]~0_combout\ : std_logic;
SIGNAL \caminho_de_dados|contador_moedas_1|cnt[5]~_emulated_regout\ : std_logic;
SIGNAL \caminho_de_dados|contador_moedas_1|cnt[5]~6_combout\ : std_logic;
SIGNAL \caminho_de_dados|contador_moedas_1|LessThan0~0_combout\ : std_logic;
SIGNAL \caminho_de_dados|contador_moedas_1|LessThan0~1_combout\ : std_logic;
SIGNAL \caminho_de_dados|contador_moedas_1|cnt[0]~1_combout\ : std_logic;
SIGNAL \caminho_de_dados|contador_moedas_1|Add0~9\ : std_logic;
SIGNAL \caminho_de_dados|contador_moedas_1|Add0~10_combout\ : std_logic;
SIGNAL \caminho_de_dados|contador_moedas_1|cnt[6]~9_combout\ : std_logic;
SIGNAL \caminho_de_dados|contador_moedas_1|cnt[6]~_emulated_regout\ : std_logic;
SIGNAL \caminho_de_dados|contador_moedas_1|cnt[6]~8_combout\ : std_logic;
SIGNAL \caminho_de_dados|comparador_moedas|Equal0~3_combout\ : std_logic;
SIGNAL \caminho_de_dados|contador_moedas_2|Add0~3\ : std_logic;
SIGNAL \caminho_de_dados|contador_moedas_2|Add0~4_combout\ : std_logic;
SIGNAL \caminho_de_dados|comparador_moedas|Equal0~1_combout\ : std_logic;
SIGNAL \caminho_de_dados|contador_moedas_1|cnt[0]~2_combout\ : std_logic;
SIGNAL \caminho_de_dados|contador_moedas_2|cnt[0]~3_combout\ : std_logic;
SIGNAL \caminho_de_dados|contador_moedas_2|cnt[0]~0_combout\ : std_logic;
SIGNAL \caminho_de_dados|contador_moedas_2|cnt[0]~_emulated_regout\ : std_logic;
SIGNAL \caminho_de_dados|contador_moedas_2|cnt[0]~2_combout\ : std_logic;
SIGNAL \caminho_de_dados|comparador_moedas|Equal0~0_combout\ : std_logic;
SIGNAL \caminho_de_dados|comparador_moedas|Equal0~4_combout\ : std_logic;
SIGNAL \controladora|Selector8~0_combout\ : std_logic;
SIGNAL \caminho_de_dados|contador_moedas_2|Add0~5\ : std_logic;
SIGNAL \caminho_de_dados|contador_moedas_2|Add0~6_combout\ : std_logic;
SIGNAL \caminho_de_dados|contador_moedas_2|Add0~7\ : std_logic;
SIGNAL \caminho_de_dados|contador_moedas_2|Add0~8_combout\ : std_logic;
SIGNAL \caminho_de_dados|contador_moedas_2|cnt[5]~7_combout\ : std_logic;
SIGNAL \caminho_de_dados|contador_moedas_2|cnt[5]~_emulated_regout\ : std_logic;
SIGNAL \caminho_de_dados|contador_moedas_2|cnt[5]~6_combout\ : std_logic;
SIGNAL \caminho_de_dados|comparador_moedas|LessThan0~1_cout\ : std_logic;
SIGNAL \caminho_de_dados|comparador_moedas|LessThan0~3_cout\ : std_logic;
SIGNAL \caminho_de_dados|comparador_moedas|LessThan0~5_cout\ : std_logic;
SIGNAL \caminho_de_dados|comparador_moedas|LessThan0~7_cout\ : std_logic;
SIGNAL \caminho_de_dados|comparador_moedas|LessThan0~9_cout\ : std_logic;
SIGNAL \caminho_de_dados|comparador_moedas|LessThan0~11_cout\ : std_logic;
SIGNAL \caminho_de_dados|comparador_moedas|LessThan0~12_combout\ : std_logic;
SIGNAL \controladora|Equal1~0_combout\ : std_logic;
SIGNAL \controladora|Selector8~1_combout\ : std_logic;
SIGNAL \controladora|estado_atual.s19~regout\ : std_logic;
SIGNAL \controladora|prox_estado.s16~0_combout\ : std_logic;
SIGNAL \controladora|estado_atual.s16~regout\ : std_logic;
SIGNAL \controladora|Selector7~0_combout\ : std_logic;
SIGNAL \controladora|Selector7~1_combout\ : std_logic;
SIGNAL \controladora|estado_atual.s18~regout\ : std_logic;
SIGNAL \controladora|WideOr1~combout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|controladora|prox_estado.s43~0_combout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|controladora|atual_estado.s43~regout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|controladora|prox_estado.s44~0_combout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|controladora|atual_estado.s44~regout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|controladora|prox_estado.s45~0_combout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|controladora|atual_estado.s45~regout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|controladora|prox_estado.s46~combout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|controladora|atual_estado.s46~regout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|controladora|atual_estado.s47~regout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|controladora|atual_estado.s50~regout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|controladora|atual_estado.s51~regout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|controladora|prox_estado.s38~1_combout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|controladora|atual_estado.s38~regout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|controladora|atual_estado.s39~regout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|controladora|prox_estado.s41~0_combout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|controladora|atual_estado.s41~regout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|controladora|prox_estado.s40~0_combout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|controladora|atual_estado.s40~regout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|controladora|prox_estado.s42~combout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|controladora|atual_estado.s42~regout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|controladora|WideOr28~0_combout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|controladora|atual_estado.s52~regout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|datapath|timer|i[2]~11_combout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|controladora|prox_estado.s6~0_combout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|controladora|atual_estado.s6~regout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|datapath|timer|i[5]~18\ : std_logic;
SIGNAL \caminho_de_dados|lcd|datapath|timer|i[6]~20\ : std_logic;
SIGNAL \caminho_de_dados|lcd|datapath|timer|i[7]~21_combout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|datapath|dp_E~1_combout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|datapath|timer|i[7]~22\ : std_logic;
SIGNAL \caminho_de_dados|lcd|datapath|timer|i[8]~23_combout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|datapath|timer|i[8]~24\ : std_logic;
SIGNAL \caminho_de_dados|lcd|datapath|timer|i[9]~25_combout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|datapath|comp_t1000|LessThan0~1_combout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|controladora|Selector0~0_combout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|controladora|atual_estado.s1~regout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|controladora|prox_estado.s2~0_combout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|controladora|atual_estado.s2~regout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|datapath|comp_t100|LessThan0~0_combout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|datapath|comp_t100|LessThan0~1_combout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|controladora|Selector1~0_combout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|controladora|atual_estado.s3~regout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|controladora|prox_estado.s4~0_combout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|controladora|atual_estado.s4~regout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|controladora|WideOr3~0_combout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|controladora|atual_estado.s0~feeder_combout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|controladora|atual_estado.s0~regout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|controladora|WideOr3~combout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|datapath|comp_t2|LessThan0~1_combout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|datapath|comp_t2|LessThan0~0_combout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|datapath|comp_t2|LessThan0~2_combout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|controladora|Selector2~0_combout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|controladora|atual_estado.s5~regout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|controladora|Selector3~0_combout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|controladora|atual_estado.s7~regout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|datapath|dp_E~0_combout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|controladora|prox_estado.s8~0_combout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|controladora|atual_estado.s8~regout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|controladora|atual_estado.s9~regout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|controladora|atual_estado.s10~regout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|controladora|Selector4~0_combout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|controladora|atual_estado.s11~regout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|datapath|timer|i[0]~27_combout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|datapath|timer|i[1]~10\ : std_logic;
SIGNAL \caminho_de_dados|lcd|datapath|timer|i[2]~12\ : std_logic;
SIGNAL \caminho_de_dados|lcd|datapath|timer|i[3]~13_combout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|datapath|timer|i[3]~14\ : std_logic;
SIGNAL \caminho_de_dados|lcd|datapath|timer|i[4]~16\ : std_logic;
SIGNAL \caminho_de_dados|lcd|datapath|timer|i[5]~17_combout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|datapath|comp_t40|LessThan0~0_combout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|controladora|prox_estado.s12~0_combout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|controladora|atual_estado.s12~regout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|controladora|atual_estado.s13~regout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|controladora|Selector5~0_combout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|controladora|Selector5~1_combout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|controladora|atual_estado.s14~regout\ : std_logic;
SIGNAL \controladora|Selector3~0_combout\ : std_logic;
SIGNAL \controladora|Selector3~1_combout\ : std_logic;
SIGNAL \controladora|estado_atual.s10~regout\ : std_logic;
SIGNAL \controladora|Selector4~0_combout\ : std_logic;
SIGNAL \controladora|Selector4~1_combout\ : std_logic;
SIGNAL \controladora|estado_atual.s11~regout\ : std_logic;
SIGNAL \controladora|prox_estado.s12~0_combout\ : std_logic;
SIGNAL \controladora|estado_atual.s12~regout\ : std_logic;
SIGNAL \controladora|Selector1~0_combout\ : std_logic;
SIGNAL \controladora|estado_atual.s3~regout\ : std_logic;
SIGNAL \controladora|prox_estado.s4~0_combout\ : std_logic;
SIGNAL \controladora|estado_atual.s4~regout\ : std_logic;
SIGNAL \controladora|prox_estado.s5~0_combout\ : std_logic;
SIGNAL \controladora|estado_atual.s5~regout\ : std_logic;
SIGNAL \controladora|prox_estado.s7~0_combout\ : std_logic;
SIGNAL \controladora|estado_atual.s7~regout\ : std_logic;
SIGNAL \caminho_de_dados|contador_moedas_2|LessThan0~0_combout\ : std_logic;
SIGNAL \caminho_de_dados|contador_moedas_2|LessThan0~1_combout\ : std_logic;
SIGNAL \caminho_de_dados|contador_moedas_2|cnt[0]~1_combout\ : std_logic;
SIGNAL \caminho_de_dados|contador_moedas_2|Add0~9\ : std_logic;
SIGNAL \caminho_de_dados|contador_moedas_2|Add0~10_combout\ : std_logic;
SIGNAL \caminho_de_dados|contador_moedas_2|cnt[6]~9_combout\ : std_logic;
SIGNAL \caminho_de_dados|contador_moedas_2|cnt[6]~_emulated_regout\ : std_logic;
SIGNAL \caminho_de_dados|contador_moedas_2|cnt[6]~8_combout\ : std_logic;
SIGNAL \caminho_de_dados|comparador_moedas|LessThan1~1_cout\ : std_logic;
SIGNAL \caminho_de_dados|comparador_moedas|LessThan1~3_cout\ : std_logic;
SIGNAL \caminho_de_dados|comparador_moedas|LessThan1~5_cout\ : std_logic;
SIGNAL \caminho_de_dados|comparador_moedas|LessThan1~7_cout\ : std_logic;
SIGNAL \caminho_de_dados|comparador_moedas|LessThan1~9_cout\ : std_logic;
SIGNAL \caminho_de_dados|comparador_moedas|LessThan1~11_cout\ : std_logic;
SIGNAL \caminho_de_dados|comparador_moedas|LessThan1~12_combout\ : std_logic;
SIGNAL \controladora|Selector6~0_combout\ : std_logic;
SIGNAL \controladora|Selector6~1_combout\ : std_logic;
SIGNAL \controladora|estado_atual.s17~regout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|controladora|prox_estado.s38~0_combout\ : std_logic;
SIGNAL \controladora|prox_estado.s2~0_combout\ : std_logic;
SIGNAL \controladora|estado_atual.s2~regout\ : std_logic;
SIGNAL \controladora|ctrl_CLR_START~combout\ : std_logic;
SIGNAL \game_start~combout\ : std_logic;
SIGNAL \caminho_de_dados|start_reg|qi~1_combout\ : std_logic;
SIGNAL \caminho_de_dados|start_reg|qi~2_combout\ : std_logic;
SIGNAL \controladora|estado_atual.s0~0_combout\ : std_logic;
SIGNAL \controladora|estado_atual.s0~regout\ : std_logic;
SIGNAL \controladora|Selector0~0_combout\ : std_logic;
SIGNAL \controladora|Selector0~1_combout\ : std_logic;
SIGNAL \controladora|estado_atual.s1~regout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|controladora|prox_estado.s15~2_combout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|controladora|atual_estado.s15~regout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|controladora|Selector6~0_combout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|controladora|atual_estado.s16~regout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|controladora|prox_estado.s17~0_combout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|controladora|atual_estado.s17~regout\ : std_logic;
SIGNAL \controladora|WideOr3~0_combout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|controladora|Selector12~0_combout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|controladora|atual_estado.s37~regout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|controladora|prox_estado.s48~0_combout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|controladora|atual_estado.s48~regout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|controladora|atual_estado.s49~regout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|controladora|prox_estado.s35~0_combout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|controladora|atual_estado.s35~regout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|controladora|Selector11~0_combout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|controladora|atual_estado.s34~regout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|controladora|WideOr7~0_combout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|datapath|cont_pos|i[1]~2_combout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|controladora|prox_estado.s32~0_combout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|controladora|atual_estado.s32~regout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|datapath|dp_E~2_combout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|datapath|cont_pos|i[2]~1_combout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|controladora|prox_estado.s29~0_combout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|datapath|cont_pos|i[3]~0_combout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|controladora|prox_estado.s29~1_combout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|controladora|atual_estado.s29~regout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|controladora|prox_estado.s30~0_combout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|controladora|atual_estado.s30~regout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|datapath|dp_E~7_combout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|datapath|reg_linha|qi~1_combout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|datapath|reg_linha|qi~2_combout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|datapath|cont_obj|cnt[0]~0_combout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|controladora|WideOr3~1_combout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|datapath|mux15_moeda_q0|Mux0~10_combout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|datapath|mux15_moeda_q0|Mux0~11_combout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|datapath|mux15_moeda_q0|Mux0~17_combout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|datapath|mux15_moeda_q0|Mux0~18_combout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|datapath|mux15_moeda_q0|Mux0~12_combout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|datapath|mux15_moeda_q0|Mux0~13_combout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|datapath|mux15_moeda_q0|Mux0~14_combout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|datapath|mux15_moeda_q0|Mux0~15_combout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|datapath|mux15_moeda_q0|Mux0~16_combout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|datapath|mux15_moeda_q0|Mux0~19_combout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|datapath|mux15_moeda_q0|Mux0~0_combout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|datapath|mux15_moeda_q0|Mux0~1_combout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|datapath|mux15_moeda_q0|Mux0~4_combout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|datapath|mux15_moeda_q0|Mux0~5_combout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|datapath|mux15_moeda_q0|Mux0~2_combout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|datapath|mux15_moeda_q0|Mux0~3_combout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|datapath|mux15_moeda_q0|Mux0~6_combout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|datapath|mux15_moeda_q0|Mux0~7_combout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|datapath|mux15_moeda_q0|Mux0~8_combout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|datapath|mux15_moeda_q0|Mux0~9_combout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|controladora|Selector10~0_combout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|controladora|Selector10~1_combout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|controladora|atual_estado.s26~regout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|controladora|prox_estado.s23~0_combout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|controladora|atual_estado.s23~regout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|controladora|WideOr8~3_combout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|controladora|atual_estado.s27~feeder_combout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|controladora|atual_estado.s27~regout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|controladora|prox_estado.s28~0_combout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|controladora|atual_estado.s28~regout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|datapath|cont_pos|i[0]~3_combout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|datapath|mux15_obstaculo_q1|Mux0~2_combout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|datapath|mux15_obstaculo_q1|Mux0~3_combout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|datapath|mux15_obstaculo_q1|Mux0~4_combout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|datapath|mux15_obstaculo_q1|Mux0~5_combout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|datapath|mux15_obstaculo_q1|Mux0~6_combout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|datapath|mux15_obstaculo_q1|Mux0~8_combout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|datapath|mux15_obstaculo_q1|Mux0~1_combout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|datapath|mux15_obstaculo_q1|Mux0~9_combout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|controladora|prox_estado.s25~0_combout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|controladora|atual_estado.s25~regout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|controladora|Selector9~0_combout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|controladora|atual_estado.s22~regout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|controladora|prox_estado.s24~0_combout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|controladora|atual_estado.s24~regout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|controladora|WideOr13~0_combout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|controladora|WideOr13~1_combout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|controladora|WideOr12~0_combout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|controladora|WideOr12~combout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|controladora|WideOr11~0_combout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|controladora|WideOr11~combout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|controladora|WideOr10~0_combout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|controladora|WideOr10~combout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|controladora|WideOr9~0_combout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|controladora|WideOr13~2_combout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|controladora|WideOr8~0_combout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|controladora|WideOr9~combout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|controladora|WideOr8~1_combout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|controladora|WideOr8~2_combout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|controladora|WideOr8~combout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|controladora|WideOr7~1_combout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|controladora|atual_estado.s31~regout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|controladora|WideOr7~2_combout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|controladora|Selector7~0_combout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|controladora|atual_estado.s18~regout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|controladora|WideOr6~combout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|datapath|dp_E~4_combout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|datapath|dp_E~6_combout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|controladora|atual_estado.s19~feeder_combout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|controladora|atual_estado.s19~regout\ : std_logic;
SIGNAL \caminho_de_dados|div_freq_10kHz|cnt[0]~36_combout\ : std_logic;
SIGNAL \caminho_de_dados|div_freq_10kHz|cnt[1]~13\ : std_logic;
SIGNAL \caminho_de_dados|div_freq_10kHz|cnt[2]~14_combout\ : std_logic;
SIGNAL \caminho_de_dados|div_freq_10kHz|cnt[1]~12_combout\ : std_logic;
SIGNAL \caminho_de_dados|div_freq_10kHz|Equal0~0_combout\ : std_logic;
SIGNAL \caminho_de_dados|div_freq_10kHz|cnt[2]~15\ : std_logic;
SIGNAL \caminho_de_dados|div_freq_10kHz|cnt[3]~16_combout\ : std_logic;
SIGNAL \caminho_de_dados|div_freq_10kHz|cnt[3]~17\ : std_logic;
SIGNAL \caminho_de_dados|div_freq_10kHz|cnt[4]~19\ : std_logic;
SIGNAL \caminho_de_dados|div_freq_10kHz|cnt[5]~21\ : std_logic;
SIGNAL \caminho_de_dados|div_freq_10kHz|cnt[6]~22_combout\ : std_logic;
SIGNAL \caminho_de_dados|div_freq_10kHz|cnt[6]~23\ : std_logic;
SIGNAL \caminho_de_dados|div_freq_10kHz|cnt[7]~25\ : std_logic;
SIGNAL \caminho_de_dados|div_freq_10kHz|cnt[8]~26_combout\ : std_logic;
SIGNAL \caminho_de_dados|div_freq_10kHz|cnt[8]~27\ : std_logic;
SIGNAL \caminho_de_dados|div_freq_10kHz|cnt[9]~28_combout\ : std_logic;
SIGNAL \caminho_de_dados|div_freq_10kHz|cnt[9]~29\ : std_logic;
SIGNAL \caminho_de_dados|div_freq_10kHz|cnt[10]~30_combout\ : std_logic;
SIGNAL \caminho_de_dados|div_freq_10kHz|cnt[10]~31\ : std_logic;
SIGNAL \caminho_de_dados|div_freq_10kHz|cnt[11]~32_combout\ : std_logic;
SIGNAL \caminho_de_dados|div_freq_10kHz|Equal0~2_combout\ : std_logic;
SIGNAL \caminho_de_dados|div_freq_10kHz|cnt[11]~33\ : std_logic;
SIGNAL \caminho_de_dados|div_freq_10kHz|cnt[12]~34_combout\ : std_logic;
SIGNAL \caminho_de_dados|div_freq_10kHz|Equal0~3_combout\ : std_logic;
SIGNAL \caminho_de_dados|div_freq_10kHz|tmp~1_combout\ : std_logic;
SIGNAL \caminho_de_dados|div_freq_10kHz|tmp~0_combout\ : std_logic;
SIGNAL \caminho_de_dados|div_freq_10kHz|tmp~combout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|datapath|dp_E~3_combout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|datapath|dp_E~combout\ : std_logic;
SIGNAL \caminho_de_dados|contador_moedas_1|Add0~6_combout\ : std_logic;
SIGNAL \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[18]~27_combout\ : std_logic;
SIGNAL \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[17]~28_combout\ : std_logic;
SIGNAL \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[16]~30_combout\ : std_logic;
SIGNAL \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[15]~32_combout\ : std_logic;
SIGNAL \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[23]~46_combout\ : std_logic;
SIGNAL \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[22]~47_combout\ : std_logic;
SIGNAL \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[21]~36_combout\ : std_logic;
SIGNAL \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[20]~38_combout\ : std_logic;
SIGNAL \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ : std_logic;
SIGNAL \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[28]~40_combout\ : std_logic;
SIGNAL \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[27]~41_combout\ : std_logic;
SIGNAL \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[26]~42_combout\ : std_logic;
SIGNAL \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[25]~43_combout\ : std_logic;
SIGNAL \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1_cout\ : std_logic;
SIGNAL \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3_cout\ : std_logic;
SIGNAL \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5_cout\ : std_logic;
SIGNAL \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ : std_logic;
SIGNAL \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \caminho_de_dados|displa1|dez|Mux6~0_combout\ : std_logic;
SIGNAL \caminho_de_dados|displa1|dez|Mux5~0_combout\ : std_logic;
SIGNAL \caminho_de_dados|displa1|dez|Mux4~0_combout\ : std_logic;
SIGNAL \caminho_de_dados|displa1|dez|Mux3~0_combout\ : std_logic;
SIGNAL \caminho_de_dados|displa1|dez|Mux2~0_combout\ : std_logic;
SIGNAL \caminho_de_dados|displa1|dez|Mux1~0_combout\ : std_logic;
SIGNAL \caminho_de_dados|displa1|dez|Mux0~0_combout\ : std_logic;
SIGNAL \caminho_de_dados|displa1|separador|Add1~3_combout\ : std_logic;
SIGNAL \caminho_de_dados|displa1|separador|Add1~4_combout\ : std_logic;
SIGNAL \caminho_de_dados|displa1|separador|Add1~2_combout\ : std_logic;
SIGNAL \caminho_de_dados|displa1|separador|Add1~1_combout\ : std_logic;
SIGNAL \caminho_de_dados|displa1|un|Mux6~0_combout\ : std_logic;
SIGNAL \caminho_de_dados|displa1|un|Mux5~0_combout\ : std_logic;
SIGNAL \caminho_de_dados|displa1|un|Mux4~0_combout\ : std_logic;
SIGNAL \caminho_de_dados|displa1|un|Mux3~0_combout\ : std_logic;
SIGNAL \caminho_de_dados|displa1|un|Mux2~0_combout\ : std_logic;
SIGNAL \caminho_de_dados|displa1|un|Mux1~0_combout\ : std_logic;
SIGNAL \caminho_de_dados|displa1|un|Mux0~0_combout\ : std_logic;
SIGNAL \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[18]~27_combout\ : std_logic;
SIGNAL \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[17]~28_combout\ : std_logic;
SIGNAL \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[16]~30_combout\ : std_logic;
SIGNAL \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[15]~33_combout\ : std_logic;
SIGNAL \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[22]~47_combout\ : std_logic;
SIGNAL \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[23]~46_combout\ : std_logic;
SIGNAL \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[21]~36_combout\ : std_logic;
SIGNAL \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[20]~38_combout\ : std_logic;
SIGNAL \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ : std_logic;
SIGNAL \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[28]~45_combout\ : std_logic;
SIGNAL \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[27]~41_combout\ : std_logic;
SIGNAL \caminho_de_dados|displa2|separador|Add1~0_combout\ : std_logic;
SIGNAL \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[25]~43_combout\ : std_logic;
SIGNAL \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1_cout\ : std_logic;
SIGNAL \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3_cout\ : std_logic;
SIGNAL \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5_cout\ : std_logic;
SIGNAL \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ : std_logic;
SIGNAL \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \caminho_de_dados|displa2|dez|Mux6~0_combout\ : std_logic;
SIGNAL \caminho_de_dados|displa2|dez|Mux5~0_combout\ : std_logic;
SIGNAL \caminho_de_dados|displa2|dez|Mux4~0_combout\ : std_logic;
SIGNAL \caminho_de_dados|displa2|dez|Mux3~0_combout\ : std_logic;
SIGNAL \caminho_de_dados|displa2|dez|Mux2~0_combout\ : std_logic;
SIGNAL \caminho_de_dados|displa2|dez|Mux1~0_combout\ : std_logic;
SIGNAL \caminho_de_dados|displa2|dez|Mux0~0_combout\ : std_logic;
SIGNAL \caminho_de_dados|displa2|separador|Add1~2_combout\ : std_logic;
SIGNAL \caminho_de_dados|displa2|separador|Add1~3_combout\ : std_logic;
SIGNAL \caminho_de_dados|displa2|separador|Add1~4_combout\ : std_logic;
SIGNAL \caminho_de_dados|displa2|separador|Add1~1_combout\ : std_logic;
SIGNAL \caminho_de_dados|displa2|un|Mux6~0_combout\ : std_logic;
SIGNAL \caminho_de_dados|displa2|un|Mux5~0_combout\ : std_logic;
SIGNAL \caminho_de_dados|displa2|un|Mux4~0_combout\ : std_logic;
SIGNAL \caminho_de_dados|displa2|un|Mux3~0_combout\ : std_logic;
SIGNAL \caminho_de_dados|displa2|un|Mux2~0_combout\ : std_logic;
SIGNAL \caminho_de_dados|displa2|un|Mux1~0_combout\ : std_logic;
SIGNAL \caminho_de_dados|displa2|un|Mux0~0_combout\ : std_logic;
SIGNAL \caminho_de_dados|lcd|datapath|timer|i\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \caminho_de_dados|lcd|datapath|cont_obj|cnt\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \caminho_de_dados|lcd|datapath|cont_pos|i\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \caminho_de_dados|lcd|controladora|fsm_dt\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \caminho_de_dados|contador_moedas_2|cnt\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \caminho_de_dados|sr_moeda|instancia1_reg|tmp\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \caminho_de_dados|sr_obstaculo|instancia0_reg|tmp\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \caminho_de_dados|sr_obstaculo|instancia1_reg|tmp\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \caminho_de_dados|contador_moedas_1|cnt\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \caminho_de_dados|frame_timer|temp\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \caminho_de_dados|divisor_freq|cnt\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \caminho_de_dados|lfsr_instance|intern\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \caminho_de_dados|cont_2b|cnt\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \caminho_de_dados|sr_moeda|instancia0_reg|tmp\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \caminho_de_dados|div_freq_10kHz|cnt\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \caminho_de_dados|displa2|un|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \caminho_de_dados|displa2|un|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \caminho_de_dados|displa2|un|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \caminho_de_dados|displa2|un|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \caminho_de_dados|displa2|un|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \caminho_de_dados|displa2|un|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \caminho_de_dados|displa2|dez|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \caminho_de_dados|displa2|dez|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \caminho_de_dados|displa2|dez|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \caminho_de_dados|displa2|dez|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \caminho_de_dados|displa2|dez|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \caminho_de_dados|displa2|dez|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \caminho_de_dados|displa1|un|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \caminho_de_dados|displa1|un|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \caminho_de_dados|displa1|un|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \caminho_de_dados|displa1|un|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \caminho_de_dados|displa1|un|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \caminho_de_dados|displa1|un|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \caminho_de_dados|displa1|dez|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \caminho_de_dados|displa1|dez|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \caminho_de_dados|displa1|dez|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \caminho_de_dados|displa1|dez|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \caminho_de_dados|displa1|dez|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \caminho_de_dados|displa1|dez|ALT_INV_Mux5~0_combout\ : std_logic;

BEGIN

ww_game_clock <= game_clock;
ww_game_start <= game_start;
ww_game_a_button <= game_a_button;
ww_game_b_button <= game_b_button;
lcd_data_pins <= ww_lcd_data_pins;
lcd_rs_pin <= ww_lcd_rs_pin;
lcd_e_pin <= ww_lcd_e_pin;
lcd_on_pin <= ww_lcd_on_pin;
lcd_blon_pin <= ww_lcd_blon_pin;
lcd_rw_pin <= ww_lcd_rw_pin;
d7s_1_dez <= ww_d7s_1_dez;
d7s_1_un <= ww_d7s_1_un;
d7s_2_dez <= ww_d7s_2_dez;
d7s_2_un <= ww_d7s_2_un;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\caminho_de_dados|div_freq_10kHz|tmp~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \caminho_de_dados|div_freq_10kHz|tmp~combout\);

\caminho_de_dados|divisor_freq|tmp~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \caminho_de_dados|divisor_freq|tmp~combout\);

\game_clock~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \game_clock~combout\);
\caminho_de_dados|displa2|un|ALT_INV_Mux0~0_combout\ <= NOT \caminho_de_dados|displa2|un|Mux0~0_combout\;
\caminho_de_dados|displa2|un|ALT_INV_Mux1~0_combout\ <= NOT \caminho_de_dados|displa2|un|Mux1~0_combout\;
\caminho_de_dados|displa2|un|ALT_INV_Mux2~0_combout\ <= NOT \caminho_de_dados|displa2|un|Mux2~0_combout\;
\caminho_de_dados|displa2|un|ALT_INV_Mux3~0_combout\ <= NOT \caminho_de_dados|displa2|un|Mux3~0_combout\;
\caminho_de_dados|displa2|un|ALT_INV_Mux4~0_combout\ <= NOT \caminho_de_dados|displa2|un|Mux4~0_combout\;
\caminho_de_dados|displa2|un|ALT_INV_Mux5~0_combout\ <= NOT \caminho_de_dados|displa2|un|Mux5~0_combout\;
\caminho_de_dados|displa2|dez|ALT_INV_Mux0~0_combout\ <= NOT \caminho_de_dados|displa2|dez|Mux0~0_combout\;
\caminho_de_dados|displa2|dez|ALT_INV_Mux1~0_combout\ <= NOT \caminho_de_dados|displa2|dez|Mux1~0_combout\;
\caminho_de_dados|displa2|dez|ALT_INV_Mux2~0_combout\ <= NOT \caminho_de_dados|displa2|dez|Mux2~0_combout\;
\caminho_de_dados|displa2|dez|ALT_INV_Mux3~0_combout\ <= NOT \caminho_de_dados|displa2|dez|Mux3~0_combout\;
\caminho_de_dados|displa2|dez|ALT_INV_Mux4~0_combout\ <= NOT \caminho_de_dados|displa2|dez|Mux4~0_combout\;
\caminho_de_dados|displa2|dez|ALT_INV_Mux5~0_combout\ <= NOT \caminho_de_dados|displa2|dez|Mux5~0_combout\;
\caminho_de_dados|displa1|un|ALT_INV_Mux0~0_combout\ <= NOT \caminho_de_dados|displa1|un|Mux0~0_combout\;
\caminho_de_dados|displa1|un|ALT_INV_Mux1~0_combout\ <= NOT \caminho_de_dados|displa1|un|Mux1~0_combout\;
\caminho_de_dados|displa1|un|ALT_INV_Mux2~0_combout\ <= NOT \caminho_de_dados|displa1|un|Mux2~0_combout\;
\caminho_de_dados|displa1|un|ALT_INV_Mux3~0_combout\ <= NOT \caminho_de_dados|displa1|un|Mux3~0_combout\;
\caminho_de_dados|displa1|un|ALT_INV_Mux4~0_combout\ <= NOT \caminho_de_dados|displa1|un|Mux4~0_combout\;
\caminho_de_dados|displa1|un|ALT_INV_Mux5~0_combout\ <= NOT \caminho_de_dados|displa1|un|Mux5~0_combout\;
\caminho_de_dados|displa1|dez|ALT_INV_Mux0~0_combout\ <= NOT \caminho_de_dados|displa1|dez|Mux0~0_combout\;
\caminho_de_dados|displa1|dez|ALT_INV_Mux1~0_combout\ <= NOT \caminho_de_dados|displa1|dez|Mux1~0_combout\;
\caminho_de_dados|displa1|dez|ALT_INV_Mux2~0_combout\ <= NOT \caminho_de_dados|displa1|dez|Mux2~0_combout\;
\caminho_de_dados|displa1|dez|ALT_INV_Mux3~0_combout\ <= NOT \caminho_de_dados|displa1|dez|Mux3~0_combout\;
\caminho_de_dados|displa1|dez|ALT_INV_Mux4~0_combout\ <= NOT \caminho_de_dados|displa1|dez|Mux4~0_combout\;
\caminho_de_dados|displa1|dez|ALT_INV_Mux5~0_combout\ <= NOT \caminho_de_dados|displa1|dez|Mux5~0_combout\;

-- Location: LCCOMB_X30_Y32_N6
\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = \caminho_de_dados|contador_moedas_1|cnt\(4) $ (VCC)
-- \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(\caminho_de_dados|contador_moedas_1|cnt\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \caminho_de_dados|contador_moedas_1|cnt\(4),
	datad => VCC,
	combout => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X30_Y32_N10
\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\caminho_de_dados|contador_moedas_1|cnt[6]~8_combout\ & 
-- (\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!\caminho_de_dados|contador_moedas_1|cnt[6]~8_combout\ & 
-- (!\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((\caminho_de_dados|contador_moedas_1|cnt[6]~8_combout\ & 
-- !\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|contador_moedas_1|cnt[6]~8_combout\,
	datad => VCC,
	cin => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X31_Y32_N4
\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[15]~33_combout\) # 
-- (\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[15]~32_combout\)))
-- \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[15]~33_combout\) # 
-- (\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[15]~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[15]~33_combout\,
	datab => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[15]~32_combout\,
	datad => VCC,
	combout => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X31_Y32_N6
\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & 
-- (((\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[16]~31_combout\) # (\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[16]~30_combout\)))) # 
-- (!\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[16]~31_combout\ & 
-- (!\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[16]~30_combout\)))
-- \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[16]~31_combout\ & 
-- (!\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[16]~30_combout\ & !\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[16]~31_combout\,
	datab => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[16]~30_combout\,
	datad => VCC,
	cin => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X31_Y32_N8
\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & 
-- (((\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[17]~29_combout\) # (\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[17]~28_combout\)))) # 
-- (!\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[17]~29_combout\) # 
-- (\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[17]~28_combout\)))))
-- \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & 
-- ((\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[17]~29_combout\) # (\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[17]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[17]~29_combout\,
	datab => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[17]~28_combout\,
	datad => VCC,
	cin => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X32_Y29_N22
\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = \caminho_de_dados|contador_moedas_2|cnt\(4) $ (VCC)
-- \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(\caminho_de_dados|contador_moedas_2|cnt\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \caminho_de_dados|contador_moedas_2|cnt\(4),
	datad => VCC,
	combout => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X32_Y29_N24
\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\caminho_de_dados|contador_moedas_2|cnt[5]~6_combout\ & 
-- (\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!\caminho_de_dados|contador_moedas_2|cnt[5]~6_combout\ & 
-- (!\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\caminho_de_dados|contador_moedas_2|cnt[5]~6_combout\ & 
-- !\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \caminho_de_dados|contador_moedas_2|cnt[5]~6_combout\,
	datad => VCC,
	cin => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X32_Y29_N6
\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[15]~32_combout\) # 
-- (\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[15]~33_combout\)))
-- \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[15]~32_combout\) # 
-- (\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[15]~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[15]~32_combout\,
	datab => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[15]~33_combout\,
	datad => VCC,
	combout => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X32_Y29_N10
\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & 
-- (((\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[17]~29_combout\) # (\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[17]~28_combout\)))) # 
-- (!\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[17]~29_combout\) # 
-- (\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[17]~28_combout\)))))
-- \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & 
-- ((\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[17]~29_combout\) # (\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[17]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[17]~29_combout\,
	datab => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[17]~28_combout\,
	datad => VCC,
	cin => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X32_Y31_N2
\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[20]~39_combout\) # 
-- (\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[20]~38_combout\)))
-- \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[20]~39_combout\) # 
-- (\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[20]~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[20]~39_combout\,
	datab => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[20]~38_combout\,
	datad => VCC,
	combout => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X32_Y31_N6
\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & 
-- (((\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[22]~35_combout\) # (\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[22]~47_combout\)))) # 
-- (!\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[22]~35_combout\) # 
-- (\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[22]~47_combout\)))))
-- \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & 
-- ((\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[22]~35_combout\) # (\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[22]~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[22]~35_combout\,
	datab => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[22]~47_combout\,
	datad => VCC,
	cin => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCFF_X33_Y20_N17
\caminho_de_dados|lcd|datapath|timer|i[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \caminho_de_dados|div_freq_10kHz|tmp~clkctrl_outclk\,
	datain => \caminho_de_dados|lcd|datapath|timer|i[4]~15_combout\,
	aclr => \caminho_de_dados|lcd|controladora|WideOr3~combout\,
	ena => \caminho_de_dados|lcd|datapath|dp_E~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|lcd|datapath|timer|i\(4));

-- Location: LCFF_X33_Y20_N21
\caminho_de_dados|lcd|datapath|timer|i[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \caminho_de_dados|div_freq_10kHz|tmp~clkctrl_outclk\,
	datain => \caminho_de_dados|lcd|datapath|timer|i[6]~19_combout\,
	aclr => \caminho_de_dados|lcd|controladora|WideOr3~combout\,
	ena => \caminho_de_dados|lcd|datapath|dp_E~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|lcd|datapath|timer|i\(6));

-- Location: LCFF_X33_Y20_N11
\caminho_de_dados|lcd|datapath|timer|i[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \caminho_de_dados|div_freq_10kHz|tmp~clkctrl_outclk\,
	datain => \caminho_de_dados|lcd|datapath|timer|i[1]~9_combout\,
	aclr => \caminho_de_dados|lcd|controladora|WideOr3~combout\,
	ena => \caminho_de_dados|lcd|datapath|dp_E~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|lcd|datapath|timer|i\(1));

-- Location: LCFF_X1_Y18_N17
\caminho_de_dados|div_freq_10kHz|cnt[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \game_clock~combout\,
	datain => \caminho_de_dados|div_freq_10kHz|cnt[7]~24_combout\,
	aclr => \caminho_de_dados|div_freq_10kHz|tmp~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|div_freq_10kHz|cnt\(7));

-- Location: LCFF_X1_Y18_N11
\caminho_de_dados|div_freq_10kHz|cnt[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \game_clock~combout\,
	datain => \caminho_de_dados|div_freq_10kHz|cnt[4]~18_combout\,
	aclr => \caminho_de_dados|div_freq_10kHz|tmp~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|div_freq_10kHz|cnt\(4));

-- Location: LCFF_X1_Y18_N13
\caminho_de_dados|div_freq_10kHz|cnt[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \game_clock~combout\,
	datain => \caminho_de_dados|div_freq_10kHz|cnt[5]~20_combout\,
	aclr => \caminho_de_dados|div_freq_10kHz|tmp~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|div_freq_10kHz|cnt\(5));

-- Location: LCCOMB_X32_Y22_N0
\caminho_de_dados|contador_moedas_1|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|contador_moedas_1|Add0~0_combout\ = (\caminho_de_dados|contador_moedas_1|cnt[0]~2_combout\ & (\caminho_de_dados|contador_moedas_1|cnt[1]~4_combout\ $ (VCC))) # (!\caminho_de_dados|contador_moedas_1|cnt[0]~2_combout\ & 
-- (\caminho_de_dados|contador_moedas_1|cnt[1]~4_combout\ & VCC))
-- \caminho_de_dados|contador_moedas_1|Add0~1\ = CARRY((\caminho_de_dados|contador_moedas_1|cnt[0]~2_combout\ & \caminho_de_dados|contador_moedas_1|cnt[1]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|contador_moedas_1|cnt[0]~2_combout\,
	datab => \caminho_de_dados|contador_moedas_1|cnt[1]~4_combout\,
	datad => VCC,
	combout => \caminho_de_dados|contador_moedas_1|Add0~0_combout\,
	cout => \caminho_de_dados|contador_moedas_1|Add0~1\);

-- Location: LCCOMB_X32_Y22_N16
\caminho_de_dados|contador_moedas_2|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|contador_moedas_2|Add0~0_combout\ = (\caminho_de_dados|contador_moedas_2|cnt[0]~2_combout\ & (\caminho_de_dados|contador_moedas_2|cnt[1]~4_combout\ $ (VCC))) # (!\caminho_de_dados|contador_moedas_2|cnt[0]~2_combout\ & 
-- (\caminho_de_dados|contador_moedas_2|cnt[1]~4_combout\ & VCC))
-- \caminho_de_dados|contador_moedas_2|Add0~1\ = CARRY((\caminho_de_dados|contador_moedas_2|cnt[0]~2_combout\ & \caminho_de_dados|contador_moedas_2|cnt[1]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|contador_moedas_2|cnt[0]~2_combout\,
	datab => \caminho_de_dados|contador_moedas_2|cnt[1]~4_combout\,
	datad => VCC,
	combout => \caminho_de_dados|contador_moedas_2|Add0~0_combout\,
	cout => \caminho_de_dados|contador_moedas_2|Add0~1\);

-- Location: LCCOMB_X33_Y20_N10
\caminho_de_dados|lcd|datapath|timer|i[1]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lcd|datapath|timer|i[1]~9_combout\ = (\caminho_de_dados|lcd|datapath|timer|i\(1) & (\caminho_de_dados|lcd|datapath|timer|i\(0) $ (VCC))) # (!\caminho_de_dados|lcd|datapath|timer|i\(1) & (\caminho_de_dados|lcd|datapath|timer|i\(0) & VCC))
-- \caminho_de_dados|lcd|datapath|timer|i[1]~10\ = CARRY((\caminho_de_dados|lcd|datapath|timer|i\(1) & \caminho_de_dados|lcd|datapath|timer|i\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|lcd|datapath|timer|i\(1),
	datab => \caminho_de_dados|lcd|datapath|timer|i\(0),
	datad => VCC,
	combout => \caminho_de_dados|lcd|datapath|timer|i[1]~9_combout\,
	cout => \caminho_de_dados|lcd|datapath|timer|i[1]~10\);

-- Location: LCCOMB_X33_Y20_N16
\caminho_de_dados|lcd|datapath|timer|i[4]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lcd|datapath|timer|i[4]~15_combout\ = (\caminho_de_dados|lcd|datapath|timer|i\(4) & (!\caminho_de_dados|lcd|datapath|timer|i[3]~14\)) # (!\caminho_de_dados|lcd|datapath|timer|i\(4) & ((\caminho_de_dados|lcd|datapath|timer|i[3]~14\) # 
-- (GND)))
-- \caminho_de_dados|lcd|datapath|timer|i[4]~16\ = CARRY((!\caminho_de_dados|lcd|datapath|timer|i[3]~14\) # (!\caminho_de_dados|lcd|datapath|timer|i\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|lcd|datapath|timer|i\(4),
	datad => VCC,
	cin => \caminho_de_dados|lcd|datapath|timer|i[3]~14\,
	combout => \caminho_de_dados|lcd|datapath|timer|i[4]~15_combout\,
	cout => \caminho_de_dados|lcd|datapath|timer|i[4]~16\);

-- Location: LCCOMB_X33_Y20_N20
\caminho_de_dados|lcd|datapath|timer|i[6]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lcd|datapath|timer|i[6]~19_combout\ = (\caminho_de_dados|lcd|datapath|timer|i\(6) & (!\caminho_de_dados|lcd|datapath|timer|i[5]~18\)) # (!\caminho_de_dados|lcd|datapath|timer|i\(6) & ((\caminho_de_dados|lcd|datapath|timer|i[5]~18\) # 
-- (GND)))
-- \caminho_de_dados|lcd|datapath|timer|i[6]~20\ = CARRY((!\caminho_de_dados|lcd|datapath|timer|i[5]~18\) # (!\caminho_de_dados|lcd|datapath|timer|i\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|lcd|datapath|timer|i\(6),
	datad => VCC,
	cin => \caminho_de_dados|lcd|datapath|timer|i[5]~18\,
	combout => \caminho_de_dados|lcd|datapath|timer|i[6]~19_combout\,
	cout => \caminho_de_dados|lcd|datapath|timer|i[6]~20\);

-- Location: LCCOMB_X1_Y18_N10
\caminho_de_dados|div_freq_10kHz|cnt[4]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|div_freq_10kHz|cnt[4]~18_combout\ = (\caminho_de_dados|div_freq_10kHz|cnt\(4) & (!\caminho_de_dados|div_freq_10kHz|cnt[3]~17\)) # (!\caminho_de_dados|div_freq_10kHz|cnt\(4) & ((\caminho_de_dados|div_freq_10kHz|cnt[3]~17\) # (GND)))
-- \caminho_de_dados|div_freq_10kHz|cnt[4]~19\ = CARRY((!\caminho_de_dados|div_freq_10kHz|cnt[3]~17\) # (!\caminho_de_dados|div_freq_10kHz|cnt\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|div_freq_10kHz|cnt\(4),
	datad => VCC,
	cin => \caminho_de_dados|div_freq_10kHz|cnt[3]~17\,
	combout => \caminho_de_dados|div_freq_10kHz|cnt[4]~18_combout\,
	cout => \caminho_de_dados|div_freq_10kHz|cnt[4]~19\);

-- Location: LCCOMB_X1_Y18_N12
\caminho_de_dados|div_freq_10kHz|cnt[5]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|div_freq_10kHz|cnt[5]~20_combout\ = (\caminho_de_dados|div_freq_10kHz|cnt\(5) & (\caminho_de_dados|div_freq_10kHz|cnt[4]~19\ $ (GND))) # (!\caminho_de_dados|div_freq_10kHz|cnt\(5) & (!\caminho_de_dados|div_freq_10kHz|cnt[4]~19\ & VCC))
-- \caminho_de_dados|div_freq_10kHz|cnt[5]~21\ = CARRY((\caminho_de_dados|div_freq_10kHz|cnt\(5) & !\caminho_de_dados|div_freq_10kHz|cnt[4]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|div_freq_10kHz|cnt\(5),
	datad => VCC,
	cin => \caminho_de_dados|div_freq_10kHz|cnt[4]~19\,
	combout => \caminho_de_dados|div_freq_10kHz|cnt[5]~20_combout\,
	cout => \caminho_de_dados|div_freq_10kHz|cnt[5]~21\);

-- Location: LCCOMB_X1_Y18_N16
\caminho_de_dados|div_freq_10kHz|cnt[7]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|div_freq_10kHz|cnt[7]~24_combout\ = (\caminho_de_dados|div_freq_10kHz|cnt\(7) & (\caminho_de_dados|div_freq_10kHz|cnt[6]~23\ $ (GND))) # (!\caminho_de_dados|div_freq_10kHz|cnt\(7) & (!\caminho_de_dados|div_freq_10kHz|cnt[6]~23\ & VCC))
-- \caminho_de_dados|div_freq_10kHz|cnt[7]~25\ = CARRY((\caminho_de_dados|div_freq_10kHz|cnt\(7) & !\caminho_de_dados|div_freq_10kHz|cnt[6]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|div_freq_10kHz|cnt\(7),
	datad => VCC,
	cin => \caminho_de_dados|div_freq_10kHz|cnt[6]~23\,
	combout => \caminho_de_dados|div_freq_10kHz|cnt[7]~24_combout\,
	cout => \caminho_de_dados|div_freq_10kHz|cnt[7]~25\);

-- Location: LCFF_X27_Y20_N7
\caminho_de_dados|frame_timer|temp[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \game_clock~clkctrl_outclk\,
	datain => \caminho_de_dados|frame_timer|temp[15]~50_combout\,
	aclr => \controladora|ctrl_CLR_TIMER~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|frame_timer|temp\(15));

-- Location: LCFF_X27_Y20_N11
\caminho_de_dados|frame_timer|temp[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \game_clock~clkctrl_outclk\,
	datain => \caminho_de_dados|frame_timer|temp[17]~54_combout\,
	aclr => \controladora|ctrl_CLR_TIMER~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|frame_timer|temp\(17));

-- Location: LCFF_X27_Y20_N13
\caminho_de_dados|frame_timer|temp[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \game_clock~clkctrl_outclk\,
	datain => \caminho_de_dados|frame_timer|temp[18]~56_combout\,
	aclr => \controladora|ctrl_CLR_TIMER~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|frame_timer|temp\(18));

-- Location: LCFF_X27_Y20_N17
\caminho_de_dados|frame_timer|temp[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \game_clock~clkctrl_outclk\,
	datain => \caminho_de_dados|frame_timer|temp[20]~60_combout\,
	aclr => \controladora|ctrl_CLR_TIMER~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|frame_timer|temp\(20));

-- Location: LCFF_X27_Y21_N13
\caminho_de_dados|frame_timer|temp[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \game_clock~clkctrl_outclk\,
	datain => \caminho_de_dados|frame_timer|temp[2]~24_combout\,
	aclr => \controladora|ctrl_CLR_TIMER~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|frame_timer|temp\(2));

-- Location: LCFF_X27_Y21_N11
\caminho_de_dados|frame_timer|temp[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \game_clock~clkctrl_outclk\,
	datain => \caminho_de_dados|frame_timer|temp[1]~22_combout\,
	aclr => \controladora|ctrl_CLR_TIMER~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|frame_timer|temp\(1));

-- Location: LCFF_X27_Y21_N17
\caminho_de_dados|frame_timer|temp[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \game_clock~clkctrl_outclk\,
	datain => \caminho_de_dados|frame_timer|temp[4]~28_combout\,
	aclr => \controladora|ctrl_CLR_TIMER~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|frame_timer|temp\(4));

-- Location: LCFF_X27_Y21_N21
\caminho_de_dados|frame_timer|temp[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \game_clock~clkctrl_outclk\,
	datain => \caminho_de_dados|frame_timer|temp[6]~32_combout\,
	aclr => \controladora|ctrl_CLR_TIMER~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|frame_timer|temp\(6));

-- Location: LCFF_X27_Y21_N25
\caminho_de_dados|frame_timer|temp[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \game_clock~clkctrl_outclk\,
	datain => \caminho_de_dados|frame_timer|temp[8]~36_combout\,
	aclr => \controladora|ctrl_CLR_TIMER~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|frame_timer|temp\(8));

-- Location: LCCOMB_X27_Y21_N10
\caminho_de_dados|frame_timer|temp[1]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|frame_timer|temp[1]~22_combout\ = (\caminho_de_dados|frame_timer|temp\(1) & (\caminho_de_dados|frame_timer|temp\(0) $ (VCC))) # (!\caminho_de_dados|frame_timer|temp\(1) & (\caminho_de_dados|frame_timer|temp\(0) & VCC))
-- \caminho_de_dados|frame_timer|temp[1]~23\ = CARRY((\caminho_de_dados|frame_timer|temp\(1) & \caminho_de_dados|frame_timer|temp\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|frame_timer|temp\(1),
	datab => \caminho_de_dados|frame_timer|temp\(0),
	datad => VCC,
	combout => \caminho_de_dados|frame_timer|temp[1]~22_combout\,
	cout => \caminho_de_dados|frame_timer|temp[1]~23\);

-- Location: LCCOMB_X27_Y21_N12
\caminho_de_dados|frame_timer|temp[2]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|frame_timer|temp[2]~24_combout\ = (\caminho_de_dados|frame_timer|temp\(2) & (!\caminho_de_dados|frame_timer|temp[1]~23\)) # (!\caminho_de_dados|frame_timer|temp\(2) & ((\caminho_de_dados|frame_timer|temp[1]~23\) # (GND)))
-- \caminho_de_dados|frame_timer|temp[2]~25\ = CARRY((!\caminho_de_dados|frame_timer|temp[1]~23\) # (!\caminho_de_dados|frame_timer|temp\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|frame_timer|temp\(2),
	datad => VCC,
	cin => \caminho_de_dados|frame_timer|temp[1]~23\,
	combout => \caminho_de_dados|frame_timer|temp[2]~24_combout\,
	cout => \caminho_de_dados|frame_timer|temp[2]~25\);

-- Location: LCCOMB_X27_Y21_N16
\caminho_de_dados|frame_timer|temp[4]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|frame_timer|temp[4]~28_combout\ = (\caminho_de_dados|frame_timer|temp\(4) & (!\caminho_de_dados|frame_timer|temp[3]~27\)) # (!\caminho_de_dados|frame_timer|temp\(4) & ((\caminho_de_dados|frame_timer|temp[3]~27\) # (GND)))
-- \caminho_de_dados|frame_timer|temp[4]~29\ = CARRY((!\caminho_de_dados|frame_timer|temp[3]~27\) # (!\caminho_de_dados|frame_timer|temp\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|frame_timer|temp\(4),
	datad => VCC,
	cin => \caminho_de_dados|frame_timer|temp[3]~27\,
	combout => \caminho_de_dados|frame_timer|temp[4]~28_combout\,
	cout => \caminho_de_dados|frame_timer|temp[4]~29\);

-- Location: LCCOMB_X27_Y21_N20
\caminho_de_dados|frame_timer|temp[6]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|frame_timer|temp[6]~32_combout\ = (\caminho_de_dados|frame_timer|temp\(6) & (!\caminho_de_dados|frame_timer|temp[5]~31\)) # (!\caminho_de_dados|frame_timer|temp\(6) & ((\caminho_de_dados|frame_timer|temp[5]~31\) # (GND)))
-- \caminho_de_dados|frame_timer|temp[6]~33\ = CARRY((!\caminho_de_dados|frame_timer|temp[5]~31\) # (!\caminho_de_dados|frame_timer|temp\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|frame_timer|temp\(6),
	datad => VCC,
	cin => \caminho_de_dados|frame_timer|temp[5]~31\,
	combout => \caminho_de_dados|frame_timer|temp[6]~32_combout\,
	cout => \caminho_de_dados|frame_timer|temp[6]~33\);

-- Location: LCCOMB_X27_Y21_N24
\caminho_de_dados|frame_timer|temp[8]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|frame_timer|temp[8]~36_combout\ = (\caminho_de_dados|frame_timer|temp\(8) & (!\caminho_de_dados|frame_timer|temp[7]~35\)) # (!\caminho_de_dados|frame_timer|temp\(8) & ((\caminho_de_dados|frame_timer|temp[7]~35\) # (GND)))
-- \caminho_de_dados|frame_timer|temp[8]~37\ = CARRY((!\caminho_de_dados|frame_timer|temp[7]~35\) # (!\caminho_de_dados|frame_timer|temp\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|frame_timer|temp\(8),
	datad => VCC,
	cin => \caminho_de_dados|frame_timer|temp[7]~35\,
	combout => \caminho_de_dados|frame_timer|temp[8]~36_combout\,
	cout => \caminho_de_dados|frame_timer|temp[8]~37\);

-- Location: LCCOMB_X27_Y20_N6
\caminho_de_dados|frame_timer|temp[15]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|frame_timer|temp[15]~50_combout\ = (\caminho_de_dados|frame_timer|temp\(15) & (\caminho_de_dados|frame_timer|temp[14]~49\ $ (GND))) # (!\caminho_de_dados|frame_timer|temp\(15) & (!\caminho_de_dados|frame_timer|temp[14]~49\ & VCC))
-- \caminho_de_dados|frame_timer|temp[15]~51\ = CARRY((\caminho_de_dados|frame_timer|temp\(15) & !\caminho_de_dados|frame_timer|temp[14]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|frame_timer|temp\(15),
	datad => VCC,
	cin => \caminho_de_dados|frame_timer|temp[14]~49\,
	combout => \caminho_de_dados|frame_timer|temp[15]~50_combout\,
	cout => \caminho_de_dados|frame_timer|temp[15]~51\);

-- Location: LCCOMB_X27_Y20_N10
\caminho_de_dados|frame_timer|temp[17]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|frame_timer|temp[17]~54_combout\ = (\caminho_de_dados|frame_timer|temp\(17) & (\caminho_de_dados|frame_timer|temp[16]~53\ $ (GND))) # (!\caminho_de_dados|frame_timer|temp\(17) & (!\caminho_de_dados|frame_timer|temp[16]~53\ & VCC))
-- \caminho_de_dados|frame_timer|temp[17]~55\ = CARRY((\caminho_de_dados|frame_timer|temp\(17) & !\caminho_de_dados|frame_timer|temp[16]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|frame_timer|temp\(17),
	datad => VCC,
	cin => \caminho_de_dados|frame_timer|temp[16]~53\,
	combout => \caminho_de_dados|frame_timer|temp[17]~54_combout\,
	cout => \caminho_de_dados|frame_timer|temp[17]~55\);

-- Location: LCCOMB_X27_Y20_N12
\caminho_de_dados|frame_timer|temp[18]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|frame_timer|temp[18]~56_combout\ = (\caminho_de_dados|frame_timer|temp\(18) & (!\caminho_de_dados|frame_timer|temp[17]~55\)) # (!\caminho_de_dados|frame_timer|temp\(18) & ((\caminho_de_dados|frame_timer|temp[17]~55\) # (GND)))
-- \caminho_de_dados|frame_timer|temp[18]~57\ = CARRY((!\caminho_de_dados|frame_timer|temp[17]~55\) # (!\caminho_de_dados|frame_timer|temp\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|frame_timer|temp\(18),
	datad => VCC,
	cin => \caminho_de_dados|frame_timer|temp[17]~55\,
	combout => \caminho_de_dados|frame_timer|temp[18]~56_combout\,
	cout => \caminho_de_dados|frame_timer|temp[18]~57\);

-- Location: LCCOMB_X27_Y20_N16
\caminho_de_dados|frame_timer|temp[20]~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|frame_timer|temp[20]~60_combout\ = (\caminho_de_dados|frame_timer|temp\(20) & (!\caminho_de_dados|frame_timer|temp[19]~59\)) # (!\caminho_de_dados|frame_timer|temp\(20) & ((\caminho_de_dados|frame_timer|temp[19]~59\) # (GND)))
-- \caminho_de_dados|frame_timer|temp[20]~61\ = CARRY((!\caminho_de_dados|frame_timer|temp[19]~59\) # (!\caminho_de_dados|frame_timer|temp\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|frame_timer|temp\(20),
	datad => VCC,
	cin => \caminho_de_dados|frame_timer|temp[19]~59\,
	combout => \caminho_de_dados|frame_timer|temp[20]~60_combout\,
	cout => \caminho_de_dados|frame_timer|temp[20]~61\);

-- Location: LCFF_X30_Y20_N27
\caminho_de_dados|lcd|controladora|atual_estado.s20\ : cycloneii_lcell_ff
PORT MAP (
	clk => \caminho_de_dados|div_freq_10kHz|tmp~clkctrl_outclk\,
	datain => \caminho_de_dados|lcd|controladora|Selector8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|lcd|controladora|atual_estado.s20~regout\);

-- Location: LCFF_X29_Y23_N1
\caminho_de_dados|lcd|controladora|atual_estado.s21\ : cycloneii_lcell_ff
PORT MAP (
	clk => \caminho_de_dados|div_freq_10kHz|tmp~clkctrl_outclk\,
	datain => \caminho_de_dados|lcd|controladora|prox_estado.s21~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|lcd|controladora|atual_estado.s21~regout\);

-- Location: LCFF_X30_Y20_N15
\caminho_de_dados|lcd|controladora|atual_estado.s33\ : cycloneii_lcell_ff
PORT MAP (
	clk => \caminho_de_dados|div_freq_10kHz|tmp~clkctrl_outclk\,
	datain => \caminho_de_dados|lcd|controladora|prox_estado.s33~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|lcd|controladora|atual_estado.s33~regout\);

-- Location: LCCOMB_X30_Y20_N8
\caminho_de_dados|lcd|datapath|dp_E~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lcd|datapath|dp_E~5_combout\ = (!\caminho_de_dados|lcd|controladora|atual_estado.s37~regout\ & (!\caminho_de_dados|lcd|controladora|atual_estado.s29~regout\ & (!\caminho_de_dados|lcd|controladora|atual_estado.s28~regout\ & 
-- !\caminho_de_dados|lcd|controladora|atual_estado.s33~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|lcd|controladora|atual_estado.s37~regout\,
	datab => \caminho_de_dados|lcd|controladora|atual_estado.s29~regout\,
	datac => \caminho_de_dados|lcd|controladora|atual_estado.s28~regout\,
	datad => \caminho_de_dados|lcd|controladora|atual_estado.s33~regout\,
	combout => \caminho_de_dados|lcd|datapath|dp_E~5_combout\);

-- Location: LCCOMB_X30_Y32_N0
\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[18]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[18]~26_combout\ = (\caminho_de_dados|contador_moedas_1|cnt[6]~8_combout\ & 
-- \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \caminho_de_dados|contador_moedas_1|cnt[6]~8_combout\,
	datad => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[18]~26_combout\);

-- Location: LCCOMB_X30_Y32_N2
\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[17]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[17]~29_combout\ = (\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & 
-- !\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[17]~29_combout\);

-- Location: LCCOMB_X30_Y32_N14
\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[16]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[16]~31_combout\ = (\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & 
-- !\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[16]~31_combout\);

-- Location: LCCOMB_X30_Y32_N30
\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[15]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[15]~33_combout\ = (\caminho_de_dados|contador_moedas_1|cnt\(3) & !\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|contador_moedas_1|cnt\(3),
	datad => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[15]~33_combout\);

-- Location: LCCOMB_X30_Y32_N16
\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[23]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[23]~34_combout\ = (!\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	combout => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[23]~34_combout\);

-- Location: LCCOMB_X30_Y31_N16
\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[22]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[22]~35_combout\ = (!\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	combout => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[22]~35_combout\);

-- Location: LCCOMB_X30_Y31_N20
\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[21]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[21]~37_combout\ = (\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & 
-- !\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[21]~37_combout\);

-- Location: LCCOMB_X29_Y31_N12
\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[20]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[20]~39_combout\ = (\caminho_de_dados|contador_moedas_1|cnt\(2) & !\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \caminho_de_dados|contador_moedas_1|cnt\(2),
	datac => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[20]~39_combout\);

-- Location: LCCOMB_X29_Y31_N6
\caminho_de_dados|displa1|separador|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|displa1|separador|Add1~0_combout\ = (\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \caminho_de_dados|contador_moedas_1|cnt\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \caminho_de_dados|contador_moedas_1|cnt\(2),
	combout => \caminho_de_dados|displa1|separador|Add1~0_combout\);

-- Location: LCCOMB_X29_Y31_N10
\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[25]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[25]~44_combout\ = (\caminho_de_dados|contador_moedas_1|cnt[1]~4_combout\ & 
-- !\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \caminho_de_dados|contador_moedas_1|cnt[1]~4_combout\,
	datad => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[25]~44_combout\);

-- Location: LCCOMB_X32_Y29_N16
\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[18]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[18]~26_combout\ = (\caminho_de_dados|contador_moedas_2|cnt[6]~8_combout\ & 
-- \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \caminho_de_dados|contador_moedas_2|cnt[6]~8_combout\,
	datad => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[18]~26_combout\);

-- Location: LCCOMB_X32_Y29_N20
\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[17]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[17]~29_combout\ = (\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & 
-- !\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[17]~29_combout\);

-- Location: LCCOMB_X31_Y29_N0
\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[16]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[16]~31_combout\ = (\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & 
-- !\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[16]~31_combout\);

-- Location: LCCOMB_X31_Y29_N14
\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[15]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[15]~32_combout\ = (\caminho_de_dados|contador_moedas_2|cnt\(3) & \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \caminho_de_dados|contador_moedas_2|cnt\(3),
	datad => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[15]~32_combout\);

-- Location: LCCOMB_X32_Y31_N20
\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[23]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[23]~34_combout\ = (!\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	combout => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[23]~34_combout\);

-- Location: LCCOMB_X32_Y31_N16
\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[22]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[22]~35_combout\ = (\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & 
-- !\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[22]~35_combout\);

-- Location: LCCOMB_X32_Y31_N12
\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[21]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[21]~37_combout\ = (!\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	combout => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[21]~37_combout\);

-- Location: LCCOMB_X32_Y31_N24
\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[20]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[20]~39_combout\ = (\caminho_de_dados|contador_moedas_2|cnt\(2) & !\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|contador_moedas_2|cnt\(2),
	datad => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[20]~39_combout\);

-- Location: LCCOMB_X33_Y31_N12
\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[28]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[28]~40_combout\ = (\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & 
-- !\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datad => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[28]~40_combout\);

-- Location: LCCOMB_X32_Y31_N0
\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[26]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[26]~42_combout\ = (\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & 
-- !\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[26]~42_combout\);

-- Location: LCCOMB_X33_Y31_N10
\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[25]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[25]~44_combout\ = (\caminho_de_dados|contador_moedas_2|cnt[1]~4_combout\ & 
-- !\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \caminho_de_dados|contador_moedas_2|cnt[1]~4_combout\,
	datad => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[25]~44_combout\);

-- Location: LCCOMB_X31_Y21_N8
\controladora|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controladora|WideOr0~0_combout\ = (!\controladora|estado_atual.s1~regout\ & !\controladora|estado_atual.s15~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controladora|estado_atual.s1~regout\,
	datad => \controladora|estado_atual.s15~regout\,
	combout => \controladora|WideOr0~0_combout\);

-- Location: LCCOMB_X32_Y20_N14
\caminho_de_dados|lcd|datapath|comp_t1000|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lcd|datapath|comp_t1000|LessThan0~0_combout\ = (\caminho_de_dados|lcd|datapath|timer|i\(6) & (\caminho_de_dados|lcd|datapath|timer|i\(5) & ((\caminho_de_dados|lcd|datapath|timer|i\(4)) # (\caminho_de_dados|lcd|datapath|timer|i\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|lcd|datapath|timer|i\(4),
	datab => \caminho_de_dados|lcd|datapath|timer|i\(6),
	datac => \caminho_de_dados|lcd|datapath|timer|i\(3),
	datad => \caminho_de_dados|lcd|datapath|timer|i\(5),
	combout => \caminho_de_dados|lcd|datapath|comp_t1000|LessThan0~0_combout\);

-- Location: LCCOMB_X1_Y18_N30
\caminho_de_dados|div_freq_10kHz|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|div_freq_10kHz|Equal0~1_combout\ = (!\caminho_de_dados|div_freq_10kHz|cnt\(4) & (!\caminho_de_dados|div_freq_10kHz|cnt\(6) & (\caminho_de_dados|div_freq_10kHz|cnt\(7) & !\caminho_de_dados|div_freq_10kHz|cnt\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|div_freq_10kHz|cnt\(4),
	datab => \caminho_de_dados|div_freq_10kHz|cnt\(6),
	datac => \caminho_de_dados|div_freq_10kHz|cnt\(7),
	datad => \caminho_de_dados|div_freq_10kHz|cnt\(5),
	combout => \caminho_de_dados|div_freq_10kHz|Equal0~1_combout\);

-- Location: LCFF_X33_Y21_N23
\caminho_de_dados|lcd|datapath|cont_obj|cnt[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \caminho_de_dados|div_freq_10kHz|tmp~clkctrl_outclk\,
	datain => \caminho_de_dados|lcd|datapath|cont_obj|cnt[1]~1_combout\,
	aclr => \caminho_de_dados|lcd|controladora|WideOr3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|lcd|datapath|cont_obj|cnt\(1));

-- Location: LCCOMB_X30_Y20_N26
\caminho_de_dados|lcd|controladora|Selector8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lcd|controladora|Selector8~0_combout\ = (\caminho_de_dados|lcd|controladora|atual_estado.s28~regout\) # ((\caminho_de_dados|lcd|controladora|atual_estado.s31~regout\) # ((!\caminho_de_dados|lcd|datapath|cont_obj|cnt\(1) & 
-- \caminho_de_dados|lcd|controladora|atual_estado.s19~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|lcd|datapath|cont_obj|cnt\(1),
	datab => \caminho_de_dados|lcd|controladora|atual_estado.s19~regout\,
	datac => \caminho_de_dados|lcd|controladora|atual_estado.s28~regout\,
	datad => \caminho_de_dados|lcd|controladora|atual_estado.s31~regout\,
	combout => \caminho_de_dados|lcd|controladora|Selector8~0_combout\);

-- Location: LCCOMB_X29_Y23_N0
\caminho_de_dados|lcd|controladora|prox_estado.s21~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lcd|controladora|prox_estado.s21~0_combout\ = (\caminho_de_dados|lcd|controladora|atual_estado.s20~regout\ & ((\caminho_de_dados|lcd|datapath|cont_obj|cnt\(0) & (\caminho_de_dados|lcd|datapath|mux15_moeda_q0|Mux0~19_combout\)) # 
-- (!\caminho_de_dados|lcd|datapath|cont_obj|cnt\(0) & ((\caminho_de_dados|lcd|datapath|mux15_moeda_q0|Mux0~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|lcd|controladora|atual_estado.s20~regout\,
	datab => \caminho_de_dados|lcd|datapath|cont_obj|cnt\(0),
	datac => \caminho_de_dados|lcd|datapath|mux15_moeda_q0|Mux0~19_combout\,
	datad => \caminho_de_dados|lcd|datapath|mux15_moeda_q0|Mux0~9_combout\,
	combout => \caminho_de_dados|lcd|controladora|prox_estado.s21~0_combout\);

-- Location: LCCOMB_X27_Y22_N24
\caminho_de_dados|lcd|datapath|mux15_obstaculo_q1|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lcd|datapath|mux15_obstaculo_q1|Mux0~0_combout\ = (\caminho_de_dados|lcd|datapath|cont_pos|i\(2) & (\caminho_de_dados|lcd|datapath|cont_pos|i\(3))) # (!\caminho_de_dados|lcd|datapath|cont_pos|i\(2) & 
-- ((\caminho_de_dados|lcd|datapath|cont_pos|i\(3) & ((!\caminho_de_dados|sr_moeda|instancia1_reg|tmp\(11)))) # (!\caminho_de_dados|lcd|datapath|cont_pos|i\(3) & (!\caminho_de_dados|sr_moeda|instancia1_reg|tmp\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|lcd|datapath|cont_pos|i\(2),
	datab => \caminho_de_dados|lcd|datapath|cont_pos|i\(3),
	datac => \caminho_de_dados|sr_moeda|instancia1_reg|tmp\(3),
	datad => \caminho_de_dados|sr_moeda|instancia1_reg|tmp\(11),
	combout => \caminho_de_dados|lcd|datapath|mux15_obstaculo_q1|Mux0~0_combout\);

-- Location: LCCOMB_X27_Y22_N20
\caminho_de_dados|lcd|datapath|mux15_obstaculo_q1|Mux0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lcd|datapath|mux15_obstaculo_q1|Mux0~7_combout\ = (\caminho_de_dados|lcd|datapath|cont_pos|i\(2) & (\caminho_de_dados|lcd|datapath|cont_pos|i\(3))) # (!\caminho_de_dados|lcd|datapath|cont_pos|i\(2) & 
-- ((\caminho_de_dados|lcd|datapath|cont_pos|i\(3) & ((!\caminho_de_dados|sr_obstaculo|instancia1_reg|tmp\(12)))) # (!\caminho_de_dados|lcd|datapath|cont_pos|i\(3) & (!\caminho_de_dados|sr_obstaculo|instancia1_reg|tmp\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|lcd|datapath|cont_pos|i\(2),
	datab => \caminho_de_dados|lcd|datapath|cont_pos|i\(3),
	datac => \caminho_de_dados|sr_obstaculo|instancia1_reg|tmp\(4),
	datad => \caminho_de_dados|sr_obstaculo|instancia1_reg|tmp\(12),
	combout => \caminho_de_dados|lcd|datapath|mux15_obstaculo_q1|Mux0~7_combout\);

-- Location: LCCOMB_X30_Y20_N14
\caminho_de_dados|lcd|controladora|prox_estado.s33~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lcd|controladora|prox_estado.s33~0_combout\ = (\caminho_de_dados|lcd|controladora|atual_estado.s19~regout\ & \caminho_de_dados|lcd|datapath|cont_obj|cnt\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \caminho_de_dados|lcd|controladora|atual_estado.s19~regout\,
	datad => \caminho_de_dados|lcd|datapath|cont_obj|cnt\(1),
	combout => \caminho_de_dados|lcd|controladora|prox_estado.s33~0_combout\);

-- Location: LCFF_X29_Y22_N21
\caminho_de_dados|contador_moedas_1|cnt[1]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \game_clock~clkctrl_outclk\,
	datain => \caminho_de_dados|contador_moedas_1|cnt[1]~5_combout\,
	aclr => \caminho_de_dados|contador_moedas_1|cnt[0]~0_combout\,
	ena => \controladora|estado_atual.s6~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|contador_moedas_1|cnt[1]~_emulated_regout\);

-- Location: LCFF_X29_Y22_N25
\caminho_de_dados|contador_moedas_1|cnt[0]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \game_clock~clkctrl_outclk\,
	datain => \caminho_de_dados|contador_moedas_1|cnt[0]~3_combout\,
	aclr => \caminho_de_dados|contador_moedas_1|cnt[0]~0_combout\,
	ena => \controladora|estado_atual.s6~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|contador_moedas_1|cnt[0]~_emulated_regout\);

-- Location: LCFF_X31_Y22_N7
\caminho_de_dados|contador_moedas_2|cnt[1]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \game_clock~clkctrl_outclk\,
	datain => \caminho_de_dados|contador_moedas_2|cnt[1]~5_combout\,
	aclr => \caminho_de_dados|contador_moedas_2|cnt[0]~0_combout\,
	ena => \controladora|estado_atual.s7~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|contador_moedas_2|cnt[1]~_emulated_regout\);

-- Location: LCCOMB_X30_Y22_N2
\caminho_de_dados|comparador_moedas|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|comparador_moedas|Equal0~2_combout\ = (\caminho_de_dados|contador_moedas_1|cnt\(4) & (\caminho_de_dados|contador_moedas_2|cnt\(4) & (\caminho_de_dados|contador_moedas_2|cnt[5]~6_combout\ $ 
-- (!\caminho_de_dados|contador_moedas_1|cnt[5]~6_combout\)))) # (!\caminho_de_dados|contador_moedas_1|cnt\(4) & (!\caminho_de_dados|contador_moedas_2|cnt\(4) & (\caminho_de_dados|contador_moedas_2|cnt[5]~6_combout\ $ 
-- (!\caminho_de_dados|contador_moedas_1|cnt[5]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|contador_moedas_1|cnt\(4),
	datab => \caminho_de_dados|contador_moedas_2|cnt\(4),
	datac => \caminho_de_dados|contador_moedas_2|cnt[5]~6_combout\,
	datad => \caminho_de_dados|contador_moedas_1|cnt[5]~6_combout\,
	combout => \caminho_de_dados|comparador_moedas|Equal0~2_combout\);

-- Location: LCFF_X32_Y21_N11
\caminho_de_dados|lcd|datapath|reg_linha|qi~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \caminho_de_dados|div_freq_10kHz|tmp~clkctrl_outclk\,
	datain => \caminho_de_dados|lcd|datapath|reg_linha|qi~3_combout\,
	aclr => \caminho_de_dados|lcd|datapath|reg_linha|qi~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|lcd|datapath|reg_linha|qi~_emulated_regout\);

-- Location: LCCOMB_X33_Y21_N22
\caminho_de_dados|lcd|datapath|cont_obj|cnt[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lcd|datapath|cont_obj|cnt[1]~1_combout\ = \caminho_de_dados|lcd|datapath|cont_obj|cnt\(1) $ (((\caminho_de_dados|lcd|controladora|atual_estado.s32~regout\ & \caminho_de_dados|lcd|datapath|cont_obj|cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|lcd|controladora|atual_estado.s32~regout\,
	datac => \caminho_de_dados|lcd|datapath|cont_obj|cnt\(1),
	datad => \caminho_de_dados|lcd|datapath|cont_obj|cnt\(0),
	combout => \caminho_de_dados|lcd|datapath|cont_obj|cnt[1]~1_combout\);

-- Location: LCCOMB_X29_Y22_N20
\caminho_de_dados|contador_moedas_1|cnt[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|contador_moedas_1|cnt[1]~5_combout\ = \caminho_de_dados|contador_moedas_1|cnt[0]~1_combout\ $ (\caminho_de_dados|contador_moedas_1|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \caminho_de_dados|contador_moedas_1|cnt[0]~1_combout\,
	datad => \caminho_de_dados|contador_moedas_1|Add0~0_combout\,
	combout => \caminho_de_dados|contador_moedas_1|cnt[1]~5_combout\);

-- Location: LCCOMB_X29_Y22_N24
\caminho_de_dados|contador_moedas_1|cnt[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|contador_moedas_1|cnt[0]~3_combout\ = \caminho_de_dados|contador_moedas_1|cnt[0]~1_combout\ $ (!\caminho_de_dados|contador_moedas_1|cnt[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \caminho_de_dados|contador_moedas_1|cnt[0]~1_combout\,
	datad => \caminho_de_dados|contador_moedas_1|cnt[0]~2_combout\,
	combout => \caminho_de_dados|contador_moedas_1|cnt[0]~3_combout\);

-- Location: LCCOMB_X31_Y22_N6
\caminho_de_dados|contador_moedas_2|cnt[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|contador_moedas_2|cnt[1]~5_combout\ = \caminho_de_dados|contador_moedas_2|Add0~0_combout\ $ (\caminho_de_dados|contador_moedas_2|cnt[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \caminho_de_dados|contador_moedas_2|Add0~0_combout\,
	datad => \caminho_de_dados|contador_moedas_2|cnt[0]~1_combout\,
	combout => \caminho_de_dados|contador_moedas_2|cnt[1]~5_combout\);

-- Location: LCFF_X29_Y21_N27
\caminho_de_dados|start_reg|qi~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \game_clock~clkctrl_outclk\,
	datain => \caminho_de_dados|start_reg|qi~3_combout\,
	aclr => \caminho_de_dados|start_reg|qi~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|start_reg|qi~_emulated_regout\);

-- Location: LCFF_X30_Y21_N25
\controladora|estado_atual.sa8\ : cycloneii_lcell_ff
PORT MAP (
	clk => \game_clock~clkctrl_outclk\,
	datain => \controladora|prox_estado.sa8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controladora|estado_atual.sa8~regout\);

-- Location: LCFF_X29_Y21_N19
\caminho_de_dados|divisor_freq|cnt[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controladora|estado_atual.s12~regout\,
	datain => \caminho_de_dados|divisor_freq|cnt[0]~1_combout\,
	aclr => \caminho_de_dados|divisor_freq|tmp~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|divisor_freq|cnt\(0));

-- Location: LCFF_X29_Y21_N17
\caminho_de_dados|divisor_freq|cnt[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controladora|estado_atual.s12~regout\,
	datain => \caminho_de_dados|divisor_freq|cnt[1]~0_combout\,
	aclr => \caminho_de_dados|divisor_freq|tmp~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|divisor_freq|cnt\(1));

-- Location: LCCOMB_X29_Y21_N28
\caminho_de_dados|divisor_freq|tmp~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|divisor_freq|tmp~0_combout\ = ((\caminho_de_dados|divisor_freq|tmp~combout\) # (!\caminho_de_dados|divisor_freq|cnt\(0))) # (!\caminho_de_dados|divisor_freq|cnt\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|divisor_freq|cnt\(1),
	datac => \caminho_de_dados|divisor_freq|tmp~combout\,
	datad => \caminho_de_dados|divisor_freq|cnt\(0),
	combout => \caminho_de_dados|divisor_freq|tmp~0_combout\);

-- Location: LCCOMB_X29_Y21_N24
\caminho_de_dados|divisor_freq|tmp~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|divisor_freq|tmp~1_combout\ = (\controladora|estado_atual.s2~regout\) # ((\caminho_de_dados|divisor_freq|cnt\(1) & \caminho_de_dados|divisor_freq|cnt\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|divisor_freq|cnt\(1),
	datac => \controladora|estado_atual.s2~regout\,
	datad => \caminho_de_dados|divisor_freq|cnt\(0),
	combout => \caminho_de_dados|divisor_freq|tmp~1_combout\);

-- Location: LCCOMB_X32_Y21_N10
\caminho_de_dados|lcd|datapath|reg_linha|qi~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lcd|datapath|reg_linha|qi~3_combout\ = \caminho_de_dados|lcd|datapath|reg_linha|qi~2_combout\ $ (\caminho_de_dados|lcd|datapath|reg_linha|qi~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \caminho_de_dados|lcd|datapath|reg_linha|qi~2_combout\,
	datad => \caminho_de_dados|lcd|datapath|reg_linha|qi~1_combout\,
	combout => \caminho_de_dados|lcd|datapath|reg_linha|qi~3_combout\);

-- Location: LCCOMB_X32_Y21_N16
\caminho_de_dados|lcd|datapath|reg_linha|qi~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lcd|datapath|reg_linha|qi~0_combout\ = (\caminho_de_dados|lcd|datapath|dp_E~7_combout\) # (\caminho_de_dados|lcd|controladora|atual_estado.s30~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \caminho_de_dados|lcd|datapath|dp_E~7_combout\,
	datad => \caminho_de_dados|lcd|controladora|atual_estado.s30~regout\,
	combout => \caminho_de_dados|lcd|datapath|reg_linha|qi~0_combout\);

-- Location: LCFF_X30_Y21_N7
\caminho_de_dados|player_reg|qi~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \game_clock~clkctrl_outclk\,
	datain => \caminho_de_dados|player_reg|qi~3_combout\,
	aclr => \controladora|ctrl_CLR_START~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|player_reg|qi~_emulated_regout\);

-- Location: LCCOMB_X29_Y21_N26
\caminho_de_dados|start_reg|qi~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|start_reg|qi~3_combout\ = \caminho_de_dados|start_reg|qi~2_combout\ $ (\caminho_de_dados|start_reg|qi~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \caminho_de_dados|start_reg|qi~2_combout\,
	datad => \caminho_de_dados|start_reg|qi~1_combout\,
	combout => \caminho_de_dados|start_reg|qi~3_combout\);

-- Location: LCCOMB_X29_Y21_N14
\caminho_de_dados|start_reg|qi~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|start_reg|qi~0_combout\ = (\game_start~combout\) # (\controladora|ctrl_CLR_START~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \game_start~combout\,
	datad => \controladora|ctrl_CLR_START~combout\,
	combout => \caminho_de_dados|start_reg|qi~0_combout\);

-- Location: LCCOMB_X30_Y21_N24
\controladora|prox_estado.sa8\ : cycloneii_lcell_comb
-- Equation(s):
-- \controladora|prox_estado.sa8~combout\ = (\controladora|estado_atual.s7~regout\) # (\controladora|estado_atual.s6~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controladora|estado_atual.s7~regout\,
	datad => \controladora|estado_atual.s6~regout\,
	combout => \controladora|prox_estado.sa8~combout\);

-- Location: LCCOMB_X29_Y21_N16
\caminho_de_dados|divisor_freq|cnt[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|divisor_freq|cnt[1]~0_combout\ = (\caminho_de_dados|divisor_freq|cnt\(1)) # (\caminho_de_dados|divisor_freq|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \caminho_de_dados|divisor_freq|cnt\(1),
	datad => \caminho_de_dados|divisor_freq|cnt\(0),
	combout => \caminho_de_dados|divisor_freq|cnt[1]~0_combout\);

-- Location: LCCOMB_X30_Y21_N6
\caminho_de_dados|player_reg|qi~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|player_reg|qi~3_combout\ = \caminho_de_dados|player_reg|qi~1_combout\ $ (\caminho_de_dados|player_reg|qi~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \caminho_de_dados|player_reg|qi~1_combout\,
	datad => \caminho_de_dados|player_reg|qi~2_combout\,
	combout => \caminho_de_dados|player_reg|qi~3_combout\);

-- Location: LCCOMB_X27_Y20_N30
\caminho_de_dados|frame_timer|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|frame_timer|LessThan0~0_combout\ = (\caminho_de_dados|frame_timer|temp\(18) & (\caminho_de_dados|frame_timer|temp\(15) & (\caminho_de_dados|frame_timer|temp\(16) & \caminho_de_dados|frame_timer|temp\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|frame_timer|temp\(18),
	datab => \caminho_de_dados|frame_timer|temp\(15),
	datac => \caminho_de_dados|frame_timer|temp\(16),
	datad => \caminho_de_dados|frame_timer|temp\(17),
	combout => \caminho_de_dados|frame_timer|LessThan0~0_combout\);

-- Location: LCCOMB_X27_Y20_N28
\caminho_de_dados|frame_timer|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|frame_timer|LessThan0~1_combout\ = (\caminho_de_dados|frame_timer|temp\(20) & (\caminho_de_dados|frame_timer|temp\(21) & (\caminho_de_dados|frame_timer|temp\(19) & \caminho_de_dados|frame_timer|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|frame_timer|temp\(20),
	datab => \caminho_de_dados|frame_timer|temp\(21),
	datac => \caminho_de_dados|frame_timer|temp\(19),
	datad => \caminho_de_dados|frame_timer|LessThan0~0_combout\,
	combout => \caminho_de_dados|frame_timer|LessThan0~1_combout\);

-- Location: LCCOMB_X27_Y21_N2
\caminho_de_dados|frame_timer|LessThan0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|frame_timer|LessThan0~2_combout\ = (\caminho_de_dados|frame_timer|temp\(3) & ((\caminho_de_dados|frame_timer|temp\(2)) # ((\caminho_de_dados|frame_timer|temp\(1) & \caminho_de_dados|frame_timer|temp\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|frame_timer|temp\(1),
	datab => \caminho_de_dados|frame_timer|temp\(0),
	datac => \caminho_de_dados|frame_timer|temp\(3),
	datad => \caminho_de_dados|frame_timer|temp\(2),
	combout => \caminho_de_dados|frame_timer|LessThan0~2_combout\);

-- Location: LCCOMB_X27_Y21_N8
\caminho_de_dados|frame_timer|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|frame_timer|LessThan0~3_combout\ = (\caminho_de_dados|frame_timer|temp\(6)) # ((\caminho_de_dados|frame_timer|temp\(7)) # ((\caminho_de_dados|frame_timer|temp\(4)) # (\caminho_de_dados|frame_timer|temp\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|frame_timer|temp\(6),
	datab => \caminho_de_dados|frame_timer|temp\(7),
	datac => \caminho_de_dados|frame_timer|temp\(4),
	datad => \caminho_de_dados|frame_timer|temp\(5),
	combout => \caminho_de_dados|frame_timer|LessThan0~3_combout\);

-- Location: LCCOMB_X27_Y21_N6
\caminho_de_dados|frame_timer|LessThan0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|frame_timer|LessThan0~4_combout\ = (\caminho_de_dados|frame_timer|temp\(8)) # ((\caminho_de_dados|frame_timer|LessThan0~2_combout\) # ((\caminho_de_dados|frame_timer|LessThan0~3_combout\) # (\caminho_de_dados|frame_timer|temp\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|frame_timer|temp\(8),
	datab => \caminho_de_dados|frame_timer|LessThan0~2_combout\,
	datac => \caminho_de_dados|frame_timer|LessThan0~3_combout\,
	datad => \caminho_de_dados|frame_timer|temp\(9),
	combout => \caminho_de_dados|frame_timer|LessThan0~4_combout\);

-- Location: LCCOMB_X27_Y21_N0
\caminho_de_dados|frame_timer|LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|frame_timer|LessThan0~5_combout\ = (\caminho_de_dados|frame_timer|temp\(12) & ((\caminho_de_dados|frame_timer|temp\(11)) # ((\caminho_de_dados|frame_timer|LessThan0~4_combout\ & \caminho_de_dados|frame_timer|temp\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|frame_timer|LessThan0~4_combout\,
	datab => \caminho_de_dados|frame_timer|temp\(11),
	datac => \caminho_de_dados|frame_timer|temp\(12),
	datad => \caminho_de_dados|frame_timer|temp\(10),
	combout => \caminho_de_dados|frame_timer|LessThan0~5_combout\);

-- Location: LCCOMB_X27_Y20_N26
\caminho_de_dados|frame_timer|LessThan0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|frame_timer|LessThan0~6_combout\ = (\caminho_de_dados|frame_timer|LessThan0~1_combout\ & ((\caminho_de_dados|frame_timer|LessThan0~5_combout\) # ((\caminho_de_dados|frame_timer|temp\(13)) # (\caminho_de_dados|frame_timer|temp\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|frame_timer|LessThan0~5_combout\,
	datab => \caminho_de_dados|frame_timer|temp\(13),
	datac => \caminho_de_dados|frame_timer|temp\(14),
	datad => \caminho_de_dados|frame_timer|LessThan0~1_combout\,
	combout => \caminho_de_dados|frame_timer|LessThan0~6_combout\);

-- Location: LCCOMB_X30_Y31_N6
\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[28]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[28]~45_combout\ = (\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- ((\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[22]~47_combout\) # ((!\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[22]~47_combout\,
	datad => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	combout => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[28]~45_combout\);

-- Location: LCCOMB_X30_Y31_N4
\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[27]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[27]~48_combout\ = (\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- ((\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\caminho_de_dados|contador_moedas_1|cnt\(3))) # 
-- (!\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \caminho_de_dados|contador_moedas_1|cnt\(3),
	datac => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[27]~48_combout\);

-- Location: LCCOMB_X32_Y31_N14
\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[27]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[27]~48_combout\ = (\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- ((\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\caminho_de_dados|contador_moedas_2|cnt\(3))) # 
-- (!\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \caminho_de_dados|contador_moedas_2|cnt\(3),
	datac => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[27]~48_combout\);

-- Location: LCCOMB_X29_Y21_N18
\caminho_de_dados|divisor_freq|cnt[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|divisor_freq|cnt[0]~1_combout\ = !\caminho_de_dados|divisor_freq|cnt\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \caminho_de_dados|divisor_freq|cnt\(0),
	combout => \caminho_de_dados|divisor_freq|cnt[0]~1_combout\);

-- Location: LCCOMB_X29_Y21_N20
\caminho_de_dados|divisor_freq|tmp\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|divisor_freq|tmp~combout\ = (\caminho_de_dados|divisor_freq|tmp~1_combout\ & ((!\caminho_de_dados|divisor_freq|tmp~0_combout\))) # (!\caminho_de_dados|divisor_freq|tmp~1_combout\ & (\caminho_de_dados|divisor_freq|tmp~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|divisor_freq|tmp~combout\,
	datac => \caminho_de_dados|divisor_freq|tmp~1_combout\,
	datad => \caminho_de_dados|divisor_freq|tmp~0_combout\,
	combout => \caminho_de_dados|divisor_freq|tmp~combout\);

-- Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\game_clock~I\ : cycloneii_io
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
	padio => ww_game_clock,
	combout => \game_clock~combout\);

-- Location: CLKCTRL_G1
\caminho_de_dados|div_freq_10kHz|tmp~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \caminho_de_dados|div_freq_10kHz|tmp~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \caminho_de_dados|div_freq_10kHz|tmp~clkctrl_outclk\);

-- Location: CLKCTRL_G10
\caminho_de_dados|divisor_freq|tmp~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \caminho_de_dados|divisor_freq|tmp~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \caminho_de_dados|divisor_freq|tmp~clkctrl_outclk\);

-- Location: CLKCTRL_G2
\game_clock~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \game_clock~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \game_clock~clkctrl_outclk\);

-- Location: LCCOMB_X31_Y22_N24
\caminho_de_dados|contador_moedas_2|cnt[6]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|contador_moedas_2|cnt[6]~17_combout\ = (!\caminho_de_dados|contador_moedas_2|LessThan0~1_combout\ & \controladora|estado_atual.s2~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|contador_moedas_2|LessThan0~1_combout\,
	datad => \controladora|estado_atual.s2~regout\,
	combout => \caminho_de_dados|contador_moedas_2|cnt[6]~17_combout\);

-- Location: LCCOMB_X31_Y22_N22
\caminho_de_dados|contador_moedas_2|cnt[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|contador_moedas_2|cnt[1]~4_combout\ = (!\caminho_de_dados|contador_moedas_2|cnt[6]~17_combout\ & ((\caminho_de_dados|contador_moedas_2|LessThan0~1_combout\) # (\caminho_de_dados|contador_moedas_2|cnt[1]~_emulated_regout\ $ 
-- (\caminho_de_dados|contador_moedas_2|cnt[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|contador_moedas_2|cnt[1]~_emulated_regout\,
	datab => \caminho_de_dados|contador_moedas_2|cnt[0]~1_combout\,
	datac => \caminho_de_dados|contador_moedas_2|cnt[6]~17_combout\,
	datad => \caminho_de_dados|contador_moedas_2|LessThan0~1_combout\,
	combout => \caminho_de_dados|contador_moedas_2|cnt[1]~4_combout\);

-- Location: LCCOMB_X32_Y22_N18
\caminho_de_dados|contador_moedas_2|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|contador_moedas_2|Add0~2_combout\ = (\caminho_de_dados|contador_moedas_2|cnt\(2) & (!\caminho_de_dados|contador_moedas_2|Add0~1\)) # (!\caminho_de_dados|contador_moedas_2|cnt\(2) & ((\caminho_de_dados|contador_moedas_2|Add0~1\) # (GND)))
-- \caminho_de_dados|contador_moedas_2|Add0~3\ = CARRY((!\caminho_de_dados|contador_moedas_2|Add0~1\) # (!\caminho_de_dados|contador_moedas_2|cnt\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \caminho_de_dados|contador_moedas_2|cnt\(2),
	datad => VCC,
	cin => \caminho_de_dados|contador_moedas_2|Add0~1\,
	combout => \caminho_de_dados|contador_moedas_2|Add0~2_combout\,
	cout => \caminho_de_dados|contador_moedas_2|Add0~3\);

-- Location: LCCOMB_X32_Y22_N14
\caminho_de_dados|contador_moedas_2|cnt[4]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|contador_moedas_2|cnt[4]~16_combout\ = (\controladora|estado_atual.s2~regout\) # (\caminho_de_dados|contador_moedas_2|LessThan0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controladora|estado_atual.s2~regout\,
	datad => \caminho_de_dados|contador_moedas_2|LessThan0~1_combout\,
	combout => \caminho_de_dados|contador_moedas_2|cnt[4]~16_combout\);

-- Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\game_a_button~I\ : cycloneii_io
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
	padio => ww_game_a_button,
	combout => \game_a_button~combout\);

-- Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\game_b_button~I\ : cycloneii_io
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
	padio => ww_game_b_button,
	combout => \game_b_button~combout\);

-- Location: LCCOMB_X31_Y20_N18
\caminho_de_dados|player_position|qi~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|player_position|qi~1_combout\ = (!\game_b_button~combout\ & ((\game_a_button~combout\) # (\caminho_de_dados|player_position|qi~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \game_b_button~combout\,
	datac => \game_a_button~combout\,
	datad => \caminho_de_dados|player_position|qi~1_combout\,
	combout => \caminho_de_dados|player_position|qi~1_combout\);

-- Location: LCCOMB_X31_Y20_N14
\caminho_de_dados|player_position|qi~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|player_position|qi~3_combout\ = \caminho_de_dados|player_position|qi~2_combout\ $ (\caminho_de_dados|player_position|qi~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \caminho_de_dados|player_position|qi~2_combout\,
	datad => \caminho_de_dados|player_position|qi~1_combout\,
	combout => \caminho_de_dados|player_position|qi~3_combout\);

-- Location: LCCOMB_X31_Y20_N16
\caminho_de_dados|player_position|qi~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|player_position|qi~0_combout\ = (\game_b_button~combout\) # (\game_a_button~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \game_b_button~combout\,
	datac => \game_a_button~combout\,
	combout => \caminho_de_dados|player_position|qi~0_combout\);

-- Location: LCFF_X31_Y20_N29
\caminho_de_dados|player_position|qi~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \game_clock~clkctrl_outclk\,
	sdata => \caminho_de_dados|player_position|qi~3_combout\,
	aclr => \caminho_de_dados|player_position|qi~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|player_position|qi~_emulated_regout\);

-- Location: LCCOMB_X31_Y20_N28
\caminho_de_dados|player_position|qi~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|player_position|qi~2_combout\ = (!\game_b_button~combout\ & ((\game_a_button~combout\) # (\caminho_de_dados|player_position|qi~_emulated_regout\ $ (\caminho_de_dados|player_position|qi~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_b_button~combout\,
	datab => \game_a_button~combout\,
	datac => \caminho_de_dados|player_position|qi~_emulated_regout\,
	datad => \caminho_de_dados|player_position|qi~1_combout\,
	combout => \caminho_de_dados|player_position|qi~2_combout\);

-- Location: LCCOMB_X28_Y23_N2
\caminho_de_dados|cont_2b|cnt[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|cont_2b|cnt[0]~1_combout\ = !\caminho_de_dados|cont_2b|cnt\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \caminho_de_dados|cont_2b|cnt\(0),
	combout => \caminho_de_dados|cont_2b|cnt[0]~1_combout\);

-- Location: LCFF_X28_Y23_N3
\caminho_de_dados|cont_2b|cnt[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \caminho_de_dados|divisor_freq|tmp~clkctrl_outclk\,
	datain => \caminho_de_dados|cont_2b|cnt[0]~1_combout\,
	aclr => \controladora|estado_atual.s2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|cont_2b|cnt\(0));

-- Location: LCCOMB_X28_Y23_N4
\caminho_de_dados|cont_2b|cnt[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|cont_2b|cnt[1]~0_combout\ = \caminho_de_dados|cont_2b|cnt\(1) $ (\caminho_de_dados|cont_2b|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \caminho_de_dados|cont_2b|cnt\(1),
	datad => \caminho_de_dados|cont_2b|cnt\(0),
	combout => \caminho_de_dados|cont_2b|cnt[1]~0_combout\);

-- Location: LCFF_X28_Y23_N5
\caminho_de_dados|cont_2b|cnt[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \caminho_de_dados|divisor_freq|tmp~clkctrl_outclk\,
	datain => \caminho_de_dados|cont_2b|cnt[1]~0_combout\,
	aclr => \controladora|estado_atual.s2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|cont_2b|cnt\(1));

-- Location: LCCOMB_X25_Y23_N0
\caminho_de_dados|lfsr_instance|intern[10]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lfsr_instance|intern[10]~3_combout\ = !\caminho_de_dados|lfsr_instance|intern\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \caminho_de_dados|lfsr_instance|intern\(11),
	combout => \caminho_de_dados|lfsr_instance|intern[10]~3_combout\);

-- Location: LCFF_X25_Y23_N1
\caminho_de_dados|lfsr_instance|intern[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \caminho_de_dados|divisor_freq|tmp~clkctrl_outclk\,
	datain => \caminho_de_dados|lfsr_instance|intern[10]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|lfsr_instance|intern\(10));

-- Location: LCCOMB_X25_Y23_N6
\caminho_de_dados|lfsr_instance|intern[9]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lfsr_instance|intern[9]~2_combout\ = !\caminho_de_dados|lfsr_instance|intern\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \caminho_de_dados|lfsr_instance|intern\(10),
	combout => \caminho_de_dados|lfsr_instance|intern[9]~2_combout\);

-- Location: LCFF_X25_Y23_N7
\caminho_de_dados|lfsr_instance|intern[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \caminho_de_dados|divisor_freq|tmp~clkctrl_outclk\,
	datain => \caminho_de_dados|lfsr_instance|intern[9]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|lfsr_instance|intern\(9));

-- Location: LCCOMB_X25_Y23_N16
\caminho_de_dados|lfsr_instance|intern[8]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lfsr_instance|intern[8]~feeder_combout\ = \caminho_de_dados|lfsr_instance|intern\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \caminho_de_dados|lfsr_instance|intern\(9),
	combout => \caminho_de_dados|lfsr_instance|intern[8]~feeder_combout\);

-- Location: LCFF_X25_Y23_N17
\caminho_de_dados|lfsr_instance|intern[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \caminho_de_dados|divisor_freq|tmp~clkctrl_outclk\,
	datain => \caminho_de_dados|lfsr_instance|intern[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|lfsr_instance|intern\(8));

-- Location: LCFF_X25_Y22_N19
\caminho_de_dados|lfsr_instance|intern[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \caminho_de_dados|divisor_freq|tmp~clkctrl_outclk\,
	sdata => \caminho_de_dados|lfsr_instance|intern\(8),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|lfsr_instance|intern\(7));

-- Location: LCCOMB_X25_Y22_N8
\caminho_de_dados|lfsr_instance|intern[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lfsr_instance|intern[6]~feeder_combout\ = \caminho_de_dados|lfsr_instance|intern\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \caminho_de_dados|lfsr_instance|intern\(7),
	combout => \caminho_de_dados|lfsr_instance|intern[6]~feeder_combout\);

-- Location: LCFF_X25_Y22_N9
\caminho_de_dados|lfsr_instance|intern[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \caminho_de_dados|divisor_freq|tmp~clkctrl_outclk\,
	datain => \caminho_de_dados|lfsr_instance|intern[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|lfsr_instance|intern\(6));

-- Location: LCCOMB_X28_Y22_N24
\caminho_de_dados|lfsr_instance|intern[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lfsr_instance|intern[5]~feeder_combout\ = \caminho_de_dados|lfsr_instance|intern\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \caminho_de_dados|lfsr_instance|intern\(6),
	combout => \caminho_de_dados|lfsr_instance|intern[5]~feeder_combout\);

-- Location: LCFF_X28_Y22_N25
\caminho_de_dados|lfsr_instance|intern[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \caminho_de_dados|divisor_freq|tmp~clkctrl_outclk\,
	datain => \caminho_de_dados|lfsr_instance|intern[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|lfsr_instance|intern\(5));

-- Location: LCFF_X28_Y22_N17
\caminho_de_dados|lfsr_instance|intern[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \caminho_de_dados|divisor_freq|tmp~clkctrl_outclk\,
	sdata => \caminho_de_dados|lfsr_instance|intern\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|lfsr_instance|intern\(4));

-- Location: LCFF_X28_Y22_N21
\caminho_de_dados|lfsr_instance|intern[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \caminho_de_dados|divisor_freq|tmp~clkctrl_outclk\,
	sdata => \caminho_de_dados|lfsr_instance|intern\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|lfsr_instance|intern\(3));

-- Location: LCCOMB_X25_Y22_N12
\caminho_de_dados|lfsr_instance|intern[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lfsr_instance|intern[2]~feeder_combout\ = \caminho_de_dados|lfsr_instance|intern\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \caminho_de_dados|lfsr_instance|intern\(3),
	combout => \caminho_de_dados|lfsr_instance|intern[2]~feeder_combout\);

-- Location: LCFF_X25_Y22_N13
\caminho_de_dados|lfsr_instance|intern[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \caminho_de_dados|divisor_freq|tmp~clkctrl_outclk\,
	datain => \caminho_de_dados|lfsr_instance|intern[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|lfsr_instance|intern\(2));

-- Location: LCCOMB_X25_Y22_N22
\caminho_de_dados|lfsr_instance|intern[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lfsr_instance|intern[1]~feeder_combout\ = \caminho_de_dados|lfsr_instance|intern\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \caminho_de_dados|lfsr_instance|intern\(2),
	combout => \caminho_de_dados|lfsr_instance|intern[1]~feeder_combout\);

-- Location: LCFF_X25_Y22_N23
\caminho_de_dados|lfsr_instance|intern[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \caminho_de_dados|divisor_freq|tmp~clkctrl_outclk\,
	datain => \caminho_de_dados|lfsr_instance|intern[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|lfsr_instance|intern\(1));

-- Location: LCCOMB_X25_Y22_N20
\caminho_de_dados|lfsr_instance|intern[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lfsr_instance|intern[0]~feeder_combout\ = \caminho_de_dados|lfsr_instance|intern\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \caminho_de_dados|lfsr_instance|intern\(1),
	combout => \caminho_de_dados|lfsr_instance|intern[0]~feeder_combout\);

-- Location: LCFF_X25_Y22_N21
\caminho_de_dados|lfsr_instance|intern[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \caminho_de_dados|divisor_freq|tmp~clkctrl_outclk\,
	datain => \caminho_de_dados|lfsr_instance|intern[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|lfsr_instance|intern\(0));

-- Location: LCCOMB_X25_Y22_N6
\caminho_de_dados|lfsr_instance|tmp~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lfsr_instance|tmp~0_combout\ = \caminho_de_dados|lfsr_instance|intern\(0) $ (\caminho_de_dados|lfsr_instance|intern\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \caminho_de_dados|lfsr_instance|intern\(0),
	datad => \caminho_de_dados|lfsr_instance|intern\(7),
	combout => \caminho_de_dados|lfsr_instance|tmp~0_combout\);

-- Location: LCFF_X25_Y22_N7
\caminho_de_dados|lfsr_instance|intern[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \caminho_de_dados|divisor_freq|tmp~clkctrl_outclk\,
	datain => \caminho_de_dados|lfsr_instance|tmp~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|lfsr_instance|intern\(17));

-- Location: LCCOMB_X25_Y22_N0
\caminho_de_dados|lfsr_instance|intern[16]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lfsr_instance|intern[16]~feeder_combout\ = \caminho_de_dados|lfsr_instance|intern\(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \caminho_de_dados|lfsr_instance|intern\(17),
	combout => \caminho_de_dados|lfsr_instance|intern[16]~feeder_combout\);

-- Location: LCFF_X25_Y22_N1
\caminho_de_dados|lfsr_instance|intern[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \caminho_de_dados|divisor_freq|tmp~clkctrl_outclk\,
	datain => \caminho_de_dados|lfsr_instance|intern[16]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|lfsr_instance|intern\(16));

-- Location: LCCOMB_X25_Y23_N2
\caminho_de_dados|lfsr_instance|intern[15]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lfsr_instance|intern[15]~feeder_combout\ = \caminho_de_dados|lfsr_instance|intern\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \caminho_de_dados|lfsr_instance|intern\(16),
	combout => \caminho_de_dados|lfsr_instance|intern[15]~feeder_combout\);

-- Location: LCFF_X25_Y23_N3
\caminho_de_dados|lfsr_instance|intern[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \caminho_de_dados|divisor_freq|tmp~clkctrl_outclk\,
	datain => \caminho_de_dados|lfsr_instance|intern[15]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|lfsr_instance|intern\(15));

-- Location: LCCOMB_X25_Y23_N12
\caminho_de_dados|lfsr_instance|intern[14]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lfsr_instance|intern[14]~1_combout\ = !\caminho_de_dados|lfsr_instance|intern\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \caminho_de_dados|lfsr_instance|intern\(15),
	combout => \caminho_de_dados|lfsr_instance|intern[14]~1_combout\);

-- Location: LCFF_X25_Y23_N13
\caminho_de_dados|lfsr_instance|intern[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \caminho_de_dados|divisor_freq|tmp~clkctrl_outclk\,
	datain => \caminho_de_dados|lfsr_instance|intern[14]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|lfsr_instance|intern\(14));

-- Location: LCCOMB_X25_Y23_N18
\caminho_de_dados|lfsr_instance|intern[13]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lfsr_instance|intern[13]~feeder_combout\ = \caminho_de_dados|lfsr_instance|intern\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \caminho_de_dados|lfsr_instance|intern\(14),
	combout => \caminho_de_dados|lfsr_instance|intern[13]~feeder_combout\);

-- Location: LCFF_X25_Y23_N19
\caminho_de_dados|lfsr_instance|intern[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \caminho_de_dados|divisor_freq|tmp~clkctrl_outclk\,
	datain => \caminho_de_dados|lfsr_instance|intern[13]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|lfsr_instance|intern\(13));

-- Location: LCCOMB_X25_Y23_N28
\caminho_de_dados|lfsr_instance|intern[12]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lfsr_instance|intern[12]~0_combout\ = !\caminho_de_dados|lfsr_instance|intern\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \caminho_de_dados|lfsr_instance|intern\(13),
	combout => \caminho_de_dados|lfsr_instance|intern[12]~0_combout\);

-- Location: LCFF_X25_Y23_N29
\caminho_de_dados|lfsr_instance|intern[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \caminho_de_dados|divisor_freq|tmp~clkctrl_outclk\,
	datain => \caminho_de_dados|lfsr_instance|intern[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|lfsr_instance|intern\(12));

-- Location: LCCOMB_X27_Y23_N28
\caminho_de_dados|lfsr_instance|intern[11]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lfsr_instance|intern[11]~feeder_combout\ = \caminho_de_dados|lfsr_instance|intern\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \caminho_de_dados|lfsr_instance|intern\(12),
	combout => \caminho_de_dados|lfsr_instance|intern[11]~feeder_combout\);

-- Location: LCFF_X27_Y23_N29
\caminho_de_dados|lfsr_instance|intern[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \caminho_de_dados|divisor_freq|tmp~clkctrl_outclk\,
	datain => \caminho_de_dados|lfsr_instance|intern[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|lfsr_instance|intern\(11));

-- Location: LCCOMB_X28_Y23_N12
\caminho_de_dados|s7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|s7~0_combout\ = (\caminho_de_dados|lfsr_instance|intern\(11) & ((\caminho_de_dados|cont_2b|cnt\(0)) # (\caminho_de_dados|cont_2b|cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \caminho_de_dados|cont_2b|cnt\(0),
	datac => \caminho_de_dados|cont_2b|cnt\(1),
	datad => \caminho_de_dados|lfsr_instance|intern\(11),
	combout => \caminho_de_dados|s7~0_combout\);

-- Location: LCFF_X28_Y23_N13
\caminho_de_dados|sr_moeda|instancia0_reg|tmp[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \caminho_de_dados|divisor_freq|tmp~clkctrl_outclk\,
	datain => \caminho_de_dados|s7~0_combout\,
	aclr => \controladora|estado_atual.s2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|sr_moeda|instancia0_reg|tmp\(0));

-- Location: LCCOMB_X28_Y23_N8
\caminho_de_dados|sr_moeda|instancia0_reg|tmp[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|sr_moeda|instancia0_reg|tmp[1]~feeder_combout\ = \caminho_de_dados|sr_moeda|instancia0_reg|tmp\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \caminho_de_dados|sr_moeda|instancia0_reg|tmp\(0),
	combout => \caminho_de_dados|sr_moeda|instancia0_reg|tmp[1]~feeder_combout\);

-- Location: LCFF_X28_Y23_N9
\caminho_de_dados|sr_moeda|instancia0_reg|tmp[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \caminho_de_dados|divisor_freq|tmp~clkctrl_outclk\,
	datain => \caminho_de_dados|sr_moeda|instancia0_reg|tmp[1]~feeder_combout\,
	aclr => \controladora|estado_atual.s2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|sr_moeda|instancia0_reg|tmp\(1));

-- Location: LCFF_X28_Y23_N7
\caminho_de_dados|sr_moeda|instancia0_reg|tmp[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \caminho_de_dados|divisor_freq|tmp~clkctrl_outclk\,
	sdata => \caminho_de_dados|sr_moeda|instancia0_reg|tmp\(1),
	aclr => \controladora|estado_atual.s2~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|sr_moeda|instancia0_reg|tmp\(2));

-- Location: LCCOMB_X28_Y23_N10
\caminho_de_dados|sr_moeda|instancia0_reg|tmp[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|sr_moeda|instancia0_reg|tmp[3]~feeder_combout\ = \caminho_de_dados|sr_moeda|instancia0_reg|tmp\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \caminho_de_dados|sr_moeda|instancia0_reg|tmp\(2),
	combout => \caminho_de_dados|sr_moeda|instancia0_reg|tmp[3]~feeder_combout\);

-- Location: LCFF_X28_Y23_N11
\caminho_de_dados|sr_moeda|instancia0_reg|tmp[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \caminho_de_dados|divisor_freq|tmp~clkctrl_outclk\,
	datain => \caminho_de_dados|sr_moeda|instancia0_reg|tmp[3]~feeder_combout\,
	aclr => \controladora|estado_atual.s2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|sr_moeda|instancia0_reg|tmp\(3));

-- Location: LCFF_X28_Y23_N25
\caminho_de_dados|sr_moeda|instancia0_reg|tmp[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \caminho_de_dados|divisor_freq|tmp~clkctrl_outclk\,
	sdata => \caminho_de_dados|sr_moeda|instancia0_reg|tmp\(3),
	aclr => \controladora|estado_atual.s2~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|sr_moeda|instancia0_reg|tmp\(4));

-- Location: LCFF_X28_Y23_N31
\caminho_de_dados|sr_moeda|instancia0_reg|tmp[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \caminho_de_dados|divisor_freq|tmp~clkctrl_outclk\,
	sdata => \caminho_de_dados|sr_moeda|instancia0_reg|tmp\(4),
	aclr => \controladora|estado_atual.s2~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|sr_moeda|instancia0_reg|tmp\(5));

-- Location: LCFF_X28_Y23_N1
\caminho_de_dados|sr_moeda|instancia0_reg|tmp[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \caminho_de_dados|divisor_freq|tmp~clkctrl_outclk\,
	sdata => \caminho_de_dados|sr_moeda|instancia0_reg|tmp\(5),
	aclr => \controladora|estado_atual.s2~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|sr_moeda|instancia0_reg|tmp\(6));

-- Location: LCFF_X28_Y23_N29
\caminho_de_dados|sr_moeda|instancia0_reg|tmp[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \caminho_de_dados|divisor_freq|tmp~clkctrl_outclk\,
	sdata => \caminho_de_dados|sr_moeda|instancia0_reg|tmp\(6),
	aclr => \controladora|estado_atual.s2~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|sr_moeda|instancia0_reg|tmp\(7));

-- Location: LCFF_X28_Y22_N19
\caminho_de_dados|sr_moeda|instancia0_reg|tmp[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \caminho_de_dados|divisor_freq|tmp~clkctrl_outclk\,
	sdata => \caminho_de_dados|sr_moeda|instancia0_reg|tmp\(7),
	aclr => \controladora|estado_atual.s2~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|sr_moeda|instancia0_reg|tmp\(8));

-- Location: LCFF_X28_Y22_N7
\caminho_de_dados|sr_moeda|instancia0_reg|tmp[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \caminho_de_dados|divisor_freq|tmp~clkctrl_outclk\,
	sdata => \caminho_de_dados|sr_moeda|instancia0_reg|tmp\(8),
	aclr => \controladora|estado_atual.s2~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|sr_moeda|instancia0_reg|tmp\(9));

-- Location: LCCOMB_X28_Y22_N22
\caminho_de_dados|sr_moeda|instancia0_reg|tmp[10]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|sr_moeda|instancia0_reg|tmp[10]~feeder_combout\ = \caminho_de_dados|sr_moeda|instancia0_reg|tmp\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \caminho_de_dados|sr_moeda|instancia0_reg|tmp\(9),
	combout => \caminho_de_dados|sr_moeda|instancia0_reg|tmp[10]~feeder_combout\);

-- Location: LCFF_X28_Y22_N23
\caminho_de_dados|sr_moeda|instancia0_reg|tmp[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \caminho_de_dados|divisor_freq|tmp~clkctrl_outclk\,
	datain => \caminho_de_dados|sr_moeda|instancia0_reg|tmp[10]~feeder_combout\,
	aclr => \controladora|estado_atual.s2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|sr_moeda|instancia0_reg|tmp\(10));

-- Location: LCFF_X28_Y22_N1
\caminho_de_dados|sr_moeda|instancia0_reg|tmp[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \caminho_de_dados|divisor_freq|tmp~clkctrl_outclk\,
	sdata => \caminho_de_dados|sr_moeda|instancia0_reg|tmp\(10),
	aclr => \controladora|estado_atual.s2~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|sr_moeda|instancia0_reg|tmp\(11));

-- Location: LCCOMB_X28_Y22_N28
\caminho_de_dados|sr_moeda|instancia0_reg|tmp[12]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|sr_moeda|instancia0_reg|tmp[12]~feeder_combout\ = \caminho_de_dados|sr_moeda|instancia0_reg|tmp\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \caminho_de_dados|sr_moeda|instancia0_reg|tmp\(11),
	combout => \caminho_de_dados|sr_moeda|instancia0_reg|tmp[12]~feeder_combout\);

-- Location: LCFF_X28_Y22_N29
\caminho_de_dados|sr_moeda|instancia0_reg|tmp[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \caminho_de_dados|divisor_freq|tmp~clkctrl_outclk\,
	datain => \caminho_de_dados|sr_moeda|instancia0_reg|tmp[12]~feeder_combout\,
	aclr => \controladora|estado_atual.s2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|sr_moeda|instancia0_reg|tmp\(12));

-- Location: LCFF_X29_Y22_N27
\caminho_de_dados|sr_moeda|instancia0_reg|tmp[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \caminho_de_dados|divisor_freq|tmp~clkctrl_outclk\,
	sdata => \caminho_de_dados|sr_moeda|instancia0_reg|tmp\(12),
	aclr => \controladora|estado_atual.s2~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|sr_moeda|instancia0_reg|tmp\(13));

-- Location: LCFF_X29_Y22_N19
\caminho_de_dados|sr_moeda|instancia0_reg|tmp[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \caminho_de_dados|divisor_freq|tmp~clkctrl_outclk\,
	sdata => \caminho_de_dados|sr_moeda|instancia0_reg|tmp\(13),
	aclr => \controladora|estado_atual.s2~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|sr_moeda|instancia0_reg|tmp\(14));

-- Location: LCFF_X29_Y22_N15
\caminho_de_dados|sr_moeda|instancia0_reg|tmp[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \caminho_de_dados|divisor_freq|tmp~clkctrl_outclk\,
	sdata => \caminho_de_dados|sr_moeda|instancia0_reg|tmp\(14),
	aclr => \controladora|estado_atual.s2~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|sr_moeda|instancia0_reg|tmp\(15));

-- Location: LCCOMB_X29_Y22_N16
\caminho_de_dados|sr_moeda|instancia0_reg|tmp[16]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|sr_moeda|instancia0_reg|tmp[16]~feeder_combout\ = \caminho_de_dados|sr_moeda|instancia0_reg|tmp\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \caminho_de_dados|sr_moeda|instancia0_reg|tmp\(15),
	combout => \caminho_de_dados|sr_moeda|instancia0_reg|tmp[16]~feeder_combout\);

-- Location: LCFF_X29_Y22_N17
\caminho_de_dados|sr_moeda|instancia0_reg|tmp[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \caminho_de_dados|divisor_freq|tmp~clkctrl_outclk\,
	datain => \caminho_de_dados|sr_moeda|instancia0_reg|tmp[16]~feeder_combout\,
	aclr => \controladora|estado_atual.s2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|sr_moeda|instancia0_reg|tmp\(16));

-- Location: LCFF_X28_Y22_N15
\caminho_de_dados|sr_obstaculo|instancia1_reg|tmp[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \caminho_de_dados|divisor_freq|tmp~clkctrl_outclk\,
	sdata => \caminho_de_dados|lfsr_instance|intern\(4),
	aclr => \controladora|estado_atual.s2~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|sr_obstaculo|instancia1_reg|tmp\(0));

-- Location: LCFF_X27_Y22_N17
\caminho_de_dados|sr_moeda|instancia1_reg|tmp[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \caminho_de_dados|divisor_freq|tmp~clkctrl_outclk\,
	sdata => \caminho_de_dados|sr_obstaculo|instancia1_reg|tmp\(0),
	aclr => \controladora|estado_atual.s2~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|sr_moeda|instancia1_reg|tmp\(1));

-- Location: LCFF_X27_Y22_N13
\caminho_de_dados|sr_obstaculo|instancia1_reg|tmp[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \caminho_de_dados|divisor_freq|tmp~clkctrl_outclk\,
	sdata => \caminho_de_dados|sr_moeda|instancia1_reg|tmp\(1),
	aclr => \controladora|estado_atual.s2~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|sr_obstaculo|instancia1_reg|tmp\(2));

-- Location: LCFF_X27_Y22_N25
\caminho_de_dados|sr_moeda|instancia1_reg|tmp[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \caminho_de_dados|divisor_freq|tmp~clkctrl_outclk\,
	sdata => \caminho_de_dados|sr_obstaculo|instancia1_reg|tmp\(2),
	aclr => \controladora|estado_atual.s2~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|sr_moeda|instancia1_reg|tmp\(3));

-- Location: LCFF_X27_Y22_N21
\caminho_de_dados|sr_obstaculo|instancia1_reg|tmp[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \caminho_de_dados|divisor_freq|tmp~clkctrl_outclk\,
	sdata => \caminho_de_dados|sr_moeda|instancia1_reg|tmp\(3),
	aclr => \controladora|estado_atual.s2~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|sr_obstaculo|instancia1_reg|tmp\(4));

-- Location: LCFF_X27_Y22_N1
\caminho_de_dados|sr_moeda|instancia1_reg|tmp[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \caminho_de_dados|divisor_freq|tmp~clkctrl_outclk\,
	sdata => \caminho_de_dados|sr_obstaculo|instancia1_reg|tmp\(4),
	aclr => \controladora|estado_atual.s2~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|sr_moeda|instancia1_reg|tmp\(5));

-- Location: LCFF_X27_Y22_N23
\caminho_de_dados|sr_obstaculo|instancia1_reg|tmp[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \caminho_de_dados|divisor_freq|tmp~clkctrl_outclk\,
	sdata => \caminho_de_dados|sr_moeda|instancia1_reg|tmp\(5),
	aclr => \controladora|estado_atual.s2~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|sr_obstaculo|instancia1_reg|tmp\(6));

-- Location: LCFF_X27_Y22_N19
\caminho_de_dados|sr_moeda|instancia1_reg|tmp[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \caminho_de_dados|divisor_freq|tmp~clkctrl_outclk\,
	sdata => \caminho_de_dados|sr_obstaculo|instancia1_reg|tmp\(6),
	aclr => \controladora|estado_atual.s2~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|sr_moeda|instancia1_reg|tmp\(7));

-- Location: LCFF_X27_Y22_N5
\caminho_de_dados|sr_obstaculo|instancia1_reg|tmp[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \caminho_de_dados|divisor_freq|tmp~clkctrl_outclk\,
	sdata => \caminho_de_dados|sr_moeda|instancia1_reg|tmp\(7),
	aclr => \controladora|estado_atual.s2~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|sr_obstaculo|instancia1_reg|tmp\(8));

-- Location: LCFF_X27_Y22_N9
\caminho_de_dados|sr_moeda|instancia1_reg|tmp[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \caminho_de_dados|divisor_freq|tmp~clkctrl_outclk\,
	sdata => \caminho_de_dados|sr_obstaculo|instancia1_reg|tmp\(8),
	aclr => \controladora|estado_atual.s2~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|sr_moeda|instancia1_reg|tmp\(9));

-- Location: LCFF_X27_Y22_N7
\caminho_de_dados|sr_obstaculo|instancia1_reg|tmp[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \caminho_de_dados|divisor_freq|tmp~clkctrl_outclk\,
	sdata => \caminho_de_dados|sr_moeda|instancia1_reg|tmp\(9),
	aclr => \controladora|estado_atual.s2~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|sr_obstaculo|instancia1_reg|tmp\(10));

-- Location: LCFF_X27_Y22_N15
\caminho_de_dados|sr_moeda|instancia1_reg|tmp[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \caminho_de_dados|divisor_freq|tmp~clkctrl_outclk\,
	sdata => \caminho_de_dados|sr_obstaculo|instancia1_reg|tmp\(10),
	aclr => \controladora|estado_atual.s2~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|sr_moeda|instancia1_reg|tmp\(11));

-- Location: LCCOMB_X27_Y22_N30
\caminho_de_dados|sr_obstaculo|instancia1_reg|tmp[12]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|sr_obstaculo|instancia1_reg|tmp[12]~feeder_combout\ = \caminho_de_dados|sr_moeda|instancia1_reg|tmp\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \caminho_de_dados|sr_moeda|instancia1_reg|tmp\(11),
	combout => \caminho_de_dados|sr_obstaculo|instancia1_reg|tmp[12]~feeder_combout\);

-- Location: LCFF_X27_Y22_N31
\caminho_de_dados|sr_obstaculo|instancia1_reg|tmp[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \caminho_de_dados|divisor_freq|tmp~clkctrl_outclk\,
	datain => \caminho_de_dados|sr_obstaculo|instancia1_reg|tmp[12]~feeder_combout\,
	aclr => \controladora|estado_atual.s2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|sr_obstaculo|instancia1_reg|tmp\(12));

-- Location: LCFF_X28_Y22_N9
\caminho_de_dados|sr_moeda|instancia1_reg|tmp[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \caminho_de_dados|divisor_freq|tmp~clkctrl_outclk\,
	sdata => \caminho_de_dados|sr_obstaculo|instancia1_reg|tmp\(12),
	aclr => \controladora|estado_atual.s2~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|sr_moeda|instancia1_reg|tmp\(13));

-- Location: LCFF_X28_Y22_N27
\caminho_de_dados|sr_obstaculo|instancia1_reg|tmp[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \caminho_de_dados|divisor_freq|tmp~clkctrl_outclk\,
	sdata => \caminho_de_dados|sr_moeda|instancia1_reg|tmp\(13),
	aclr => \controladora|estado_atual.s2~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|sr_obstaculo|instancia1_reg|tmp\(14));

-- Location: LCCOMB_X28_Y22_N4
\caminho_de_dados|sr_moeda|instancia1_reg|tmp[15]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|sr_moeda|instancia1_reg|tmp[15]~feeder_combout\ = \caminho_de_dados|sr_obstaculo|instancia1_reg|tmp\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \caminho_de_dados|sr_obstaculo|instancia1_reg|tmp\(14),
	combout => \caminho_de_dados|sr_moeda|instancia1_reg|tmp[15]~feeder_combout\);

-- Location: LCFF_X28_Y22_N5
\caminho_de_dados|sr_moeda|instancia1_reg|tmp[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \caminho_de_dados|divisor_freq|tmp~clkctrl_outclk\,
	datain => \caminho_de_dados|sr_moeda|instancia1_reg|tmp[15]~feeder_combout\,
	aclr => \controladora|estado_atual.s2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|sr_moeda|instancia1_reg|tmp\(15));

-- Location: LCCOMB_X28_Y21_N6
\caminho_de_dados|sr_obstaculo|instancia1_reg|tmp[16]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|sr_obstaculo|instancia1_reg|tmp[16]~feeder_combout\ = \caminho_de_dados|sr_moeda|instancia1_reg|tmp\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \caminho_de_dados|sr_moeda|instancia1_reg|tmp\(15),
	combout => \caminho_de_dados|sr_obstaculo|instancia1_reg|tmp[16]~feeder_combout\);

-- Location: LCFF_X28_Y21_N7
\caminho_de_dados|sr_obstaculo|instancia1_reg|tmp[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \caminho_de_dados|divisor_freq|tmp~clkctrl_outclk\,
	datain => \caminho_de_dados|sr_obstaculo|instancia1_reg|tmp[16]~feeder_combout\,
	aclr => \controladora|estado_atual.s2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|sr_obstaculo|instancia1_reg|tmp\(16));

-- Location: LCCOMB_X28_Y21_N12
\controladora|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controladora|Selector2~0_combout\ = (\controladora|estado_atual.sa8~regout\) # ((\controladora|estado_atual.s4~regout\ & (\caminho_de_dados|player_position|qi~2_combout\ $ (\caminho_de_dados|sr_obstaculo|instancia1_reg|tmp\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controladora|estado_atual.sa8~regout\,
	datab => \caminho_de_dados|player_position|qi~2_combout\,
	datac => \controladora|estado_atual.s4~regout\,
	datad => \caminho_de_dados|sr_obstaculo|instancia1_reg|tmp\(16),
	combout => \controladora|Selector2~0_combout\);

-- Location: LCCOMB_X28_Y21_N8
\controladora|Selector2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \controladora|Selector2~1_combout\ = (\controladora|Selector2~0_combout\) # ((\controladora|estado_atual.s3~regout\ & !\caminho_de_dados|sr_moeda|instancia0_reg|tmp\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controladora|estado_atual.s3~regout\,
	datac => \caminho_de_dados|sr_moeda|instancia0_reg|tmp\(16),
	datad => \controladora|Selector2~0_combout\,
	combout => \controladora|Selector2~1_combout\);

-- Location: LCFF_X28_Y21_N9
\controladora|estado_atual.s8\ : cycloneii_lcell_ff
PORT MAP (
	clk => \game_clock~clkctrl_outclk\,
	datain => \controladora|Selector2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controladora|estado_atual.s8~regout\);

-- Location: LCCOMB_X28_Y23_N18
\caminho_de_dados|s12\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|s12~combout\ = (!\caminho_de_dados|cont_2b|cnt\(0)) # (!\caminho_de_dados|cont_2b|cnt\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \caminho_de_dados|cont_2b|cnt\(1),
	datad => \caminho_de_dados|cont_2b|cnt\(0),
	combout => \caminho_de_dados|s12~combout\);

-- Location: LCFF_X28_Y23_N19
\caminho_de_dados|sr_obstaculo|instancia0_reg|tmp[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \caminho_de_dados|divisor_freq|tmp~clkctrl_outclk\,
	datain => \caminho_de_dados|s12~combout\,
	aclr => \controladora|estado_atual.s2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|sr_obstaculo|instancia0_reg|tmp\(0));

-- Location: LCFF_X29_Y23_N21
\caminho_de_dados|sr_obstaculo|instancia0_reg|tmp[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \caminho_de_dados|divisor_freq|tmp~clkctrl_outclk\,
	sdata => \caminho_de_dados|sr_obstaculo|instancia0_reg|tmp\(0),
	aclr => \controladora|estado_atual.s2~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|sr_obstaculo|instancia0_reg|tmp\(1));

-- Location: LCFF_X29_Y23_N5
\caminho_de_dados|sr_obstaculo|instancia0_reg|tmp[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \caminho_de_dados|divisor_freq|tmp~clkctrl_outclk\,
	sdata => \caminho_de_dados|sr_obstaculo|instancia0_reg|tmp\(1),
	aclr => \controladora|estado_atual.s2~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|sr_obstaculo|instancia0_reg|tmp\(2));

-- Location: LCFF_X29_Y23_N27
\caminho_de_dados|sr_obstaculo|instancia0_reg|tmp[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \caminho_de_dados|divisor_freq|tmp~clkctrl_outclk\,
	sdata => \caminho_de_dados|sr_obstaculo|instancia0_reg|tmp\(2),
	aclr => \controladora|estado_atual.s2~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|sr_obstaculo|instancia0_reg|tmp\(3));

-- Location: LCFF_X29_Y23_N11
\caminho_de_dados|sr_obstaculo|instancia0_reg|tmp[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \caminho_de_dados|divisor_freq|tmp~clkctrl_outclk\,
	sdata => \caminho_de_dados|sr_obstaculo|instancia0_reg|tmp\(3),
	aclr => \controladora|estado_atual.s2~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|sr_obstaculo|instancia0_reg|tmp\(4));

-- Location: LCFF_X29_Y23_N3
\caminho_de_dados|sr_obstaculo|instancia0_reg|tmp[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \caminho_de_dados|divisor_freq|tmp~clkctrl_outclk\,
	sdata => \caminho_de_dados|sr_obstaculo|instancia0_reg|tmp\(4),
	aclr => \controladora|estado_atual.s2~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|sr_obstaculo|instancia0_reg|tmp\(5));

-- Location: LCFF_X29_Y23_N29
\caminho_de_dados|sr_obstaculo|instancia0_reg|tmp[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \caminho_de_dados|divisor_freq|tmp~clkctrl_outclk\,
	sdata => \caminho_de_dados|sr_obstaculo|instancia0_reg|tmp\(5),
	aclr => \controladora|estado_atual.s2~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|sr_obstaculo|instancia0_reg|tmp\(6));

-- Location: LCFF_X29_Y23_N13
\caminho_de_dados|sr_obstaculo|instancia0_reg|tmp[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \caminho_de_dados|divisor_freq|tmp~clkctrl_outclk\,
	sdata => \caminho_de_dados|sr_obstaculo|instancia0_reg|tmp\(6),
	aclr => \controladora|estado_atual.s2~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|sr_obstaculo|instancia0_reg|tmp\(7));

-- Location: LCFF_X29_Y22_N3
\caminho_de_dados|sr_obstaculo|instancia0_reg|tmp[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \caminho_de_dados|divisor_freq|tmp~clkctrl_outclk\,
	sdata => \caminho_de_dados|sr_obstaculo|instancia0_reg|tmp\(7),
	aclr => \controladora|estado_atual.s2~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|sr_obstaculo|instancia0_reg|tmp\(8));

-- Location: LCCOMB_X29_Y22_N0
\caminho_de_dados|sr_obstaculo|instancia0_reg|tmp[9]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|sr_obstaculo|instancia0_reg|tmp[9]~feeder_combout\ = \caminho_de_dados|sr_obstaculo|instancia0_reg|tmp\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \caminho_de_dados|sr_obstaculo|instancia0_reg|tmp\(8),
	combout => \caminho_de_dados|sr_obstaculo|instancia0_reg|tmp[9]~feeder_combout\);

-- Location: LCFF_X29_Y22_N1
\caminho_de_dados|sr_obstaculo|instancia0_reg|tmp[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \caminho_de_dados|divisor_freq|tmp~clkctrl_outclk\,
	datain => \caminho_de_dados|sr_obstaculo|instancia0_reg|tmp[9]~feeder_combout\,
	aclr => \controladora|estado_atual.s2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|sr_obstaculo|instancia0_reg|tmp\(9));

-- Location: LCFF_X29_Y23_N23
\caminho_de_dados|sr_obstaculo|instancia0_reg|tmp[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \caminho_de_dados|divisor_freq|tmp~clkctrl_outclk\,
	sdata => \caminho_de_dados|sr_obstaculo|instancia0_reg|tmp\(9),
	aclr => \controladora|estado_atual.s2~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|sr_obstaculo|instancia0_reg|tmp\(10));

-- Location: LCFF_X29_Y23_N15
\caminho_de_dados|sr_obstaculo|instancia0_reg|tmp[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \caminho_de_dados|divisor_freq|tmp~clkctrl_outclk\,
	sdata => \caminho_de_dados|sr_obstaculo|instancia0_reg|tmp\(10),
	aclr => \controladora|estado_atual.s2~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|sr_obstaculo|instancia0_reg|tmp\(11));

-- Location: LCCOMB_X29_Y22_N10
\caminho_de_dados|sr_obstaculo|instancia0_reg|tmp[12]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|sr_obstaculo|instancia0_reg|tmp[12]~feeder_combout\ = \caminho_de_dados|sr_obstaculo|instancia0_reg|tmp\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \caminho_de_dados|sr_obstaculo|instancia0_reg|tmp\(11),
	combout => \caminho_de_dados|sr_obstaculo|instancia0_reg|tmp[12]~feeder_combout\);

-- Location: LCFF_X29_Y22_N11
\caminho_de_dados|sr_obstaculo|instancia0_reg|tmp[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \caminho_de_dados|divisor_freq|tmp~clkctrl_outclk\,
	datain => \caminho_de_dados|sr_obstaculo|instancia0_reg|tmp[12]~feeder_combout\,
	aclr => \controladora|estado_atual.s2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|sr_obstaculo|instancia0_reg|tmp\(12));

-- Location: LCFF_X29_Y23_N19
\caminho_de_dados|sr_obstaculo|instancia0_reg|tmp[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \caminho_de_dados|divisor_freq|tmp~clkctrl_outclk\,
	sdata => \caminho_de_dados|sr_obstaculo|instancia0_reg|tmp\(12),
	aclr => \controladora|estado_atual.s2~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|sr_obstaculo|instancia0_reg|tmp\(13));

-- Location: LCCOMB_X28_Y22_N30
\caminho_de_dados|sr_obstaculo|instancia0_reg|tmp[14]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|sr_obstaculo|instancia0_reg|tmp[14]~feeder_combout\ = \caminho_de_dados|sr_obstaculo|instancia0_reg|tmp\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \caminho_de_dados|sr_obstaculo|instancia0_reg|tmp\(13),
	combout => \caminho_de_dados|sr_obstaculo|instancia0_reg|tmp[14]~feeder_combout\);

-- Location: LCFF_X28_Y22_N31
\caminho_de_dados|sr_obstaculo|instancia0_reg|tmp[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \caminho_de_dados|divisor_freq|tmp~clkctrl_outclk\,
	datain => \caminho_de_dados|sr_obstaculo|instancia0_reg|tmp[14]~feeder_combout\,
	aclr => \controladora|estado_atual.s2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|sr_obstaculo|instancia0_reg|tmp\(14));

-- Location: LCCOMB_X28_Y22_N10
\caminho_de_dados|sr_obstaculo|instancia0_reg|tmp[15]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|sr_obstaculo|instancia0_reg|tmp[15]~feeder_combout\ = \caminho_de_dados|sr_obstaculo|instancia0_reg|tmp\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \caminho_de_dados|sr_obstaculo|instancia0_reg|tmp\(14),
	combout => \caminho_de_dados|sr_obstaculo|instancia0_reg|tmp[15]~feeder_combout\);

-- Location: LCFF_X28_Y22_N11
\caminho_de_dados|sr_obstaculo|instancia0_reg|tmp[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \caminho_de_dados|divisor_freq|tmp~clkctrl_outclk\,
	datain => \caminho_de_dados|sr_obstaculo|instancia0_reg|tmp[15]~feeder_combout\,
	aclr => \controladora|estado_atual.s2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|sr_obstaculo|instancia0_reg|tmp\(15));

-- Location: LCCOMB_X28_Y21_N10
\caminho_de_dados|sr_obstaculo|instancia0_reg|tmp[16]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|sr_obstaculo|instancia0_reg|tmp[16]~feeder_combout\ = \caminho_de_dados|sr_obstaculo|instancia0_reg|tmp\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \caminho_de_dados|sr_obstaculo|instancia0_reg|tmp\(15),
	combout => \caminho_de_dados|sr_obstaculo|instancia0_reg|tmp[16]~feeder_combout\);

-- Location: LCFF_X28_Y21_N11
\caminho_de_dados|sr_obstaculo|instancia0_reg|tmp[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \caminho_de_dados|divisor_freq|tmp~clkctrl_outclk\,
	datain => \caminho_de_dados|sr_obstaculo|instancia0_reg|tmp[16]~feeder_combout\,
	aclr => \controladora|estado_atual.s2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|sr_obstaculo|instancia0_reg|tmp\(16));

-- Location: LCCOMB_X28_Y21_N20
\controladora|prox_estado.s9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controladora|prox_estado.s9~0_combout\ = (\controladora|estado_atual.s8~regout\ & \caminho_de_dados|sr_obstaculo|instancia0_reg|tmp\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controladora|estado_atual.s8~regout\,
	datad => \caminho_de_dados|sr_obstaculo|instancia0_reg|tmp\(16),
	combout => \controladora|prox_estado.s9~0_combout\);

-- Location: LCFF_X28_Y21_N21
\controladora|estado_atual.s9\ : cycloneii_lcell_ff
PORT MAP (
	clk => \game_clock~clkctrl_outclk\,
	datain => \controladora|prox_estado.s9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controladora|estado_atual.s9~regout\);

-- Location: LCCOMB_X28_Y21_N26
\controladora|prox_estado.s13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controladora|prox_estado.s13~0_combout\ = (\controladora|estado_atual.s9~regout\ & (\caminho_de_dados|player_position|qi~2_combout\ $ (!\caminho_de_dados|sr_obstaculo|instancia1_reg|tmp\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \caminho_de_dados|player_position|qi~2_combout\,
	datac => \controladora|estado_atual.s9~regout\,
	datad => \caminho_de_dados|sr_obstaculo|instancia1_reg|tmp\(16),
	combout => \controladora|prox_estado.s13~0_combout\);

-- Location: LCFF_X28_Y21_N27
\controladora|estado_atual.s13\ : cycloneii_lcell_ff
PORT MAP (
	clk => \game_clock~clkctrl_outclk\,
	datain => \controladora|prox_estado.s13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controladora|estado_atual.s13~regout\);

-- Location: LCCOMB_X30_Y21_N18
\caminho_de_dados|player_reg|qi~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|player_reg|qi~1_combout\ = (!\controladora|estado_atual.s2~regout\ & ((\controladora|estado_atual.s14~regout\) # (\caminho_de_dados|player_reg|qi~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controladora|estado_atual.s14~regout\,
	datac => \controladora|estado_atual.s2~regout\,
	datad => \caminho_de_dados|player_reg|qi~1_combout\,
	combout => \caminho_de_dados|player_reg|qi~1_combout\);

-- Location: LCCOMB_X30_Y21_N28
\caminho_de_dados|player_reg|qi~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|player_reg|qi~2_combout\ = (!\controladora|estado_atual.s2~regout\ & ((\controladora|estado_atual.s14~regout\) # (\caminho_de_dados|player_reg|qi~_emulated_regout\ $ (\caminho_de_dados|player_reg|qi~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|player_reg|qi~_emulated_regout\,
	datab => \caminho_de_dados|player_reg|qi~1_combout\,
	datac => \controladora|estado_atual.s2~regout\,
	datad => \controladora|estado_atual.s14~regout\,
	combout => \caminho_de_dados|player_reg|qi~2_combout\);

-- Location: LCCOMB_X30_Y21_N30
\controladora|prox_estado.s14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controladora|prox_estado.s14~0_combout\ = (\controladora|estado_atual.s13~regout\ & !\caminho_de_dados|player_reg|qi~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controladora|estado_atual.s13~regout\,
	datad => \caminho_de_dados|player_reg|qi~2_combout\,
	combout => \controladora|prox_estado.s14~0_combout\);

-- Location: LCFF_X30_Y21_N31
\controladora|estado_atual.s14\ : cycloneii_lcell_ff
PORT MAP (
	clk => \game_clock~clkctrl_outclk\,
	datain => \controladora|prox_estado.s14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controladora|estado_atual.s14~regout\);

-- Location: LCCOMB_X30_Y21_N0
\controladora|Selector5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controladora|Selector5~0_combout\ = (\controladora|estado_atual.s14~regout\) # ((\controladora|estado_atual.s15~regout\ & !\caminho_de_dados|start_reg|qi~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controladora|estado_atual.s15~regout\,
	datac => \caminho_de_dados|start_reg|qi~2_combout\,
	datad => \controladora|estado_atual.s14~regout\,
	combout => \controladora|Selector5~0_combout\);

-- Location: LCFF_X31_Y21_N29
\controladora|estado_atual.s15\ : cycloneii_lcell_ff
PORT MAP (
	clk => \game_clock~clkctrl_outclk\,
	sdata => \controladora|Selector5~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controladora|estado_atual.s15~regout\);

-- Location: LCCOMB_X27_Y21_N4
\caminho_de_dados|frame_timer|temp[0]~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|frame_timer|temp[0]~66_combout\ = !\caminho_de_dados|frame_timer|temp\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \caminho_de_dados|frame_timer|temp\(0),
	combout => \caminho_de_dados|frame_timer|temp[0]~66_combout\);

-- Location: LCCOMB_X28_Y21_N16
\controladora|ctrl_CLR_TIMER\ : cycloneii_lcell_comb
-- Equation(s):
-- \controladora|ctrl_CLR_TIMER~combout\ = (\controladora|estado_atual.s2~regout\) # (\controladora|estado_atual.s12~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controladora|estado_atual.s2~regout\,
	datad => \controladora|estado_atual.s12~regout\,
	combout => \controladora|ctrl_CLR_TIMER~combout\);

-- Location: LCFF_X27_Y21_N5
\caminho_de_dados|frame_timer|temp[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \game_clock~clkctrl_outclk\,
	datain => \caminho_de_dados|frame_timer|temp[0]~66_combout\,
	aclr => \controladora|ctrl_CLR_TIMER~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|frame_timer|temp\(0));

-- Location: LCCOMB_X27_Y21_N14
\caminho_de_dados|frame_timer|temp[3]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|frame_timer|temp[3]~26_combout\ = (\caminho_de_dados|frame_timer|temp\(3) & (\caminho_de_dados|frame_timer|temp[2]~25\ $ (GND))) # (!\caminho_de_dados|frame_timer|temp\(3) & (!\caminho_de_dados|frame_timer|temp[2]~25\ & VCC))
-- \caminho_de_dados|frame_timer|temp[3]~27\ = CARRY((\caminho_de_dados|frame_timer|temp\(3) & !\caminho_de_dados|frame_timer|temp[2]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \caminho_de_dados|frame_timer|temp\(3),
	datad => VCC,
	cin => \caminho_de_dados|frame_timer|temp[2]~25\,
	combout => \caminho_de_dados|frame_timer|temp[3]~26_combout\,
	cout => \caminho_de_dados|frame_timer|temp[3]~27\);

-- Location: LCFF_X27_Y21_N15
\caminho_de_dados|frame_timer|temp[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \game_clock~clkctrl_outclk\,
	datain => \caminho_de_dados|frame_timer|temp[3]~26_combout\,
	aclr => \controladora|ctrl_CLR_TIMER~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|frame_timer|temp\(3));

-- Location: LCCOMB_X27_Y21_N18
\caminho_de_dados|frame_timer|temp[5]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|frame_timer|temp[5]~30_combout\ = (\caminho_de_dados|frame_timer|temp\(5) & (\caminho_de_dados|frame_timer|temp[4]~29\ $ (GND))) # (!\caminho_de_dados|frame_timer|temp\(5) & (!\caminho_de_dados|frame_timer|temp[4]~29\ & VCC))
-- \caminho_de_dados|frame_timer|temp[5]~31\ = CARRY((\caminho_de_dados|frame_timer|temp\(5) & !\caminho_de_dados|frame_timer|temp[4]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \caminho_de_dados|frame_timer|temp\(5),
	datad => VCC,
	cin => \caminho_de_dados|frame_timer|temp[4]~29\,
	combout => \caminho_de_dados|frame_timer|temp[5]~30_combout\,
	cout => \caminho_de_dados|frame_timer|temp[5]~31\);

-- Location: LCFF_X27_Y21_N19
\caminho_de_dados|frame_timer|temp[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \game_clock~clkctrl_outclk\,
	datain => \caminho_de_dados|frame_timer|temp[5]~30_combout\,
	aclr => \controladora|ctrl_CLR_TIMER~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|frame_timer|temp\(5));

-- Location: LCCOMB_X27_Y21_N22
\caminho_de_dados|frame_timer|temp[7]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|frame_timer|temp[7]~34_combout\ = (\caminho_de_dados|frame_timer|temp\(7) & (\caminho_de_dados|frame_timer|temp[6]~33\ $ (GND))) # (!\caminho_de_dados|frame_timer|temp\(7) & (!\caminho_de_dados|frame_timer|temp[6]~33\ & VCC))
-- \caminho_de_dados|frame_timer|temp[7]~35\ = CARRY((\caminho_de_dados|frame_timer|temp\(7) & !\caminho_de_dados|frame_timer|temp[6]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \caminho_de_dados|frame_timer|temp\(7),
	datad => VCC,
	cin => \caminho_de_dados|frame_timer|temp[6]~33\,
	combout => \caminho_de_dados|frame_timer|temp[7]~34_combout\,
	cout => \caminho_de_dados|frame_timer|temp[7]~35\);

-- Location: LCFF_X27_Y21_N23
\caminho_de_dados|frame_timer|temp[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \game_clock~clkctrl_outclk\,
	datain => \caminho_de_dados|frame_timer|temp[7]~34_combout\,
	aclr => \controladora|ctrl_CLR_TIMER~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|frame_timer|temp\(7));

-- Location: LCCOMB_X27_Y21_N26
\caminho_de_dados|frame_timer|temp[9]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|frame_timer|temp[9]~38_combout\ = (\caminho_de_dados|frame_timer|temp\(9) & (\caminho_de_dados|frame_timer|temp[8]~37\ $ (GND))) # (!\caminho_de_dados|frame_timer|temp\(9) & (!\caminho_de_dados|frame_timer|temp[8]~37\ & VCC))
-- \caminho_de_dados|frame_timer|temp[9]~39\ = CARRY((\caminho_de_dados|frame_timer|temp\(9) & !\caminho_de_dados|frame_timer|temp[8]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \caminho_de_dados|frame_timer|temp\(9),
	datad => VCC,
	cin => \caminho_de_dados|frame_timer|temp[8]~37\,
	combout => \caminho_de_dados|frame_timer|temp[9]~38_combout\,
	cout => \caminho_de_dados|frame_timer|temp[9]~39\);

-- Location: LCFF_X27_Y21_N27
\caminho_de_dados|frame_timer|temp[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \game_clock~clkctrl_outclk\,
	datain => \caminho_de_dados|frame_timer|temp[9]~38_combout\,
	aclr => \controladora|ctrl_CLR_TIMER~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|frame_timer|temp\(9));

-- Location: LCCOMB_X27_Y21_N28
\caminho_de_dados|frame_timer|temp[10]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|frame_timer|temp[10]~40_combout\ = (\caminho_de_dados|frame_timer|temp\(10) & (!\caminho_de_dados|frame_timer|temp[9]~39\)) # (!\caminho_de_dados|frame_timer|temp\(10) & ((\caminho_de_dados|frame_timer|temp[9]~39\) # (GND)))
-- \caminho_de_dados|frame_timer|temp[10]~41\ = CARRY((!\caminho_de_dados|frame_timer|temp[9]~39\) # (!\caminho_de_dados|frame_timer|temp\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \caminho_de_dados|frame_timer|temp\(10),
	datad => VCC,
	cin => \caminho_de_dados|frame_timer|temp[9]~39\,
	combout => \caminho_de_dados|frame_timer|temp[10]~40_combout\,
	cout => \caminho_de_dados|frame_timer|temp[10]~41\);

-- Location: LCFF_X27_Y21_N29
\caminho_de_dados|frame_timer|temp[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \game_clock~clkctrl_outclk\,
	datain => \caminho_de_dados|frame_timer|temp[10]~40_combout\,
	aclr => \controladora|ctrl_CLR_TIMER~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|frame_timer|temp\(10));

-- Location: LCCOMB_X27_Y21_N30
\caminho_de_dados|frame_timer|temp[11]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|frame_timer|temp[11]~42_combout\ = (\caminho_de_dados|frame_timer|temp\(11) & (\caminho_de_dados|frame_timer|temp[10]~41\ $ (GND))) # (!\caminho_de_dados|frame_timer|temp\(11) & (!\caminho_de_dados|frame_timer|temp[10]~41\ & VCC))
-- \caminho_de_dados|frame_timer|temp[11]~43\ = CARRY((\caminho_de_dados|frame_timer|temp\(11) & !\caminho_de_dados|frame_timer|temp[10]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \caminho_de_dados|frame_timer|temp\(11),
	datad => VCC,
	cin => \caminho_de_dados|frame_timer|temp[10]~41\,
	combout => \caminho_de_dados|frame_timer|temp[11]~42_combout\,
	cout => \caminho_de_dados|frame_timer|temp[11]~43\);

-- Location: LCFF_X27_Y21_N31
\caminho_de_dados|frame_timer|temp[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \game_clock~clkctrl_outclk\,
	datain => \caminho_de_dados|frame_timer|temp[11]~42_combout\,
	aclr => \controladora|ctrl_CLR_TIMER~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|frame_timer|temp\(11));

-- Location: LCCOMB_X27_Y20_N0
\caminho_de_dados|frame_timer|temp[12]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|frame_timer|temp[12]~44_combout\ = (\caminho_de_dados|frame_timer|temp\(12) & (!\caminho_de_dados|frame_timer|temp[11]~43\)) # (!\caminho_de_dados|frame_timer|temp\(12) & ((\caminho_de_dados|frame_timer|temp[11]~43\) # (GND)))
-- \caminho_de_dados|frame_timer|temp[12]~45\ = CARRY((!\caminho_de_dados|frame_timer|temp[11]~43\) # (!\caminho_de_dados|frame_timer|temp\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \caminho_de_dados|frame_timer|temp\(12),
	datad => VCC,
	cin => \caminho_de_dados|frame_timer|temp[11]~43\,
	combout => \caminho_de_dados|frame_timer|temp[12]~44_combout\,
	cout => \caminho_de_dados|frame_timer|temp[12]~45\);

-- Location: LCFF_X27_Y20_N1
\caminho_de_dados|frame_timer|temp[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \game_clock~clkctrl_outclk\,
	datain => \caminho_de_dados|frame_timer|temp[12]~44_combout\,
	aclr => \controladora|ctrl_CLR_TIMER~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|frame_timer|temp\(12));

-- Location: LCCOMB_X27_Y20_N2
\caminho_de_dados|frame_timer|temp[13]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|frame_timer|temp[13]~46_combout\ = (\caminho_de_dados|frame_timer|temp\(13) & (\caminho_de_dados|frame_timer|temp[12]~45\ $ (GND))) # (!\caminho_de_dados|frame_timer|temp\(13) & (!\caminho_de_dados|frame_timer|temp[12]~45\ & VCC))
-- \caminho_de_dados|frame_timer|temp[13]~47\ = CARRY((\caminho_de_dados|frame_timer|temp\(13) & !\caminho_de_dados|frame_timer|temp[12]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \caminho_de_dados|frame_timer|temp\(13),
	datad => VCC,
	cin => \caminho_de_dados|frame_timer|temp[12]~45\,
	combout => \caminho_de_dados|frame_timer|temp[13]~46_combout\,
	cout => \caminho_de_dados|frame_timer|temp[13]~47\);

-- Location: LCFF_X27_Y20_N3
\caminho_de_dados|frame_timer|temp[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \game_clock~clkctrl_outclk\,
	datain => \caminho_de_dados|frame_timer|temp[13]~46_combout\,
	aclr => \controladora|ctrl_CLR_TIMER~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|frame_timer|temp\(13));

-- Location: LCCOMB_X27_Y20_N4
\caminho_de_dados|frame_timer|temp[14]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|frame_timer|temp[14]~48_combout\ = (\caminho_de_dados|frame_timer|temp\(14) & (!\caminho_de_dados|frame_timer|temp[13]~47\)) # (!\caminho_de_dados|frame_timer|temp\(14) & ((\caminho_de_dados|frame_timer|temp[13]~47\) # (GND)))
-- \caminho_de_dados|frame_timer|temp[14]~49\ = CARRY((!\caminho_de_dados|frame_timer|temp[13]~47\) # (!\caminho_de_dados|frame_timer|temp\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \caminho_de_dados|frame_timer|temp\(14),
	datad => VCC,
	cin => \caminho_de_dados|frame_timer|temp[13]~47\,
	combout => \caminho_de_dados|frame_timer|temp[14]~48_combout\,
	cout => \caminho_de_dados|frame_timer|temp[14]~49\);

-- Location: LCFF_X27_Y20_N5
\caminho_de_dados|frame_timer|temp[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \game_clock~clkctrl_outclk\,
	datain => \caminho_de_dados|frame_timer|temp[14]~48_combout\,
	aclr => \controladora|ctrl_CLR_TIMER~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|frame_timer|temp\(14));

-- Location: LCCOMB_X27_Y20_N8
\caminho_de_dados|frame_timer|temp[16]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|frame_timer|temp[16]~52_combout\ = (\caminho_de_dados|frame_timer|temp\(16) & (!\caminho_de_dados|frame_timer|temp[15]~51\)) # (!\caminho_de_dados|frame_timer|temp\(16) & ((\caminho_de_dados|frame_timer|temp[15]~51\) # (GND)))
-- \caminho_de_dados|frame_timer|temp[16]~53\ = CARRY((!\caminho_de_dados|frame_timer|temp[15]~51\) # (!\caminho_de_dados|frame_timer|temp\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \caminho_de_dados|frame_timer|temp\(16),
	datad => VCC,
	cin => \caminho_de_dados|frame_timer|temp[15]~51\,
	combout => \caminho_de_dados|frame_timer|temp[16]~52_combout\,
	cout => \caminho_de_dados|frame_timer|temp[16]~53\);

-- Location: LCFF_X27_Y20_N9
\caminho_de_dados|frame_timer|temp[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \game_clock~clkctrl_outclk\,
	datain => \caminho_de_dados|frame_timer|temp[16]~52_combout\,
	aclr => \controladora|ctrl_CLR_TIMER~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|frame_timer|temp\(16));

-- Location: LCCOMB_X27_Y20_N14
\caminho_de_dados|frame_timer|temp[19]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|frame_timer|temp[19]~58_combout\ = (\caminho_de_dados|frame_timer|temp\(19) & (\caminho_de_dados|frame_timer|temp[18]~57\ $ (GND))) # (!\caminho_de_dados|frame_timer|temp\(19) & (!\caminho_de_dados|frame_timer|temp[18]~57\ & VCC))
-- \caminho_de_dados|frame_timer|temp[19]~59\ = CARRY((\caminho_de_dados|frame_timer|temp\(19) & !\caminho_de_dados|frame_timer|temp[18]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \caminho_de_dados|frame_timer|temp\(19),
	datad => VCC,
	cin => \caminho_de_dados|frame_timer|temp[18]~57\,
	combout => \caminho_de_dados|frame_timer|temp[19]~58_combout\,
	cout => \caminho_de_dados|frame_timer|temp[19]~59\);

-- Location: LCFF_X27_Y20_N15
\caminho_de_dados|frame_timer|temp[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \game_clock~clkctrl_outclk\,
	datain => \caminho_de_dados|frame_timer|temp[19]~58_combout\,
	aclr => \controladora|ctrl_CLR_TIMER~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|frame_timer|temp\(19));

-- Location: LCCOMB_X27_Y20_N18
\caminho_de_dados|frame_timer|temp[21]~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|frame_timer|temp[21]~62_combout\ = (\caminho_de_dados|frame_timer|temp\(21) & (\caminho_de_dados|frame_timer|temp[20]~61\ $ (GND))) # (!\caminho_de_dados|frame_timer|temp\(21) & (!\caminho_de_dados|frame_timer|temp[20]~61\ & VCC))
-- \caminho_de_dados|frame_timer|temp[21]~63\ = CARRY((\caminho_de_dados|frame_timer|temp\(21) & !\caminho_de_dados|frame_timer|temp[20]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \caminho_de_dados|frame_timer|temp\(21),
	datad => VCC,
	cin => \caminho_de_dados|frame_timer|temp[20]~61\,
	combout => \caminho_de_dados|frame_timer|temp[21]~62_combout\,
	cout => \caminho_de_dados|frame_timer|temp[21]~63\);

-- Location: LCFF_X27_Y20_N19
\caminho_de_dados|frame_timer|temp[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \game_clock~clkctrl_outclk\,
	datain => \caminho_de_dados|frame_timer|temp[21]~62_combout\,
	aclr => \controladora|ctrl_CLR_TIMER~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|frame_timer|temp\(21));

-- Location: LCCOMB_X27_Y20_N20
\caminho_de_dados|frame_timer|temp[22]~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|frame_timer|temp[22]~64_combout\ = \caminho_de_dados|frame_timer|temp\(22) $ (\caminho_de_dados|frame_timer|temp[21]~63\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|frame_timer|temp\(22),
	cin => \caminho_de_dados|frame_timer|temp[21]~63\,
	combout => \caminho_de_dados|frame_timer|temp[22]~64_combout\);

-- Location: LCFF_X27_Y20_N21
\caminho_de_dados|frame_timer|temp[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \game_clock~clkctrl_outclk\,
	datain => \caminho_de_dados|frame_timer|temp[22]~64_combout\,
	aclr => \controladora|ctrl_CLR_TIMER~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|frame_timer|temp\(22));

-- Location: LCCOMB_X28_Y22_N2
\caminho_de_dados|contador_moedas_1|cnt[6]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|contador_moedas_1|cnt[6]~17_combout\ = (!\caminho_de_dados|contador_moedas_1|LessThan0~1_combout\ & \controladora|estado_atual.s2~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \caminho_de_dados|contador_moedas_1|LessThan0~1_combout\,
	datad => \controladora|estado_atual.s2~regout\,
	combout => \caminho_de_dados|contador_moedas_1|cnt[6]~17_combout\);

-- Location: LCCOMB_X29_Y22_N6
\caminho_de_dados|contador_moedas_1|cnt[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|contador_moedas_1|cnt[1]~4_combout\ = (!\caminho_de_dados|contador_moedas_1|cnt[6]~17_combout\ & ((\caminho_de_dados|contador_moedas_1|LessThan0~1_combout\) # (\caminho_de_dados|contador_moedas_1|cnt[1]~_emulated_regout\ $ 
-- (\caminho_de_dados|contador_moedas_1|cnt[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|contador_moedas_1|cnt[1]~_emulated_regout\,
	datab => \caminho_de_dados|contador_moedas_1|cnt[0]~1_combout\,
	datac => \caminho_de_dados|contador_moedas_1|LessThan0~1_combout\,
	datad => \caminho_de_dados|contador_moedas_1|cnt[6]~17_combout\,
	combout => \caminho_de_dados|contador_moedas_1|cnt[1]~4_combout\);

-- Location: LCCOMB_X32_Y22_N2
\caminho_de_dados|contador_moedas_1|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|contador_moedas_1|Add0~2_combout\ = (\caminho_de_dados|contador_moedas_1|cnt\(2) & (!\caminho_de_dados|contador_moedas_1|Add0~1\)) # (!\caminho_de_dados|contador_moedas_1|cnt\(2) & ((\caminho_de_dados|contador_moedas_1|Add0~1\) # (GND)))
-- \caminho_de_dados|contador_moedas_1|Add0~3\ = CARRY((!\caminho_de_dados|contador_moedas_1|Add0~1\) # (!\caminho_de_dados|contador_moedas_1|cnt\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \caminho_de_dados|contador_moedas_1|cnt\(2),
	datad => VCC,
	cin => \caminho_de_dados|contador_moedas_1|Add0~1\,
	combout => \caminho_de_dados|contador_moedas_1|Add0~2_combout\,
	cout => \caminho_de_dados|contador_moedas_1|Add0~3\);

-- Location: LCCOMB_X32_Y22_N12
\caminho_de_dados|contador_moedas_1|cnt[4]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|contador_moedas_1|cnt[4]~16_combout\ = (\controladora|estado_atual.s2~regout\) # (\caminho_de_dados|contador_moedas_1|LessThan0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controladora|estado_atual.s2~regout\,
	datad => \caminho_de_dados|contador_moedas_1|LessThan0~1_combout\,
	combout => \caminho_de_dados|contador_moedas_1|cnt[4]~16_combout\);

-- Location: LCCOMB_X30_Y21_N10
\controladora|prox_estado.s6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controladora|prox_estado.s6~0_combout\ = (\controladora|estado_atual.s5~regout\ & !\caminho_de_dados|player_reg|qi~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controladora|estado_atual.s5~regout\,
	datad => \caminho_de_dados|player_reg|qi~2_combout\,
	combout => \controladora|prox_estado.s6~0_combout\);

-- Location: LCFF_X30_Y21_N11
\controladora|estado_atual.s6\ : cycloneii_lcell_ff
PORT MAP (
	clk => \game_clock~clkctrl_outclk\,
	datain => \controladora|prox_estado.s6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controladora|estado_atual.s6~regout\);

-- Location: LCFF_X32_Y22_N3
\caminho_de_dados|contador_moedas_1|cnt[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \game_clock~clkctrl_outclk\,
	datain => \caminho_de_dados|contador_moedas_1|Add0~2_combout\,
	aclr => \caminho_de_dados|contador_moedas_1|cnt[4]~16_combout\,
	ena => \controladora|estado_atual.s6~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|contador_moedas_1|cnt\(2));

-- Location: LCCOMB_X32_Y22_N4
\caminho_de_dados|contador_moedas_1|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|contador_moedas_1|Add0~4_combout\ = (\caminho_de_dados|contador_moedas_1|cnt\(3) & (\caminho_de_dados|contador_moedas_1|Add0~3\ $ (GND))) # (!\caminho_de_dados|contador_moedas_1|cnt\(3) & (!\caminho_de_dados|contador_moedas_1|Add0~3\ & 
-- VCC))
-- \caminho_de_dados|contador_moedas_1|Add0~5\ = CARRY((\caminho_de_dados|contador_moedas_1|cnt\(3) & !\caminho_de_dados|contador_moedas_1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \caminho_de_dados|contador_moedas_1|cnt\(3),
	datad => VCC,
	cin => \caminho_de_dados|contador_moedas_1|Add0~3\,
	combout => \caminho_de_dados|contador_moedas_1|Add0~4_combout\,
	cout => \caminho_de_dados|contador_moedas_1|Add0~5\);

-- Location: LCFF_X32_Y22_N5
\caminho_de_dados|contador_moedas_1|cnt[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \game_clock~clkctrl_outclk\,
	datain => \caminho_de_dados|contador_moedas_1|Add0~4_combout\,
	aclr => \caminho_de_dados|contador_moedas_1|cnt[4]~16_combout\,
	ena => \controladora|estado_atual.s6~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|contador_moedas_1|cnt\(3));

-- Location: LCCOMB_X32_Y22_N6
\caminho_de_dados|contador_moedas_1|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|contador_moedas_1|Add0~6_combout\ = (\caminho_de_dados|contador_moedas_1|cnt\(4) & (!\caminho_de_dados|contador_moedas_1|Add0~5\)) # (!\caminho_de_dados|contador_moedas_1|cnt\(4) & ((\caminho_de_dados|contador_moedas_1|Add0~5\) # (GND)))
-- \caminho_de_dados|contador_moedas_1|Add0~7\ = CARRY((!\caminho_de_dados|contador_moedas_1|Add0~5\) # (!\caminho_de_dados|contador_moedas_1|cnt\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|contador_moedas_1|cnt\(4),
	datad => VCC,
	cin => \caminho_de_dados|contador_moedas_1|Add0~5\,
	combout => \caminho_de_dados|contador_moedas_1|Add0~6_combout\,
	cout => \caminho_de_dados|contador_moedas_1|Add0~7\);

-- Location: LCCOMB_X32_Y22_N8
\caminho_de_dados|contador_moedas_1|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|contador_moedas_1|Add0~8_combout\ = (\caminho_de_dados|contador_moedas_1|cnt[5]~6_combout\ & (\caminho_de_dados|contador_moedas_1|Add0~7\ $ (GND))) # (!\caminho_de_dados|contador_moedas_1|cnt[5]~6_combout\ & 
-- (!\caminho_de_dados|contador_moedas_1|Add0~7\ & VCC))
-- \caminho_de_dados|contador_moedas_1|Add0~9\ = CARRY((\caminho_de_dados|contador_moedas_1|cnt[5]~6_combout\ & !\caminho_de_dados|contador_moedas_1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \caminho_de_dados|contador_moedas_1|cnt[5]~6_combout\,
	datad => VCC,
	cin => \caminho_de_dados|contador_moedas_1|Add0~7\,
	combout => \caminho_de_dados|contador_moedas_1|Add0~8_combout\,
	cout => \caminho_de_dados|contador_moedas_1|Add0~9\);

-- Location: LCCOMB_X29_Y22_N12
\caminho_de_dados|contador_moedas_1|cnt[5]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|contador_moedas_1|cnt[5]~7_combout\ = \caminho_de_dados|contador_moedas_1|cnt[0]~1_combout\ $ (\caminho_de_dados|contador_moedas_1|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \caminho_de_dados|contador_moedas_1|cnt[0]~1_combout\,
	datad => \caminho_de_dados|contador_moedas_1|Add0~8_combout\,
	combout => \caminho_de_dados|contador_moedas_1|cnt[5]~7_combout\);

-- Location: LCCOMB_X29_Y22_N18
\caminho_de_dados|contador_moedas_1|cnt[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|contador_moedas_1|cnt[0]~0_combout\ = (\caminho_de_dados|contador_moedas_1|LessThan0~1_combout\) # (\caminho_de_dados|contador_moedas_1|cnt[6]~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \caminho_de_dados|contador_moedas_1|LessThan0~1_combout\,
	datad => \caminho_de_dados|contador_moedas_1|cnt[6]~17_combout\,
	combout => \caminho_de_dados|contador_moedas_1|cnt[0]~0_combout\);

-- Location: LCFF_X29_Y22_N13
\caminho_de_dados|contador_moedas_1|cnt[5]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \game_clock~clkctrl_outclk\,
	datain => \caminho_de_dados|contador_moedas_1|cnt[5]~7_combout\,
	aclr => \caminho_de_dados|contador_moedas_1|cnt[0]~0_combout\,
	ena => \controladora|estado_atual.s6~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|contador_moedas_1|cnt[5]~_emulated_regout\);

-- Location: LCCOMB_X29_Y22_N8
\caminho_de_dados|contador_moedas_1|cnt[5]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|contador_moedas_1|cnt[5]~6_combout\ = (!\caminho_de_dados|contador_moedas_1|cnt[6]~17_combout\ & ((\caminho_de_dados|contador_moedas_1|LessThan0~1_combout\) # (\caminho_de_dados|contador_moedas_1|cnt[0]~1_combout\ $ 
-- (\caminho_de_dados|contador_moedas_1|cnt[5]~_emulated_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|contador_moedas_1|cnt[6]~17_combout\,
	datab => \caminho_de_dados|contador_moedas_1|cnt[0]~1_combout\,
	datac => \caminho_de_dados|contador_moedas_1|LessThan0~1_combout\,
	datad => \caminho_de_dados|contador_moedas_1|cnt[5]~_emulated_regout\,
	combout => \caminho_de_dados|contador_moedas_1|cnt[5]~6_combout\);

-- Location: LCCOMB_X32_Y22_N28
\caminho_de_dados|contador_moedas_1|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|contador_moedas_1|LessThan0~0_combout\ = (\caminho_de_dados|contador_moedas_1|cnt[5]~6_combout\ & ((\caminho_de_dados|contador_moedas_1|cnt\(4)) # ((\caminho_de_dados|contador_moedas_1|cnt\(3)) # 
-- (\caminho_de_dados|contador_moedas_1|cnt\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|contador_moedas_1|cnt\(4),
	datab => \caminho_de_dados|contador_moedas_1|cnt[5]~6_combout\,
	datac => \caminho_de_dados|contador_moedas_1|cnt\(3),
	datad => \caminho_de_dados|contador_moedas_1|cnt\(2),
	combout => \caminho_de_dados|contador_moedas_1|LessThan0~0_combout\);

-- Location: LCCOMB_X29_Y22_N14
\caminho_de_dados|contador_moedas_1|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|contador_moedas_1|LessThan0~1_combout\ = (\caminho_de_dados|contador_moedas_1|cnt[6]~8_combout\ & \caminho_de_dados|contador_moedas_1|LessThan0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \caminho_de_dados|contador_moedas_1|cnt[6]~8_combout\,
	datad => \caminho_de_dados|contador_moedas_1|LessThan0~0_combout\,
	combout => \caminho_de_dados|contador_moedas_1|LessThan0~1_combout\);

-- Location: LCCOMB_X29_Y22_N2
\caminho_de_dados|contador_moedas_1|cnt[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|contador_moedas_1|cnt[0]~1_combout\ = (!\caminho_de_dados|contador_moedas_1|cnt[6]~17_combout\ & ((\caminho_de_dados|contador_moedas_1|LessThan0~1_combout\) # (\caminho_de_dados|contador_moedas_1|cnt[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|contador_moedas_1|cnt[6]~17_combout\,
	datab => \caminho_de_dados|contador_moedas_1|LessThan0~1_combout\,
	datad => \caminho_de_dados|contador_moedas_1|cnt[0]~1_combout\,
	combout => \caminho_de_dados|contador_moedas_1|cnt[0]~1_combout\);

-- Location: LCCOMB_X32_Y22_N10
\caminho_de_dados|contador_moedas_1|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|contador_moedas_1|Add0~10_combout\ = \caminho_de_dados|contador_moedas_1|Add0~9\ $ (\caminho_de_dados|contador_moedas_1|cnt[6]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \caminho_de_dados|contador_moedas_1|cnt[6]~8_combout\,
	cin => \caminho_de_dados|contador_moedas_1|Add0~9\,
	combout => \caminho_de_dados|contador_moedas_1|Add0~10_combout\);

-- Location: LCCOMB_X29_Y22_N28
\caminho_de_dados|contador_moedas_1|cnt[6]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|contador_moedas_1|cnt[6]~9_combout\ = \caminho_de_dados|contador_moedas_1|cnt[0]~1_combout\ $ (\caminho_de_dados|contador_moedas_1|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \caminho_de_dados|contador_moedas_1|cnt[0]~1_combout\,
	datad => \caminho_de_dados|contador_moedas_1|Add0~10_combout\,
	combout => \caminho_de_dados|contador_moedas_1|cnt[6]~9_combout\);

-- Location: LCFF_X29_Y22_N29
\caminho_de_dados|contador_moedas_1|cnt[6]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \game_clock~clkctrl_outclk\,
	datain => \caminho_de_dados|contador_moedas_1|cnt[6]~9_combout\,
	aclr => \caminho_de_dados|contador_moedas_1|cnt[0]~0_combout\,
	ena => \controladora|estado_atual.s6~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|contador_moedas_1|cnt[6]~_emulated_regout\);

-- Location: LCCOMB_X29_Y22_N30
\caminho_de_dados|contador_moedas_1|cnt[6]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|contador_moedas_1|cnt[6]~8_combout\ = (!\caminho_de_dados|contador_moedas_1|cnt[6]~17_combout\ & ((\caminho_de_dados|contador_moedas_1|LessThan0~1_combout\) # (\caminho_de_dados|contador_moedas_1|cnt[0]~1_combout\ $ 
-- (\caminho_de_dados|contador_moedas_1|cnt[6]~_emulated_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|contador_moedas_1|cnt[6]~17_combout\,
	datab => \caminho_de_dados|contador_moedas_1|cnt[0]~1_combout\,
	datac => \caminho_de_dados|contador_moedas_1|LessThan0~1_combout\,
	datad => \caminho_de_dados|contador_moedas_1|cnt[6]~_emulated_regout\,
	combout => \caminho_de_dados|contador_moedas_1|cnt[6]~8_combout\);

-- Location: LCCOMB_X30_Y22_N0
\caminho_de_dados|comparador_moedas|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|comparador_moedas|Equal0~3_combout\ = \caminho_de_dados|contador_moedas_1|cnt[6]~8_combout\ $ (\caminho_de_dados|contador_moedas_2|cnt[6]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \caminho_de_dados|contador_moedas_1|cnt[6]~8_combout\,
	datad => \caminho_de_dados|contador_moedas_2|cnt[6]~8_combout\,
	combout => \caminho_de_dados|comparador_moedas|Equal0~3_combout\);

-- Location: LCCOMB_X32_Y22_N20
\caminho_de_dados|contador_moedas_2|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|contador_moedas_2|Add0~4_combout\ = (\caminho_de_dados|contador_moedas_2|cnt\(3) & (\caminho_de_dados|contador_moedas_2|Add0~3\ $ (GND))) # (!\caminho_de_dados|contador_moedas_2|cnt\(3) & (!\caminho_de_dados|contador_moedas_2|Add0~3\ & 
-- VCC))
-- \caminho_de_dados|contador_moedas_2|Add0~5\ = CARRY((\caminho_de_dados|contador_moedas_2|cnt\(3) & !\caminho_de_dados|contador_moedas_2|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|contador_moedas_2|cnt\(3),
	datad => VCC,
	cin => \caminho_de_dados|contador_moedas_2|Add0~3\,
	combout => \caminho_de_dados|contador_moedas_2|Add0~4_combout\,
	cout => \caminho_de_dados|contador_moedas_2|Add0~5\);

-- Location: LCFF_X32_Y22_N21
\caminho_de_dados|contador_moedas_2|cnt[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \game_clock~clkctrl_outclk\,
	datain => \caminho_de_dados|contador_moedas_2|Add0~4_combout\,
	aclr => \caminho_de_dados|contador_moedas_2|cnt[4]~16_combout\,
	ena => \controladora|estado_atual.s7~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|contador_moedas_2|cnt\(3));

-- Location: LCCOMB_X30_Y22_N8
\caminho_de_dados|comparador_moedas|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|comparador_moedas|Equal0~1_combout\ = (\caminho_de_dados|contador_moedas_2|cnt\(2) & (\caminho_de_dados|contador_moedas_1|cnt\(2) & (\caminho_de_dados|contador_moedas_1|cnt\(3) $ (!\caminho_de_dados|contador_moedas_2|cnt\(3))))) # 
-- (!\caminho_de_dados|contador_moedas_2|cnt\(2) & (!\caminho_de_dados|contador_moedas_1|cnt\(2) & (\caminho_de_dados|contador_moedas_1|cnt\(3) $ (!\caminho_de_dados|contador_moedas_2|cnt\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|contador_moedas_2|cnt\(2),
	datab => \caminho_de_dados|contador_moedas_1|cnt\(3),
	datac => \caminho_de_dados|contador_moedas_1|cnt\(2),
	datad => \caminho_de_dados|contador_moedas_2|cnt\(3),
	combout => \caminho_de_dados|comparador_moedas|Equal0~1_combout\);

-- Location: LCCOMB_X29_Y22_N22
\caminho_de_dados|contador_moedas_1|cnt[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|contador_moedas_1|cnt[0]~2_combout\ = (!\caminho_de_dados|contador_moedas_1|cnt[6]~17_combout\ & ((\caminho_de_dados|contador_moedas_1|LessThan0~1_combout\) # (\caminho_de_dados|contador_moedas_1|cnt[0]~_emulated_regout\ $ 
-- (\caminho_de_dados|contador_moedas_1|cnt[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|contador_moedas_1|cnt[0]~_emulated_regout\,
	datab => \caminho_de_dados|contador_moedas_1|cnt[0]~1_combout\,
	datac => \caminho_de_dados|contador_moedas_1|LessThan0~1_combout\,
	datad => \caminho_de_dados|contador_moedas_1|cnt[6]~17_combout\,
	combout => \caminho_de_dados|contador_moedas_1|cnt[0]~2_combout\);

-- Location: LCCOMB_X30_Y22_N30
\caminho_de_dados|contador_moedas_2|cnt[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|contador_moedas_2|cnt[0]~3_combout\ = \caminho_de_dados|contador_moedas_2|cnt[0]~1_combout\ $ (!\caminho_de_dados|contador_moedas_2|cnt[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \caminho_de_dados|contador_moedas_2|cnt[0]~1_combout\,
	datac => \caminho_de_dados|contador_moedas_2|cnt[0]~2_combout\,
	combout => \caminho_de_dados|contador_moedas_2|cnt[0]~3_combout\);

-- Location: LCCOMB_X31_Y22_N4
\caminho_de_dados|contador_moedas_2|cnt[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|contador_moedas_2|cnt[0]~0_combout\ = (\caminho_de_dados|contador_moedas_2|cnt[6]~17_combout\) # (\caminho_de_dados|contador_moedas_2|LessThan0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \caminho_de_dados|contador_moedas_2|cnt[6]~17_combout\,
	datad => \caminho_de_dados|contador_moedas_2|LessThan0~1_combout\,
	combout => \caminho_de_dados|contador_moedas_2|cnt[0]~0_combout\);

-- Location: LCFF_X31_Y22_N25
\caminho_de_dados|contador_moedas_2|cnt[0]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \game_clock~clkctrl_outclk\,
	sdata => \caminho_de_dados|contador_moedas_2|cnt[0]~3_combout\,
	aclr => \caminho_de_dados|contador_moedas_2|cnt[0]~0_combout\,
	sload => VCC,
	ena => \controladora|estado_atual.s7~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|contador_moedas_2|cnt[0]~_emulated_regout\);

-- Location: LCCOMB_X31_Y22_N30
\caminho_de_dados|contador_moedas_2|cnt[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|contador_moedas_2|cnt[0]~2_combout\ = (!\caminho_de_dados|contador_moedas_2|cnt[6]~17_combout\ & ((\caminho_de_dados|contador_moedas_2|LessThan0~1_combout\) # (\caminho_de_dados|contador_moedas_2|cnt[0]~1_combout\ $ 
-- (\caminho_de_dados|contador_moedas_2|cnt[0]~_emulated_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|contador_moedas_2|cnt[6]~17_combout\,
	datab => \caminho_de_dados|contador_moedas_2|cnt[0]~1_combout\,
	datac => \caminho_de_dados|contador_moedas_2|cnt[0]~_emulated_regout\,
	datad => \caminho_de_dados|contador_moedas_2|LessThan0~1_combout\,
	combout => \caminho_de_dados|contador_moedas_2|cnt[0]~2_combout\);

-- Location: LCCOMB_X30_Y22_N6
\caminho_de_dados|comparador_moedas|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|comparador_moedas|Equal0~0_combout\ = (\caminho_de_dados|contador_moedas_1|cnt[1]~4_combout\ & (\caminho_de_dados|contador_moedas_2|cnt[1]~4_combout\ & (\caminho_de_dados|contador_moedas_1|cnt[0]~2_combout\ $ 
-- (!\caminho_de_dados|contador_moedas_2|cnt[0]~2_combout\)))) # (!\caminho_de_dados|contador_moedas_1|cnt[1]~4_combout\ & (!\caminho_de_dados|contador_moedas_2|cnt[1]~4_combout\ & (\caminho_de_dados|contador_moedas_1|cnt[0]~2_combout\ $ 
-- (!\caminho_de_dados|contador_moedas_2|cnt[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|contador_moedas_1|cnt[1]~4_combout\,
	datab => \caminho_de_dados|contador_moedas_2|cnt[1]~4_combout\,
	datac => \caminho_de_dados|contador_moedas_1|cnt[0]~2_combout\,
	datad => \caminho_de_dados|contador_moedas_2|cnt[0]~2_combout\,
	combout => \caminho_de_dados|comparador_moedas|Equal0~0_combout\);

-- Location: LCCOMB_X30_Y22_N4
\caminho_de_dados|comparador_moedas|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|comparador_moedas|Equal0~4_combout\ = (\caminho_de_dados|comparador_moedas|Equal0~2_combout\ & (!\caminho_de_dados|comparador_moedas|Equal0~3_combout\ & (\caminho_de_dados|comparador_moedas|Equal0~1_combout\ & 
-- \caminho_de_dados|comparador_moedas|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|comparador_moedas|Equal0~2_combout\,
	datab => \caminho_de_dados|comparador_moedas|Equal0~3_combout\,
	datac => \caminho_de_dados|comparador_moedas|Equal0~1_combout\,
	datad => \caminho_de_dados|comparador_moedas|Equal0~0_combout\,
	combout => \caminho_de_dados|comparador_moedas|Equal0~4_combout\);

-- Location: LCCOMB_X28_Y21_N24
\controladora|Selector8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controladora|Selector8~0_combout\ = (\controladora|estado_atual.s19~regout\ & (((\controladora|estado_atual.s8~regout\ & !\caminho_de_dados|sr_obstaculo|instancia0_reg|tmp\(16))) # (!\caminho_de_dados|start_reg|qi~2_combout\))) # 
-- (!\controladora|estado_atual.s19~regout\ & (((\controladora|estado_atual.s8~regout\ & !\caminho_de_dados|sr_obstaculo|instancia0_reg|tmp\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controladora|estado_atual.s19~regout\,
	datab => \caminho_de_dados|start_reg|qi~2_combout\,
	datac => \controladora|estado_atual.s8~regout\,
	datad => \caminho_de_dados|sr_obstaculo|instancia0_reg|tmp\(16),
	combout => \controladora|Selector8~0_combout\);

-- Location: LCCOMB_X32_Y22_N22
\caminho_de_dados|contador_moedas_2|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|contador_moedas_2|Add0~6_combout\ = (\caminho_de_dados|contador_moedas_2|cnt\(4) & (!\caminho_de_dados|contador_moedas_2|Add0~5\)) # (!\caminho_de_dados|contador_moedas_2|cnt\(4) & ((\caminho_de_dados|contador_moedas_2|Add0~5\) # (GND)))
-- \caminho_de_dados|contador_moedas_2|Add0~7\ = CARRY((!\caminho_de_dados|contador_moedas_2|Add0~5\) # (!\caminho_de_dados|contador_moedas_2|cnt\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \caminho_de_dados|contador_moedas_2|cnt\(4),
	datad => VCC,
	cin => \caminho_de_dados|contador_moedas_2|Add0~5\,
	combout => \caminho_de_dados|contador_moedas_2|Add0~6_combout\,
	cout => \caminho_de_dados|contador_moedas_2|Add0~7\);

-- Location: LCFF_X32_Y22_N23
\caminho_de_dados|contador_moedas_2|cnt[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \game_clock~clkctrl_outclk\,
	datain => \caminho_de_dados|contador_moedas_2|Add0~6_combout\,
	aclr => \caminho_de_dados|contador_moedas_2|cnt[4]~16_combout\,
	ena => \controladora|estado_atual.s7~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|contador_moedas_2|cnt\(4));

-- Location: LCCOMB_X32_Y22_N24
\caminho_de_dados|contador_moedas_2|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|contador_moedas_2|Add0~8_combout\ = (\caminho_de_dados|contador_moedas_2|cnt[5]~6_combout\ & (\caminho_de_dados|contador_moedas_2|Add0~7\ $ (GND))) # (!\caminho_de_dados|contador_moedas_2|cnt[5]~6_combout\ & 
-- (!\caminho_de_dados|contador_moedas_2|Add0~7\ & VCC))
-- \caminho_de_dados|contador_moedas_2|Add0~9\ = CARRY((\caminho_de_dados|contador_moedas_2|cnt[5]~6_combout\ & !\caminho_de_dados|contador_moedas_2|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|contador_moedas_2|cnt[5]~6_combout\,
	datad => VCC,
	cin => \caminho_de_dados|contador_moedas_2|Add0~7\,
	combout => \caminho_de_dados|contador_moedas_2|Add0~8_combout\,
	cout => \caminho_de_dados|contador_moedas_2|Add0~9\);

-- Location: LCCOMB_X31_Y22_N26
\caminho_de_dados|contador_moedas_2|cnt[5]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|contador_moedas_2|cnt[5]~7_combout\ = \caminho_de_dados|contador_moedas_2|cnt[0]~1_combout\ $ (\caminho_de_dados|contador_moedas_2|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \caminho_de_dados|contador_moedas_2|cnt[0]~1_combout\,
	datad => \caminho_de_dados|contador_moedas_2|Add0~8_combout\,
	combout => \caminho_de_dados|contador_moedas_2|cnt[5]~7_combout\);

-- Location: LCFF_X31_Y22_N27
\caminho_de_dados|contador_moedas_2|cnt[5]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \game_clock~clkctrl_outclk\,
	datain => \caminho_de_dados|contador_moedas_2|cnt[5]~7_combout\,
	aclr => \caminho_de_dados|contador_moedas_2|cnt[0]~0_combout\,
	ena => \controladora|estado_atual.s7~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|contador_moedas_2|cnt[5]~_emulated_regout\);

-- Location: LCCOMB_X31_Y22_N0
\caminho_de_dados|contador_moedas_2|cnt[5]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|contador_moedas_2|cnt[5]~6_combout\ = (!\caminho_de_dados|contador_moedas_2|cnt[6]~17_combout\ & ((\caminho_de_dados|contador_moedas_2|LessThan0~1_combout\) # (\caminho_de_dados|contador_moedas_2|cnt[0]~1_combout\ $ 
-- (\caminho_de_dados|contador_moedas_2|cnt[5]~_emulated_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|contador_moedas_2|LessThan0~1_combout\,
	datab => \caminho_de_dados|contador_moedas_2|cnt[0]~1_combout\,
	datac => \caminho_de_dados|contador_moedas_2|cnt[6]~17_combout\,
	datad => \caminho_de_dados|contador_moedas_2|cnt[5]~_emulated_regout\,
	combout => \caminho_de_dados|contador_moedas_2|cnt[5]~6_combout\);

-- Location: LCCOMB_X30_Y22_N10
\caminho_de_dados|comparador_moedas|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|comparador_moedas|LessThan0~1_cout\ = CARRY((\caminho_de_dados|contador_moedas_1|cnt[0]~2_combout\ & !\caminho_de_dados|contador_moedas_2|cnt[0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|contador_moedas_1|cnt[0]~2_combout\,
	datab => \caminho_de_dados|contador_moedas_2|cnt[0]~2_combout\,
	datad => VCC,
	cout => \caminho_de_dados|comparador_moedas|LessThan0~1_cout\);

-- Location: LCCOMB_X30_Y22_N12
\caminho_de_dados|comparador_moedas|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|comparador_moedas|LessThan0~3_cout\ = CARRY((\caminho_de_dados|contador_moedas_1|cnt[1]~4_combout\ & (\caminho_de_dados|contador_moedas_2|cnt[1]~4_combout\ & !\caminho_de_dados|comparador_moedas|LessThan0~1_cout\)) # 
-- (!\caminho_de_dados|contador_moedas_1|cnt[1]~4_combout\ & ((\caminho_de_dados|contador_moedas_2|cnt[1]~4_combout\) # (!\caminho_de_dados|comparador_moedas|LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|contador_moedas_1|cnt[1]~4_combout\,
	datab => \caminho_de_dados|contador_moedas_2|cnt[1]~4_combout\,
	datad => VCC,
	cin => \caminho_de_dados|comparador_moedas|LessThan0~1_cout\,
	cout => \caminho_de_dados|comparador_moedas|LessThan0~3_cout\);

-- Location: LCCOMB_X30_Y22_N14
\caminho_de_dados|comparador_moedas|LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|comparador_moedas|LessThan0~5_cout\ = CARRY((\caminho_de_dados|contador_moedas_2|cnt\(2) & (\caminho_de_dados|contador_moedas_1|cnt\(2) & !\caminho_de_dados|comparador_moedas|LessThan0~3_cout\)) # 
-- (!\caminho_de_dados|contador_moedas_2|cnt\(2) & ((\caminho_de_dados|contador_moedas_1|cnt\(2)) # (!\caminho_de_dados|comparador_moedas|LessThan0~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|contador_moedas_2|cnt\(2),
	datab => \caminho_de_dados|contador_moedas_1|cnt\(2),
	datad => VCC,
	cin => \caminho_de_dados|comparador_moedas|LessThan0~3_cout\,
	cout => \caminho_de_dados|comparador_moedas|LessThan0~5_cout\);

-- Location: LCCOMB_X30_Y22_N16
\caminho_de_dados|comparador_moedas|LessThan0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|comparador_moedas|LessThan0~7_cout\ = CARRY((\caminho_de_dados|contador_moedas_2|cnt\(3) & ((!\caminho_de_dados|comparador_moedas|LessThan0~5_cout\) # (!\caminho_de_dados|contador_moedas_1|cnt\(3)))) # 
-- (!\caminho_de_dados|contador_moedas_2|cnt\(3) & (!\caminho_de_dados|contador_moedas_1|cnt\(3) & !\caminho_de_dados|comparador_moedas|LessThan0~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|contador_moedas_2|cnt\(3),
	datab => \caminho_de_dados|contador_moedas_1|cnt\(3),
	datad => VCC,
	cin => \caminho_de_dados|comparador_moedas|LessThan0~5_cout\,
	cout => \caminho_de_dados|comparador_moedas|LessThan0~7_cout\);

-- Location: LCCOMB_X30_Y22_N18
\caminho_de_dados|comparador_moedas|LessThan0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|comparador_moedas|LessThan0~9_cout\ = CARRY((\caminho_de_dados|contador_moedas_1|cnt\(4) & ((!\caminho_de_dados|comparador_moedas|LessThan0~7_cout\) # (!\caminho_de_dados|contador_moedas_2|cnt\(4)))) # 
-- (!\caminho_de_dados|contador_moedas_1|cnt\(4) & (!\caminho_de_dados|contador_moedas_2|cnt\(4) & !\caminho_de_dados|comparador_moedas|LessThan0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|contador_moedas_1|cnt\(4),
	datab => \caminho_de_dados|contador_moedas_2|cnt\(4),
	datad => VCC,
	cin => \caminho_de_dados|comparador_moedas|LessThan0~7_cout\,
	cout => \caminho_de_dados|comparador_moedas|LessThan0~9_cout\);

-- Location: LCCOMB_X30_Y22_N20
\caminho_de_dados|comparador_moedas|LessThan0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|comparador_moedas|LessThan0~11_cout\ = CARRY((\caminho_de_dados|contador_moedas_1|cnt[5]~6_combout\ & (\caminho_de_dados|contador_moedas_2|cnt[5]~6_combout\ & !\caminho_de_dados|comparador_moedas|LessThan0~9_cout\)) # 
-- (!\caminho_de_dados|contador_moedas_1|cnt[5]~6_combout\ & ((\caminho_de_dados|contador_moedas_2|cnt[5]~6_combout\) # (!\caminho_de_dados|comparador_moedas|LessThan0~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|contador_moedas_1|cnt[5]~6_combout\,
	datab => \caminho_de_dados|contador_moedas_2|cnt[5]~6_combout\,
	datad => VCC,
	cin => \caminho_de_dados|comparador_moedas|LessThan0~9_cout\,
	cout => \caminho_de_dados|comparador_moedas|LessThan0~11_cout\);

-- Location: LCCOMB_X30_Y22_N22
\caminho_de_dados|comparador_moedas|LessThan0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|comparador_moedas|LessThan0~12_combout\ = (\caminho_de_dados|contador_moedas_1|cnt[6]~8_combout\ & ((!\caminho_de_dados|contador_moedas_2|cnt[6]~8_combout\) # (!\caminho_de_dados|comparador_moedas|LessThan0~11_cout\))) # 
-- (!\caminho_de_dados|contador_moedas_1|cnt[6]~8_combout\ & (!\caminho_de_dados|comparador_moedas|LessThan0~11_cout\ & !\caminho_de_dados|contador_moedas_2|cnt[6]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|contador_moedas_1|cnt[6]~8_combout\,
	datad => \caminho_de_dados|contador_moedas_2|cnt[6]~8_combout\,
	cin => \caminho_de_dados|comparador_moedas|LessThan0~11_cout\,
	combout => \caminho_de_dados|comparador_moedas|LessThan0~12_combout\);

-- Location: LCCOMB_X31_Y21_N2
\controladora|Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controladora|Equal1~0_combout\ = (!\caminho_de_dados|comparador_moedas|LessThan0~12_combout\ & !\caminho_de_dados|comparador_moedas|LessThan1~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \caminho_de_dados|comparador_moedas|LessThan0~12_combout\,
	datad => \caminho_de_dados|comparador_moedas|LessThan1~12_combout\,
	combout => \controladora|Equal1~0_combout\);

-- Location: LCCOMB_X31_Y21_N20
\controladora|Selector8~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \controladora|Selector8~1_combout\ = (\controladora|Selector8~0_combout\) # ((\controladora|estado_atual.s16~regout\ & (\caminho_de_dados|comparador_moedas|Equal0~4_combout\ & \controladora|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controladora|estado_atual.s16~regout\,
	datab => \caminho_de_dados|comparador_moedas|Equal0~4_combout\,
	datac => \controladora|Selector8~0_combout\,
	datad => \controladora|Equal1~0_combout\,
	combout => \controladora|Selector8~1_combout\);

-- Location: LCFF_X31_Y21_N21
\controladora|estado_atual.s19\ : cycloneii_lcell_ff
PORT MAP (
	clk => \game_clock~clkctrl_outclk\,
	datain => \controladora|Selector8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controladora|estado_atual.s19~regout\);

-- Location: LCCOMB_X30_Y21_N14
\controladora|prox_estado.s16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controladora|prox_estado.s16~0_combout\ = (\controladora|estado_atual.s13~regout\ & \caminho_de_dados|player_reg|qi~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controladora|estado_atual.s13~regout\,
	datad => \caminho_de_dados|player_reg|qi~2_combout\,
	combout => \controladora|prox_estado.s16~0_combout\);

-- Location: LCFF_X30_Y21_N15
\controladora|estado_atual.s16\ : cycloneii_lcell_ff
PORT MAP (
	clk => \game_clock~clkctrl_outclk\,
	datain => \controladora|prox_estado.s16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controladora|estado_atual.s16~regout\);

-- Location: LCCOMB_X30_Y21_N12
\controladora|Selector7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controladora|Selector7~0_combout\ = (\controladora|estado_atual.s16~regout\ & (\caminho_de_dados|comparador_moedas|LessThan0~12_combout\ & !\caminho_de_dados|comparador_moedas|LessThan1~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controladora|estado_atual.s16~regout\,
	datac => \caminho_de_dados|comparador_moedas|LessThan0~12_combout\,
	datad => \caminho_de_dados|comparador_moedas|LessThan1~12_combout\,
	combout => \controladora|Selector7~0_combout\);

-- Location: LCCOMB_X30_Y21_N16
\controladora|Selector7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \controladora|Selector7~1_combout\ = (\caminho_de_dados|comparador_moedas|Equal0~4_combout\ & (!\caminho_de_dados|start_reg|qi~2_combout\ & (\controladora|estado_atual.s18~regout\))) # (!\caminho_de_dados|comparador_moedas|Equal0~4_combout\ & 
-- ((\controladora|Selector7~0_combout\) # ((!\caminho_de_dados|start_reg|qi~2_combout\ & \controladora|estado_atual.s18~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|comparador_moedas|Equal0~4_combout\,
	datab => \caminho_de_dados|start_reg|qi~2_combout\,
	datac => \controladora|estado_atual.s18~regout\,
	datad => \controladora|Selector7~0_combout\,
	combout => \controladora|Selector7~1_combout\);

-- Location: LCFF_X30_Y21_N17
\controladora|estado_atual.s18\ : cycloneii_lcell_ff
PORT MAP (
	clk => \game_clock~clkctrl_outclk\,
	datain => \controladora|Selector7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controladora|estado_atual.s18~regout\);

-- Location: LCCOMB_X31_Y21_N10
\controladora|WideOr1\ : cycloneii_lcell_comb
-- Equation(s):
-- \controladora|WideOr1~combout\ = (\controladora|estado_atual.s1~regout\) # ((\controladora|estado_atual.s15~regout\) # ((\controladora|estado_atual.s19~regout\) # (\controladora|estado_atual.s18~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controladora|estado_atual.s1~regout\,
	datab => \controladora|estado_atual.s15~regout\,
	datac => \controladora|estado_atual.s19~regout\,
	datad => \controladora|estado_atual.s18~regout\,
	combout => \controladora|WideOr1~combout\);

-- Location: LCCOMB_X31_Y21_N16
\caminho_de_dados|lcd|controladora|prox_estado.s43~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lcd|controladora|prox_estado.s43~0_combout\ = (\caminho_de_dados|lcd|controladora|atual_estado.s37~regout\ & (!\caminho_de_dados|lcd|controladora|prox_estado.s38~0_combout\ & \controladora|WideOr1~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|lcd|controladora|atual_estado.s37~regout\,
	datac => \caminho_de_dados|lcd|controladora|prox_estado.s38~0_combout\,
	datad => \controladora|WideOr1~combout\,
	combout => \caminho_de_dados|lcd|controladora|prox_estado.s43~0_combout\);

-- Location: LCFF_X31_Y21_N17
\caminho_de_dados|lcd|controladora|atual_estado.s43\ : cycloneii_lcell_ff
PORT MAP (
	clk => \caminho_de_dados|div_freq_10kHz|tmp~clkctrl_outclk\,
	datain => \caminho_de_dados|lcd|controladora|prox_estado.s43~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|lcd|controladora|atual_estado.s43~regout\);

-- Location: LCCOMB_X32_Y21_N20
\caminho_de_dados|lcd|controladora|prox_estado.s44~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lcd|controladora|prox_estado.s44~0_combout\ = (!\controladora|estado_atual.s15~regout\ & (\caminho_de_dados|lcd|controladora|atual_estado.s43~regout\ & (!\controladora|estado_atual.s19~regout\ & !\controladora|estado_atual.s17~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controladora|estado_atual.s15~regout\,
	datab => \caminho_de_dados|lcd|controladora|atual_estado.s43~regout\,
	datac => \controladora|estado_atual.s19~regout\,
	datad => \controladora|estado_atual.s17~regout\,
	combout => \caminho_de_dados|lcd|controladora|prox_estado.s44~0_combout\);

-- Location: LCFF_X32_Y21_N21
\caminho_de_dados|lcd|controladora|atual_estado.s44\ : cycloneii_lcell_ff
PORT MAP (
	clk => \caminho_de_dados|div_freq_10kHz|tmp~clkctrl_outclk\,
	datain => \caminho_de_dados|lcd|controladora|prox_estado.s44~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|lcd|controladora|atual_estado.s44~regout\);

-- Location: LCCOMB_X32_Y21_N14
\caminho_de_dados|lcd|controladora|prox_estado.s45~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lcd|controladora|prox_estado.s45~0_combout\ = (\caminho_de_dados|lcd|controladora|atual_estado.s43~regout\ & ((\controladora|estado_atual.s15~regout\) # ((\controladora|estado_atual.s19~regout\) # 
-- (\controladora|estado_atual.s17~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controladora|estado_atual.s15~regout\,
	datab => \caminho_de_dados|lcd|controladora|atual_estado.s43~regout\,
	datac => \controladora|estado_atual.s19~regout\,
	datad => \controladora|estado_atual.s17~regout\,
	combout => \caminho_de_dados|lcd|controladora|prox_estado.s45~0_combout\);

-- Location: LCFF_X32_Y21_N15
\caminho_de_dados|lcd|controladora|atual_estado.s45\ : cycloneii_lcell_ff
PORT MAP (
	clk => \caminho_de_dados|div_freq_10kHz|tmp~clkctrl_outclk\,
	datain => \caminho_de_dados|lcd|controladora|prox_estado.s45~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|lcd|controladora|atual_estado.s45~regout\);

-- Location: LCCOMB_X33_Y21_N8
\caminho_de_dados|lcd|controladora|prox_estado.s46\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lcd|controladora|prox_estado.s46~combout\ = (\caminho_de_dados|lcd|controladora|atual_estado.s44~regout\) # (\caminho_de_dados|lcd|controladora|atual_estado.s45~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \caminho_de_dados|lcd|controladora|atual_estado.s44~regout\,
	datad => \caminho_de_dados|lcd|controladora|atual_estado.s45~regout\,
	combout => \caminho_de_dados|lcd|controladora|prox_estado.s46~combout\);

-- Location: LCFF_X32_Y21_N27
\caminho_de_dados|lcd|controladora|atual_estado.s46\ : cycloneii_lcell_ff
PORT MAP (
	clk => \caminho_de_dados|div_freq_10kHz|tmp~clkctrl_outclk\,
	sdata => \caminho_de_dados|lcd|controladora|prox_estado.s46~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|lcd|controladora|atual_estado.s46~regout\);

-- Location: LCFF_X32_Y21_N23
\caminho_de_dados|lcd|controladora|atual_estado.s47\ : cycloneii_lcell_ff
PORT MAP (
	clk => \caminho_de_dados|div_freq_10kHz|tmp~clkctrl_outclk\,
	sdata => \caminho_de_dados|lcd|controladora|atual_estado.s46~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|lcd|controladora|atual_estado.s47~regout\);

-- Location: LCFF_X32_Y20_N9
\caminho_de_dados|lcd|controladora|atual_estado.s50\ : cycloneii_lcell_ff
PORT MAP (
	clk => \caminho_de_dados|div_freq_10kHz|tmp~clkctrl_outclk\,
	sdata => \caminho_de_dados|lcd|controladora|atual_estado.s49~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|lcd|controladora|atual_estado.s50~regout\);

-- Location: LCFF_X32_Y20_N29
\caminho_de_dados|lcd|controladora|atual_estado.s51\ : cycloneii_lcell_ff
PORT MAP (
	clk => \caminho_de_dados|div_freq_10kHz|tmp~clkctrl_outclk\,
	sdata => \caminho_de_dados|lcd|controladora|atual_estado.s50~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|lcd|controladora|atual_estado.s51~regout\);

-- Location: LCCOMB_X31_Y21_N30
\caminho_de_dados|lcd|controladora|prox_estado.s38~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lcd|controladora|prox_estado.s38~1_combout\ = (\caminho_de_dados|lcd|controladora|atual_estado.s37~regout\ & (\caminho_de_dados|lcd|controladora|prox_estado.s38~0_combout\ & \controladora|WideOr1~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|lcd|controladora|atual_estado.s37~regout\,
	datac => \caminho_de_dados|lcd|controladora|prox_estado.s38~0_combout\,
	datad => \controladora|WideOr1~combout\,
	combout => \caminho_de_dados|lcd|controladora|prox_estado.s38~1_combout\);

-- Location: LCFF_X31_Y21_N31
\caminho_de_dados|lcd|controladora|atual_estado.s38\ : cycloneii_lcell_ff
PORT MAP (
	clk => \caminho_de_dados|div_freq_10kHz|tmp~clkctrl_outclk\,
	datain => \caminho_de_dados|lcd|controladora|prox_estado.s38~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|lcd|controladora|atual_estado.s38~regout\);

-- Location: LCFF_X32_Y21_N3
\caminho_de_dados|lcd|controladora|atual_estado.s39\ : cycloneii_lcell_ff
PORT MAP (
	clk => \caminho_de_dados|div_freq_10kHz|tmp~clkctrl_outclk\,
	sdata => \caminho_de_dados|lcd|controladora|atual_estado.s38~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|lcd|controladora|atual_estado.s39~regout\);

-- Location: LCCOMB_X32_Y21_N28
\caminho_de_dados|lcd|controladora|prox_estado.s41~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lcd|controladora|prox_estado.s41~0_combout\ = (\caminho_de_dados|lcd|controladora|atual_estado.s39~regout\ & ((\controladora|estado_atual.s15~regout\) # ((\controladora|estado_atual.s19~regout\) # 
-- (\controladora|estado_atual.s17~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controladora|estado_atual.s15~regout\,
	datab => \caminho_de_dados|lcd|controladora|atual_estado.s39~regout\,
	datac => \controladora|estado_atual.s19~regout\,
	datad => \controladora|estado_atual.s17~regout\,
	combout => \caminho_de_dados|lcd|controladora|prox_estado.s41~0_combout\);

-- Location: LCFF_X32_Y21_N29
\caminho_de_dados|lcd|controladora|atual_estado.s41\ : cycloneii_lcell_ff
PORT MAP (
	clk => \caminho_de_dados|div_freq_10kHz|tmp~clkctrl_outclk\,
	datain => \caminho_de_dados|lcd|controladora|prox_estado.s41~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|lcd|controladora|atual_estado.s41~regout\);

-- Location: LCCOMB_X32_Y21_N18
\caminho_de_dados|lcd|controladora|prox_estado.s40~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lcd|controladora|prox_estado.s40~0_combout\ = (!\controladora|estado_atual.s15~regout\ & (\caminho_de_dados|lcd|controladora|atual_estado.s39~regout\ & (!\controladora|estado_atual.s19~regout\ & !\controladora|estado_atual.s17~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controladora|estado_atual.s15~regout\,
	datab => \caminho_de_dados|lcd|controladora|atual_estado.s39~regout\,
	datac => \controladora|estado_atual.s19~regout\,
	datad => \controladora|estado_atual.s17~regout\,
	combout => \caminho_de_dados|lcd|controladora|prox_estado.s40~0_combout\);

-- Location: LCFF_X32_Y21_N19
\caminho_de_dados|lcd|controladora|atual_estado.s40\ : cycloneii_lcell_ff
PORT MAP (
	clk => \caminho_de_dados|div_freq_10kHz|tmp~clkctrl_outclk\,
	datain => \caminho_de_dados|lcd|controladora|prox_estado.s40~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|lcd|controladora|atual_estado.s40~regout\);

-- Location: LCCOMB_X33_Y21_N28
\caminho_de_dados|lcd|controladora|prox_estado.s42\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lcd|controladora|prox_estado.s42~combout\ = (\caminho_de_dados|lcd|controladora|atual_estado.s41~regout\) # (\caminho_de_dados|lcd|controladora|atual_estado.s40~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \caminho_de_dados|lcd|controladora|atual_estado.s41~regout\,
	datad => \caminho_de_dados|lcd|controladora|atual_estado.s40~regout\,
	combout => \caminho_de_dados|lcd|controladora|prox_estado.s42~combout\);

-- Location: LCFF_X33_Y21_N29
\caminho_de_dados|lcd|controladora|atual_estado.s42\ : cycloneii_lcell_ff
PORT MAP (
	clk => \caminho_de_dados|div_freq_10kHz|tmp~clkctrl_outclk\,
	datain => \caminho_de_dados|lcd|controladora|prox_estado.s42~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|lcd|controladora|atual_estado.s42~regout\);

-- Location: LCCOMB_X33_Y21_N20
\caminho_de_dados|lcd|controladora|WideOr28~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lcd|controladora|WideOr28~0_combout\ = (\caminho_de_dados|lcd|controladora|atual_estado.s34~regout\) # ((\caminho_de_dados|lcd|controladora|atual_estado.s47~regout\) # ((\caminho_de_dados|lcd|controladora|atual_estado.s51~regout\) # 
-- (\caminho_de_dados|lcd|controladora|atual_estado.s42~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|lcd|controladora|atual_estado.s34~regout\,
	datab => \caminho_de_dados|lcd|controladora|atual_estado.s47~regout\,
	datac => \caminho_de_dados|lcd|controladora|atual_estado.s51~regout\,
	datad => \caminho_de_dados|lcd|controladora|atual_estado.s42~regout\,
	combout => \caminho_de_dados|lcd|controladora|WideOr28~0_combout\);

-- Location: LCFF_X31_Y21_N7
\caminho_de_dados|lcd|controladora|atual_estado.s52\ : cycloneii_lcell_ff
PORT MAP (
	clk => \caminho_de_dados|div_freq_10kHz|tmp~clkctrl_outclk\,
	sdata => \caminho_de_dados|lcd|controladora|WideOr28~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|lcd|controladora|atual_estado.s52~regout\);

-- Location: LCCOMB_X33_Y20_N12
\caminho_de_dados|lcd|datapath|timer|i[2]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lcd|datapath|timer|i[2]~11_combout\ = (\caminho_de_dados|lcd|datapath|timer|i\(2) & (!\caminho_de_dados|lcd|datapath|timer|i[1]~10\)) # (!\caminho_de_dados|lcd|datapath|timer|i\(2) & ((\caminho_de_dados|lcd|datapath|timer|i[1]~10\) # 
-- (GND)))
-- \caminho_de_dados|lcd|datapath|timer|i[2]~12\ = CARRY((!\caminho_de_dados|lcd|datapath|timer|i[1]~10\) # (!\caminho_de_dados|lcd|datapath|timer|i\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|lcd|datapath|timer|i\(2),
	datad => VCC,
	cin => \caminho_de_dados|lcd|datapath|timer|i[1]~10\,
	combout => \caminho_de_dados|lcd|datapath|timer|i[2]~11_combout\,
	cout => \caminho_de_dados|lcd|datapath|timer|i[2]~12\);

-- Location: LCCOMB_X34_Y20_N14
\caminho_de_dados|lcd|controladora|prox_estado.s6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lcd|controladora|prox_estado.s6~0_combout\ = (\caminho_de_dados|lcd|controladora|atual_estado.s5~regout\ & \caminho_de_dados|lcd|datapath|comp_t2|LessThan0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \caminho_de_dados|lcd|controladora|atual_estado.s5~regout\,
	datad => \caminho_de_dados|lcd|datapath|comp_t2|LessThan0~2_combout\,
	combout => \caminho_de_dados|lcd|controladora|prox_estado.s6~0_combout\);

-- Location: LCFF_X34_Y20_N15
\caminho_de_dados|lcd|controladora|atual_estado.s6\ : cycloneii_lcell_ff
PORT MAP (
	clk => \caminho_de_dados|div_freq_10kHz|tmp~clkctrl_outclk\,
	datain => \caminho_de_dados|lcd|controladora|prox_estado.s6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|lcd|controladora|atual_estado.s6~regout\);

-- Location: LCCOMB_X33_Y20_N18
\caminho_de_dados|lcd|datapath|timer|i[5]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lcd|datapath|timer|i[5]~17_combout\ = (\caminho_de_dados|lcd|datapath|timer|i\(5) & (\caminho_de_dados|lcd|datapath|timer|i[4]~16\ $ (GND))) # (!\caminho_de_dados|lcd|datapath|timer|i\(5) & (!\caminho_de_dados|lcd|datapath|timer|i[4]~16\ 
-- & VCC))
-- \caminho_de_dados|lcd|datapath|timer|i[5]~18\ = CARRY((\caminho_de_dados|lcd|datapath|timer|i\(5) & !\caminho_de_dados|lcd|datapath|timer|i[4]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \caminho_de_dados|lcd|datapath|timer|i\(5),
	datad => VCC,
	cin => \caminho_de_dados|lcd|datapath|timer|i[4]~16\,
	combout => \caminho_de_dados|lcd|datapath|timer|i[5]~17_combout\,
	cout => \caminho_de_dados|lcd|datapath|timer|i[5]~18\);

-- Location: LCCOMB_X33_Y20_N22
\caminho_de_dados|lcd|datapath|timer|i[7]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lcd|datapath|timer|i[7]~21_combout\ = (\caminho_de_dados|lcd|datapath|timer|i\(7) & (\caminho_de_dados|lcd|datapath|timer|i[6]~20\ $ (GND))) # (!\caminho_de_dados|lcd|datapath|timer|i\(7) & (!\caminho_de_dados|lcd|datapath|timer|i[6]~20\ 
-- & VCC))
-- \caminho_de_dados|lcd|datapath|timer|i[7]~22\ = CARRY((\caminho_de_dados|lcd|datapath|timer|i\(7) & !\caminho_de_dados|lcd|datapath|timer|i[6]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \caminho_de_dados|lcd|datapath|timer|i\(7),
	datad => VCC,
	cin => \caminho_de_dados|lcd|datapath|timer|i[6]~20\,
	combout => \caminho_de_dados|lcd|datapath|timer|i[7]~21_combout\,
	cout => \caminho_de_dados|lcd|datapath|timer|i[7]~22\);

-- Location: LCCOMB_X33_Y20_N6
\caminho_de_dados|lcd|datapath|dp_E~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lcd|datapath|dp_E~1_combout\ = (\caminho_de_dados|lcd|controladora|atual_estado.s11~regout\) # ((\caminho_de_dados|lcd|controladora|atual_estado.s16~regout\) # (!\caminho_de_dados|lcd|datapath|dp_E~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|lcd|controladora|atual_estado.s11~regout\,
	datac => \caminho_de_dados|lcd|datapath|dp_E~0_combout\,
	datad => \caminho_de_dados|lcd|controladora|atual_estado.s16~regout\,
	combout => \caminho_de_dados|lcd|datapath|dp_E~1_combout\);

-- Location: LCFF_X33_Y20_N23
\caminho_de_dados|lcd|datapath|timer|i[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \caminho_de_dados|div_freq_10kHz|tmp~clkctrl_outclk\,
	datain => \caminho_de_dados|lcd|datapath|timer|i[7]~21_combout\,
	aclr => \caminho_de_dados|lcd|controladora|WideOr3~combout\,
	ena => \caminho_de_dados|lcd|datapath|dp_E~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|lcd|datapath|timer|i\(7));

-- Location: LCCOMB_X33_Y20_N24
\caminho_de_dados|lcd|datapath|timer|i[8]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lcd|datapath|timer|i[8]~23_combout\ = (\caminho_de_dados|lcd|datapath|timer|i\(8) & (!\caminho_de_dados|lcd|datapath|timer|i[7]~22\)) # (!\caminho_de_dados|lcd|datapath|timer|i\(8) & ((\caminho_de_dados|lcd|datapath|timer|i[7]~22\) # 
-- (GND)))
-- \caminho_de_dados|lcd|datapath|timer|i[8]~24\ = CARRY((!\caminho_de_dados|lcd|datapath|timer|i[7]~22\) # (!\caminho_de_dados|lcd|datapath|timer|i\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|lcd|datapath|timer|i\(8),
	datad => VCC,
	cin => \caminho_de_dados|lcd|datapath|timer|i[7]~22\,
	combout => \caminho_de_dados|lcd|datapath|timer|i[8]~23_combout\,
	cout => \caminho_de_dados|lcd|datapath|timer|i[8]~24\);

-- Location: LCFF_X33_Y20_N25
\caminho_de_dados|lcd|datapath|timer|i[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \caminho_de_dados|div_freq_10kHz|tmp~clkctrl_outclk\,
	datain => \caminho_de_dados|lcd|datapath|timer|i[8]~23_combout\,
	aclr => \caminho_de_dados|lcd|controladora|WideOr3~combout\,
	ena => \caminho_de_dados|lcd|datapath|dp_E~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|lcd|datapath|timer|i\(8));

-- Location: LCCOMB_X33_Y20_N26
\caminho_de_dados|lcd|datapath|timer|i[9]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lcd|datapath|timer|i[9]~25_combout\ = \caminho_de_dados|lcd|datapath|timer|i[8]~24\ $ (!\caminho_de_dados|lcd|datapath|timer|i\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \caminho_de_dados|lcd|datapath|timer|i\(9),
	cin => \caminho_de_dados|lcd|datapath|timer|i[8]~24\,
	combout => \caminho_de_dados|lcd|datapath|timer|i[9]~25_combout\);

-- Location: LCFF_X33_Y20_N27
\caminho_de_dados|lcd|datapath|timer|i[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \caminho_de_dados|div_freq_10kHz|tmp~clkctrl_outclk\,
	datain => \caminho_de_dados|lcd|datapath|timer|i[9]~25_combout\,
	aclr => \caminho_de_dados|lcd|controladora|WideOr3~combout\,
	ena => \caminho_de_dados|lcd|datapath|dp_E~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|lcd|datapath|timer|i\(9));

-- Location: LCCOMB_X33_Y20_N2
\caminho_de_dados|lcd|datapath|comp_t1000|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lcd|datapath|comp_t1000|LessThan0~1_combout\ = (\caminho_de_dados|lcd|datapath|comp_t1000|LessThan0~0_combout\ & (\caminho_de_dados|lcd|datapath|timer|i\(7) & (\caminho_de_dados|lcd|datapath|timer|i\(8) & 
-- \caminho_de_dados|lcd|datapath|timer|i\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|lcd|datapath|comp_t1000|LessThan0~0_combout\,
	datab => \caminho_de_dados|lcd|datapath|timer|i\(7),
	datac => \caminho_de_dados|lcd|datapath|timer|i\(8),
	datad => \caminho_de_dados|lcd|datapath|timer|i\(9),
	combout => \caminho_de_dados|lcd|datapath|comp_t1000|LessThan0~1_combout\);

-- Location: LCCOMB_X34_Y20_N30
\caminho_de_dados|lcd|controladora|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lcd|controladora|Selector0~0_combout\ = ((\caminho_de_dados|lcd|controladora|atual_estado.s1~regout\ & !\caminho_de_dados|lcd|datapath|comp_t1000|LessThan0~1_combout\)) # (!\caminho_de_dados|lcd|controladora|atual_estado.s0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|lcd|controladora|atual_estado.s0~regout\,
	datac => \caminho_de_dados|lcd|controladora|atual_estado.s1~regout\,
	datad => \caminho_de_dados|lcd|datapath|comp_t1000|LessThan0~1_combout\,
	combout => \caminho_de_dados|lcd|controladora|Selector0~0_combout\);

-- Location: LCFF_X34_Y20_N31
\caminho_de_dados|lcd|controladora|atual_estado.s1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \caminho_de_dados|div_freq_10kHz|tmp~clkctrl_outclk\,
	datain => \caminho_de_dados|lcd|controladora|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|lcd|controladora|atual_estado.s1~regout\);

-- Location: LCCOMB_X34_Y20_N18
\caminho_de_dados|lcd|controladora|prox_estado.s2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lcd|controladora|prox_estado.s2~0_combout\ = (\caminho_de_dados|lcd|controladora|atual_estado.s1~regout\ & \caminho_de_dados|lcd|datapath|comp_t1000|LessThan0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \caminho_de_dados|lcd|controladora|atual_estado.s1~regout\,
	datad => \caminho_de_dados|lcd|datapath|comp_t1000|LessThan0~1_combout\,
	combout => \caminho_de_dados|lcd|controladora|prox_estado.s2~0_combout\);

-- Location: LCFF_X34_Y20_N19
\caminho_de_dados|lcd|controladora|atual_estado.s2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \caminho_de_dados|div_freq_10kHz|tmp~clkctrl_outclk\,
	datain => \caminho_de_dados|lcd|controladora|prox_estado.s2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|lcd|controladora|atual_estado.s2~regout\);

-- Location: LCCOMB_X32_Y20_N2
\caminho_de_dados|lcd|datapath|comp_t100|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lcd|datapath|comp_t100|LessThan0~0_combout\ = (!\caminho_de_dados|lcd|datapath|timer|i\(9) & (!\caminho_de_dados|lcd|datapath|timer|i\(8) & !\caminho_de_dados|lcd|datapath|timer|i\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|lcd|datapath|timer|i\(9),
	datab => \caminho_de_dados|lcd|datapath|timer|i\(8),
	datad => \caminho_de_dados|lcd|datapath|timer|i\(7),
	combout => \caminho_de_dados|lcd|datapath|comp_t100|LessThan0~0_combout\);

-- Location: LCCOMB_X33_Y20_N28
\caminho_de_dados|lcd|datapath|comp_t100|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lcd|datapath|comp_t100|LessThan0~1_combout\ = ((\caminho_de_dados|lcd|datapath|timer|i\(6) & (!\caminho_de_dados|lcd|datapath|comp_t2|LessThan0~1_combout\ & \caminho_de_dados|lcd|datapath|timer|i\(5)))) # 
-- (!\caminho_de_dados|lcd|datapath|comp_t100|LessThan0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|lcd|datapath|timer|i\(6),
	datab => \caminho_de_dados|lcd|datapath|comp_t2|LessThan0~1_combout\,
	datac => \caminho_de_dados|lcd|datapath|timer|i\(5),
	datad => \caminho_de_dados|lcd|datapath|comp_t100|LessThan0~0_combout\,
	combout => \caminho_de_dados|lcd|datapath|comp_t100|LessThan0~1_combout\);

-- Location: LCCOMB_X34_Y20_N4
\caminho_de_dados|lcd|controladora|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lcd|controladora|Selector1~0_combout\ = (\caminho_de_dados|lcd|controladora|atual_estado.s2~regout\) # ((\caminho_de_dados|lcd|controladora|atual_estado.s3~regout\ & !\caminho_de_dados|lcd|datapath|comp_t100|LessThan0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \caminho_de_dados|lcd|controladora|atual_estado.s2~regout\,
	datac => \caminho_de_dados|lcd|controladora|atual_estado.s3~regout\,
	datad => \caminho_de_dados|lcd|datapath|comp_t100|LessThan0~1_combout\,
	combout => \caminho_de_dados|lcd|controladora|Selector1~0_combout\);

-- Location: LCFF_X34_Y20_N5
\caminho_de_dados|lcd|controladora|atual_estado.s3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \caminho_de_dados|div_freq_10kHz|tmp~clkctrl_outclk\,
	datain => \caminho_de_dados|lcd|controladora|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|lcd|controladora|atual_estado.s3~regout\);

-- Location: LCCOMB_X34_Y20_N16
\caminho_de_dados|lcd|controladora|prox_estado.s4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lcd|controladora|prox_estado.s4~0_combout\ = (\caminho_de_dados|lcd|controladora|atual_estado.s3~regout\ & \caminho_de_dados|lcd|datapath|comp_t100|LessThan0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \caminho_de_dados|lcd|controladora|atual_estado.s3~regout\,
	datad => \caminho_de_dados|lcd|datapath|comp_t100|LessThan0~1_combout\,
	combout => \caminho_de_dados|lcd|controladora|prox_estado.s4~0_combout\);

-- Location: LCFF_X34_Y20_N17
\caminho_de_dados|lcd|controladora|atual_estado.s4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \caminho_de_dados|div_freq_10kHz|tmp~clkctrl_outclk\,
	datain => \caminho_de_dados|lcd|controladora|prox_estado.s4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|lcd|controladora|atual_estado.s4~regout\);

-- Location: LCCOMB_X34_Y20_N12
\caminho_de_dados|lcd|controladora|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lcd|controladora|WideOr3~0_combout\ = (!\caminho_de_dados|lcd|controladora|atual_estado.s6~regout\ & (!\caminho_de_dados|lcd|controladora|atual_estado.s4~regout\ & !\caminho_de_dados|lcd|controladora|atual_estado.s2~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \caminho_de_dados|lcd|controladora|atual_estado.s6~regout\,
	datac => \caminho_de_dados|lcd|controladora|atual_estado.s4~regout\,
	datad => \caminho_de_dados|lcd|controladora|atual_estado.s2~regout\,
	combout => \caminho_de_dados|lcd|controladora|WideOr3~0_combout\);

-- Location: LCCOMB_X32_Y21_N12
\caminho_de_dados|lcd|controladora|atual_estado.s0~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lcd|controladora|atual_estado.s0~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \caminho_de_dados|lcd|controladora|atual_estado.s0~feeder_combout\);

-- Location: LCFF_X32_Y21_N13
\caminho_de_dados|lcd|controladora|atual_estado.s0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \caminho_de_dados|div_freq_10kHz|tmp~clkctrl_outclk\,
	datain => \caminho_de_dados|lcd|controladora|atual_estado.s0~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|lcd|controladora|atual_estado.s0~regout\);

-- Location: LCCOMB_X33_Y20_N30
\caminho_de_dados|lcd|controladora|WideOr3\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lcd|controladora|WideOr3~combout\ = (\caminho_de_dados|lcd|controladora|atual_estado.s10~regout\) # ((\caminho_de_dados|lcd|controladora|atual_estado.s14~regout\) # ((!\caminho_de_dados|lcd|controladora|atual_estado.s0~regout\) # 
-- (!\caminho_de_dados|lcd|controladora|WideOr3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|lcd|controladora|atual_estado.s10~regout\,
	datab => \caminho_de_dados|lcd|controladora|atual_estado.s14~regout\,
	datac => \caminho_de_dados|lcd|controladora|WideOr3~0_combout\,
	datad => \caminho_de_dados|lcd|controladora|atual_estado.s0~regout\,
	combout => \caminho_de_dados|lcd|controladora|WideOr3~combout\);

-- Location: LCFF_X33_Y20_N13
\caminho_de_dados|lcd|datapath|timer|i[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \caminho_de_dados|div_freq_10kHz|tmp~clkctrl_outclk\,
	datain => \caminho_de_dados|lcd|datapath|timer|i[2]~11_combout\,
	aclr => \caminho_de_dados|lcd|controladora|WideOr3~combout\,
	ena => \caminho_de_dados|lcd|datapath|dp_E~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|lcd|datapath|timer|i\(2));

-- Location: LCCOMB_X33_Y20_N0
\caminho_de_dados|lcd|datapath|comp_t2|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lcd|datapath|comp_t2|LessThan0~1_combout\ = (!\caminho_de_dados|lcd|datapath|timer|i\(4) & (!\caminho_de_dados|lcd|datapath|timer|i\(3) & !\caminho_de_dados|lcd|datapath|timer|i\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|lcd|datapath|timer|i\(4),
	datab => \caminho_de_dados|lcd|datapath|timer|i\(3),
	datad => \caminho_de_dados|lcd|datapath|timer|i\(2),
	combout => \caminho_de_dados|lcd|datapath|comp_t2|LessThan0~1_combout\);

-- Location: LCCOMB_X32_Y20_N30
\caminho_de_dados|lcd|datapath|comp_t2|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lcd|datapath|comp_t2|LessThan0~0_combout\ = (!\caminho_de_dados|lcd|datapath|timer|i\(6) & (!\caminho_de_dados|lcd|datapath|timer|i\(8) & (!\caminho_de_dados|lcd|datapath|timer|i\(9) & !\caminho_de_dados|lcd|datapath|timer|i\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|lcd|datapath|timer|i\(6),
	datab => \caminho_de_dados|lcd|datapath|timer|i\(8),
	datac => \caminho_de_dados|lcd|datapath|timer|i\(9),
	datad => \caminho_de_dados|lcd|datapath|timer|i\(7),
	combout => \caminho_de_dados|lcd|datapath|comp_t2|LessThan0~0_combout\);

-- Location: LCCOMB_X33_Y20_N8
\caminho_de_dados|lcd|datapath|comp_t2|LessThan0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lcd|datapath|comp_t2|LessThan0~2_combout\ = (\caminho_de_dados|lcd|datapath|timer|i\(1)) # (((\caminho_de_dados|lcd|datapath|timer|i\(5)) # (!\caminho_de_dados|lcd|datapath|comp_t2|LessThan0~0_combout\)) # 
-- (!\caminho_de_dados|lcd|datapath|comp_t2|LessThan0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|lcd|datapath|timer|i\(1),
	datab => \caminho_de_dados|lcd|datapath|comp_t2|LessThan0~1_combout\,
	datac => \caminho_de_dados|lcd|datapath|comp_t2|LessThan0~0_combout\,
	datad => \caminho_de_dados|lcd|datapath|timer|i\(5),
	combout => \caminho_de_dados|lcd|datapath|comp_t2|LessThan0~2_combout\);

-- Location: LCCOMB_X34_Y20_N26
\caminho_de_dados|lcd|controladora|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lcd|controladora|Selector2~0_combout\ = (\caminho_de_dados|lcd|controladora|atual_estado.s4~regout\) # ((\caminho_de_dados|lcd|controladora|atual_estado.s5~regout\ & !\caminho_de_dados|lcd|datapath|comp_t2|LessThan0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|lcd|controladora|atual_estado.s4~regout\,
	datac => \caminho_de_dados|lcd|controladora|atual_estado.s5~regout\,
	datad => \caminho_de_dados|lcd|datapath|comp_t2|LessThan0~2_combout\,
	combout => \caminho_de_dados|lcd|controladora|Selector2~0_combout\);

-- Location: LCFF_X34_Y20_N27
\caminho_de_dados|lcd|controladora|atual_estado.s5\ : cycloneii_lcell_ff
PORT MAP (
	clk => \caminho_de_dados|div_freq_10kHz|tmp~clkctrl_outclk\,
	datain => \caminho_de_dados|lcd|controladora|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|lcd|controladora|atual_estado.s5~regout\);

-- Location: LCCOMB_X34_Y20_N28
\caminho_de_dados|lcd|controladora|Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lcd|controladora|Selector3~0_combout\ = (\caminho_de_dados|lcd|controladora|atual_estado.s6~regout\) # ((\caminho_de_dados|lcd|controladora|atual_estado.s7~regout\ & !\caminho_de_dados|lcd|datapath|comp_t2|LessThan0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|lcd|controladora|atual_estado.s6~regout\,
	datac => \caminho_de_dados|lcd|controladora|atual_estado.s7~regout\,
	datad => \caminho_de_dados|lcd|datapath|comp_t2|LessThan0~2_combout\,
	combout => \caminho_de_dados|lcd|controladora|Selector3~0_combout\);

-- Location: LCFF_X34_Y20_N29
\caminho_de_dados|lcd|controladora|atual_estado.s7\ : cycloneii_lcell_ff
PORT MAP (
	clk => \caminho_de_dados|div_freq_10kHz|tmp~clkctrl_outclk\,
	datain => \caminho_de_dados|lcd|controladora|Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|lcd|controladora|atual_estado.s7~regout\);

-- Location: LCCOMB_X34_Y20_N10
\caminho_de_dados|lcd|datapath|dp_E~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lcd|datapath|dp_E~0_combout\ = (!\caminho_de_dados|lcd|controladora|atual_estado.s1~regout\ & (!\caminho_de_dados|lcd|controladora|atual_estado.s5~regout\ & (!\caminho_de_dados|lcd|controladora|atual_estado.s3~regout\ & 
-- !\caminho_de_dados|lcd|controladora|atual_estado.s7~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|lcd|controladora|atual_estado.s1~regout\,
	datab => \caminho_de_dados|lcd|controladora|atual_estado.s5~regout\,
	datac => \caminho_de_dados|lcd|controladora|atual_estado.s3~regout\,
	datad => \caminho_de_dados|lcd|controladora|atual_estado.s7~regout\,
	combout => \caminho_de_dados|lcd|datapath|dp_E~0_combout\);

-- Location: LCCOMB_X34_Y20_N20
\caminho_de_dados|lcd|controladora|prox_estado.s8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lcd|controladora|prox_estado.s8~0_combout\ = (\caminho_de_dados|lcd|controladora|atual_estado.s7~regout\ & \caminho_de_dados|lcd|datapath|comp_t2|LessThan0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \caminho_de_dados|lcd|controladora|atual_estado.s7~regout\,
	datad => \caminho_de_dados|lcd|datapath|comp_t2|LessThan0~2_combout\,
	combout => \caminho_de_dados|lcd|controladora|prox_estado.s8~0_combout\);

-- Location: LCFF_X34_Y20_N21
\caminho_de_dados|lcd|controladora|atual_estado.s8\ : cycloneii_lcell_ff
PORT MAP (
	clk => \caminho_de_dados|div_freq_10kHz|tmp~clkctrl_outclk\,
	datain => \caminho_de_dados|lcd|controladora|prox_estado.s8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|lcd|controladora|atual_estado.s8~regout\);

-- Location: LCFF_X32_Y20_N7
\caminho_de_dados|lcd|controladora|atual_estado.s9\ : cycloneii_lcell_ff
PORT MAP (
	clk => \caminho_de_dados|div_freq_10kHz|tmp~clkctrl_outclk\,
	sdata => \caminho_de_dados|lcd|controladora|atual_estado.s8~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|lcd|controladora|atual_estado.s9~regout\);

-- Location: LCFF_X33_Y20_N1
\caminho_de_dados|lcd|controladora|atual_estado.s10\ : cycloneii_lcell_ff
PORT MAP (
	clk => \caminho_de_dados|div_freq_10kHz|tmp~clkctrl_outclk\,
	sdata => \caminho_de_dados|lcd|controladora|atual_estado.s9~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|lcd|controladora|atual_estado.s10~regout\);

-- Location: LCCOMB_X32_Y20_N10
\caminho_de_dados|lcd|controladora|Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lcd|controladora|Selector4~0_combout\ = (\caminho_de_dados|lcd|controladora|atual_estado.s10~regout\) # ((\caminho_de_dados|lcd|controladora|atual_estado.s11~regout\ & !\caminho_de_dados|lcd|datapath|comp_t40|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \caminho_de_dados|lcd|controladora|atual_estado.s10~regout\,
	datac => \caminho_de_dados|lcd|controladora|atual_estado.s11~regout\,
	datad => \caminho_de_dados|lcd|datapath|comp_t40|LessThan0~0_combout\,
	combout => \caminho_de_dados|lcd|controladora|Selector4~0_combout\);

-- Location: LCFF_X32_Y20_N11
\caminho_de_dados|lcd|controladora|atual_estado.s11\ : cycloneii_lcell_ff
PORT MAP (
	clk => \caminho_de_dados|div_freq_10kHz|tmp~clkctrl_outclk\,
	datain => \caminho_de_dados|lcd|controladora|Selector4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|lcd|controladora|atual_estado.s11~regout\);

-- Location: LCCOMB_X33_Y20_N4
\caminho_de_dados|lcd|datapath|timer|i[0]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lcd|datapath|timer|i[0]~27_combout\ = \caminho_de_dados|lcd|datapath|timer|i\(0) $ (((\caminho_de_dados|lcd|controladora|atual_estado.s16~regout\) # ((\caminho_de_dados|lcd|controladora|atual_estado.s11~regout\) # 
-- (!\caminho_de_dados|lcd|datapath|dp_E~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|lcd|controladora|atual_estado.s16~regout\,
	datab => \caminho_de_dados|lcd|datapath|dp_E~0_combout\,
	datac => \caminho_de_dados|lcd|datapath|timer|i\(0),
	datad => \caminho_de_dados|lcd|controladora|atual_estado.s11~regout\,
	combout => \caminho_de_dados|lcd|datapath|timer|i[0]~27_combout\);

-- Location: LCFF_X33_Y20_N5
\caminho_de_dados|lcd|datapath|timer|i[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \caminho_de_dados|div_freq_10kHz|tmp~clkctrl_outclk\,
	datain => \caminho_de_dados|lcd|datapath|timer|i[0]~27_combout\,
	aclr => \caminho_de_dados|lcd|controladora|WideOr3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|lcd|datapath|timer|i\(0));

-- Location: LCCOMB_X33_Y20_N14
\caminho_de_dados|lcd|datapath|timer|i[3]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lcd|datapath|timer|i[3]~13_combout\ = (\caminho_de_dados|lcd|datapath|timer|i\(3) & (\caminho_de_dados|lcd|datapath|timer|i[2]~12\ $ (GND))) # (!\caminho_de_dados|lcd|datapath|timer|i\(3) & (!\caminho_de_dados|lcd|datapath|timer|i[2]~12\ 
-- & VCC))
-- \caminho_de_dados|lcd|datapath|timer|i[3]~14\ = CARRY((\caminho_de_dados|lcd|datapath|timer|i\(3) & !\caminho_de_dados|lcd|datapath|timer|i[2]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \caminho_de_dados|lcd|datapath|timer|i\(3),
	datad => VCC,
	cin => \caminho_de_dados|lcd|datapath|timer|i[2]~12\,
	combout => \caminho_de_dados|lcd|datapath|timer|i[3]~13_combout\,
	cout => \caminho_de_dados|lcd|datapath|timer|i[3]~14\);

-- Location: LCFF_X33_Y20_N15
\caminho_de_dados|lcd|datapath|timer|i[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \caminho_de_dados|div_freq_10kHz|tmp~clkctrl_outclk\,
	datain => \caminho_de_dados|lcd|datapath|timer|i[3]~13_combout\,
	aclr => \caminho_de_dados|lcd|controladora|WideOr3~combout\,
	ena => \caminho_de_dados|lcd|datapath|dp_E~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|lcd|datapath|timer|i\(3));

-- Location: LCFF_X33_Y20_N19
\caminho_de_dados|lcd|datapath|timer|i[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \caminho_de_dados|div_freq_10kHz|tmp~clkctrl_outclk\,
	datain => \caminho_de_dados|lcd|datapath|timer|i[5]~17_combout\,
	aclr => \caminho_de_dados|lcd|controladora|WideOr3~combout\,
	ena => \caminho_de_dados|lcd|datapath|dp_E~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|lcd|datapath|timer|i\(5));

-- Location: LCCOMB_X32_Y20_N16
\caminho_de_dados|lcd|datapath|comp_t40|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lcd|datapath|comp_t40|LessThan0~0_combout\ = ((\caminho_de_dados|lcd|datapath|timer|i\(5) & ((\caminho_de_dados|lcd|datapath|timer|i\(4)) # (\caminho_de_dados|lcd|datapath|timer|i\(3))))) # 
-- (!\caminho_de_dados|lcd|datapath|comp_t2|LessThan0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|lcd|datapath|timer|i\(4),
	datab => \caminho_de_dados|lcd|datapath|timer|i\(5),
	datac => \caminho_de_dados|lcd|datapath|timer|i\(3),
	datad => \caminho_de_dados|lcd|datapath|comp_t2|LessThan0~0_combout\,
	combout => \caminho_de_dados|lcd|datapath|comp_t40|LessThan0~0_combout\);

-- Location: LCCOMB_X32_Y20_N20
\caminho_de_dados|lcd|controladora|prox_estado.s12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lcd|controladora|prox_estado.s12~0_combout\ = (\caminho_de_dados|lcd|controladora|atual_estado.s11~regout\ & \caminho_de_dados|lcd|datapath|comp_t40|LessThan0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|lcd|controladora|atual_estado.s11~regout\,
	datad => \caminho_de_dados|lcd|datapath|comp_t40|LessThan0~0_combout\,
	combout => \caminho_de_dados|lcd|controladora|prox_estado.s12~0_combout\);

-- Location: LCFF_X32_Y20_N21
\caminho_de_dados|lcd|controladora|atual_estado.s12\ : cycloneii_lcell_ff
PORT MAP (
	clk => \caminho_de_dados|div_freq_10kHz|tmp~clkctrl_outclk\,
	datain => \caminho_de_dados|lcd|controladora|prox_estado.s12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|lcd|controladora|atual_estado.s12~regout\);

-- Location: LCFF_X32_Y20_N1
\caminho_de_dados|lcd|controladora|atual_estado.s13\ : cycloneii_lcell_ff
PORT MAP (
	clk => \caminho_de_dados|div_freq_10kHz|tmp~clkctrl_outclk\,
	sdata => \caminho_de_dados|lcd|controladora|atual_estado.s12~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|lcd|controladora|atual_estado.s13~regout\);

-- Location: LCCOMB_X32_Y21_N22
\caminho_de_dados|lcd|controladora|Selector5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lcd|controladora|Selector5~0_combout\ = (\caminho_de_dados|lcd|controladora|atual_estado.s52~regout\) # (\caminho_de_dados|lcd|controladora|atual_estado.s13~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|lcd|controladora|atual_estado.s52~regout\,
	datad => \caminho_de_dados|lcd|controladora|atual_estado.s13~regout\,
	combout => \caminho_de_dados|lcd|controladora|Selector5~0_combout\);

-- Location: LCCOMB_X32_Y21_N4
\caminho_de_dados|lcd|controladora|Selector5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lcd|controladora|Selector5~1_combout\ = (\caminho_de_dados|lcd|controladora|Selector5~0_combout\) # ((\controladora|WideOr0~0_combout\ & (\caminho_de_dados|lcd|controladora|atual_estado.s14~regout\ & 
-- \caminho_de_dados|lcd|controladora|prox_estado.s38~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controladora|WideOr0~0_combout\,
	datab => \caminho_de_dados|lcd|controladora|Selector5~0_combout\,
	datac => \caminho_de_dados|lcd|controladora|atual_estado.s14~regout\,
	datad => \caminho_de_dados|lcd|controladora|prox_estado.s38~0_combout\,
	combout => \caminho_de_dados|lcd|controladora|Selector5~1_combout\);

-- Location: LCFF_X32_Y21_N5
\caminho_de_dados|lcd|controladora|atual_estado.s14\ : cycloneii_lcell_ff
PORT MAP (
	clk => \caminho_de_dados|div_freq_10kHz|tmp~clkctrl_outclk\,
	datain => \caminho_de_dados|lcd|controladora|Selector5~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|lcd|controladora|atual_estado.s14~regout\);

-- Location: LCCOMB_X28_Y21_N28
\controladora|Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controladora|Selector3~0_combout\ = (\controladora|estado_atual.s10~regout\ & (!\caminho_de_dados|lcd|controladora|atual_estado.s52~regout\ & !\caminho_de_dados|lcd|controladora|atual_estado.s14~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controladora|estado_atual.s10~regout\,
	datac => \caminho_de_dados|lcd|controladora|atual_estado.s52~regout\,
	datad => \caminho_de_dados|lcd|controladora|atual_estado.s14~regout\,
	combout => \controladora|Selector3~0_combout\);

-- Location: LCCOMB_X28_Y21_N30
\controladora|Selector3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \controladora|Selector3~1_combout\ = (\controladora|Selector3~0_combout\) # ((\controladora|estado_atual.s9~regout\ & (\caminho_de_dados|sr_obstaculo|instancia1_reg|tmp\(16) $ (\caminho_de_dados|player_position|qi~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|sr_obstaculo|instancia1_reg|tmp\(16),
	datab => \caminho_de_dados|player_position|qi~2_combout\,
	datac => \controladora|estado_atual.s9~regout\,
	datad => \controladora|Selector3~0_combout\,
	combout => \controladora|Selector3~1_combout\);

-- Location: LCFF_X28_Y21_N31
\controladora|estado_atual.s10\ : cycloneii_lcell_ff
PORT MAP (
	clk => \game_clock~clkctrl_outclk\,
	datain => \controladora|Selector3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controladora|estado_atual.s10~regout\);

-- Location: LCCOMB_X28_Y21_N22
\controladora|Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controladora|Selector4~0_combout\ = (\controladora|estado_atual.s10~regout\ & ((\caminho_de_dados|lcd|controladora|atual_estado.s52~regout\) # (\caminho_de_dados|lcd|controladora|atual_estado.s14~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controladora|estado_atual.s10~regout\,
	datac => \caminho_de_dados|lcd|controladora|atual_estado.s52~regout\,
	datad => \caminho_de_dados|lcd|controladora|atual_estado.s14~regout\,
	combout => \controladora|Selector4~0_combout\);

-- Location: LCCOMB_X28_Y21_N18
\controladora|Selector4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \controladora|Selector4~1_combout\ = (\controladora|Selector4~0_combout\) # ((!\caminho_de_dados|frame_timer|LessThan0~6_combout\ & (!\caminho_de_dados|frame_timer|temp\(22) & \controladora|estado_atual.s11~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|frame_timer|LessThan0~6_combout\,
	datab => \caminho_de_dados|frame_timer|temp\(22),
	datac => \controladora|estado_atual.s11~regout\,
	datad => \controladora|Selector4~0_combout\,
	combout => \controladora|Selector4~1_combout\);

-- Location: LCFF_X28_Y21_N19
\controladora|estado_atual.s11\ : cycloneii_lcell_ff
PORT MAP (
	clk => \game_clock~clkctrl_outclk\,
	datain => \controladora|Selector4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controladora|estado_atual.s11~regout\);

-- Location: LCCOMB_X28_Y21_N14
\controladora|prox_estado.s12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controladora|prox_estado.s12~0_combout\ = (\controladora|estado_atual.s11~regout\ & ((\caminho_de_dados|frame_timer|LessThan0~6_combout\) # (\caminho_de_dados|frame_timer|temp\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|frame_timer|LessThan0~6_combout\,
	datac => \caminho_de_dados|frame_timer|temp\(22),
	datad => \controladora|estado_atual.s11~regout\,
	combout => \controladora|prox_estado.s12~0_combout\);

-- Location: LCFF_X28_Y21_N15
\controladora|estado_atual.s12\ : cycloneii_lcell_ff
PORT MAP (
	clk => \game_clock~clkctrl_outclk\,
	datain => \controladora|prox_estado.s12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controladora|estado_atual.s12~regout\);

-- Location: LCCOMB_X28_Y21_N0
\controladora|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controladora|Selector1~0_combout\ = (\controladora|estado_atual.s2~regout\) # ((\controladora|estado_atual.s12~regout\) # ((\caminho_de_dados|start_reg|qi~2_combout\ & \controladora|estado_atual.s15~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controladora|estado_atual.s2~regout\,
	datab => \caminho_de_dados|start_reg|qi~2_combout\,
	datac => \controladora|estado_atual.s15~regout\,
	datad => \controladora|estado_atual.s12~regout\,
	combout => \controladora|Selector1~0_combout\);

-- Location: LCFF_X28_Y21_N1
\controladora|estado_atual.s3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \game_clock~clkctrl_outclk\,
	datain => \controladora|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controladora|estado_atual.s3~regout\);

-- Location: LCCOMB_X30_Y22_N24
\controladora|prox_estado.s4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controladora|prox_estado.s4~0_combout\ = (\controladora|estado_atual.s3~regout\ & \caminho_de_dados|sr_moeda|instancia0_reg|tmp\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controladora|estado_atual.s3~regout\,
	datad => \caminho_de_dados|sr_moeda|instancia0_reg|tmp\(16),
	combout => \controladora|prox_estado.s4~0_combout\);

-- Location: LCFF_X30_Y22_N25
\controladora|estado_atual.s4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \game_clock~clkctrl_outclk\,
	datain => \controladora|prox_estado.s4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controladora|estado_atual.s4~regout\);

-- Location: LCCOMB_X28_Y21_N2
\controladora|prox_estado.s5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controladora|prox_estado.s5~0_combout\ = (\controladora|estado_atual.s4~regout\ & (\caminho_de_dados|sr_obstaculo|instancia1_reg|tmp\(16) $ (!\caminho_de_dados|player_position|qi~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|sr_obstaculo|instancia1_reg|tmp\(16),
	datab => \controladora|estado_atual.s4~regout\,
	datad => \caminho_de_dados|player_position|qi~2_combout\,
	combout => \controladora|prox_estado.s5~0_combout\);

-- Location: LCFF_X28_Y21_N3
\controladora|estado_atual.s5\ : cycloneii_lcell_ff
PORT MAP (
	clk => \game_clock~clkctrl_outclk\,
	datain => \controladora|prox_estado.s5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controladora|estado_atual.s5~regout\);

-- Location: LCCOMB_X30_Y21_N20
\controladora|prox_estado.s7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controladora|prox_estado.s7~0_combout\ = (\controladora|estado_atual.s5~regout\ & \caminho_de_dados|player_reg|qi~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controladora|estado_atual.s5~regout\,
	datad => \caminho_de_dados|player_reg|qi~2_combout\,
	combout => \controladora|prox_estado.s7~0_combout\);

-- Location: LCFF_X30_Y21_N21
\controladora|estado_atual.s7\ : cycloneii_lcell_ff
PORT MAP (
	clk => \game_clock~clkctrl_outclk\,
	datain => \controladora|prox_estado.s7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controladora|estado_atual.s7~regout\);

-- Location: LCFF_X32_Y22_N19
\caminho_de_dados|contador_moedas_2|cnt[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \game_clock~clkctrl_outclk\,
	datain => \caminho_de_dados|contador_moedas_2|Add0~2_combout\,
	aclr => \caminho_de_dados|contador_moedas_2|cnt[4]~16_combout\,
	ena => \controladora|estado_atual.s7~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|contador_moedas_2|cnt\(2));

-- Location: LCCOMB_X32_Y22_N30
\caminho_de_dados|contador_moedas_2|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|contador_moedas_2|LessThan0~0_combout\ = (\caminho_de_dados|contador_moedas_2|cnt[5]~6_combout\ & ((\caminho_de_dados|contador_moedas_2|cnt\(2)) # ((\caminho_de_dados|contador_moedas_2|cnt\(3)) # 
-- (\caminho_de_dados|contador_moedas_2|cnt\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|contador_moedas_2|cnt[5]~6_combout\,
	datab => \caminho_de_dados|contador_moedas_2|cnt\(2),
	datac => \caminho_de_dados|contador_moedas_2|cnt\(3),
	datad => \caminho_de_dados|contador_moedas_2|cnt\(4),
	combout => \caminho_de_dados|contador_moedas_2|LessThan0~0_combout\);

-- Location: LCCOMB_X31_Y22_N2
\caminho_de_dados|contador_moedas_2|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|contador_moedas_2|LessThan0~1_combout\ = (\caminho_de_dados|contador_moedas_2|cnt[6]~8_combout\ & \caminho_de_dados|contador_moedas_2|LessThan0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \caminho_de_dados|contador_moedas_2|cnt[6]~8_combout\,
	datad => \caminho_de_dados|contador_moedas_2|LessThan0~0_combout\,
	combout => \caminho_de_dados|contador_moedas_2|LessThan0~1_combout\);

-- Location: LCCOMB_X30_Y22_N26
\caminho_de_dados|contador_moedas_2|cnt[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|contador_moedas_2|cnt[0]~1_combout\ = (!\caminho_de_dados|contador_moedas_2|cnt[6]~17_combout\ & ((\caminho_de_dados|contador_moedas_2|LessThan0~1_combout\) # (\caminho_de_dados|contador_moedas_2|cnt[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \caminho_de_dados|contador_moedas_2|cnt[6]~17_combout\,
	datac => \caminho_de_dados|contador_moedas_2|LessThan0~1_combout\,
	datad => \caminho_de_dados|contador_moedas_2|cnt[0]~1_combout\,
	combout => \caminho_de_dados|contador_moedas_2|cnt[0]~1_combout\);

-- Location: LCCOMB_X32_Y22_N26
\caminho_de_dados|contador_moedas_2|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|contador_moedas_2|Add0~10_combout\ = \caminho_de_dados|contador_moedas_2|Add0~9\ $ (\caminho_de_dados|contador_moedas_2|cnt[6]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \caminho_de_dados|contador_moedas_2|cnt[6]~8_combout\,
	cin => \caminho_de_dados|contador_moedas_2|Add0~9\,
	combout => \caminho_de_dados|contador_moedas_2|Add0~10_combout\);

-- Location: LCCOMB_X31_Y22_N28
\caminho_de_dados|contador_moedas_2|cnt[6]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|contador_moedas_2|cnt[6]~9_combout\ = \caminho_de_dados|contador_moedas_2|Add0~10_combout\ $ (\caminho_de_dados|contador_moedas_2|cnt[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \caminho_de_dados|contador_moedas_2|Add0~10_combout\,
	datad => \caminho_de_dados|contador_moedas_2|cnt[0]~1_combout\,
	combout => \caminho_de_dados|contador_moedas_2|cnt[6]~9_combout\);

-- Location: LCFF_X31_Y22_N29
\caminho_de_dados|contador_moedas_2|cnt[6]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \game_clock~clkctrl_outclk\,
	datain => \caminho_de_dados|contador_moedas_2|cnt[6]~9_combout\,
	aclr => \caminho_de_dados|contador_moedas_2|cnt[0]~0_combout\,
	ena => \controladora|estado_atual.s7~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|contador_moedas_2|cnt[6]~_emulated_regout\);

-- Location: LCCOMB_X30_Y22_N28
\caminho_de_dados|contador_moedas_2|cnt[6]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|contador_moedas_2|cnt[6]~8_combout\ = (!\caminho_de_dados|contador_moedas_2|cnt[6]~17_combout\ & ((\caminho_de_dados|contador_moedas_2|LessThan0~1_combout\) # (\caminho_de_dados|contador_moedas_2|cnt[0]~1_combout\ $ 
-- (\caminho_de_dados|contador_moedas_2|cnt[6]~_emulated_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|contador_moedas_2|cnt[6]~17_combout\,
	datab => \caminho_de_dados|contador_moedas_2|cnt[0]~1_combout\,
	datac => \caminho_de_dados|contador_moedas_2|LessThan0~1_combout\,
	datad => \caminho_de_dados|contador_moedas_2|cnt[6]~_emulated_regout\,
	combout => \caminho_de_dados|contador_moedas_2|cnt[6]~8_combout\);

-- Location: LCCOMB_X31_Y22_N8
\caminho_de_dados|comparador_moedas|LessThan1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|comparador_moedas|LessThan1~1_cout\ = CARRY((!\caminho_de_dados|contador_moedas_1|cnt[0]~2_combout\ & \caminho_de_dados|contador_moedas_2|cnt[0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|contador_moedas_1|cnt[0]~2_combout\,
	datab => \caminho_de_dados|contador_moedas_2|cnt[0]~2_combout\,
	datad => VCC,
	cout => \caminho_de_dados|comparador_moedas|LessThan1~1_cout\);

-- Location: LCCOMB_X31_Y22_N10
\caminho_de_dados|comparador_moedas|LessThan1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|comparador_moedas|LessThan1~3_cout\ = CARRY((\caminho_de_dados|contador_moedas_1|cnt[1]~4_combout\ & ((!\caminho_de_dados|comparador_moedas|LessThan1~1_cout\) # (!\caminho_de_dados|contador_moedas_2|cnt[1]~4_combout\))) # 
-- (!\caminho_de_dados|contador_moedas_1|cnt[1]~4_combout\ & (!\caminho_de_dados|contador_moedas_2|cnt[1]~4_combout\ & !\caminho_de_dados|comparador_moedas|LessThan1~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|contador_moedas_1|cnt[1]~4_combout\,
	datab => \caminho_de_dados|contador_moedas_2|cnt[1]~4_combout\,
	datad => VCC,
	cin => \caminho_de_dados|comparador_moedas|LessThan1~1_cout\,
	cout => \caminho_de_dados|comparador_moedas|LessThan1~3_cout\);

-- Location: LCCOMB_X31_Y22_N12
\caminho_de_dados|comparador_moedas|LessThan1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|comparador_moedas|LessThan1~5_cout\ = CARRY((\caminho_de_dados|contador_moedas_1|cnt\(2) & (\caminho_de_dados|contador_moedas_2|cnt\(2) & !\caminho_de_dados|comparador_moedas|LessThan1~3_cout\)) # 
-- (!\caminho_de_dados|contador_moedas_1|cnt\(2) & ((\caminho_de_dados|contador_moedas_2|cnt\(2)) # (!\caminho_de_dados|comparador_moedas|LessThan1~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|contador_moedas_1|cnt\(2),
	datab => \caminho_de_dados|contador_moedas_2|cnt\(2),
	datad => VCC,
	cin => \caminho_de_dados|comparador_moedas|LessThan1~3_cout\,
	cout => \caminho_de_dados|comparador_moedas|LessThan1~5_cout\);

-- Location: LCCOMB_X31_Y22_N14
\caminho_de_dados|comparador_moedas|LessThan1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|comparador_moedas|LessThan1~7_cout\ = CARRY((\caminho_de_dados|contador_moedas_2|cnt\(3) & (\caminho_de_dados|contador_moedas_1|cnt\(3) & !\caminho_de_dados|comparador_moedas|LessThan1~5_cout\)) # 
-- (!\caminho_de_dados|contador_moedas_2|cnt\(3) & ((\caminho_de_dados|contador_moedas_1|cnt\(3)) # (!\caminho_de_dados|comparador_moedas|LessThan1~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|contador_moedas_2|cnt\(3),
	datab => \caminho_de_dados|contador_moedas_1|cnt\(3),
	datad => VCC,
	cin => \caminho_de_dados|comparador_moedas|LessThan1~5_cout\,
	cout => \caminho_de_dados|comparador_moedas|LessThan1~7_cout\);

-- Location: LCCOMB_X31_Y22_N16
\caminho_de_dados|comparador_moedas|LessThan1~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|comparador_moedas|LessThan1~9_cout\ = CARRY((\caminho_de_dados|contador_moedas_1|cnt\(4) & (\caminho_de_dados|contador_moedas_2|cnt\(4) & !\caminho_de_dados|comparador_moedas|LessThan1~7_cout\)) # 
-- (!\caminho_de_dados|contador_moedas_1|cnt\(4) & ((\caminho_de_dados|contador_moedas_2|cnt\(4)) # (!\caminho_de_dados|comparador_moedas|LessThan1~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|contador_moedas_1|cnt\(4),
	datab => \caminho_de_dados|contador_moedas_2|cnt\(4),
	datad => VCC,
	cin => \caminho_de_dados|comparador_moedas|LessThan1~7_cout\,
	cout => \caminho_de_dados|comparador_moedas|LessThan1~9_cout\);

-- Location: LCCOMB_X31_Y22_N18
\caminho_de_dados|comparador_moedas|LessThan1~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|comparador_moedas|LessThan1~11_cout\ = CARRY((\caminho_de_dados|contador_moedas_1|cnt[5]~6_combout\ & ((!\caminho_de_dados|comparador_moedas|LessThan1~9_cout\) # (!\caminho_de_dados|contador_moedas_2|cnt[5]~6_combout\))) # 
-- (!\caminho_de_dados|contador_moedas_1|cnt[5]~6_combout\ & (!\caminho_de_dados|contador_moedas_2|cnt[5]~6_combout\ & !\caminho_de_dados|comparador_moedas|LessThan1~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|contador_moedas_1|cnt[5]~6_combout\,
	datab => \caminho_de_dados|contador_moedas_2|cnt[5]~6_combout\,
	datad => VCC,
	cin => \caminho_de_dados|comparador_moedas|LessThan1~9_cout\,
	cout => \caminho_de_dados|comparador_moedas|LessThan1~11_cout\);

-- Location: LCCOMB_X31_Y22_N20
\caminho_de_dados|comparador_moedas|LessThan1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|comparador_moedas|LessThan1~12_combout\ = (\caminho_de_dados|contador_moedas_1|cnt[6]~8_combout\ & (!\caminho_de_dados|comparador_moedas|LessThan1~11_cout\ & \caminho_de_dados|contador_moedas_2|cnt[6]~8_combout\)) # 
-- (!\caminho_de_dados|contador_moedas_1|cnt[6]~8_combout\ & ((\caminho_de_dados|contador_moedas_2|cnt[6]~8_combout\) # (!\caminho_de_dados|comparador_moedas|LessThan1~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|contador_moedas_1|cnt[6]~8_combout\,
	datad => \caminho_de_dados|contador_moedas_2|cnt[6]~8_combout\,
	cin => \caminho_de_dados|comparador_moedas|LessThan1~11_cout\,
	combout => \caminho_de_dados|comparador_moedas|LessThan1~12_combout\);

-- Location: LCCOMB_X31_Y21_N0
\controladora|Selector6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controladora|Selector6~0_combout\ = (\controladora|estado_atual.s16~regout\ & ((\caminho_de_dados|comparador_moedas|LessThan1~12_combout\) # (\caminho_de_dados|comparador_moedas|LessThan0~12_combout\ $ 
-- (!\caminho_de_dados|comparador_moedas|Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controladora|estado_atual.s16~regout\,
	datab => \caminho_de_dados|comparador_moedas|LessThan1~12_combout\,
	datac => \caminho_de_dados|comparador_moedas|LessThan0~12_combout\,
	datad => \caminho_de_dados|comparador_moedas|Equal0~4_combout\,
	combout => \controladora|Selector6~0_combout\);

-- Location: LCCOMB_X31_Y21_N18
\controladora|Selector6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \controladora|Selector6~1_combout\ = (\controladora|Selector6~0_combout\) # ((!\caminho_de_dados|start_reg|qi~2_combout\ & \controladora|estado_atual.s17~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \caminho_de_dados|start_reg|qi~2_combout\,
	datac => \controladora|estado_atual.s17~regout\,
	datad => \controladora|Selector6~0_combout\,
	combout => \controladora|Selector6~1_combout\);

-- Location: LCFF_X31_Y21_N19
\controladora|estado_atual.s17\ : cycloneii_lcell_ff
PORT MAP (
	clk => \game_clock~clkctrl_outclk\,
	datain => \controladora|Selector6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controladora|estado_atual.s17~regout\);

-- Location: LCCOMB_X31_Y21_N14
\caminho_de_dados|lcd|controladora|prox_estado.s38~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lcd|controladora|prox_estado.s38~0_combout\ = (!\controladora|estado_atual.s17~regout\ & (!\controladora|estado_atual.s19~regout\ & !\controladora|estado_atual.s18~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controladora|estado_atual.s17~regout\,
	datac => \controladora|estado_atual.s19~regout\,
	datad => \controladora|estado_atual.s18~regout\,
	combout => \caminho_de_dados|lcd|controladora|prox_estado.s38~0_combout\);

-- Location: LCCOMB_X28_Y22_N12
\controladora|prox_estado.s2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controladora|prox_estado.s2~0_combout\ = (\caminho_de_dados|start_reg|qi~2_combout\ & ((\controladora|estado_atual.s1~regout\) # (!\caminho_de_dados|lcd|controladora|prox_estado.s38~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \caminho_de_dados|start_reg|qi~2_combout\,
	datac => \caminho_de_dados|lcd|controladora|prox_estado.s38~0_combout\,
	datad => \controladora|estado_atual.s1~regout\,
	combout => \controladora|prox_estado.s2~0_combout\);

-- Location: LCFF_X28_Y22_N13
\controladora|estado_atual.s2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \game_clock~combout\,
	datain => \controladora|prox_estado.s2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controladora|estado_atual.s2~regout\);

-- Location: LCCOMB_X29_Y21_N30
\controladora|ctrl_CLR_START\ : cycloneii_lcell_comb
-- Equation(s):
-- \controladora|ctrl_CLR_START~combout\ = (\controladora|estado_atual.s2~regout\) # (\controladora|estado_atual.s14~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controladora|estado_atual.s2~regout\,
	datad => \controladora|estado_atual.s14~regout\,
	combout => \controladora|ctrl_CLR_START~combout\);

-- Location: PIN_W26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\game_start~I\ : cycloneii_io
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
	padio => ww_game_start,
	combout => \game_start~combout\);

-- Location: LCCOMB_X29_Y21_N12
\caminho_de_dados|start_reg|qi~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|start_reg|qi~1_combout\ = (!\controladora|ctrl_CLR_START~combout\ & ((\game_start~combout\) # (\caminho_de_dados|start_reg|qi~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controladora|ctrl_CLR_START~combout\,
	datac => \game_start~combout\,
	datad => \caminho_de_dados|start_reg|qi~1_combout\,
	combout => \caminho_de_dados|start_reg|qi~1_combout\);

-- Location: LCCOMB_X29_Y21_N22
\caminho_de_dados|start_reg|qi~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|start_reg|qi~2_combout\ = (!\controladora|ctrl_CLR_START~combout\ & ((\game_start~combout\) # (\caminho_de_dados|start_reg|qi~_emulated_regout\ $ (\caminho_de_dados|start_reg|qi~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|start_reg|qi~_emulated_regout\,
	datab => \controladora|ctrl_CLR_START~combout\,
	datac => \game_start~combout\,
	datad => \caminho_de_dados|start_reg|qi~1_combout\,
	combout => \caminho_de_dados|start_reg|qi~2_combout\);

-- Location: LCCOMB_X30_Y21_N26
\controladora|estado_atual.s0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controladora|estado_atual.s0~0_combout\ = (\caminho_de_dados|lcd|controladora|atual_estado.s14~regout\) # ((\controladora|estado_atual.s0~regout\) # (\caminho_de_dados|lcd|controladora|atual_estado.s52~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \caminho_de_dados|lcd|controladora|atual_estado.s14~regout\,
	datac => \controladora|estado_atual.s0~regout\,
	datad => \caminho_de_dados|lcd|controladora|atual_estado.s52~regout\,
	combout => \controladora|estado_atual.s0~0_combout\);

-- Location: LCFF_X30_Y21_N27
\controladora|estado_atual.s0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \game_clock~clkctrl_outclk\,
	datain => \controladora|estado_atual.s0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controladora|estado_atual.s0~regout\);

-- Location: LCCOMB_X31_Y21_N6
\controladora|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controladora|Selector0~0_combout\ = (!\controladora|estado_atual.s0~regout\ & ((\caminho_de_dados|lcd|controladora|atual_estado.s52~regout\) # (\caminho_de_dados|lcd|controladora|atual_estado.s14~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controladora|estado_atual.s0~regout\,
	datac => \caminho_de_dados|lcd|controladora|atual_estado.s52~regout\,
	datad => \caminho_de_dados|lcd|controladora|atual_estado.s14~regout\,
	combout => \controladora|Selector0~0_combout\);

-- Location: LCCOMB_X31_Y21_N12
\controladora|Selector0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \controladora|Selector0~1_combout\ = (\controladora|Selector0~0_combout\) # ((!\caminho_de_dados|start_reg|qi~2_combout\ & \controladora|estado_atual.s1~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \caminho_de_dados|start_reg|qi~2_combout\,
	datac => \controladora|estado_atual.s1~regout\,
	datad => \controladora|Selector0~0_combout\,
	combout => \controladora|Selector0~1_combout\);

-- Location: LCFF_X31_Y21_N13
\controladora|estado_atual.s1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \game_clock~clkctrl_outclk\,
	datain => \controladora|Selector0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controladora|estado_atual.s1~regout\);

-- Location: LCCOMB_X31_Y21_N4
\caminho_de_dados|lcd|controladora|prox_estado.s15~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lcd|controladora|prox_estado.s15~2_combout\ = (\caminho_de_dados|lcd|controladora|atual_estado.s14~regout\ & ((\controladora|estado_atual.s1~regout\) # ((\controladora|estado_atual.s15~regout\) # 
-- (!\caminho_de_dados|lcd|controladora|prox_estado.s38~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|lcd|controladora|atual_estado.s14~regout\,
	datab => \controladora|estado_atual.s1~regout\,
	datac => \caminho_de_dados|lcd|controladora|prox_estado.s38~0_combout\,
	datad => \controladora|estado_atual.s15~regout\,
	combout => \caminho_de_dados|lcd|controladora|prox_estado.s15~2_combout\);

-- Location: LCFF_X31_Y21_N5
\caminho_de_dados|lcd|controladora|atual_estado.s15\ : cycloneii_lcell_ff
PORT MAP (
	clk => \caminho_de_dados|div_freq_10kHz|tmp~clkctrl_outclk\,
	datain => \caminho_de_dados|lcd|controladora|prox_estado.s15~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|lcd|controladora|atual_estado.s15~regout\);

-- Location: LCCOMB_X32_Y20_N24
\caminho_de_dados|lcd|controladora|Selector6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lcd|controladora|Selector6~0_combout\ = (\caminho_de_dados|lcd|controladora|atual_estado.s15~regout\) # ((\caminho_de_dados|lcd|controladora|atual_estado.s16~regout\ & !\caminho_de_dados|lcd|datapath|comp_t40|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \caminho_de_dados|lcd|controladora|atual_estado.s15~regout\,
	datac => \caminho_de_dados|lcd|controladora|atual_estado.s16~regout\,
	datad => \caminho_de_dados|lcd|datapath|comp_t40|LessThan0~0_combout\,
	combout => \caminho_de_dados|lcd|controladora|Selector6~0_combout\);

-- Location: LCFF_X32_Y20_N25
\caminho_de_dados|lcd|controladora|atual_estado.s16\ : cycloneii_lcell_ff
PORT MAP (
	clk => \caminho_de_dados|div_freq_10kHz|tmp~clkctrl_outclk\,
	datain => \caminho_de_dados|lcd|controladora|Selector6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|lcd|controladora|atual_estado.s16~regout\);

-- Location: LCCOMB_X32_Y20_N12
\caminho_de_dados|lcd|controladora|prox_estado.s17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lcd|controladora|prox_estado.s17~0_combout\ = (\caminho_de_dados|lcd|controladora|atual_estado.s16~regout\ & \caminho_de_dados|lcd|datapath|comp_t40|LessThan0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \caminho_de_dados|lcd|controladora|atual_estado.s16~regout\,
	datad => \caminho_de_dados|lcd|datapath|comp_t40|LessThan0~0_combout\,
	combout => \caminho_de_dados|lcd|controladora|prox_estado.s17~0_combout\);

-- Location: LCFF_X32_Y20_N13
\caminho_de_dados|lcd|controladora|atual_estado.s17\ : cycloneii_lcell_ff
PORT MAP (
	clk => \caminho_de_dados|div_freq_10kHz|tmp~clkctrl_outclk\,
	datain => \caminho_de_dados|lcd|controladora|prox_estado.s17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|lcd|controladora|atual_estado.s17~regout\);

-- Location: LCCOMB_X31_Y21_N28
\controladora|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controladora|WideOr3~0_combout\ = (\controladora|estado_atual.s19~regout\) # ((\controladora|estado_atual.s15~regout\) # (\controladora|estado_atual.s17~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controladora|estado_atual.s19~regout\,
	datac => \controladora|estado_atual.s15~regout\,
	datad => \controladora|estado_atual.s17~regout\,
	combout => \controladora|WideOr3~0_combout\);

-- Location: LCCOMB_X31_Y21_N24
\caminho_de_dados|lcd|controladora|Selector12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lcd|controladora|Selector12~0_combout\ = (\caminho_de_dados|lcd|controladora|atual_estado.s17~regout\ & ((\controladora|WideOr3~0_combout\) # (\controladora|WideOr1~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \caminho_de_dados|lcd|controladora|atual_estado.s17~regout\,
	datac => \controladora|WideOr3~0_combout\,
	datad => \controladora|WideOr1~combout\,
	combout => \caminho_de_dados|lcd|controladora|Selector12~0_combout\);

-- Location: LCFF_X31_Y21_N25
\caminho_de_dados|lcd|controladora|atual_estado.s37\ : cycloneii_lcell_ff
PORT MAP (
	clk => \caminho_de_dados|div_freq_10kHz|tmp~clkctrl_outclk\,
	datain => \caminho_de_dados|lcd|controladora|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|lcd|controladora|atual_estado.s37~regout\);

-- Location: LCCOMB_X31_Y21_N26
\caminho_de_dados|lcd|controladora|prox_estado.s48~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lcd|controladora|prox_estado.s48~0_combout\ = (\caminho_de_dados|lcd|controladora|atual_estado.s37~regout\ & !\controladora|WideOr1~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \caminho_de_dados|lcd|controladora|atual_estado.s37~regout\,
	datad => \controladora|WideOr1~combout\,
	combout => \caminho_de_dados|lcd|controladora|prox_estado.s48~0_combout\);

-- Location: LCFF_X31_Y21_N27
\caminho_de_dados|lcd|controladora|atual_estado.s48\ : cycloneii_lcell_ff
PORT MAP (
	clk => \caminho_de_dados|div_freq_10kHz|tmp~clkctrl_outclk\,
	datain => \caminho_de_dados|lcd|controladora|prox_estado.s48~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|lcd|controladora|atual_estado.s48~regout\);

-- Location: LCFF_X32_Y20_N3
\caminho_de_dados|lcd|controladora|atual_estado.s49\ : cycloneii_lcell_ff
PORT MAP (
	clk => \caminho_de_dados|div_freq_10kHz|tmp~clkctrl_outclk\,
	sdata => \caminho_de_dados|lcd|controladora|atual_estado.s48~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|lcd|controladora|atual_estado.s49~regout\);

-- Location: LCCOMB_X31_Y20_N30
\caminho_de_dados|lcd|controladora|prox_estado.s35~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lcd|controladora|prox_estado.s35~0_combout\ = (\caminho_de_dados|lcd|controladora|atual_estado.s33~regout\ & !\caminho_de_dados|player_position|qi~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|lcd|controladora|atual_estado.s33~regout\,
	datad => \caminho_de_dados|player_position|qi~2_combout\,
	combout => \caminho_de_dados|lcd|controladora|prox_estado.s35~0_combout\);

-- Location: LCFF_X31_Y20_N31
\caminho_de_dados|lcd|controladora|atual_estado.s35\ : cycloneii_lcell_ff
PORT MAP (
	clk => \caminho_de_dados|div_freq_10kHz|tmp~clkctrl_outclk\,
	datain => \caminho_de_dados|lcd|controladora|prox_estado.s35~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|lcd|controladora|atual_estado.s35~regout\);

-- Location: LCCOMB_X31_Y20_N0
\caminho_de_dados|lcd|controladora|Selector11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lcd|controladora|Selector11~0_combout\ = (\caminho_de_dados|lcd|controladora|atual_estado.s35~regout\) # ((\caminho_de_dados|lcd|controladora|atual_estado.s33~regout\ & \caminho_de_dados|player_position|qi~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|lcd|controladora|atual_estado.s33~regout\,
	datab => \caminho_de_dados|lcd|controladora|atual_estado.s35~regout\,
	datad => \caminho_de_dados|player_position|qi~2_combout\,
	combout => \caminho_de_dados|lcd|controladora|Selector11~0_combout\);

-- Location: LCFF_X31_Y20_N1
\caminho_de_dados|lcd|controladora|atual_estado.s34\ : cycloneii_lcell_ff
PORT MAP (
	clk => \caminho_de_dados|div_freq_10kHz|tmp~clkctrl_outclk\,
	datain => \caminho_de_dados|lcd|controladora|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|lcd|controladora|atual_estado.s34~regout\);

-- Location: LCCOMB_X32_Y20_N28
\caminho_de_dados|lcd|controladora|WideOr7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lcd|controladora|WideOr7~0_combout\ = (!\caminho_de_dados|lcd|controladora|atual_estado.s47~regout\ & (!\caminho_de_dados|lcd|controladora|atual_estado.s49~regout\ & (!\caminho_de_dados|lcd|controladora|atual_estado.s50~regout\ & 
-- !\caminho_de_dados|lcd|controladora|atual_estado.s34~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|lcd|controladora|atual_estado.s47~regout\,
	datab => \caminho_de_dados|lcd|controladora|atual_estado.s49~regout\,
	datac => \caminho_de_dados|lcd|controladora|atual_estado.s50~regout\,
	datad => \caminho_de_dados|lcd|controladora|atual_estado.s34~regout\,
	combout => \caminho_de_dados|lcd|controladora|WideOr7~0_combout\);

-- Location: LCCOMB_X28_Y23_N26
\caminho_de_dados|lcd|datapath|cont_pos|i[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lcd|datapath|cont_pos|i[1]~2_combout\ = \caminho_de_dados|lcd|datapath|cont_pos|i\(1) $ (((\caminho_de_dados|lcd|datapath|cont_pos|i\(0) & \caminho_de_dados|lcd|controladora|atual_estado.s28~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|lcd|datapath|cont_pos|i\(0),
	datac => \caminho_de_dados|lcd|datapath|cont_pos|i\(1),
	datad => \caminho_de_dados|lcd|controladora|atual_estado.s28~regout\,
	combout => \caminho_de_dados|lcd|datapath|cont_pos|i[1]~2_combout\);

-- Location: LCCOMB_X32_Y21_N30
\caminho_de_dados|lcd|controladora|prox_estado.s32~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lcd|controladora|prox_estado.s32~0_combout\ = (\caminho_de_dados|lcd|controladora|atual_estado.s29~regout\ & \caminho_de_dados|lcd|datapath|reg_linha|qi~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \caminho_de_dados|lcd|controladora|atual_estado.s29~regout\,
	datad => \caminho_de_dados|lcd|datapath|reg_linha|qi~2_combout\,
	combout => \caminho_de_dados|lcd|controladora|prox_estado.s32~0_combout\);

-- Location: LCFF_X32_Y21_N31
\caminho_de_dados|lcd|controladora|atual_estado.s32\ : cycloneii_lcell_ff
PORT MAP (
	clk => \caminho_de_dados|div_freq_10kHz|tmp~clkctrl_outclk\,
	datain => \caminho_de_dados|lcd|controladora|prox_estado.s32~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|lcd|controladora|atual_estado.s32~regout\);

-- Location: LCCOMB_X32_Y21_N6
\caminho_de_dados|lcd|datapath|dp_E~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lcd|datapath|dp_E~2_combout\ = ((\caminho_de_dados|lcd|controladora|atual_estado.s32~regout\) # ((\caminho_de_dados|lcd|controladora|atual_estado.s14~regout\) # (\caminho_de_dados|lcd|controladora|atual_estado.s30~regout\))) # 
-- (!\caminho_de_dados|lcd|controladora|atual_estado.s0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|lcd|controladora|atual_estado.s0~regout\,
	datab => \caminho_de_dados|lcd|controladora|atual_estado.s32~regout\,
	datac => \caminho_de_dados|lcd|controladora|atual_estado.s14~regout\,
	datad => \caminho_de_dados|lcd|controladora|atual_estado.s30~regout\,
	combout => \caminho_de_dados|lcd|datapath|dp_E~2_combout\);

-- Location: LCFF_X28_Y23_N27
\caminho_de_dados|lcd|datapath|cont_pos|i[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \caminho_de_dados|div_freq_10kHz|tmp~clkctrl_outclk\,
	datain => \caminho_de_dados|lcd|datapath|cont_pos|i[1]~2_combout\,
	aclr => \caminho_de_dados|lcd|datapath|dp_E~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|lcd|datapath|cont_pos|i\(1));

-- Location: LCCOMB_X28_Y23_N22
\caminho_de_dados|lcd|datapath|cont_pos|i[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lcd|datapath|cont_pos|i[2]~1_combout\ = \caminho_de_dados|lcd|datapath|cont_pos|i\(2) $ (((\caminho_de_dados|lcd|datapath|cont_pos|i\(0) & (\caminho_de_dados|lcd|datapath|cont_pos|i\(1) & 
-- \caminho_de_dados|lcd|controladora|atual_estado.s28~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|lcd|datapath|cont_pos|i\(0),
	datab => \caminho_de_dados|lcd|datapath|cont_pos|i\(1),
	datac => \caminho_de_dados|lcd|datapath|cont_pos|i\(2),
	datad => \caminho_de_dados|lcd|controladora|atual_estado.s28~regout\,
	combout => \caminho_de_dados|lcd|datapath|cont_pos|i[2]~1_combout\);

-- Location: LCFF_X28_Y23_N23
\caminho_de_dados|lcd|datapath|cont_pos|i[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \caminho_de_dados|div_freq_10kHz|tmp~clkctrl_outclk\,
	datain => \caminho_de_dados|lcd|datapath|cont_pos|i[2]~1_combout\,
	aclr => \caminho_de_dados|lcd|datapath|dp_E~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|lcd|datapath|cont_pos|i\(2));

-- Location: LCCOMB_X29_Y23_N20
\caminho_de_dados|lcd|controladora|prox_estado.s29~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lcd|controladora|prox_estado.s29~0_combout\ = (\caminho_de_dados|lcd|datapath|cont_pos|i\(0) & (\caminho_de_dados|lcd|datapath|cont_pos|i\(1) & \caminho_de_dados|lcd|datapath|cont_pos|i\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|lcd|datapath|cont_pos|i\(0),
	datab => \caminho_de_dados|lcd|datapath|cont_pos|i\(1),
	datad => \caminho_de_dados|lcd|datapath|cont_pos|i\(2),
	combout => \caminho_de_dados|lcd|controladora|prox_estado.s29~0_combout\);

-- Location: LCCOMB_X30_Y23_N16
\caminho_de_dados|lcd|datapath|cont_pos|i[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lcd|datapath|cont_pos|i[3]~0_combout\ = \caminho_de_dados|lcd|datapath|cont_pos|i\(3) $ (((\caminho_de_dados|lcd|controladora|atual_estado.s28~regout\ & \caminho_de_dados|lcd|controladora|prox_estado.s29~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \caminho_de_dados|lcd|controladora|atual_estado.s28~regout\,
	datac => \caminho_de_dados|lcd|datapath|cont_pos|i\(3),
	datad => \caminho_de_dados|lcd|controladora|prox_estado.s29~0_combout\,
	combout => \caminho_de_dados|lcd|datapath|cont_pos|i[3]~0_combout\);

-- Location: LCFF_X30_Y23_N17
\caminho_de_dados|lcd|datapath|cont_pos|i[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \caminho_de_dados|div_freq_10kHz|tmp~clkctrl_outclk\,
	datain => \caminho_de_dados|lcd|datapath|cont_pos|i[3]~0_combout\,
	aclr => \caminho_de_dados|lcd|datapath|dp_E~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|lcd|datapath|cont_pos|i\(3));

-- Location: LCCOMB_X30_Y23_N2
\caminho_de_dados|lcd|controladora|prox_estado.s29~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lcd|controladora|prox_estado.s29~1_combout\ = (\caminho_de_dados|lcd|controladora|atual_estado.s27~regout\ & (\caminho_de_dados|lcd|datapath|cont_pos|i\(3) & \caminho_de_dados|lcd|controladora|prox_estado.s29~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \caminho_de_dados|lcd|controladora|atual_estado.s27~regout\,
	datac => \caminho_de_dados|lcd|datapath|cont_pos|i\(3),
	datad => \caminho_de_dados|lcd|controladora|prox_estado.s29~0_combout\,
	combout => \caminho_de_dados|lcd|controladora|prox_estado.s29~1_combout\);

-- Location: LCFF_X30_Y23_N3
\caminho_de_dados|lcd|controladora|atual_estado.s29\ : cycloneii_lcell_ff
PORT MAP (
	clk => \caminho_de_dados|div_freq_10kHz|tmp~clkctrl_outclk\,
	datain => \caminho_de_dados|lcd|controladora|prox_estado.s29~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|lcd|controladora|atual_estado.s29~regout\);

-- Location: LCCOMB_X32_Y21_N0
\caminho_de_dados|lcd|controladora|prox_estado.s30~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lcd|controladora|prox_estado.s30~0_combout\ = (\caminho_de_dados|lcd|controladora|atual_estado.s29~regout\ & !\caminho_de_dados|lcd|datapath|reg_linha|qi~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \caminho_de_dados|lcd|controladora|atual_estado.s29~regout\,
	datad => \caminho_de_dados|lcd|datapath|reg_linha|qi~2_combout\,
	combout => \caminho_de_dados|lcd|controladora|prox_estado.s30~0_combout\);

-- Location: LCFF_X32_Y21_N1
\caminho_de_dados|lcd|controladora|atual_estado.s30\ : cycloneii_lcell_ff
PORT MAP (
	clk => \caminho_de_dados|div_freq_10kHz|tmp~clkctrl_outclk\,
	datain => \caminho_de_dados|lcd|controladora|prox_estado.s30~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|lcd|controladora|atual_estado.s30~regout\);

-- Location: LCCOMB_X32_Y21_N8
\caminho_de_dados|lcd|datapath|dp_E~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lcd|datapath|dp_E~7_combout\ = (\caminho_de_dados|lcd|controladora|atual_estado.s32~regout\) # ((\caminho_de_dados|lcd|controladora|atual_estado.s14~regout\) # (!\caminho_de_dados|lcd|controladora|atual_estado.s0~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \caminho_de_dados|lcd|controladora|atual_estado.s32~regout\,
	datac => \caminho_de_dados|lcd|controladora|atual_estado.s14~regout\,
	datad => \caminho_de_dados|lcd|controladora|atual_estado.s0~regout\,
	combout => \caminho_de_dados|lcd|datapath|dp_E~7_combout\);

-- Location: LCCOMB_X32_Y21_N26
\caminho_de_dados|lcd|datapath|reg_linha|qi~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lcd|datapath|reg_linha|qi~1_combout\ = (!\caminho_de_dados|lcd|datapath|dp_E~7_combout\ & ((\caminho_de_dados|lcd|controladora|atual_estado.s30~regout\) # (\caminho_de_dados|lcd|datapath|reg_linha|qi~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|lcd|datapath|dp_E~7_combout\,
	datab => \caminho_de_dados|lcd|controladora|atual_estado.s30~regout\,
	datad => \caminho_de_dados|lcd|datapath|reg_linha|qi~1_combout\,
	combout => \caminho_de_dados|lcd|datapath|reg_linha|qi~1_combout\);

-- Location: LCCOMB_X32_Y21_N24
\caminho_de_dados|lcd|datapath|reg_linha|qi~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lcd|datapath|reg_linha|qi~2_combout\ = (!\caminho_de_dados|lcd|datapath|dp_E~7_combout\ & ((\caminho_de_dados|lcd|controladora|atual_estado.s30~regout\) # (\caminho_de_dados|lcd|datapath|reg_linha|qi~_emulated_regout\ $ 
-- (\caminho_de_dados|lcd|datapath|reg_linha|qi~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|lcd|datapath|reg_linha|qi~_emulated_regout\,
	datab => \caminho_de_dados|lcd|controladora|atual_estado.s30~regout\,
	datac => \caminho_de_dados|lcd|datapath|dp_E~7_combout\,
	datad => \caminho_de_dados|lcd|datapath|reg_linha|qi~1_combout\,
	combout => \caminho_de_dados|lcd|datapath|reg_linha|qi~2_combout\);

-- Location: LCCOMB_X33_Y21_N30
\caminho_de_dados|lcd|datapath|cont_obj|cnt[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lcd|datapath|cont_obj|cnt[0]~0_combout\ = \caminho_de_dados|lcd|controladora|atual_estado.s32~regout\ $ (\caminho_de_dados|lcd|datapath|cont_obj|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|lcd|controladora|atual_estado.s32~regout\,
	datac => \caminho_de_dados|lcd|datapath|cont_obj|cnt\(0),
	combout => \caminho_de_dados|lcd|datapath|cont_obj|cnt[0]~0_combout\);

-- Location: LCCOMB_X33_Y21_N10
\caminho_de_dados|lcd|controladora|WideOr3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lcd|controladora|WideOr3~1_combout\ = (\caminho_de_dados|lcd|controladora|atual_estado.s14~regout\) # (!\caminho_de_dados|lcd|controladora|atual_estado.s0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \caminho_de_dados|lcd|controladora|atual_estado.s0~regout\,
	datac => \caminho_de_dados|lcd|controladora|atual_estado.s14~regout\,
	combout => \caminho_de_dados|lcd|controladora|WideOr3~1_combout\);

-- Location: LCFF_X33_Y21_N31
\caminho_de_dados|lcd|datapath|cont_obj|cnt[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \caminho_de_dados|div_freq_10kHz|tmp~clkctrl_outclk\,
	datain => \caminho_de_dados|lcd|datapath|cont_obj|cnt[0]~0_combout\,
	aclr => \caminho_de_dados|lcd|controladora|WideOr3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|lcd|datapath|cont_obj|cnt\(0));

-- Location: LCCOMB_X29_Y23_N4
\caminho_de_dados|lcd|datapath|mux15_moeda_q0|Mux0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lcd|datapath|mux15_moeda_q0|Mux0~10_combout\ = (\caminho_de_dados|lcd|datapath|cont_pos|i\(3) & ((\caminho_de_dados|lcd|datapath|cont_pos|i\(2)) # ((\caminho_de_dados|sr_obstaculo|instancia0_reg|tmp\(10))))) # 
-- (!\caminho_de_dados|lcd|datapath|cont_pos|i\(3) & (!\caminho_de_dados|lcd|datapath|cont_pos|i\(2) & (\caminho_de_dados|sr_obstaculo|instancia0_reg|tmp\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|lcd|datapath|cont_pos|i\(3),
	datab => \caminho_de_dados|lcd|datapath|cont_pos|i\(2),
	datac => \caminho_de_dados|sr_obstaculo|instancia0_reg|tmp\(2),
	datad => \caminho_de_dados|sr_obstaculo|instancia0_reg|tmp\(10),
	combout => \caminho_de_dados|lcd|datapath|mux15_moeda_q0|Mux0~10_combout\);

-- Location: LCCOMB_X29_Y23_N28
\caminho_de_dados|lcd|datapath|mux15_moeda_q0|Mux0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lcd|datapath|mux15_moeda_q0|Mux0~11_combout\ = (\caminho_de_dados|lcd|datapath|cont_pos|i\(2) & ((\caminho_de_dados|lcd|datapath|mux15_moeda_q0|Mux0~10_combout\ & (\caminho_de_dados|sr_obstaculo|instancia0_reg|tmp\(14))) # 
-- (!\caminho_de_dados|lcd|datapath|mux15_moeda_q0|Mux0~10_combout\ & ((\caminho_de_dados|sr_obstaculo|instancia0_reg|tmp\(6)))))) # (!\caminho_de_dados|lcd|datapath|cont_pos|i\(2) & (((\caminho_de_dados|lcd|datapath|mux15_moeda_q0|Mux0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|sr_obstaculo|instancia0_reg|tmp\(14),
	datab => \caminho_de_dados|lcd|datapath|cont_pos|i\(2),
	datac => \caminho_de_dados|sr_obstaculo|instancia0_reg|tmp\(6),
	datad => \caminho_de_dados|lcd|datapath|mux15_moeda_q0|Mux0~10_combout\,
	combout => \caminho_de_dados|lcd|datapath|mux15_moeda_q0|Mux0~11_combout\);

-- Location: LCCOMB_X29_Y23_N10
\caminho_de_dados|lcd|datapath|mux15_moeda_q0|Mux0~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lcd|datapath|mux15_moeda_q0|Mux0~17_combout\ = (\caminho_de_dados|lcd|datapath|cont_pos|i\(3) & (\caminho_de_dados|lcd|datapath|cont_pos|i\(2))) # (!\caminho_de_dados|lcd|datapath|cont_pos|i\(3) & 
-- ((\caminho_de_dados|lcd|datapath|cont_pos|i\(2) & ((\caminho_de_dados|sr_obstaculo|instancia0_reg|tmp\(8)))) # (!\caminho_de_dados|lcd|datapath|cont_pos|i\(2) & (\caminho_de_dados|sr_obstaculo|instancia0_reg|tmp\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|lcd|datapath|cont_pos|i\(3),
	datab => \caminho_de_dados|lcd|datapath|cont_pos|i\(2),
	datac => \caminho_de_dados|sr_obstaculo|instancia0_reg|tmp\(4),
	datad => \caminho_de_dados|sr_obstaculo|instancia0_reg|tmp\(8),
	combout => \caminho_de_dados|lcd|datapath|mux15_moeda_q0|Mux0~17_combout\);

-- Location: LCCOMB_X29_Y23_N16
\caminho_de_dados|lcd|datapath|mux15_moeda_q0|Mux0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lcd|datapath|mux15_moeda_q0|Mux0~18_combout\ = (\caminho_de_dados|lcd|datapath|cont_pos|i\(3) & ((\caminho_de_dados|lcd|datapath|mux15_moeda_q0|Mux0~17_combout\ & ((\caminho_de_dados|sr_obstaculo|instancia0_reg|tmp\(16)))) # 
-- (!\caminho_de_dados|lcd|datapath|mux15_moeda_q0|Mux0~17_combout\ & (\caminho_de_dados|sr_obstaculo|instancia0_reg|tmp\(12))))) # (!\caminho_de_dados|lcd|datapath|cont_pos|i\(3) & (((\caminho_de_dados|lcd|datapath|mux15_moeda_q0|Mux0~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|lcd|datapath|cont_pos|i\(3),
	datab => \caminho_de_dados|sr_obstaculo|instancia0_reg|tmp\(12),
	datac => \caminho_de_dados|sr_obstaculo|instancia0_reg|tmp\(16),
	datad => \caminho_de_dados|lcd|datapath|mux15_moeda_q0|Mux0~17_combout\,
	combout => \caminho_de_dados|lcd|datapath|mux15_moeda_q0|Mux0~18_combout\);

-- Location: LCCOMB_X29_Y23_N26
\caminho_de_dados|lcd|datapath|mux15_moeda_q0|Mux0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lcd|datapath|mux15_moeda_q0|Mux0~12_combout\ = (\caminho_de_dados|lcd|datapath|cont_pos|i\(3) & (\caminho_de_dados|lcd|datapath|cont_pos|i\(2))) # (!\caminho_de_dados|lcd|datapath|cont_pos|i\(3) & 
-- ((\caminho_de_dados|lcd|datapath|cont_pos|i\(2) & ((\caminho_de_dados|sr_obstaculo|instancia0_reg|tmp\(7)))) # (!\caminho_de_dados|lcd|datapath|cont_pos|i\(2) & (\caminho_de_dados|sr_obstaculo|instancia0_reg|tmp\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|lcd|datapath|cont_pos|i\(3),
	datab => \caminho_de_dados|lcd|datapath|cont_pos|i\(2),
	datac => \caminho_de_dados|sr_obstaculo|instancia0_reg|tmp\(3),
	datad => \caminho_de_dados|sr_obstaculo|instancia0_reg|tmp\(7),
	combout => \caminho_de_dados|lcd|datapath|mux15_moeda_q0|Mux0~12_combout\);

-- Location: LCCOMB_X29_Y23_N14
\caminho_de_dados|lcd|datapath|mux15_moeda_q0|Mux0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lcd|datapath|mux15_moeda_q0|Mux0~13_combout\ = (\caminho_de_dados|lcd|datapath|cont_pos|i\(3) & ((\caminho_de_dados|lcd|datapath|mux15_moeda_q0|Mux0~12_combout\ & ((\caminho_de_dados|sr_obstaculo|instancia0_reg|tmp\(15)))) # 
-- (!\caminho_de_dados|lcd|datapath|mux15_moeda_q0|Mux0~12_combout\ & (\caminho_de_dados|sr_obstaculo|instancia0_reg|tmp\(11))))) # (!\caminho_de_dados|lcd|datapath|cont_pos|i\(3) & (\caminho_de_dados|lcd|datapath|mux15_moeda_q0|Mux0~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|lcd|datapath|cont_pos|i\(3),
	datab => \caminho_de_dados|lcd|datapath|mux15_moeda_q0|Mux0~12_combout\,
	datac => \caminho_de_dados|sr_obstaculo|instancia0_reg|tmp\(11),
	datad => \caminho_de_dados|sr_obstaculo|instancia0_reg|tmp\(15),
	combout => \caminho_de_dados|lcd|datapath|mux15_moeda_q0|Mux0~13_combout\);

-- Location: LCCOMB_X29_Y23_N22
\caminho_de_dados|lcd|datapath|mux15_moeda_q0|Mux0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lcd|datapath|mux15_moeda_q0|Mux0~14_combout\ = (\caminho_de_dados|lcd|datapath|cont_pos|i\(3) & ((\caminho_de_dados|lcd|datapath|cont_pos|i\(2)) # ((\caminho_de_dados|sr_obstaculo|instancia0_reg|tmp\(9))))) # 
-- (!\caminho_de_dados|lcd|datapath|cont_pos|i\(3) & (!\caminho_de_dados|lcd|datapath|cont_pos|i\(2) & ((\caminho_de_dados|sr_obstaculo|instancia0_reg|tmp\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|lcd|datapath|cont_pos|i\(3),
	datab => \caminho_de_dados|lcd|datapath|cont_pos|i\(2),
	datac => \caminho_de_dados|sr_obstaculo|instancia0_reg|tmp\(9),
	datad => \caminho_de_dados|sr_obstaculo|instancia0_reg|tmp\(1),
	combout => \caminho_de_dados|lcd|datapath|mux15_moeda_q0|Mux0~14_combout\);

-- Location: LCCOMB_X29_Y23_N2
\caminho_de_dados|lcd|datapath|mux15_moeda_q0|Mux0~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lcd|datapath|mux15_moeda_q0|Mux0~15_combout\ = (\caminho_de_dados|lcd|datapath|cont_pos|i\(2) & ((\caminho_de_dados|lcd|datapath|mux15_moeda_q0|Mux0~14_combout\ & (\caminho_de_dados|sr_obstaculo|instancia0_reg|tmp\(13))) # 
-- (!\caminho_de_dados|lcd|datapath|mux15_moeda_q0|Mux0~14_combout\ & ((\caminho_de_dados|sr_obstaculo|instancia0_reg|tmp\(5)))))) # (!\caminho_de_dados|lcd|datapath|cont_pos|i\(2) & (((\caminho_de_dados|lcd|datapath|mux15_moeda_q0|Mux0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|lcd|datapath|cont_pos|i\(2),
	datab => \caminho_de_dados|sr_obstaculo|instancia0_reg|tmp\(13),
	datac => \caminho_de_dados|sr_obstaculo|instancia0_reg|tmp\(5),
	datad => \caminho_de_dados|lcd|datapath|mux15_moeda_q0|Mux0~14_combout\,
	combout => \caminho_de_dados|lcd|datapath|mux15_moeda_q0|Mux0~15_combout\);

-- Location: LCCOMB_X29_Y23_N30
\caminho_de_dados|lcd|datapath|mux15_moeda_q0|Mux0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lcd|datapath|mux15_moeda_q0|Mux0~16_combout\ = (\caminho_de_dados|lcd|datapath|cont_pos|i\(0) & (\caminho_de_dados|lcd|datapath|cont_pos|i\(1))) # (!\caminho_de_dados|lcd|datapath|cont_pos|i\(0) & 
-- ((\caminho_de_dados|lcd|datapath|cont_pos|i\(1) & (\caminho_de_dados|lcd|datapath|mux15_moeda_q0|Mux0~13_combout\)) # (!\caminho_de_dados|lcd|datapath|cont_pos|i\(1) & ((\caminho_de_dados|lcd|datapath|mux15_moeda_q0|Mux0~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|lcd|datapath|cont_pos|i\(0),
	datab => \caminho_de_dados|lcd|datapath|cont_pos|i\(1),
	datac => \caminho_de_dados|lcd|datapath|mux15_moeda_q0|Mux0~13_combout\,
	datad => \caminho_de_dados|lcd|datapath|mux15_moeda_q0|Mux0~15_combout\,
	combout => \caminho_de_dados|lcd|datapath|mux15_moeda_q0|Mux0~16_combout\);

-- Location: LCCOMB_X29_Y23_N8
\caminho_de_dados|lcd|datapath|mux15_moeda_q0|Mux0~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lcd|datapath|mux15_moeda_q0|Mux0~19_combout\ = (\caminho_de_dados|lcd|datapath|cont_pos|i\(0) & ((\caminho_de_dados|lcd|datapath|mux15_moeda_q0|Mux0~16_combout\ & ((\caminho_de_dados|lcd|datapath|mux15_moeda_q0|Mux0~18_combout\))) # 
-- (!\caminho_de_dados|lcd|datapath|mux15_moeda_q0|Mux0~16_combout\ & (\caminho_de_dados|lcd|datapath|mux15_moeda_q0|Mux0~11_combout\)))) # (!\caminho_de_dados|lcd|datapath|cont_pos|i\(0) & 
-- (((\caminho_de_dados|lcd|datapath|mux15_moeda_q0|Mux0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|lcd|datapath|cont_pos|i\(0),
	datab => \caminho_de_dados|lcd|datapath|mux15_moeda_q0|Mux0~11_combout\,
	datac => \caminho_de_dados|lcd|datapath|mux15_moeda_q0|Mux0~18_combout\,
	datad => \caminho_de_dados|lcd|datapath|mux15_moeda_q0|Mux0~16_combout\,
	combout => \caminho_de_dados|lcd|datapath|mux15_moeda_q0|Mux0~19_combout\);

-- Location: LCCOMB_X28_Y22_N6
\caminho_de_dados|lcd|datapath|mux15_moeda_q0|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lcd|datapath|mux15_moeda_q0|Mux0~0_combout\ = (\caminho_de_dados|lcd|datapath|cont_pos|i\(0) & ((\caminho_de_dados|sr_moeda|instancia0_reg|tmp\(10)) # ((\caminho_de_dados|lcd|datapath|cont_pos|i\(1))))) # 
-- (!\caminho_de_dados|lcd|datapath|cont_pos|i\(0) & (((\caminho_de_dados|sr_moeda|instancia0_reg|tmp\(9) & !\caminho_de_dados|lcd|datapath|cont_pos|i\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|lcd|datapath|cont_pos|i\(0),
	datab => \caminho_de_dados|sr_moeda|instancia0_reg|tmp\(10),
	datac => \caminho_de_dados|sr_moeda|instancia0_reg|tmp\(9),
	datad => \caminho_de_dados|lcd|datapath|cont_pos|i\(1),
	combout => \caminho_de_dados|lcd|datapath|mux15_moeda_q0|Mux0~0_combout\);

-- Location: LCCOMB_X28_Y22_N0
\caminho_de_dados|lcd|datapath|mux15_moeda_q0|Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lcd|datapath|mux15_moeda_q0|Mux0~1_combout\ = (\caminho_de_dados|lcd|datapath|cont_pos|i\(1) & ((\caminho_de_dados|lcd|datapath|mux15_moeda_q0|Mux0~0_combout\ & (\caminho_de_dados|sr_moeda|instancia0_reg|tmp\(12))) # 
-- (!\caminho_de_dados|lcd|datapath|mux15_moeda_q0|Mux0~0_combout\ & ((\caminho_de_dados|sr_moeda|instancia0_reg|tmp\(11)))))) # (!\caminho_de_dados|lcd|datapath|cont_pos|i\(1) & (((\caminho_de_dados|lcd|datapath|mux15_moeda_q0|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|lcd|datapath|cont_pos|i\(1),
	datab => \caminho_de_dados|sr_moeda|instancia0_reg|tmp\(12),
	datac => \caminho_de_dados|sr_moeda|instancia0_reg|tmp\(11),
	datad => \caminho_de_dados|lcd|datapath|mux15_moeda_q0|Mux0~0_combout\,
	combout => \caminho_de_dados|lcd|datapath|mux15_moeda_q0|Mux0~1_combout\);

-- Location: LCCOMB_X28_Y23_N6
\caminho_de_dados|lcd|datapath|mux15_moeda_q0|Mux0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lcd|datapath|mux15_moeda_q0|Mux0~4_combout\ = (\caminho_de_dados|lcd|datapath|cont_pos|i\(0) & (\caminho_de_dados|lcd|datapath|cont_pos|i\(1))) # (!\caminho_de_dados|lcd|datapath|cont_pos|i\(0) & 
-- ((\caminho_de_dados|lcd|datapath|cont_pos|i\(1) & ((\caminho_de_dados|sr_moeda|instancia0_reg|tmp\(3)))) # (!\caminho_de_dados|lcd|datapath|cont_pos|i\(1) & (\caminho_de_dados|sr_moeda|instancia0_reg|tmp\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|lcd|datapath|cont_pos|i\(0),
	datab => \caminho_de_dados|lcd|datapath|cont_pos|i\(1),
	datac => \caminho_de_dados|sr_moeda|instancia0_reg|tmp\(1),
	datad => \caminho_de_dados|sr_moeda|instancia0_reg|tmp\(3),
	combout => \caminho_de_dados|lcd|datapath|mux15_moeda_q0|Mux0~4_combout\);

-- Location: LCCOMB_X28_Y23_N24
\caminho_de_dados|lcd|datapath|mux15_moeda_q0|Mux0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lcd|datapath|mux15_moeda_q0|Mux0~5_combout\ = (\caminho_de_dados|lcd|datapath|cont_pos|i\(0) & ((\caminho_de_dados|lcd|datapath|mux15_moeda_q0|Mux0~4_combout\ & ((\caminho_de_dados|sr_moeda|instancia0_reg|tmp\(4)))) # 
-- (!\caminho_de_dados|lcd|datapath|mux15_moeda_q0|Mux0~4_combout\ & (\caminho_de_dados|sr_moeda|instancia0_reg|tmp\(2))))) # (!\caminho_de_dados|lcd|datapath|cont_pos|i\(0) & (((\caminho_de_dados|lcd|datapath|mux15_moeda_q0|Mux0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|lcd|datapath|cont_pos|i\(0),
	datab => \caminho_de_dados|sr_moeda|instancia0_reg|tmp\(2),
	datac => \caminho_de_dados|sr_moeda|instancia0_reg|tmp\(4),
	datad => \caminho_de_dados|lcd|datapath|mux15_moeda_q0|Mux0~4_combout\,
	combout => \caminho_de_dados|lcd|datapath|mux15_moeda_q0|Mux0~5_combout\);

-- Location: LCCOMB_X28_Y23_N30
\caminho_de_dados|lcd|datapath|mux15_moeda_q0|Mux0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lcd|datapath|mux15_moeda_q0|Mux0~2_combout\ = (\caminho_de_dados|lcd|datapath|cont_pos|i\(0) & (\caminho_de_dados|lcd|datapath|cont_pos|i\(1))) # (!\caminho_de_dados|lcd|datapath|cont_pos|i\(0) & 
-- ((\caminho_de_dados|lcd|datapath|cont_pos|i\(1) & ((\caminho_de_dados|sr_moeda|instancia0_reg|tmp\(7)))) # (!\caminho_de_dados|lcd|datapath|cont_pos|i\(1) & (\caminho_de_dados|sr_moeda|instancia0_reg|tmp\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|lcd|datapath|cont_pos|i\(0),
	datab => \caminho_de_dados|lcd|datapath|cont_pos|i\(1),
	datac => \caminho_de_dados|sr_moeda|instancia0_reg|tmp\(5),
	datad => \caminho_de_dados|sr_moeda|instancia0_reg|tmp\(7),
	combout => \caminho_de_dados|lcd|datapath|mux15_moeda_q0|Mux0~2_combout\);

-- Location: LCCOMB_X28_Y23_N0
\caminho_de_dados|lcd|datapath|mux15_moeda_q0|Mux0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lcd|datapath|mux15_moeda_q0|Mux0~3_combout\ = (\caminho_de_dados|lcd|datapath|cont_pos|i\(0) & ((\caminho_de_dados|lcd|datapath|mux15_moeda_q0|Mux0~2_combout\ & ((\caminho_de_dados|sr_moeda|instancia0_reg|tmp\(8)))) # 
-- (!\caminho_de_dados|lcd|datapath|mux15_moeda_q0|Mux0~2_combout\ & (\caminho_de_dados|sr_moeda|instancia0_reg|tmp\(6))))) # (!\caminho_de_dados|lcd|datapath|cont_pos|i\(0) & (\caminho_de_dados|lcd|datapath|mux15_moeda_q0|Mux0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|lcd|datapath|cont_pos|i\(0),
	datab => \caminho_de_dados|lcd|datapath|mux15_moeda_q0|Mux0~2_combout\,
	datac => \caminho_de_dados|sr_moeda|instancia0_reg|tmp\(6),
	datad => \caminho_de_dados|sr_moeda|instancia0_reg|tmp\(8),
	combout => \caminho_de_dados|lcd|datapath|mux15_moeda_q0|Mux0~3_combout\);

-- Location: LCCOMB_X28_Y23_N20
\caminho_de_dados|lcd|datapath|mux15_moeda_q0|Mux0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lcd|datapath|mux15_moeda_q0|Mux0~6_combout\ = (\caminho_de_dados|lcd|datapath|cont_pos|i\(2) & ((\caminho_de_dados|lcd|datapath|cont_pos|i\(3)) # ((\caminho_de_dados|lcd|datapath|mux15_moeda_q0|Mux0~3_combout\)))) # 
-- (!\caminho_de_dados|lcd|datapath|cont_pos|i\(2) & (!\caminho_de_dados|lcd|datapath|cont_pos|i\(3) & (\caminho_de_dados|lcd|datapath|mux15_moeda_q0|Mux0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|lcd|datapath|cont_pos|i\(2),
	datab => \caminho_de_dados|lcd|datapath|cont_pos|i\(3),
	datac => \caminho_de_dados|lcd|datapath|mux15_moeda_q0|Mux0~5_combout\,
	datad => \caminho_de_dados|lcd|datapath|mux15_moeda_q0|Mux0~3_combout\,
	combout => \caminho_de_dados|lcd|datapath|mux15_moeda_q0|Mux0~6_combout\);

-- Location: LCCOMB_X29_Y22_N26
\caminho_de_dados|lcd|datapath|mux15_moeda_q0|Mux0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lcd|datapath|mux15_moeda_q0|Mux0~7_combout\ = (\caminho_de_dados|lcd|datapath|cont_pos|i\(0) & ((\caminho_de_dados|sr_moeda|instancia0_reg|tmp\(14)) # ((\caminho_de_dados|lcd|datapath|cont_pos|i\(1))))) # 
-- (!\caminho_de_dados|lcd|datapath|cont_pos|i\(0) & (((\caminho_de_dados|sr_moeda|instancia0_reg|tmp\(13) & !\caminho_de_dados|lcd|datapath|cont_pos|i\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|lcd|datapath|cont_pos|i\(0),
	datab => \caminho_de_dados|sr_moeda|instancia0_reg|tmp\(14),
	datac => \caminho_de_dados|sr_moeda|instancia0_reg|tmp\(13),
	datad => \caminho_de_dados|lcd|datapath|cont_pos|i\(1),
	combout => \caminho_de_dados|lcd|datapath|mux15_moeda_q0|Mux0~7_combout\);

-- Location: LCCOMB_X29_Y22_N4
\caminho_de_dados|lcd|datapath|mux15_moeda_q0|Mux0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lcd|datapath|mux15_moeda_q0|Mux0~8_combout\ = (\caminho_de_dados|lcd|datapath|cont_pos|i\(1) & ((\caminho_de_dados|lcd|datapath|mux15_moeda_q0|Mux0~7_combout\ & ((\caminho_de_dados|sr_moeda|instancia0_reg|tmp\(16)))) # 
-- (!\caminho_de_dados|lcd|datapath|mux15_moeda_q0|Mux0~7_combout\ & (\caminho_de_dados|sr_moeda|instancia0_reg|tmp\(15))))) # (!\caminho_de_dados|lcd|datapath|cont_pos|i\(1) & (((\caminho_de_dados|lcd|datapath|mux15_moeda_q0|Mux0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|sr_moeda|instancia0_reg|tmp\(15),
	datab => \caminho_de_dados|lcd|datapath|cont_pos|i\(1),
	datac => \caminho_de_dados|sr_moeda|instancia0_reg|tmp\(16),
	datad => \caminho_de_dados|lcd|datapath|mux15_moeda_q0|Mux0~7_combout\,
	combout => \caminho_de_dados|lcd|datapath|mux15_moeda_q0|Mux0~8_combout\);

-- Location: LCCOMB_X28_Y23_N14
\caminho_de_dados|lcd|datapath|mux15_moeda_q0|Mux0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lcd|datapath|mux15_moeda_q0|Mux0~9_combout\ = (\caminho_de_dados|lcd|datapath|cont_pos|i\(3) & ((\caminho_de_dados|lcd|datapath|mux15_moeda_q0|Mux0~6_combout\ & ((\caminho_de_dados|lcd|datapath|mux15_moeda_q0|Mux0~8_combout\))) # 
-- (!\caminho_de_dados|lcd|datapath|mux15_moeda_q0|Mux0~6_combout\ & (\caminho_de_dados|lcd|datapath|mux15_moeda_q0|Mux0~1_combout\)))) # (!\caminho_de_dados|lcd|datapath|cont_pos|i\(3) & (((\caminho_de_dados|lcd|datapath|mux15_moeda_q0|Mux0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|lcd|datapath|cont_pos|i\(3),
	datab => \caminho_de_dados|lcd|datapath|mux15_moeda_q0|Mux0~1_combout\,
	datac => \caminho_de_dados|lcd|datapath|mux15_moeda_q0|Mux0~6_combout\,
	datad => \caminho_de_dados|lcd|datapath|mux15_moeda_q0|Mux0~8_combout\,
	combout => \caminho_de_dados|lcd|datapath|mux15_moeda_q0|Mux0~9_combout\);

-- Location: LCCOMB_X29_Y23_N6
\caminho_de_dados|lcd|controladora|Selector10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lcd|controladora|Selector10~0_combout\ = (\caminho_de_dados|lcd|controladora|atual_estado.s20~regout\ & ((\caminho_de_dados|lcd|datapath|cont_obj|cnt\(0) & (!\caminho_de_dados|lcd|datapath|mux15_moeda_q0|Mux0~19_combout\)) # 
-- (!\caminho_de_dados|lcd|datapath|cont_obj|cnt\(0) & ((!\caminho_de_dados|lcd|datapath|mux15_moeda_q0|Mux0~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|lcd|controladora|atual_estado.s20~regout\,
	datab => \caminho_de_dados|lcd|datapath|cont_obj|cnt\(0),
	datac => \caminho_de_dados|lcd|datapath|mux15_moeda_q0|Mux0~19_combout\,
	datad => \caminho_de_dados|lcd|datapath|mux15_moeda_q0|Mux0~9_combout\,
	combout => \caminho_de_dados|lcd|controladora|Selector10~0_combout\);

-- Location: LCCOMB_X29_Y23_N24
\caminho_de_dados|lcd|controladora|Selector10~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lcd|controladora|Selector10~1_combout\ = (\caminho_de_dados|lcd|controladora|Selector10~0_combout\) # ((\caminho_de_dados|lcd|controladora|atual_estado.s25~regout\ & !\caminho_de_dados|lcd|datapath|reg_linha|qi~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|lcd|controladora|atual_estado.s25~regout\,
	datac => \caminho_de_dados|lcd|datapath|reg_linha|qi~2_combout\,
	datad => \caminho_de_dados|lcd|controladora|Selector10~0_combout\,
	combout => \caminho_de_dados|lcd|controladora|Selector10~1_combout\);

-- Location: LCFF_X29_Y23_N25
\caminho_de_dados|lcd|controladora|atual_estado.s26\ : cycloneii_lcell_ff
PORT MAP (
	clk => \caminho_de_dados|div_freq_10kHz|tmp~clkctrl_outclk\,
	datain => \caminho_de_dados|lcd|controladora|Selector10~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|lcd|controladora|atual_estado.s26~regout\);

-- Location: LCCOMB_X30_Y23_N12
\caminho_de_dados|lcd|controladora|prox_estado.s23~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lcd|controladora|prox_estado.s23~0_combout\ = (\caminho_de_dados|lcd|controladora|atual_estado.s22~regout\ & !\caminho_de_dados|lcd|datapath|cont_obj|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \caminho_de_dados|lcd|controladora|atual_estado.s22~regout\,
	datad => \caminho_de_dados|lcd|datapath|cont_obj|cnt\(0),
	combout => \caminho_de_dados|lcd|controladora|prox_estado.s23~0_combout\);

-- Location: LCFF_X30_Y23_N13
\caminho_de_dados|lcd|controladora|atual_estado.s23\ : cycloneii_lcell_ff
PORT MAP (
	clk => \caminho_de_dados|div_freq_10kHz|tmp~clkctrl_outclk\,
	datain => \caminho_de_dados|lcd|controladora|prox_estado.s23~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|lcd|controladora|atual_estado.s23~regout\);

-- Location: LCCOMB_X30_Y23_N6
\caminho_de_dados|lcd|controladora|WideOr8~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lcd|controladora|WideOr8~3_combout\ = (\caminho_de_dados|lcd|controladora|atual_estado.s24~regout\) # ((\caminho_de_dados|lcd|controladora|atual_estado.s26~regout\) # (\caminho_de_dados|lcd|controladora|atual_estado.s23~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \caminho_de_dados|lcd|controladora|atual_estado.s24~regout\,
	datac => \caminho_de_dados|lcd|controladora|atual_estado.s26~regout\,
	datad => \caminho_de_dados|lcd|controladora|atual_estado.s23~regout\,
	combout => \caminho_de_dados|lcd|controladora|WideOr8~3_combout\);

-- Location: LCCOMB_X30_Y23_N18
\caminho_de_dados|lcd|controladora|atual_estado.s27~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lcd|controladora|atual_estado.s27~feeder_combout\ = \caminho_de_dados|lcd|controladora|WideOr8~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \caminho_de_dados|lcd|controladora|WideOr8~3_combout\,
	combout => \caminho_de_dados|lcd|controladora|atual_estado.s27~feeder_combout\);

-- Location: LCFF_X30_Y23_N19
\caminho_de_dados|lcd|controladora|atual_estado.s27\ : cycloneii_lcell_ff
PORT MAP (
	clk => \caminho_de_dados|div_freq_10kHz|tmp~clkctrl_outclk\,
	datain => \caminho_de_dados|lcd|controladora|atual_estado.s27~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|lcd|controladora|atual_estado.s27~regout\);

-- Location: LCCOMB_X30_Y23_N8
\caminho_de_dados|lcd|controladora|prox_estado.s28~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lcd|controladora|prox_estado.s28~0_combout\ = (\caminho_de_dados|lcd|controladora|atual_estado.s27~regout\ & ((!\caminho_de_dados|lcd|controladora|prox_estado.s29~0_combout\) # (!\caminho_de_dados|lcd|datapath|cont_pos|i\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \caminho_de_dados|lcd|controladora|atual_estado.s27~regout\,
	datac => \caminho_de_dados|lcd|datapath|cont_pos|i\(3),
	datad => \caminho_de_dados|lcd|controladora|prox_estado.s29~0_combout\,
	combout => \caminho_de_dados|lcd|controladora|prox_estado.s28~0_combout\);

-- Location: LCFF_X30_Y23_N9
\caminho_de_dados|lcd|controladora|atual_estado.s28\ : cycloneii_lcell_ff
PORT MAP (
	clk => \caminho_de_dados|div_freq_10kHz|tmp~clkctrl_outclk\,
	datain => \caminho_de_dados|lcd|controladora|prox_estado.s28~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|lcd|controladora|atual_estado.s28~regout\);

-- Location: LCCOMB_X28_Y23_N16
\caminho_de_dados|lcd|datapath|cont_pos|i[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lcd|datapath|cont_pos|i[0]~3_combout\ = \caminho_de_dados|lcd|datapath|cont_pos|i\(0) $ (\caminho_de_dados|lcd|controladora|atual_estado.s28~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \caminho_de_dados|lcd|datapath|cont_pos|i\(0),
	datad => \caminho_de_dados|lcd|controladora|atual_estado.s28~regout\,
	combout => \caminho_de_dados|lcd|datapath|cont_pos|i[0]~3_combout\);

-- Location: LCFF_X28_Y23_N17
\caminho_de_dados|lcd|datapath|cont_pos|i[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \caminho_de_dados|div_freq_10kHz|tmp~clkctrl_outclk\,
	datain => \caminho_de_dados|lcd|datapath|cont_pos|i[0]~3_combout\,
	aclr => \caminho_de_dados|lcd|datapath|dp_E~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|lcd|datapath|cont_pos|i\(0));

-- Location: LCCOMB_X27_Y22_N12
\caminho_de_dados|lcd|datapath|mux15_obstaculo_q1|Mux0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lcd|datapath|mux15_obstaculo_q1|Mux0~2_combout\ = (\caminho_de_dados|lcd|datapath|cont_pos|i\(2) & ((\caminho_de_dados|lcd|datapath|cont_pos|i\(3)) # ((!\caminho_de_dados|sr_obstaculo|instancia1_reg|tmp\(6))))) # 
-- (!\caminho_de_dados|lcd|datapath|cont_pos|i\(2) & (!\caminho_de_dados|lcd|datapath|cont_pos|i\(3) & (!\caminho_de_dados|sr_obstaculo|instancia1_reg|tmp\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|lcd|datapath|cont_pos|i\(2),
	datab => \caminho_de_dados|lcd|datapath|cont_pos|i\(3),
	datac => \caminho_de_dados|sr_obstaculo|instancia1_reg|tmp\(2),
	datad => \caminho_de_dados|sr_obstaculo|instancia1_reg|tmp\(6),
	combout => \caminho_de_dados|lcd|datapath|mux15_obstaculo_q1|Mux0~2_combout\);

-- Location: LCCOMB_X27_Y22_N14
\caminho_de_dados|lcd|datapath|mux15_obstaculo_q1|Mux0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lcd|datapath|mux15_obstaculo_q1|Mux0~3_combout\ = (\caminho_de_dados|lcd|datapath|cont_pos|i\(3) & ((\caminho_de_dados|lcd|datapath|mux15_obstaculo_q1|Mux0~2_combout\ & (!\caminho_de_dados|sr_obstaculo|instancia1_reg|tmp\(14))) # 
-- (!\caminho_de_dados|lcd|datapath|mux15_obstaculo_q1|Mux0~2_combout\ & ((!\caminho_de_dados|sr_obstaculo|instancia1_reg|tmp\(10)))))) # (!\caminho_de_dados|lcd|datapath|cont_pos|i\(3) & 
-- (((\caminho_de_dados|lcd|datapath|mux15_obstaculo_q1|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|sr_obstaculo|instancia1_reg|tmp\(14),
	datab => \caminho_de_dados|lcd|datapath|cont_pos|i\(3),
	datac => \caminho_de_dados|sr_obstaculo|instancia1_reg|tmp\(10),
	datad => \caminho_de_dados|lcd|datapath|mux15_obstaculo_q1|Mux0~2_combout\,
	combout => \caminho_de_dados|lcd|datapath|mux15_obstaculo_q1|Mux0~3_combout\);

-- Location: LCCOMB_X27_Y22_N16
\caminho_de_dados|lcd|datapath|mux15_obstaculo_q1|Mux0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lcd|datapath|mux15_obstaculo_q1|Mux0~4_combout\ = (\caminho_de_dados|lcd|datapath|cont_pos|i\(2) & ((\caminho_de_dados|lcd|datapath|cont_pos|i\(3)) # ((!\caminho_de_dados|sr_moeda|instancia1_reg|tmp\(5))))) # 
-- (!\caminho_de_dados|lcd|datapath|cont_pos|i\(2) & (!\caminho_de_dados|lcd|datapath|cont_pos|i\(3) & (!\caminho_de_dados|sr_moeda|instancia1_reg|tmp\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|lcd|datapath|cont_pos|i\(2),
	datab => \caminho_de_dados|lcd|datapath|cont_pos|i\(3),
	datac => \caminho_de_dados|sr_moeda|instancia1_reg|tmp\(1),
	datad => \caminho_de_dados|sr_moeda|instancia1_reg|tmp\(5),
	combout => \caminho_de_dados|lcd|datapath|mux15_obstaculo_q1|Mux0~4_combout\);

-- Location: LCCOMB_X27_Y22_N6
\caminho_de_dados|lcd|datapath|mux15_obstaculo_q1|Mux0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lcd|datapath|mux15_obstaculo_q1|Mux0~5_combout\ = (\caminho_de_dados|lcd|datapath|cont_pos|i\(3) & ((\caminho_de_dados|lcd|datapath|mux15_obstaculo_q1|Mux0~4_combout\ & (!\caminho_de_dados|sr_moeda|instancia1_reg|tmp\(13))) # 
-- (!\caminho_de_dados|lcd|datapath|mux15_obstaculo_q1|Mux0~4_combout\ & ((!\caminho_de_dados|sr_moeda|instancia1_reg|tmp\(9)))))) # (!\caminho_de_dados|lcd|datapath|cont_pos|i\(3) & (((\caminho_de_dados|lcd|datapath|mux15_obstaculo_q1|Mux0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|lcd|datapath|cont_pos|i\(3),
	datab => \caminho_de_dados|sr_moeda|instancia1_reg|tmp\(13),
	datac => \caminho_de_dados|sr_moeda|instancia1_reg|tmp\(9),
	datad => \caminho_de_dados|lcd|datapath|mux15_obstaculo_q1|Mux0~4_combout\,
	combout => \caminho_de_dados|lcd|datapath|mux15_obstaculo_q1|Mux0~5_combout\);

-- Location: LCCOMB_X27_Y22_N26
\caminho_de_dados|lcd|datapath|mux15_obstaculo_q1|Mux0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lcd|datapath|mux15_obstaculo_q1|Mux0~6_combout\ = (\caminho_de_dados|lcd|datapath|cont_pos|i\(1) & (\caminho_de_dados|lcd|datapath|cont_pos|i\(0))) # (!\caminho_de_dados|lcd|datapath|cont_pos|i\(1) & 
-- ((\caminho_de_dados|lcd|datapath|cont_pos|i\(0) & (\caminho_de_dados|lcd|datapath|mux15_obstaculo_q1|Mux0~3_combout\)) # (!\caminho_de_dados|lcd|datapath|cont_pos|i\(0) & ((\caminho_de_dados|lcd|datapath|mux15_obstaculo_q1|Mux0~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|lcd|datapath|cont_pos|i\(1),
	datab => \caminho_de_dados|lcd|datapath|cont_pos|i\(0),
	datac => \caminho_de_dados|lcd|datapath|mux15_obstaculo_q1|Mux0~3_combout\,
	datad => \caminho_de_dados|lcd|datapath|mux15_obstaculo_q1|Mux0~5_combout\,
	combout => \caminho_de_dados|lcd|datapath|mux15_obstaculo_q1|Mux0~6_combout\);

-- Location: LCCOMB_X27_Y22_N4
\caminho_de_dados|lcd|datapath|mux15_obstaculo_q1|Mux0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lcd|datapath|mux15_obstaculo_q1|Mux0~8_combout\ = (\caminho_de_dados|lcd|datapath|mux15_obstaculo_q1|Mux0~7_combout\ & (((!\caminho_de_dados|sr_obstaculo|instancia1_reg|tmp\(16))) # (!\caminho_de_dados|lcd|datapath|cont_pos|i\(2)))) # 
-- (!\caminho_de_dados|lcd|datapath|mux15_obstaculo_q1|Mux0~7_combout\ & (\caminho_de_dados|lcd|datapath|cont_pos|i\(2) & (!\caminho_de_dados|sr_obstaculo|instancia1_reg|tmp\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|lcd|datapath|mux15_obstaculo_q1|Mux0~7_combout\,
	datab => \caminho_de_dados|lcd|datapath|cont_pos|i\(2),
	datac => \caminho_de_dados|sr_obstaculo|instancia1_reg|tmp\(8),
	datad => \caminho_de_dados|sr_obstaculo|instancia1_reg|tmp\(16),
	combout => \caminho_de_dados|lcd|datapath|mux15_obstaculo_q1|Mux0~8_combout\);

-- Location: LCCOMB_X27_Y22_N18
\caminho_de_dados|lcd|datapath|mux15_obstaculo_q1|Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lcd|datapath|mux15_obstaculo_q1|Mux0~1_combout\ = (\caminho_de_dados|lcd|datapath|mux15_obstaculo_q1|Mux0~0_combout\ & (((!\caminho_de_dados|sr_moeda|instancia1_reg|tmp\(15))) # (!\caminho_de_dados|lcd|datapath|cont_pos|i\(2)))) # 
-- (!\caminho_de_dados|lcd|datapath|mux15_obstaculo_q1|Mux0~0_combout\ & (\caminho_de_dados|lcd|datapath|cont_pos|i\(2) & (!\caminho_de_dados|sr_moeda|instancia1_reg|tmp\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|lcd|datapath|mux15_obstaculo_q1|Mux0~0_combout\,
	datab => \caminho_de_dados|lcd|datapath|cont_pos|i\(2),
	datac => \caminho_de_dados|sr_moeda|instancia1_reg|tmp\(7),
	datad => \caminho_de_dados|sr_moeda|instancia1_reg|tmp\(15),
	combout => \caminho_de_dados|lcd|datapath|mux15_obstaculo_q1|Mux0~1_combout\);

-- Location: LCCOMB_X27_Y22_N2
\caminho_de_dados|lcd|datapath|mux15_obstaculo_q1|Mux0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lcd|datapath|mux15_obstaculo_q1|Mux0~9_combout\ = (\caminho_de_dados|lcd|datapath|cont_pos|i\(1) & ((\caminho_de_dados|lcd|datapath|mux15_obstaculo_q1|Mux0~6_combout\ & (\caminho_de_dados|lcd|datapath|mux15_obstaculo_q1|Mux0~8_combout\)) 
-- # (!\caminho_de_dados|lcd|datapath|mux15_obstaculo_q1|Mux0~6_combout\ & ((\caminho_de_dados|lcd|datapath|mux15_obstaculo_q1|Mux0~1_combout\))))) # (!\caminho_de_dados|lcd|datapath|cont_pos|i\(1) & 
-- (\caminho_de_dados|lcd|datapath|mux15_obstaculo_q1|Mux0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|lcd|datapath|cont_pos|i\(1),
	datab => \caminho_de_dados|lcd|datapath|mux15_obstaculo_q1|Mux0~6_combout\,
	datac => \caminho_de_dados|lcd|datapath|mux15_obstaculo_q1|Mux0~8_combout\,
	datad => \caminho_de_dados|lcd|datapath|mux15_obstaculo_q1|Mux0~1_combout\,
	combout => \caminho_de_dados|lcd|datapath|mux15_obstaculo_q1|Mux0~9_combout\);

-- Location: LCCOMB_X27_Y22_N10
\caminho_de_dados|lcd|controladora|prox_estado.s25~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lcd|controladora|prox_estado.s25~0_combout\ = (\caminho_de_dados|lcd|controladora|atual_estado.s21~regout\ & \caminho_de_dados|lcd|datapath|mux15_obstaculo_q1|Mux0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|lcd|controladora|atual_estado.s21~regout\,
	datad => \caminho_de_dados|lcd|datapath|mux15_obstaculo_q1|Mux0~9_combout\,
	combout => \caminho_de_dados|lcd|controladora|prox_estado.s25~0_combout\);

-- Location: LCFF_X27_Y22_N11
\caminho_de_dados|lcd|controladora|atual_estado.s25\ : cycloneii_lcell_ff
PORT MAP (
	clk => \caminho_de_dados|div_freq_10kHz|tmp~clkctrl_outclk\,
	datain => \caminho_de_dados|lcd|controladora|prox_estado.s25~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|lcd|controladora|atual_estado.s25~regout\);

-- Location: LCCOMB_X27_Y22_N28
\caminho_de_dados|lcd|controladora|Selector9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lcd|controladora|Selector9~0_combout\ = (\caminho_de_dados|lcd|controladora|atual_estado.s21~regout\ & (((\caminho_de_dados|lcd|controladora|atual_estado.s25~regout\ & \caminho_de_dados|lcd|datapath|reg_linha|qi~2_combout\)) # 
-- (!\caminho_de_dados|lcd|datapath|mux15_obstaculo_q1|Mux0~9_combout\))) # (!\caminho_de_dados|lcd|controladora|atual_estado.s21~regout\ & (\caminho_de_dados|lcd|controladora|atual_estado.s25~regout\ & 
-- (\caminho_de_dados|lcd|datapath|reg_linha|qi~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|lcd|controladora|atual_estado.s21~regout\,
	datab => \caminho_de_dados|lcd|controladora|atual_estado.s25~regout\,
	datac => \caminho_de_dados|lcd|datapath|reg_linha|qi~2_combout\,
	datad => \caminho_de_dados|lcd|datapath|mux15_obstaculo_q1|Mux0~9_combout\,
	combout => \caminho_de_dados|lcd|controladora|Selector9~0_combout\);

-- Location: LCFF_X27_Y22_N29
\caminho_de_dados|lcd|controladora|atual_estado.s22\ : cycloneii_lcell_ff
PORT MAP (
	clk => \caminho_de_dados|div_freq_10kHz|tmp~clkctrl_outclk\,
	datain => \caminho_de_dados|lcd|controladora|Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|lcd|controladora|atual_estado.s22~regout\);

-- Location: LCCOMB_X30_Y23_N22
\caminho_de_dados|lcd|controladora|prox_estado.s24~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lcd|controladora|prox_estado.s24~0_combout\ = (\caminho_de_dados|lcd|controladora|atual_estado.s22~regout\ & \caminho_de_dados|lcd|datapath|cont_obj|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \caminho_de_dados|lcd|controladora|atual_estado.s22~regout\,
	datad => \caminho_de_dados|lcd|datapath|cont_obj|cnt\(0),
	combout => \caminho_de_dados|lcd|controladora|prox_estado.s24~0_combout\);

-- Location: LCFF_X30_Y23_N23
\caminho_de_dados|lcd|controladora|atual_estado.s24\ : cycloneii_lcell_ff
PORT MAP (
	clk => \caminho_de_dados|div_freq_10kHz|tmp~clkctrl_outclk\,
	datain => \caminho_de_dados|lcd|controladora|prox_estado.s24~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|lcd|controladora|atual_estado.s24~regout\);

-- Location: LCCOMB_X33_Y21_N12
\caminho_de_dados|lcd|controladora|WideOr13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lcd|controladora|WideOr13~0_combout\ = (\caminho_de_dados|lcd|controladora|atual_estado.s23~regout\) # ((\caminho_de_dados|lcd|controladora|atual_estado.s44~regout\) # ((\caminho_de_dados|lcd|controladora|atual_estado.s24~regout\) # 
-- (\caminho_de_dados|lcd|controladora|atual_estado.s40~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|lcd|controladora|atual_estado.s23~regout\,
	datab => \caminho_de_dados|lcd|controladora|atual_estado.s44~regout\,
	datac => \caminho_de_dados|lcd|controladora|atual_estado.s24~regout\,
	datad => \caminho_de_dados|lcd|controladora|atual_estado.s40~regout\,
	combout => \caminho_de_dados|lcd|controladora|WideOr13~0_combout\);

-- Location: LCCOMB_X32_Y20_N22
\caminho_de_dados|lcd|controladora|WideOr13~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lcd|controladora|WideOr13~1_combout\ = ((\caminho_de_dados|lcd|controladora|atual_estado.s10~regout\) # ((\caminho_de_dados|lcd|controladora|WideOr13~0_combout\) # (\caminho_de_dados|lcd|controladora|atual_estado.s15~regout\))) # 
-- (!\caminho_de_dados|lcd|controladora|WideOr7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|lcd|controladora|WideOr7~0_combout\,
	datab => \caminho_de_dados|lcd|controladora|atual_estado.s10~regout\,
	datac => \caminho_de_dados|lcd|controladora|WideOr13~0_combout\,
	datad => \caminho_de_dados|lcd|controladora|atual_estado.s15~regout\,
	combout => \caminho_de_dados|lcd|controladora|WideOr13~1_combout\);

-- Location: LCCOMB_X33_Y21_N26
\caminho_de_dados|lcd|controladora|WideOr12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lcd|controladora|WideOr12~0_combout\ = (\caminho_de_dados|lcd|controladora|atual_estado.s34~regout\) # ((\caminho_de_dados|lcd|controladora|atual_estado.s23~regout\) # ((\caminho_de_dados|lcd|controladora|atual_estado.s41~regout\) # 
-- (\caminho_de_dados|lcd|controladora|atual_estado.s45~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|lcd|controladora|atual_estado.s34~regout\,
	datab => \caminho_de_dados|lcd|controladora|atual_estado.s23~regout\,
	datac => \caminho_de_dados|lcd|controladora|atual_estado.s41~regout\,
	datad => \caminho_de_dados|lcd|controladora|atual_estado.s45~regout\,
	combout => \caminho_de_dados|lcd|controladora|WideOr12~0_combout\);

-- Location: LCCOMB_X32_Y20_N18
\caminho_de_dados|lcd|controladora|WideOr12\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lcd|controladora|WideOr12~combout\ = (\caminho_de_dados|lcd|controladora|atual_estado.s12~regout\) # ((\caminho_de_dados|lcd|controladora|atual_estado.s47~regout\) # (\caminho_de_dados|lcd|controladora|WideOr12~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|lcd|controladora|atual_estado.s12~regout\,
	datac => \caminho_de_dados|lcd|controladora|atual_estado.s47~regout\,
	datad => \caminho_de_dados|lcd|controladora|WideOr12~0_combout\,
	combout => \caminho_de_dados|lcd|controladora|WideOr12~combout\);

-- Location: LCCOMB_X32_Y20_N0
\caminho_de_dados|lcd|controladora|WideOr11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lcd|controladora|WideOr11~0_combout\ = (\caminho_de_dados|lcd|controladora|atual_estado.s47~regout\) # ((\caminho_de_dados|lcd|controladora|atual_estado.s48~regout\) # ((\caminho_de_dados|lcd|controladora|atual_estado.s12~regout\) # 
-- (\caminho_de_dados|lcd|controladora|atual_estado.s24~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|lcd|controladora|atual_estado.s47~regout\,
	datab => \caminho_de_dados|lcd|controladora|atual_estado.s48~regout\,
	datac => \caminho_de_dados|lcd|controladora|atual_estado.s12~regout\,
	datad => \caminho_de_dados|lcd|controladora|atual_estado.s24~regout\,
	combout => \caminho_de_dados|lcd|controladora|WideOr11~0_combout\);

-- Location: LCCOMB_X32_Y20_N8
\caminho_de_dados|lcd|controladora|WideOr11\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lcd|controladora|WideOr11~combout\ = (\caminho_de_dados|lcd|controladora|atual_estado.s51~regout\) # ((\caminho_de_dados|lcd|controladora|atual_estado.s50~regout\) # (\caminho_de_dados|lcd|controladora|WideOr11~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \caminho_de_dados|lcd|controladora|atual_estado.s51~regout\,
	datac => \caminho_de_dados|lcd|controladora|atual_estado.s50~regout\,
	datad => \caminho_de_dados|lcd|controladora|WideOr11~0_combout\,
	combout => \caminho_de_dados|lcd|controladora|WideOr11~combout\);

-- Location: LCCOMB_X32_Y20_N6
\caminho_de_dados|lcd|controladora|WideOr10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lcd|controladora|WideOr10~0_combout\ = (\caminho_de_dados|lcd|controladora|atual_estado.s8~regout\) # ((\caminho_de_dados|lcd|controladora|atual_estado.s49~regout\) # ((\caminho_de_dados|lcd|controladora|atual_estado.s9~regout\) # 
-- (\caminho_de_dados|lcd|controladora|atual_estado.s34~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|lcd|controladora|atual_estado.s8~regout\,
	datab => \caminho_de_dados|lcd|controladora|atual_estado.s49~regout\,
	datac => \caminho_de_dados|lcd|controladora|atual_estado.s9~regout\,
	datad => \caminho_de_dados|lcd|controladora|atual_estado.s34~regout\,
	combout => \caminho_de_dados|lcd|controladora|WideOr10~0_combout\);

-- Location: LCCOMB_X32_Y20_N4
\caminho_de_dados|lcd|controladora|WideOr10\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lcd|controladora|WideOr10~combout\ = (\caminho_de_dados|lcd|controladora|atual_estado.s13~regout\) # (\caminho_de_dados|lcd|controladora|WideOr10~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \caminho_de_dados|lcd|controladora|atual_estado.s13~regout\,
	datad => \caminho_de_dados|lcd|controladora|WideOr10~0_combout\,
	combout => \caminho_de_dados|lcd|controladora|WideOr10~combout\);

-- Location: LCCOMB_X33_Y21_N24
\caminho_de_dados|lcd|controladora|WideOr9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lcd|controladora|WideOr9~0_combout\ = (\caminho_de_dados|lcd|controladora|atual_estado.s39~regout\) # ((\caminho_de_dados|lcd|controladora|atual_estado.s48~regout\) # ((\caminho_de_dados|lcd|controladora|atual_estado.s43~regout\) # 
-- (\caminho_de_dados|lcd|controladora|atual_estado.s47~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|lcd|controladora|atual_estado.s39~regout\,
	datab => \caminho_de_dados|lcd|controladora|atual_estado.s48~regout\,
	datac => \caminho_de_dados|lcd|controladora|atual_estado.s43~regout\,
	datad => \caminho_de_dados|lcd|controladora|atual_estado.s47~regout\,
	combout => \caminho_de_dados|lcd|controladora|WideOr9~0_combout\);

-- Location: LCCOMB_X33_Y21_N18
\caminho_de_dados|lcd|controladora|WideOr13~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lcd|controladora|WideOr13~2_combout\ = (!\caminho_de_dados|lcd|controladora|atual_estado.s44~regout\ & !\caminho_de_dados|lcd|controladora|atual_estado.s40~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \caminho_de_dados|lcd|controladora|atual_estado.s44~regout\,
	datad => \caminho_de_dados|lcd|controladora|atual_estado.s40~regout\,
	combout => \caminho_de_dados|lcd|controladora|WideOr13~2_combout\);

-- Location: LCCOMB_X33_Y21_N0
\caminho_de_dados|lcd|controladora|WideOr8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lcd|controladora|WideOr8~0_combout\ = (!\caminho_de_dados|lcd|controladora|atual_estado.s45~regout\ & (!\caminho_de_dados|lcd|controladora|atual_estado.s34~regout\ & (!\caminho_de_dados|lcd|controladora|atual_estado.s41~regout\ & 
-- !\caminho_de_dados|lcd|controladora|atual_estado.s8~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|lcd|controladora|atual_estado.s45~regout\,
	datab => \caminho_de_dados|lcd|controladora|atual_estado.s34~regout\,
	datac => \caminho_de_dados|lcd|controladora|atual_estado.s41~regout\,
	datad => \caminho_de_dados|lcd|controladora|atual_estado.s8~regout\,
	combout => \caminho_de_dados|lcd|controladora|WideOr8~0_combout\);

-- Location: LCCOMB_X33_Y21_N14
\caminho_de_dados|lcd|controladora|WideOr9\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lcd|controladora|WideOr9~combout\ = (\caminho_de_dados|lcd|controladora|WideOr9~0_combout\) # (((!\caminho_de_dados|lcd|controladora|WideOr8~0_combout\) # (!\caminho_de_dados|lcd|controladora|WideOr3~0_combout\)) # 
-- (!\caminho_de_dados|lcd|controladora|WideOr13~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|lcd|controladora|WideOr9~0_combout\,
	datab => \caminho_de_dados|lcd|controladora|WideOr13~2_combout\,
	datac => \caminho_de_dados|lcd|controladora|WideOr3~0_combout\,
	datad => \caminho_de_dados|lcd|controladora|WideOr8~0_combout\,
	combout => \caminho_de_dados|lcd|controladora|WideOr9~combout\);

-- Location: LCCOMB_X32_Y21_N2
\caminho_de_dados|lcd|controladora|WideOr8~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lcd|controladora|WideOr8~1_combout\ = (\caminho_de_dados|lcd|controladora|atual_estado.s46~regout\) # ((\caminho_de_dados|lcd|controladora|atual_estado.s38~regout\) # (\caminho_de_dados|lcd|controladora|atual_estado.s42~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \caminho_de_dados|lcd|controladora|atual_estado.s46~regout\,
	datac => \caminho_de_dados|lcd|controladora|atual_estado.s38~regout\,
	datad => \caminho_de_dados|lcd|controladora|atual_estado.s42~regout\,
	combout => \caminho_de_dados|lcd|controladora|WideOr8~1_combout\);

-- Location: LCCOMB_X33_Y21_N2
\caminho_de_dados|lcd|controladora|WideOr8~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lcd|controladora|WideOr8~2_combout\ = (!\caminho_de_dados|lcd|controladora|atual_estado.s40~regout\ & (!\caminho_de_dados|lcd|controladora|atual_estado.s44~regout\ & (\caminho_de_dados|lcd|controladora|WideOr3~0_combout\ & 
-- \caminho_de_dados|lcd|controladora|WideOr8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|lcd|controladora|atual_estado.s40~regout\,
	datab => \caminho_de_dados|lcd|controladora|atual_estado.s44~regout\,
	datac => \caminho_de_dados|lcd|controladora|WideOr3~0_combout\,
	datad => \caminho_de_dados|lcd|controladora|WideOr8~0_combout\,
	combout => \caminho_de_dados|lcd|controladora|WideOr8~2_combout\);

-- Location: LCCOMB_X30_Y23_N24
\caminho_de_dados|lcd|controladora|WideOr8\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lcd|controladora|WideOr8~combout\ = (\caminho_de_dados|lcd|controladora|WideOr8~1_combout\) # (((\caminho_de_dados|lcd|controladora|atual_estado.s28~regout\) # (\caminho_de_dados|lcd|controladora|WideOr8~3_combout\)) # 
-- (!\caminho_de_dados|lcd|controladora|WideOr8~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|lcd|controladora|WideOr8~1_combout\,
	datab => \caminho_de_dados|lcd|controladora|WideOr8~2_combout\,
	datac => \caminho_de_dados|lcd|controladora|atual_estado.s28~regout\,
	datad => \caminho_de_dados|lcd|controladora|WideOr8~3_combout\,
	combout => \caminho_de_dados|lcd|controladora|WideOr8~combout\);

-- Location: LCCOMB_X33_Y21_N16
\caminho_de_dados|lcd|controladora|WideOr7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lcd|controladora|WideOr7~1_combout\ = (\caminho_de_dados|lcd|controladora|atual_estado.s48~regout\) # ((\caminho_de_dados|lcd|controladora|atual_estado.s43~regout\) # ((\caminho_de_dados|lcd|controladora|atual_estado.s51~regout\) # 
-- (\caminho_de_dados|lcd|controladora|atual_estado.s39~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|lcd|controladora|atual_estado.s48~regout\,
	datab => \caminho_de_dados|lcd|controladora|atual_estado.s43~regout\,
	datac => \caminho_de_dados|lcd|controladora|atual_estado.s51~regout\,
	datad => \caminho_de_dados|lcd|controladora|atual_estado.s39~regout\,
	combout => \caminho_de_dados|lcd|controladora|WideOr7~1_combout\);

-- Location: LCFF_X31_Y21_N9
\caminho_de_dados|lcd|controladora|atual_estado.s31\ : cycloneii_lcell_ff
PORT MAP (
	clk => \caminho_de_dados|div_freq_10kHz|tmp~clkctrl_outclk\,
	sdata => \caminho_de_dados|lcd|controladora|atual_estado.s30~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|lcd|controladora|atual_estado.s31~regout\);

-- Location: LCCOMB_X30_Y20_N16
\caminho_de_dados|lcd|controladora|WideOr7~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lcd|controladora|WideOr7~2_combout\ = ((\caminho_de_dados|lcd|controladora|atual_estado.s35~regout\) # ((\caminho_de_dados|lcd|controladora|WideOr7~1_combout\) # (\caminho_de_dados|lcd|controladora|atual_estado.s31~regout\))) # 
-- (!\caminho_de_dados|lcd|controladora|WideOr7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|lcd|controladora|WideOr7~0_combout\,
	datab => \caminho_de_dados|lcd|controladora|atual_estado.s35~regout\,
	datac => \caminho_de_dados|lcd|controladora|WideOr7~1_combout\,
	datad => \caminho_de_dados|lcd|controladora|atual_estado.s31~regout\,
	combout => \caminho_de_dados|lcd|controladora|WideOr7~2_combout\);

-- Location: LCCOMB_X32_Y20_N26
\caminho_de_dados|lcd|controladora|fsm_dt[7]\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lcd|controladora|fsm_dt\(7) = (\caminho_de_dados|lcd|controladora|atual_estado.s24~regout\) # (\caminho_de_dados|lcd|controladora|atual_estado.s34~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \caminho_de_dados|lcd|controladora|atual_estado.s24~regout\,
	datad => \caminho_de_dados|lcd|controladora|atual_estado.s34~regout\,
	combout => \caminho_de_dados|lcd|controladora|fsm_dt\(7));

-- Location: LCCOMB_X31_Y21_N22
\caminho_de_dados|lcd|controladora|Selector7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lcd|controladora|Selector7~0_combout\ = (\caminho_de_dados|lcd|controladora|atual_estado.s32~regout\) # ((\caminho_de_dados|lcd|controladora|atual_estado.s17~regout\ & (!\controladora|WideOr3~0_combout\ & 
-- !\controladora|WideOr1~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|lcd|controladora|atual_estado.s32~regout\,
	datab => \caminho_de_dados|lcd|controladora|atual_estado.s17~regout\,
	datac => \controladora|WideOr3~0_combout\,
	datad => \controladora|WideOr1~combout\,
	combout => \caminho_de_dados|lcd|controladora|Selector7~0_combout\);

-- Location: LCFF_X31_Y21_N23
\caminho_de_dados|lcd|controladora|atual_estado.s18\ : cycloneii_lcell_ff
PORT MAP (
	clk => \caminho_de_dados|div_freq_10kHz|tmp~clkctrl_outclk\,
	datain => \caminho_de_dados|lcd|controladora|Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|lcd|controladora|atual_estado.s18~regout\);

-- Location: LCCOMB_X30_Y20_N6
\caminho_de_dados|lcd|controladora|WideOr6\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lcd|controladora|WideOr6~combout\ = (\caminho_de_dados|lcd|controladora|atual_estado.s18~regout\) # ((\caminho_de_dados|lcd|controladora|atual_estado.s35~regout\) # (\caminho_de_dados|lcd|controladora|atual_estado.s31~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \caminho_de_dados|lcd|controladora|atual_estado.s18~regout\,
	datac => \caminho_de_dados|lcd|controladora|atual_estado.s35~regout\,
	datad => \caminho_de_dados|lcd|controladora|atual_estado.s31~regout\,
	combout => \caminho_de_dados|lcd|controladora|WideOr6~combout\);

-- Location: LCCOMB_X30_Y23_N28
\caminho_de_dados|lcd|datapath|dp_E~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lcd|datapath|dp_E~4_combout\ = (!\caminho_de_dados|lcd|controladora|atual_estado.s21~regout\ & (!\caminho_de_dados|lcd|controladora|atual_estado.s25~regout\ & (!\caminho_de_dados|lcd|controladora|atual_estado.s22~regout\ & 
-- !\caminho_de_dados|lcd|controladora|atual_estado.s27~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|lcd|controladora|atual_estado.s21~regout\,
	datab => \caminho_de_dados|lcd|controladora|atual_estado.s25~regout\,
	datac => \caminho_de_dados|lcd|controladora|atual_estado.s22~regout\,
	datad => \caminho_de_dados|lcd|controladora|atual_estado.s27~regout\,
	combout => \caminho_de_dados|lcd|datapath|dp_E~4_combout\);

-- Location: LCCOMB_X30_Y23_N20
\caminho_de_dados|lcd|datapath|dp_E~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lcd|datapath|dp_E~6_combout\ = (\caminho_de_dados|lcd|datapath|dp_E~5_combout\ & (!\caminho_de_dados|lcd|controladora|atual_estado.s52~regout\ & \caminho_de_dados|lcd|datapath|dp_E~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|lcd|datapath|dp_E~5_combout\,
	datac => \caminho_de_dados|lcd|controladora|atual_estado.s52~regout\,
	datad => \caminho_de_dados|lcd|datapath|dp_E~4_combout\,
	combout => \caminho_de_dados|lcd|datapath|dp_E~6_combout\);

-- Location: LCCOMB_X30_Y20_N28
\caminho_de_dados|lcd|controladora|atual_estado.s19~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lcd|controladora|atual_estado.s19~feeder_combout\ = \caminho_de_dados|lcd|controladora|atual_estado.s18~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \caminho_de_dados|lcd|controladora|atual_estado.s18~regout\,
	combout => \caminho_de_dados|lcd|controladora|atual_estado.s19~feeder_combout\);

-- Location: LCFF_X30_Y20_N29
\caminho_de_dados|lcd|controladora|atual_estado.s19\ : cycloneii_lcell_ff
PORT MAP (
	clk => \caminho_de_dados|div_freq_10kHz|tmp~clkctrl_outclk\,
	datain => \caminho_de_dados|lcd|controladora|atual_estado.s19~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|lcd|controladora|atual_estado.s19~regout\);

-- Location: LCCOMB_X2_Y18_N28
\caminho_de_dados|div_freq_10kHz|cnt[0]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|div_freq_10kHz|cnt[0]~36_combout\ = !\caminho_de_dados|div_freq_10kHz|cnt\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \caminho_de_dados|div_freq_10kHz|cnt\(0),
	combout => \caminho_de_dados|div_freq_10kHz|cnt[0]~36_combout\);

-- Location: LCFF_X2_Y18_N29
\caminho_de_dados|div_freq_10kHz|cnt[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \game_clock~clkctrl_outclk\,
	datain => \caminho_de_dados|div_freq_10kHz|cnt[0]~36_combout\,
	aclr => \caminho_de_dados|div_freq_10kHz|tmp~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|div_freq_10kHz|cnt\(0));

-- Location: LCCOMB_X1_Y18_N4
\caminho_de_dados|div_freq_10kHz|cnt[1]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|div_freq_10kHz|cnt[1]~12_combout\ = (\caminho_de_dados|div_freq_10kHz|cnt\(1) & (\caminho_de_dados|div_freq_10kHz|cnt\(0) $ (VCC))) # (!\caminho_de_dados|div_freq_10kHz|cnt\(1) & (\caminho_de_dados|div_freq_10kHz|cnt\(0) & VCC))
-- \caminho_de_dados|div_freq_10kHz|cnt[1]~13\ = CARRY((\caminho_de_dados|div_freq_10kHz|cnt\(1) & \caminho_de_dados|div_freq_10kHz|cnt\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|div_freq_10kHz|cnt\(1),
	datab => \caminho_de_dados|div_freq_10kHz|cnt\(0),
	datad => VCC,
	combout => \caminho_de_dados|div_freq_10kHz|cnt[1]~12_combout\,
	cout => \caminho_de_dados|div_freq_10kHz|cnt[1]~13\);

-- Location: LCCOMB_X1_Y18_N6
\caminho_de_dados|div_freq_10kHz|cnt[2]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|div_freq_10kHz|cnt[2]~14_combout\ = (\caminho_de_dados|div_freq_10kHz|cnt\(2) & (!\caminho_de_dados|div_freq_10kHz|cnt[1]~13\)) # (!\caminho_de_dados|div_freq_10kHz|cnt\(2) & ((\caminho_de_dados|div_freq_10kHz|cnt[1]~13\) # (GND)))
-- \caminho_de_dados|div_freq_10kHz|cnt[2]~15\ = CARRY((!\caminho_de_dados|div_freq_10kHz|cnt[1]~13\) # (!\caminho_de_dados|div_freq_10kHz|cnt\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|div_freq_10kHz|cnt\(2),
	datad => VCC,
	cin => \caminho_de_dados|div_freq_10kHz|cnt[1]~13\,
	combout => \caminho_de_dados|div_freq_10kHz|cnt[2]~14_combout\,
	cout => \caminho_de_dados|div_freq_10kHz|cnt[2]~15\);

-- Location: LCFF_X1_Y18_N7
\caminho_de_dados|div_freq_10kHz|cnt[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \game_clock~combout\,
	datain => \caminho_de_dados|div_freq_10kHz|cnt[2]~14_combout\,
	aclr => \caminho_de_dados|div_freq_10kHz|tmp~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|div_freq_10kHz|cnt\(2));

-- Location: LCFF_X1_Y18_N5
\caminho_de_dados|div_freq_10kHz|cnt[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \game_clock~combout\,
	datain => \caminho_de_dados|div_freq_10kHz|cnt[1]~12_combout\,
	aclr => \caminho_de_dados|div_freq_10kHz|tmp~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|div_freq_10kHz|cnt\(1));

-- Location: LCCOMB_X2_Y18_N22
\caminho_de_dados|div_freq_10kHz|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|div_freq_10kHz|Equal0~0_combout\ = (\caminho_de_dados|div_freq_10kHz|cnt\(3) & (!\caminho_de_dados|div_freq_10kHz|cnt\(2) & (!\caminho_de_dados|div_freq_10kHz|cnt\(1) & !\caminho_de_dados|div_freq_10kHz|cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|div_freq_10kHz|cnt\(3),
	datab => \caminho_de_dados|div_freq_10kHz|cnt\(2),
	datac => \caminho_de_dados|div_freq_10kHz|cnt\(1),
	datad => \caminho_de_dados|div_freq_10kHz|cnt\(0),
	combout => \caminho_de_dados|div_freq_10kHz|Equal0~0_combout\);

-- Location: LCCOMB_X1_Y18_N8
\caminho_de_dados|div_freq_10kHz|cnt[3]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|div_freq_10kHz|cnt[3]~16_combout\ = (\caminho_de_dados|div_freq_10kHz|cnt\(3) & (\caminho_de_dados|div_freq_10kHz|cnt[2]~15\ $ (GND))) # (!\caminho_de_dados|div_freq_10kHz|cnt\(3) & (!\caminho_de_dados|div_freq_10kHz|cnt[2]~15\ & VCC))
-- \caminho_de_dados|div_freq_10kHz|cnt[3]~17\ = CARRY((\caminho_de_dados|div_freq_10kHz|cnt\(3) & !\caminho_de_dados|div_freq_10kHz|cnt[2]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \caminho_de_dados|div_freq_10kHz|cnt\(3),
	datad => VCC,
	cin => \caminho_de_dados|div_freq_10kHz|cnt[2]~15\,
	combout => \caminho_de_dados|div_freq_10kHz|cnt[3]~16_combout\,
	cout => \caminho_de_dados|div_freq_10kHz|cnt[3]~17\);

-- Location: LCFF_X1_Y18_N9
\caminho_de_dados|div_freq_10kHz|cnt[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \game_clock~combout\,
	datain => \caminho_de_dados|div_freq_10kHz|cnt[3]~16_combout\,
	aclr => \caminho_de_dados|div_freq_10kHz|tmp~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|div_freq_10kHz|cnt\(3));

-- Location: LCCOMB_X1_Y18_N14
\caminho_de_dados|div_freq_10kHz|cnt[6]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|div_freq_10kHz|cnt[6]~22_combout\ = (\caminho_de_dados|div_freq_10kHz|cnt\(6) & (!\caminho_de_dados|div_freq_10kHz|cnt[5]~21\)) # (!\caminho_de_dados|div_freq_10kHz|cnt\(6) & ((\caminho_de_dados|div_freq_10kHz|cnt[5]~21\) # (GND)))
-- \caminho_de_dados|div_freq_10kHz|cnt[6]~23\ = CARRY((!\caminho_de_dados|div_freq_10kHz|cnt[5]~21\) # (!\caminho_de_dados|div_freq_10kHz|cnt\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \caminho_de_dados|div_freq_10kHz|cnt\(6),
	datad => VCC,
	cin => \caminho_de_dados|div_freq_10kHz|cnt[5]~21\,
	combout => \caminho_de_dados|div_freq_10kHz|cnt[6]~22_combout\,
	cout => \caminho_de_dados|div_freq_10kHz|cnt[6]~23\);

-- Location: LCFF_X1_Y18_N15
\caminho_de_dados|div_freq_10kHz|cnt[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \game_clock~combout\,
	datain => \caminho_de_dados|div_freq_10kHz|cnt[6]~22_combout\,
	aclr => \caminho_de_dados|div_freq_10kHz|tmp~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|div_freq_10kHz|cnt\(6));

-- Location: LCCOMB_X1_Y18_N18
\caminho_de_dados|div_freq_10kHz|cnt[8]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|div_freq_10kHz|cnt[8]~26_combout\ = (\caminho_de_dados|div_freq_10kHz|cnt\(8) & (!\caminho_de_dados|div_freq_10kHz|cnt[7]~25\)) # (!\caminho_de_dados|div_freq_10kHz|cnt\(8) & ((\caminho_de_dados|div_freq_10kHz|cnt[7]~25\) # (GND)))
-- \caminho_de_dados|div_freq_10kHz|cnt[8]~27\ = CARRY((!\caminho_de_dados|div_freq_10kHz|cnt[7]~25\) # (!\caminho_de_dados|div_freq_10kHz|cnt\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \caminho_de_dados|div_freq_10kHz|cnt\(8),
	datad => VCC,
	cin => \caminho_de_dados|div_freq_10kHz|cnt[7]~25\,
	combout => \caminho_de_dados|div_freq_10kHz|cnt[8]~26_combout\,
	cout => \caminho_de_dados|div_freq_10kHz|cnt[8]~27\);

-- Location: LCFF_X1_Y18_N19
\caminho_de_dados|div_freq_10kHz|cnt[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \game_clock~combout\,
	datain => \caminho_de_dados|div_freq_10kHz|cnt[8]~26_combout\,
	aclr => \caminho_de_dados|div_freq_10kHz|tmp~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|div_freq_10kHz|cnt\(8));

-- Location: LCCOMB_X1_Y18_N20
\caminho_de_dados|div_freq_10kHz|cnt[9]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|div_freq_10kHz|cnt[9]~28_combout\ = (\caminho_de_dados|div_freq_10kHz|cnt\(9) & (\caminho_de_dados|div_freq_10kHz|cnt[8]~27\ $ (GND))) # (!\caminho_de_dados|div_freq_10kHz|cnt\(9) & (!\caminho_de_dados|div_freq_10kHz|cnt[8]~27\ & VCC))
-- \caminho_de_dados|div_freq_10kHz|cnt[9]~29\ = CARRY((\caminho_de_dados|div_freq_10kHz|cnt\(9) & !\caminho_de_dados|div_freq_10kHz|cnt[8]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \caminho_de_dados|div_freq_10kHz|cnt\(9),
	datad => VCC,
	cin => \caminho_de_dados|div_freq_10kHz|cnt[8]~27\,
	combout => \caminho_de_dados|div_freq_10kHz|cnt[9]~28_combout\,
	cout => \caminho_de_dados|div_freq_10kHz|cnt[9]~29\);

-- Location: LCFF_X1_Y18_N21
\caminho_de_dados|div_freq_10kHz|cnt[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \game_clock~combout\,
	datain => \caminho_de_dados|div_freq_10kHz|cnt[9]~28_combout\,
	aclr => \caminho_de_dados|div_freq_10kHz|tmp~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|div_freq_10kHz|cnt\(9));

-- Location: LCCOMB_X1_Y18_N22
\caminho_de_dados|div_freq_10kHz|cnt[10]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|div_freq_10kHz|cnt[10]~30_combout\ = (\caminho_de_dados|div_freq_10kHz|cnt\(10) & (!\caminho_de_dados|div_freq_10kHz|cnt[9]~29\)) # (!\caminho_de_dados|div_freq_10kHz|cnt\(10) & ((\caminho_de_dados|div_freq_10kHz|cnt[9]~29\) # (GND)))
-- \caminho_de_dados|div_freq_10kHz|cnt[10]~31\ = CARRY((!\caminho_de_dados|div_freq_10kHz|cnt[9]~29\) # (!\caminho_de_dados|div_freq_10kHz|cnt\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \caminho_de_dados|div_freq_10kHz|cnt\(10),
	datad => VCC,
	cin => \caminho_de_dados|div_freq_10kHz|cnt[9]~29\,
	combout => \caminho_de_dados|div_freq_10kHz|cnt[10]~30_combout\,
	cout => \caminho_de_dados|div_freq_10kHz|cnt[10]~31\);

-- Location: LCFF_X1_Y18_N23
\caminho_de_dados|div_freq_10kHz|cnt[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \game_clock~combout\,
	datain => \caminho_de_dados|div_freq_10kHz|cnt[10]~30_combout\,
	aclr => \caminho_de_dados|div_freq_10kHz|tmp~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|div_freq_10kHz|cnt\(10));

-- Location: LCCOMB_X1_Y18_N24
\caminho_de_dados|div_freq_10kHz|cnt[11]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|div_freq_10kHz|cnt[11]~32_combout\ = (\caminho_de_dados|div_freq_10kHz|cnt\(11) & (\caminho_de_dados|div_freq_10kHz|cnt[10]~31\ $ (GND))) # (!\caminho_de_dados|div_freq_10kHz|cnt\(11) & (!\caminho_de_dados|div_freq_10kHz|cnt[10]~31\ & 
-- VCC))
-- \caminho_de_dados|div_freq_10kHz|cnt[11]~33\ = CARRY((\caminho_de_dados|div_freq_10kHz|cnt\(11) & !\caminho_de_dados|div_freq_10kHz|cnt[10]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \caminho_de_dados|div_freq_10kHz|cnt\(11),
	datad => VCC,
	cin => \caminho_de_dados|div_freq_10kHz|cnt[10]~31\,
	combout => \caminho_de_dados|div_freq_10kHz|cnt[11]~32_combout\,
	cout => \caminho_de_dados|div_freq_10kHz|cnt[11]~33\);

-- Location: LCFF_X1_Y18_N25
\caminho_de_dados|div_freq_10kHz|cnt[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \game_clock~combout\,
	datain => \caminho_de_dados|div_freq_10kHz|cnt[11]~32_combout\,
	aclr => \caminho_de_dados|div_freq_10kHz|tmp~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|div_freq_10kHz|cnt\(11));

-- Location: LCCOMB_X1_Y18_N0
\caminho_de_dados|div_freq_10kHz|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|div_freq_10kHz|Equal0~2_combout\ = (\caminho_de_dados|div_freq_10kHz|cnt\(9) & (!\caminho_de_dados|div_freq_10kHz|cnt\(10) & (!\caminho_de_dados|div_freq_10kHz|cnt\(11) & \caminho_de_dados|div_freq_10kHz|cnt\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|div_freq_10kHz|cnt\(9),
	datab => \caminho_de_dados|div_freq_10kHz|cnt\(10),
	datac => \caminho_de_dados|div_freq_10kHz|cnt\(11),
	datad => \caminho_de_dados|div_freq_10kHz|cnt\(8),
	combout => \caminho_de_dados|div_freq_10kHz|Equal0~2_combout\);

-- Location: LCCOMB_X1_Y18_N26
\caminho_de_dados|div_freq_10kHz|cnt[12]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|div_freq_10kHz|cnt[12]~34_combout\ = \caminho_de_dados|div_freq_10kHz|cnt[11]~33\ $ (\caminho_de_dados|div_freq_10kHz|cnt\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \caminho_de_dados|div_freq_10kHz|cnt\(12),
	cin => \caminho_de_dados|div_freq_10kHz|cnt[11]~33\,
	combout => \caminho_de_dados|div_freq_10kHz|cnt[12]~34_combout\);

-- Location: LCFF_X1_Y18_N27
\caminho_de_dados|div_freq_10kHz|cnt[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \game_clock~combout\,
	datain => \caminho_de_dados|div_freq_10kHz|cnt[12]~34_combout\,
	aclr => \caminho_de_dados|div_freq_10kHz|tmp~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|div_freq_10kHz|cnt\(12));

-- Location: LCCOMB_X2_Y18_N24
\caminho_de_dados|div_freq_10kHz|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|div_freq_10kHz|Equal0~3_combout\ = (\caminho_de_dados|div_freq_10kHz|Equal0~1_combout\ & (\caminho_de_dados|div_freq_10kHz|Equal0~0_combout\ & (\caminho_de_dados|div_freq_10kHz|Equal0~2_combout\ & 
-- \caminho_de_dados|div_freq_10kHz|cnt\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|div_freq_10kHz|Equal0~1_combout\,
	datab => \caminho_de_dados|div_freq_10kHz|Equal0~0_combout\,
	datac => \caminho_de_dados|div_freq_10kHz|Equal0~2_combout\,
	datad => \caminho_de_dados|div_freq_10kHz|cnt\(12),
	combout => \caminho_de_dados|div_freq_10kHz|Equal0~3_combout\);

-- Location: LCCOMB_X2_Y18_N30
\caminho_de_dados|div_freq_10kHz|tmp~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|div_freq_10kHz|tmp~1_combout\ = (\caminho_de_dados|div_freq_10kHz|Equal0~3_combout\) # (\controladora|estado_atual.s2~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \caminho_de_dados|div_freq_10kHz|Equal0~3_combout\,
	datad => \controladora|estado_atual.s2~regout\,
	combout => \caminho_de_dados|div_freq_10kHz|tmp~1_combout\);

-- Location: LCCOMB_X2_Y18_N26
\caminho_de_dados|div_freq_10kHz|tmp~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|div_freq_10kHz|tmp~0_combout\ = (\caminho_de_dados|div_freq_10kHz|tmp~combout\) # (!\caminho_de_dados|div_freq_10kHz|Equal0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \caminho_de_dados|div_freq_10kHz|Equal0~3_combout\,
	datad => \caminho_de_dados|div_freq_10kHz|tmp~combout\,
	combout => \caminho_de_dados|div_freq_10kHz|tmp~0_combout\);

-- Location: LCCOMB_X2_Y18_N2
\caminho_de_dados|div_freq_10kHz|tmp\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|div_freq_10kHz|tmp~combout\ = (\caminho_de_dados|div_freq_10kHz|tmp~1_combout\ & ((!\caminho_de_dados|div_freq_10kHz|tmp~0_combout\))) # (!\caminho_de_dados|div_freq_10kHz|tmp~1_combout\ & (\caminho_de_dados|div_freq_10kHz|tmp~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \caminho_de_dados|div_freq_10kHz|tmp~1_combout\,
	datac => \caminho_de_dados|div_freq_10kHz|tmp~combout\,
	datad => \caminho_de_dados|div_freq_10kHz|tmp~0_combout\,
	combout => \caminho_de_dados|div_freq_10kHz|tmp~combout\);

-- Location: LCCOMB_X30_Y20_N0
\caminho_de_dados|lcd|datapath|dp_E~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lcd|datapath|dp_E~3_combout\ = (!\caminho_de_dados|lcd|controladora|atual_estado.s20~regout\ & (!\caminho_de_dados|lcd|controladora|atual_estado.s19~regout\ & (\caminho_de_dados|div_freq_10kHz|tmp~combout\ & 
-- !\caminho_de_dados|lcd|controladora|atual_estado.s17~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|lcd|controladora|atual_estado.s20~regout\,
	datab => \caminho_de_dados|lcd|controladora|atual_estado.s19~regout\,
	datac => \caminho_de_dados|div_freq_10kHz|tmp~combout\,
	datad => \caminho_de_dados|lcd|controladora|atual_estado.s17~regout\,
	combout => \caminho_de_dados|lcd|datapath|dp_E~3_combout\);

-- Location: LCCOMB_X30_Y23_N26
\caminho_de_dados|lcd|datapath|dp_E\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|lcd|datapath|dp_E~combout\ = (\caminho_de_dados|lcd|datapath|dp_E~6_combout\ & (\caminho_de_dados|lcd|datapath|dp_E~3_combout\ & (!\caminho_de_dados|lcd|datapath|dp_E~2_combout\ & !\caminho_de_dados|lcd|datapath|dp_E~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|lcd|datapath|dp_E~6_combout\,
	datab => \caminho_de_dados|lcd|datapath|dp_E~3_combout\,
	datac => \caminho_de_dados|lcd|datapath|dp_E~2_combout\,
	datad => \caminho_de_dados|lcd|datapath|dp_E~1_combout\,
	combout => \caminho_de_dados|lcd|datapath|dp_E~combout\);

-- Location: LCFF_X32_Y22_N7
\caminho_de_dados|contador_moedas_1|cnt[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \game_clock~clkctrl_outclk\,
	datain => \caminho_de_dados|contador_moedas_1|Add0~6_combout\,
	aclr => \caminho_de_dados|contador_moedas_1|cnt[4]~16_combout\,
	ena => \controladora|estado_atual.s6~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \caminho_de_dados|contador_moedas_1|cnt\(4));

-- Location: LCCOMB_X30_Y32_N8
\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\caminho_de_dados|contador_moedas_1|cnt[5]~6_combout\ & 
-- (\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!\caminho_de_dados|contador_moedas_1|cnt[5]~6_combout\ & 
-- (!\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\caminho_de_dados|contador_moedas_1|cnt[5]~6_combout\ & 
-- !\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|contador_moedas_1|cnt[5]~6_combout\,
	datad => VCC,
	cin => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X30_Y32_N12
\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X30_Y32_N18
\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[18]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[18]~27_combout\ = (\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & 
-- !\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[18]~27_combout\);

-- Location: LCCOMB_X30_Y32_N24
\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[17]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[17]~28_combout\ = (\caminho_de_dados|contador_moedas_1|cnt[5]~6_combout\ & 
-- \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|contador_moedas_1|cnt[5]~6_combout\,
	datad => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[17]~28_combout\);

-- Location: LCCOMB_X30_Y32_N28
\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[16]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[16]~30_combout\ = (\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \caminho_de_dados|contador_moedas_1|cnt\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \caminho_de_dados|contador_moedas_1|cnt\(4),
	combout => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[16]~30_combout\);

-- Location: LCCOMB_X30_Y32_N4
\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[15]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[15]~32_combout\ = (\caminho_de_dados|contador_moedas_1|cnt\(3) & \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|contador_moedas_1|cnt\(3),
	datad => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[15]~32_combout\);

-- Location: LCCOMB_X31_Y32_N10
\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY((!\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[18]~26_combout\ & 
-- (!\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[18]~27_combout\ & !\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[18]~26_combout\,
	datab => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[18]~27_combout\,
	datad => VCC,
	cin => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	cout => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X31_Y32_N12
\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X30_Y32_N20
\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[23]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[23]~46_combout\ = (\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\caminho_de_dados|contador_moedas_1|cnt[5]~6_combout\))) # 
-- (!\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datac => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \caminho_de_dados|contador_moedas_1|cnt[5]~6_combout\,
	combout => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[23]~46_combout\);

-- Location: LCCOMB_X30_Y32_N22
\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[22]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[22]~47_combout\ = (\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\caminho_de_dados|contador_moedas_1|cnt\(4)))) # 
-- (!\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datab => \caminho_de_dados|contador_moedas_1|cnt\(4),
	datac => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[22]~47_combout\);

-- Location: LCCOMB_X30_Y31_N18
\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[21]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[21]~36_combout\ = (\caminho_de_dados|contador_moedas_1|cnt\(3) & \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \caminho_de_dados|contador_moedas_1|cnt\(3),
	datad => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[21]~36_combout\);

-- Location: LCCOMB_X30_Y31_N2
\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[20]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[20]~38_combout\ = (\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \caminho_de_dados|contador_moedas_1|cnt\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \caminho_de_dados|contador_moedas_1|cnt\(2),
	combout => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[20]~38_combout\);

-- Location: LCCOMB_X30_Y31_N22
\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[20]~39_combout\) # 
-- (\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[20]~38_combout\)))
-- \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[20]~39_combout\) # 
-- (\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[20]~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[20]~39_combout\,
	datab => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[20]~38_combout\,
	datad => VCC,
	combout => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X30_Y31_N24
\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & 
-- (((\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[21]~37_combout\) # (\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[21]~36_combout\)))) # 
-- (!\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[21]~37_combout\ & 
-- (!\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[21]~36_combout\)))
-- \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[21]~37_combout\ & 
-- (!\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[21]~36_combout\ & !\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[21]~37_combout\,
	datab => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[21]~36_combout\,
	datad => VCC,
	cin => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X30_Y31_N26
\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & 
-- (((\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[22]~35_combout\) # (\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[22]~47_combout\)))) # 
-- (!\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[22]~35_combout\) # 
-- (\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[22]~47_combout\)))))
-- \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & 
-- ((\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[22]~35_combout\) # (\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[22]~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[22]~35_combout\,
	datab => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[22]~47_combout\,
	datad => VCC,
	cin => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X30_Y31_N28
\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ = CARRY((!\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[23]~34_combout\ & 
-- (!\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[23]~46_combout\ & !\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[23]~34_combout\,
	datab => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[23]~46_combout\,
	datad => VCC,
	cin => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	cout => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\);

-- Location: LCCOMB_X30_Y31_N30
\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\,
	combout => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\);

-- Location: LCCOMB_X30_Y31_N0
\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[28]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[28]~40_combout\ = (\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & 
-- !\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datad => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[28]~40_combout\);

-- Location: LCCOMB_X30_Y31_N10
\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[27]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[27]~41_combout\ = (\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & 
-- !\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[27]~41_combout\);

-- Location: LCCOMB_X30_Y31_N8
\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[26]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[26]~42_combout\ = (\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & 
-- !\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[26]~42_combout\);

-- Location: LCCOMB_X29_Y31_N0
\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[25]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[25]~43_combout\ = (\caminho_de_dados|contador_moedas_1|cnt[1]~4_combout\ & 
-- \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \caminho_de_dados|contador_moedas_1|cnt[1]~4_combout\,
	datad => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[25]~43_combout\);

-- Location: LCCOMB_X29_Y31_N22
\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1_cout\ = CARRY((\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[25]~44_combout\) # 
-- (\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[25]~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[25]~44_combout\,
	datab => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[25]~43_combout\,
	datad => VCC,
	cout => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1_cout\);

-- Location: LCCOMB_X29_Y31_N24
\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3_cout\ = CARRY((!\caminho_de_dados|displa1|separador|Add1~0_combout\ & 
-- (!\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[26]~42_combout\ & !\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|displa1|separador|Add1~0_combout\,
	datab => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[26]~42_combout\,
	datad => VCC,
	cin => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1_cout\,
	cout => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3_cout\);

-- Location: LCCOMB_X29_Y31_N26
\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5_cout\ = CARRY((!\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3_cout\ & 
-- ((\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[27]~48_combout\) # (\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[27]~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[27]~48_combout\,
	datab => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[27]~41_combout\,
	datad => VCC,
	cin => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3_cout\,
	cout => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5_cout\);

-- Location: LCCOMB_X29_Y31_N28
\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ = CARRY((!\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[28]~45_combout\ & 
-- (!\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[28]~40_combout\ & !\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[28]~45_combout\,
	datab => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|StageOut[28]~40_combout\,
	datad => VCC,
	cin => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5_cout\,
	cout => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\);

-- Location: LCCOMB_X29_Y31_N30
\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\,
	combout => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\);

-- Location: LCCOMB_X29_Y32_N4
\caminho_de_dados|displa1|dez|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|displa1|dez|Mux6~0_combout\ = (\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- ((\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ $ (\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)) # 
-- (!\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))) # (!\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- ((\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ $ (\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)) # 
-- (!\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \caminho_de_dados|displa1|dez|Mux6~0_combout\);

-- Location: LCCOMB_X29_Y32_N26
\caminho_de_dados|displa1|dez|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|displa1|dez|Mux5~0_combout\ = (\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- (!\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & (\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ $ 
-- (!\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)))) # (!\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- (\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\) # 
-- (!\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \caminho_de_dados|displa1|dez|Mux5~0_combout\);

-- Location: LCCOMB_X29_Y32_N20
\caminho_de_dados|displa1|dez|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|displa1|dez|Mux4~0_combout\ = (\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- ((\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((!\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\))) # 
-- (!\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)))) # 
-- (!\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- (!\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \caminho_de_dados|displa1|dez|Mux4~0_combout\);

-- Location: LCCOMB_X29_Y32_N22
\caminho_de_dados|displa1|dez|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|displa1|dez|Mux3~0_combout\ = (\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- (\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ $ 
-- (\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)))) # (!\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- ((\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & (!\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)) # (!\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- ((!\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100010000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \caminho_de_dados|displa1|dez|Mux3~0_combout\);

-- Location: LCCOMB_X29_Y32_N24
\caminho_de_dados|displa1|dez|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|displa1|dez|Mux2~0_combout\ = (\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- (!\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))) # (!\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- (!\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\) # 
-- (!\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000001010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \caminho_de_dados|displa1|dez|Mux2~0_combout\);

-- Location: LCCOMB_X29_Y32_N10
\caminho_de_dados|displa1|dez|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|displa1|dez|Mux1~0_combout\ = (\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- (!\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ $ 
-- (\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)))) # (!\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- ((\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((!\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))) # 
-- (!\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & (!\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \caminho_de_dados|displa1|dez|Mux1~0_combout\);

-- Location: LCCOMB_X29_Y32_N8
\caminho_de_dados|displa1|dez|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|displa1|dez|Mux0~0_combout\ = (\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- (\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ $ 
-- (\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)))) # (!\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- (!\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & (\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ $ 
-- (\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \caminho_de_dados|displa1|dez|Mux0~0_combout\);

-- Location: LCCOMB_X29_Y32_N14
\caminho_de_dados|displa1|separador|Add1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|displa1|separador|Add1~3_combout\ = (\caminho_de_dados|contador_moedas_1|cnt\(2) & (!\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- ((\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\) # (\caminho_de_dados|contador_moedas_1|cnt[1]~4_combout\)))) # (!\caminho_de_dados|contador_moedas_1|cnt\(2) & 
-- ((\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & (!\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)) # 
-- (!\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & (\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- \caminho_de_dados|contador_moedas_1|cnt[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|contador_moedas_1|cnt\(2),
	datab => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \caminho_de_dados|contador_moedas_1|cnt[1]~4_combout\,
	combout => \caminho_de_dados|displa1|separador|Add1~3_combout\);

-- Location: LCCOMB_X30_Y32_N26
\caminho_de_dados|displa1|separador|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|displa1|separador|Add1~4_combout\ = \caminho_de_dados|contador_moedas_1|cnt\(3) $ (\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ $ 
-- (\caminho_de_dados|displa1|separador|Add1~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|contador_moedas_1|cnt\(3),
	datac => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \caminho_de_dados|displa1|separador|Add1~3_combout\,
	combout => \caminho_de_dados|displa1|separador|Add1~4_combout\);

-- Location: LCCOMB_X29_Y32_N12
\caminho_de_dados|displa1|separador|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|displa1|separador|Add1~2_combout\ = \caminho_de_dados|contador_moedas_1|cnt\(2) $ (\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ $ 
-- (((\caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\) # (\caminho_de_dados|contador_moedas_1|cnt[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|contador_moedas_1|cnt\(2),
	datab => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \caminho_de_dados|contador_moedas_1|cnt[1]~4_combout\,
	combout => \caminho_de_dados|displa1|separador|Add1~2_combout\);

-- Location: LCCOMB_X29_Y32_N30
\caminho_de_dados|displa1|separador|Add1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|displa1|separador|Add1~1_combout\ = \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ $ (\caminho_de_dados|contador_moedas_1|cnt[1]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \caminho_de_dados|displa1|separador|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \caminho_de_dados|contador_moedas_1|cnt[1]~4_combout\,
	combout => \caminho_de_dados|displa1|separador|Add1~1_combout\);

-- Location: LCCOMB_X28_Y32_N0
\caminho_de_dados|displa1|un|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|displa1|un|Mux6~0_combout\ = (\caminho_de_dados|contador_moedas_1|cnt[0]~2_combout\ & ((\caminho_de_dados|displa1|separador|Add1~2_combout\ $ (!\caminho_de_dados|displa1|separador|Add1~1_combout\)) # 
-- (!\caminho_de_dados|displa1|separador|Add1~4_combout\))) # (!\caminho_de_dados|contador_moedas_1|cnt[0]~2_combout\ & ((\caminho_de_dados|displa1|separador|Add1~4_combout\ $ (!\caminho_de_dados|displa1|separador|Add1~2_combout\)) # 
-- (!\caminho_de_dados|displa1|separador|Add1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|displa1|separador|Add1~4_combout\,
	datab => \caminho_de_dados|displa1|separador|Add1~2_combout\,
	datac => \caminho_de_dados|contador_moedas_1|cnt[0]~2_combout\,
	datad => \caminho_de_dados|displa1|separador|Add1~1_combout\,
	combout => \caminho_de_dados|displa1|un|Mux6~0_combout\);

-- Location: LCCOMB_X28_Y32_N6
\caminho_de_dados|displa1|un|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|displa1|un|Mux5~0_combout\ = (\caminho_de_dados|displa1|separador|Add1~2_combout\ & (\caminho_de_dados|contador_moedas_1|cnt[0]~2_combout\ & (\caminho_de_dados|displa1|separador|Add1~4_combout\ $ 
-- (\caminho_de_dados|displa1|separador|Add1~1_combout\)))) # (!\caminho_de_dados|displa1|separador|Add1~2_combout\ & (\caminho_de_dados|displa1|separador|Add1~4_combout\ & ((\caminho_de_dados|contador_moedas_1|cnt[0]~2_combout\) # 
-- (!\caminho_de_dados|displa1|separador|Add1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|displa1|separador|Add1~4_combout\,
	datab => \caminho_de_dados|displa1|separador|Add1~2_combout\,
	datac => \caminho_de_dados|contador_moedas_1|cnt[0]~2_combout\,
	datad => \caminho_de_dados|displa1|separador|Add1~1_combout\,
	combout => \caminho_de_dados|displa1|un|Mux5~0_combout\);

-- Location: LCCOMB_X28_Y32_N4
\caminho_de_dados|displa1|un|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|displa1|un|Mux4~0_combout\ = (\caminho_de_dados|displa1|separador|Add1~1_combout\ & ((\caminho_de_dados|displa1|separador|Add1~2_combout\ & (\caminho_de_dados|displa1|separador|Add1~4_combout\)) # 
-- (!\caminho_de_dados|displa1|separador|Add1~2_combout\ & ((\caminho_de_dados|contador_moedas_1|cnt[0]~2_combout\))))) # (!\caminho_de_dados|displa1|separador|Add1~1_combout\ & (\caminho_de_dados|displa1|separador|Add1~4_combout\ & 
-- ((\caminho_de_dados|contador_moedas_1|cnt[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|displa1|separador|Add1~4_combout\,
	datab => \caminho_de_dados|displa1|separador|Add1~2_combout\,
	datac => \caminho_de_dados|contador_moedas_1|cnt[0]~2_combout\,
	datad => \caminho_de_dados|displa1|separador|Add1~1_combout\,
	combout => \caminho_de_dados|displa1|un|Mux4~0_combout\);

-- Location: LCCOMB_X28_Y32_N2
\caminho_de_dados|displa1|un|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|displa1|un|Mux3~0_combout\ = (\caminho_de_dados|displa1|separador|Add1~1_combout\ & (\caminho_de_dados|displa1|separador|Add1~4_combout\ & (\caminho_de_dados|displa1|separador|Add1~2_combout\ $ 
-- (\caminho_de_dados|contador_moedas_1|cnt[0]~2_combout\)))) # (!\caminho_de_dados|displa1|separador|Add1~1_combout\ & ((\caminho_de_dados|displa1|separador|Add1~2_combout\ & ((\caminho_de_dados|contador_moedas_1|cnt[0]~2_combout\))) # 
-- (!\caminho_de_dados|displa1|separador|Add1~2_combout\ & (!\caminho_de_dados|displa1|separador|Add1~4_combout\ & !\caminho_de_dados|contador_moedas_1|cnt[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100011000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|displa1|separador|Add1~4_combout\,
	datab => \caminho_de_dados|displa1|separador|Add1~2_combout\,
	datac => \caminho_de_dados|contador_moedas_1|cnt[0]~2_combout\,
	datad => \caminho_de_dados|displa1|separador|Add1~1_combout\,
	combout => \caminho_de_dados|displa1|un|Mux3~0_combout\);

-- Location: LCCOMB_X28_Y32_N28
\caminho_de_dados|displa1|un|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|displa1|un|Mux2~0_combout\ = (\caminho_de_dados|displa1|separador|Add1~4_combout\ & (!\caminho_de_dados|displa1|separador|Add1~2_combout\ & (!\caminho_de_dados|contador_moedas_1|cnt[0]~2_combout\ & 
-- !\caminho_de_dados|displa1|separador|Add1~1_combout\))) # (!\caminho_de_dados|displa1|separador|Add1~4_combout\ & (\caminho_de_dados|displa1|separador|Add1~2_combout\ & ((!\caminho_de_dados|displa1|separador|Add1~1_combout\) # 
-- (!\caminho_de_dados|contador_moedas_1|cnt[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|displa1|separador|Add1~4_combout\,
	datab => \caminho_de_dados|displa1|separador|Add1~2_combout\,
	datac => \caminho_de_dados|contador_moedas_1|cnt[0]~2_combout\,
	datad => \caminho_de_dados|displa1|separador|Add1~1_combout\,
	combout => \caminho_de_dados|displa1|un|Mux2~0_combout\);

-- Location: LCCOMB_X28_Y32_N10
\caminho_de_dados|displa1|un|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|displa1|un|Mux1~0_combout\ = (\caminho_de_dados|displa1|separador|Add1~4_combout\ & (\caminho_de_dados|displa1|separador|Add1~2_combout\ & (\caminho_de_dados|contador_moedas_1|cnt[0]~2_combout\ $ 
-- (!\caminho_de_dados|displa1|separador|Add1~1_combout\)))) # (!\caminho_de_dados|displa1|separador|Add1~4_combout\ & ((\caminho_de_dados|contador_moedas_1|cnt[0]~2_combout\ & ((!\caminho_de_dados|displa1|separador|Add1~1_combout\))) # 
-- (!\caminho_de_dados|contador_moedas_1|cnt[0]~2_combout\ & (\caminho_de_dados|displa1|separador|Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|displa1|separador|Add1~4_combout\,
	datab => \caminho_de_dados|displa1|separador|Add1~2_combout\,
	datac => \caminho_de_dados|contador_moedas_1|cnt[0]~2_combout\,
	datad => \caminho_de_dados|displa1|separador|Add1~1_combout\,
	combout => \caminho_de_dados|displa1|un|Mux1~0_combout\);

-- Location: LCCOMB_X28_Y32_N12
\caminho_de_dados|displa1|un|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|displa1|un|Mux0~0_combout\ = (\caminho_de_dados|displa1|separador|Add1~4_combout\ & (\caminho_de_dados|displa1|separador|Add1~1_combout\ & (\caminho_de_dados|displa1|separador|Add1~2_combout\ $ 
-- (\caminho_de_dados|contador_moedas_1|cnt[0]~2_combout\)))) # (!\caminho_de_dados|displa1|separador|Add1~4_combout\ & (\caminho_de_dados|contador_moedas_1|cnt[0]~2_combout\ & (\caminho_de_dados|displa1|separador|Add1~2_combout\ $ 
-- (!\caminho_de_dados|displa1|separador|Add1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|displa1|separador|Add1~4_combout\,
	datab => \caminho_de_dados|displa1|separador|Add1~2_combout\,
	datac => \caminho_de_dados|contador_moedas_1|cnt[0]~2_combout\,
	datad => \caminho_de_dados|displa1|separador|Add1~1_combout\,
	combout => \caminho_de_dados|displa1|un|Mux0~0_combout\);

-- Location: LCCOMB_X32_Y29_N26
\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\caminho_de_dados|contador_moedas_2|cnt[6]~8_combout\ & 
-- (\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!\caminho_de_dados|contador_moedas_2|cnt[6]~8_combout\ & 
-- (!\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((\caminho_de_dados|contador_moedas_2|cnt[6]~8_combout\ & 
-- !\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|contador_moedas_2|cnt[6]~8_combout\,
	datad => VCC,
	cin => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X32_Y29_N28
\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X32_Y29_N30
\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[18]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[18]~27_combout\ = (\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & 
-- !\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[18]~27_combout\);

-- Location: LCCOMB_X32_Y29_N0
\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[17]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[17]~28_combout\ = (\caminho_de_dados|contador_moedas_2|cnt[5]~6_combout\ & 
-- \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \caminho_de_dados|contador_moedas_2|cnt[5]~6_combout\,
	datad => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[17]~28_combout\);

-- Location: LCCOMB_X32_Y29_N18
\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[16]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[16]~30_combout\ = (\caminho_de_dados|contador_moedas_2|cnt\(4) & \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \caminho_de_dados|contador_moedas_2|cnt\(4),
	datad => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[16]~30_combout\);

-- Location: LCCOMB_X31_Y29_N4
\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[15]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[15]~33_combout\ = (\caminho_de_dados|contador_moedas_2|cnt\(3) & !\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \caminho_de_dados|contador_moedas_2|cnt\(3),
	datad => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[15]~33_combout\);

-- Location: LCCOMB_X32_Y29_N8
\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & 
-- (((\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[16]~31_combout\) # (\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[16]~30_combout\)))) # 
-- (!\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[16]~31_combout\ & 
-- (!\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[16]~30_combout\)))
-- \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[16]~31_combout\ & 
-- (!\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[16]~30_combout\ & !\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[16]~31_combout\,
	datab => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[16]~30_combout\,
	datad => VCC,
	cin => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X32_Y29_N12
\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY((!\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[18]~26_combout\ & 
-- (!\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[18]~27_combout\ & !\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[18]~26_combout\,
	datab => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[18]~27_combout\,
	datad => VCC,
	cin => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	cout => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X32_Y29_N14
\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X32_Y29_N2
\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[22]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[22]~47_combout\ = (\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\caminho_de_dados|contador_moedas_2|cnt\(4)))) # 
-- (!\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datab => \caminho_de_dados|contador_moedas_2|cnt\(4),
	datac => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[22]~47_combout\);

-- Location: LCCOMB_X32_Y29_N4
\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[23]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[23]~46_combout\ = (\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\caminho_de_dados|contador_moedas_2|cnt[5]~6_combout\))) # 
-- (!\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datab => \caminho_de_dados|contador_moedas_2|cnt[5]~6_combout\,
	datac => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[23]~46_combout\);

-- Location: LCCOMB_X32_Y31_N18
\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[21]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[21]~36_combout\ = (\caminho_de_dados|contador_moedas_2|cnt\(3) & \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \caminho_de_dados|contador_moedas_2|cnt\(3),
	datad => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[21]~36_combout\);

-- Location: LCCOMB_X32_Y31_N22
\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[20]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[20]~38_combout\ = (\caminho_de_dados|contador_moedas_2|cnt\(2) & \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|contador_moedas_2|cnt\(2),
	datad => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[20]~38_combout\);

-- Location: LCCOMB_X32_Y31_N4
\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & 
-- (((\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[21]~37_combout\) # (\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[21]~36_combout\)))) # 
-- (!\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[21]~37_combout\ & 
-- (!\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[21]~36_combout\)))
-- \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[21]~37_combout\ & 
-- (!\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[21]~36_combout\ & !\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[21]~37_combout\,
	datab => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[21]~36_combout\,
	datad => VCC,
	cin => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X32_Y31_N8
\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ = CARRY((!\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[23]~34_combout\ & 
-- (!\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[23]~46_combout\ & !\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[23]~34_combout\,
	datab => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[23]~46_combout\,
	datad => VCC,
	cin => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	cout => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\);

-- Location: LCCOMB_X32_Y31_N10
\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\,
	combout => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\);

-- Location: LCCOMB_X32_Y31_N28
\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[28]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[28]~45_combout\ = (\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- ((\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[22]~47_combout\) # ((!\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[22]~47_combout\,
	datac => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[28]~45_combout\);

-- Location: LCCOMB_X32_Y31_N26
\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[27]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[27]~41_combout\ = (\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & 
-- !\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[27]~41_combout\);

-- Location: LCCOMB_X33_Y31_N2
\caminho_de_dados|displa2|separador|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|displa2|separador|Add1~0_combout\ = (\caminho_de_dados|contador_moedas_2|cnt\(2) & \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \caminho_de_dados|contador_moedas_2|cnt\(2),
	datad => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \caminho_de_dados|displa2|separador|Add1~0_combout\);

-- Location: LCCOMB_X33_Y31_N0
\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[25]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[25]~43_combout\ = (\caminho_de_dados|contador_moedas_2|cnt[1]~4_combout\ & 
-- \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \caminho_de_dados|contador_moedas_2|cnt[1]~4_combout\,
	datad => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[25]~43_combout\);

-- Location: LCCOMB_X33_Y31_N18
\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1_cout\ = CARRY((\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[25]~44_combout\) # 
-- (\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[25]~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[25]~44_combout\,
	datab => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[25]~43_combout\,
	datad => VCC,
	cout => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1_cout\);

-- Location: LCCOMB_X33_Y31_N20
\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3_cout\ = CARRY((!\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[26]~42_combout\ & 
-- (!\caminho_de_dados|displa2|separador|Add1~0_combout\ & !\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[26]~42_combout\,
	datab => \caminho_de_dados|displa2|separador|Add1~0_combout\,
	datad => VCC,
	cin => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1_cout\,
	cout => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3_cout\);

-- Location: LCCOMB_X33_Y31_N22
\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5_cout\ = CARRY((!\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3_cout\ & 
-- ((\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[27]~48_combout\) # (\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[27]~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[27]~48_combout\,
	datab => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[27]~41_combout\,
	datad => VCC,
	cin => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3_cout\,
	cout => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5_cout\);

-- Location: LCCOMB_X33_Y31_N24
\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ = CARRY((!\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[28]~40_combout\ & 
-- (!\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[28]~45_combout\ & !\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[28]~40_combout\,
	datab => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|StageOut[28]~45_combout\,
	datad => VCC,
	cin => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5_cout\,
	cout => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\);

-- Location: LCCOMB_X33_Y31_N26
\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\,
	combout => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\);

-- Location: LCCOMB_X33_Y32_N0
\caminho_de_dados|displa2|dez|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|displa2|dez|Mux6~0_combout\ = (\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- ((\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ $ (\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)) # 
-- (!\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))) # (!\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- ((\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ $ (\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)) # 
-- (!\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \caminho_de_dados|displa2|dez|Mux6~0_combout\);

-- Location: LCCOMB_X32_Y32_N20
\caminho_de_dados|displa2|dez|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|displa2|dez|Mux5~0_combout\ = (\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- (!\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & (\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ $ 
-- (!\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)))) # (!\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- (\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\) # 
-- (!\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \caminho_de_dados|displa2|dez|Mux5~0_combout\);

-- Location: LCCOMB_X33_Y32_N6
\caminho_de_dados|displa2|dez|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|displa2|dez|Mux4~0_combout\ = (\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- ((\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((!\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\))) # 
-- (!\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)))) # 
-- (!\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (((\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- !\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \caminho_de_dados|displa2|dez|Mux4~0_combout\);

-- Location: LCCOMB_X33_Y32_N4
\caminho_de_dados|displa2|dez|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|displa2|dez|Mux3~0_combout\ = (\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- (\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ $ 
-- (\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)))) # (!\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- ((\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (!\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)) # (!\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((!\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \caminho_de_dados|displa2|dez|Mux3~0_combout\);

-- Location: LCCOMB_X32_Y32_N26
\caminho_de_dados|displa2|dez|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|displa2|dez|Mux2~0_combout\ = (\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- (!\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))) # (!\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- (!\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\) # 
-- (!\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000001010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \caminho_de_dados|displa2|dez|Mux2~0_combout\);

-- Location: LCCOMB_X32_Y32_N24
\caminho_de_dados|displa2|dez|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|displa2|dez|Mux1~0_combout\ = (\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- (!\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ $ 
-- (\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)))) # (!\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- ((\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((!\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))) # 
-- (!\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & (!\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \caminho_de_dados|displa2|dez|Mux1~0_combout\);

-- Location: LCCOMB_X32_Y32_N6
\caminho_de_dados|displa2|dez|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|displa2|dez|Mux0~0_combout\ = (\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- (\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ $ 
-- (\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)))) # (!\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- (!\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & (\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ $ 
-- (\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \caminho_de_dados|displa2|dez|Mux0~0_combout\);

-- Location: LCCOMB_X33_Y31_N14
\caminho_de_dados|displa2|separador|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|displa2|separador|Add1~2_combout\ = \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ $ (\caminho_de_dados|contador_moedas_2|cnt\(2) $ 
-- (((\caminho_de_dados|contador_moedas_2|cnt[1]~4_combout\) # (\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \caminho_de_dados|contador_moedas_2|cnt\(2),
	datac => \caminho_de_dados|contador_moedas_2|cnt[1]~4_combout\,
	datad => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \caminho_de_dados|displa2|separador|Add1~2_combout\);

-- Location: LCCOMB_X33_Y31_N4
\caminho_de_dados|displa2|separador|Add1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|displa2|separador|Add1~3_combout\ = (\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- (!\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\caminho_de_dados|contador_moedas_2|cnt\(2)) # (\caminho_de_dados|contador_moedas_2|cnt[1]~4_combout\)))) # 
-- (!\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\caminho_de_dados|contador_moedas_2|cnt\(2) & (\caminho_de_dados|contador_moedas_2|cnt[1]~4_combout\ & 
-- !\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)) # (!\caminho_de_dados|contador_moedas_2|cnt\(2) & 
-- ((\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \caminho_de_dados|contador_moedas_2|cnt\(2),
	datac => \caminho_de_dados|contador_moedas_2|cnt[1]~4_combout\,
	datad => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \caminho_de_dados|displa2|separador|Add1~3_combout\);

-- Location: LCCOMB_X32_Y31_N30
\caminho_de_dados|displa2|separador|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|displa2|separador|Add1~4_combout\ = \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ $ (\caminho_de_dados|contador_moedas_2|cnt\(3) $ 
-- (\caminho_de_dados|displa2|separador|Add1~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \caminho_de_dados|contador_moedas_2|cnt\(3),
	datad => \caminho_de_dados|displa2|separador|Add1~3_combout\,
	combout => \caminho_de_dados|displa2|separador|Add1~4_combout\);

-- Location: LCCOMB_X33_Y31_N28
\caminho_de_dados|displa2|separador|Add1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|displa2|separador|Add1~1_combout\ = \caminho_de_dados|contador_moedas_2|cnt[1]~4_combout\ $ (\caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \caminho_de_dados|contador_moedas_2|cnt[1]~4_combout\,
	datad => \caminho_de_dados|displa2|separador|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \caminho_de_dados|displa2|separador|Add1~1_combout\);

-- Location: LCCOMB_X34_Y35_N12
\caminho_de_dados|displa2|un|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|displa2|un|Mux6~0_combout\ = (\caminho_de_dados|contador_moedas_2|cnt[0]~2_combout\ & ((\caminho_de_dados|displa2|separador|Add1~2_combout\ $ (!\caminho_de_dados|displa2|separador|Add1~1_combout\)) # 
-- (!\caminho_de_dados|displa2|separador|Add1~4_combout\))) # (!\caminho_de_dados|contador_moedas_2|cnt[0]~2_combout\ & ((\caminho_de_dados|displa2|separador|Add1~2_combout\ $ (!\caminho_de_dados|displa2|separador|Add1~4_combout\)) # 
-- (!\caminho_de_dados|displa2|separador|Add1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|displa2|separador|Add1~2_combout\,
	datab => \caminho_de_dados|displa2|separador|Add1~4_combout\,
	datac => \caminho_de_dados|contador_moedas_2|cnt[0]~2_combout\,
	datad => \caminho_de_dados|displa2|separador|Add1~1_combout\,
	combout => \caminho_de_dados|displa2|un|Mux6~0_combout\);

-- Location: LCCOMB_X34_Y35_N2
\caminho_de_dados|displa2|un|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|displa2|un|Mux5~0_combout\ = (\caminho_de_dados|displa2|separador|Add1~2_combout\ & (\caminho_de_dados|contador_moedas_2|cnt[0]~2_combout\ & (\caminho_de_dados|displa2|separador|Add1~4_combout\ $ 
-- (\caminho_de_dados|displa2|separador|Add1~1_combout\)))) # (!\caminho_de_dados|displa2|separador|Add1~2_combout\ & (\caminho_de_dados|displa2|separador|Add1~4_combout\ & ((\caminho_de_dados|contador_moedas_2|cnt[0]~2_combout\) # 
-- (!\caminho_de_dados|displa2|separador|Add1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|displa2|separador|Add1~2_combout\,
	datab => \caminho_de_dados|displa2|separador|Add1~4_combout\,
	datac => \caminho_de_dados|contador_moedas_2|cnt[0]~2_combout\,
	datad => \caminho_de_dados|displa2|separador|Add1~1_combout\,
	combout => \caminho_de_dados|displa2|un|Mux5~0_combout\);

-- Location: LCCOMB_X34_Y35_N16
\caminho_de_dados|displa2|un|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|displa2|un|Mux4~0_combout\ = (\caminho_de_dados|displa2|separador|Add1~1_combout\ & ((\caminho_de_dados|displa2|separador|Add1~2_combout\ & (\caminho_de_dados|displa2|separador|Add1~4_combout\)) # 
-- (!\caminho_de_dados|displa2|separador|Add1~2_combout\ & ((\caminho_de_dados|contador_moedas_2|cnt[0]~2_combout\))))) # (!\caminho_de_dados|displa2|separador|Add1~1_combout\ & (((\caminho_de_dados|displa2|separador|Add1~4_combout\ & 
-- \caminho_de_dados|contador_moedas_2|cnt[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|displa2|separador|Add1~2_combout\,
	datab => \caminho_de_dados|displa2|separador|Add1~4_combout\,
	datac => \caminho_de_dados|contador_moedas_2|cnt[0]~2_combout\,
	datad => \caminho_de_dados|displa2|separador|Add1~1_combout\,
	combout => \caminho_de_dados|displa2|un|Mux4~0_combout\);

-- Location: LCCOMB_X34_Y35_N18
\caminho_de_dados|displa2|un|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|displa2|un|Mux3~0_combout\ = (\caminho_de_dados|displa2|separador|Add1~1_combout\ & (\caminho_de_dados|displa2|separador|Add1~4_combout\ & (\caminho_de_dados|displa2|separador|Add1~2_combout\ $ 
-- (\caminho_de_dados|contador_moedas_2|cnt[0]~2_combout\)))) # (!\caminho_de_dados|displa2|separador|Add1~1_combout\ & ((\caminho_de_dados|displa2|separador|Add1~2_combout\ & ((\caminho_de_dados|contador_moedas_2|cnt[0]~2_combout\))) # 
-- (!\caminho_de_dados|displa2|separador|Add1~2_combout\ & (!\caminho_de_dados|displa2|separador|Add1~4_combout\ & !\caminho_de_dados|contador_moedas_2|cnt[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100010100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|displa2|separador|Add1~2_combout\,
	datab => \caminho_de_dados|displa2|separador|Add1~4_combout\,
	datac => \caminho_de_dados|contador_moedas_2|cnt[0]~2_combout\,
	datad => \caminho_de_dados|displa2|separador|Add1~1_combout\,
	combout => \caminho_de_dados|displa2|un|Mux3~0_combout\);

-- Location: LCCOMB_X34_Y35_N0
\caminho_de_dados|displa2|un|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|displa2|un|Mux2~0_combout\ = (\caminho_de_dados|displa2|separador|Add1~2_combout\ & (!\caminho_de_dados|displa2|separador|Add1~4_combout\ & ((!\caminho_de_dados|displa2|separador|Add1~1_combout\) # 
-- (!\caminho_de_dados|contador_moedas_2|cnt[0]~2_combout\)))) # (!\caminho_de_dados|displa2|separador|Add1~2_combout\ & (\caminho_de_dados|displa2|separador|Add1~4_combout\ & (!\caminho_de_dados|contador_moedas_2|cnt[0]~2_combout\ & 
-- !\caminho_de_dados|displa2|separador|Add1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|displa2|separador|Add1~2_combout\,
	datab => \caminho_de_dados|displa2|separador|Add1~4_combout\,
	datac => \caminho_de_dados|contador_moedas_2|cnt[0]~2_combout\,
	datad => \caminho_de_dados|displa2|separador|Add1~1_combout\,
	combout => \caminho_de_dados|displa2|un|Mux2~0_combout\);

-- Location: LCCOMB_X34_Y35_N10
\caminho_de_dados|displa2|un|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|displa2|un|Mux1~0_combout\ = (\caminho_de_dados|displa2|separador|Add1~4_combout\ & (\caminho_de_dados|displa2|separador|Add1~2_combout\ & (\caminho_de_dados|contador_moedas_2|cnt[0]~2_combout\ $ 
-- (!\caminho_de_dados|displa2|separador|Add1~1_combout\)))) # (!\caminho_de_dados|displa2|separador|Add1~4_combout\ & ((\caminho_de_dados|contador_moedas_2|cnt[0]~2_combout\ & ((!\caminho_de_dados|displa2|separador|Add1~1_combout\))) # 
-- (!\caminho_de_dados|contador_moedas_2|cnt[0]~2_combout\ & (\caminho_de_dados|displa2|separador|Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|displa2|separador|Add1~2_combout\,
	datab => \caminho_de_dados|displa2|separador|Add1~4_combout\,
	datac => \caminho_de_dados|contador_moedas_2|cnt[0]~2_combout\,
	datad => \caminho_de_dados|displa2|separador|Add1~1_combout\,
	combout => \caminho_de_dados|displa2|un|Mux1~0_combout\);

-- Location: LCCOMB_X34_Y35_N20
\caminho_de_dados|displa2|un|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \caminho_de_dados|displa2|un|Mux0~0_combout\ = (\caminho_de_dados|displa2|separador|Add1~2_combout\ & (\caminho_de_dados|displa2|separador|Add1~1_combout\ & (\caminho_de_dados|displa2|separador|Add1~4_combout\ $ 
-- (\caminho_de_dados|contador_moedas_2|cnt[0]~2_combout\)))) # (!\caminho_de_dados|displa2|separador|Add1~2_combout\ & (\caminho_de_dados|contador_moedas_2|cnt[0]~2_combout\ & (\caminho_de_dados|displa2|separador|Add1~4_combout\ $ 
-- (!\caminho_de_dados|displa2|separador|Add1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminho_de_dados|displa2|separador|Add1~2_combout\,
	datab => \caminho_de_dados|displa2|separador|Add1~4_combout\,
	datac => \caminho_de_dados|contador_moedas_2|cnt[0]~2_combout\,
	datad => \caminho_de_dados|displa2|separador|Add1~1_combout\,
	combout => \caminho_de_dados|displa2|un|Mux0~0_combout\);

-- Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\lcd_data_pins[0]~I\ : cycloneii_io
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
	datain => \caminho_de_dados|lcd|controladora|WideOr13~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_lcd_data_pins(0));

-- Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\lcd_data_pins[1]~I\ : cycloneii_io
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
	datain => \caminho_de_dados|lcd|controladora|WideOr12~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_lcd_data_pins(1));

-- Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\lcd_data_pins[2]~I\ : cycloneii_io
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
	datain => \caminho_de_dados|lcd|controladora|WideOr11~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_lcd_data_pins(2));

-- Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\lcd_data_pins[3]~I\ : cycloneii_io
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
	datain => \caminho_de_dados|lcd|controladora|WideOr10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_lcd_data_pins(3));

-- Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\lcd_data_pins[4]~I\ : cycloneii_io
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
	datain => \caminho_de_dados|lcd|controladora|WideOr9~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_lcd_data_pins(4));

-- Location: PIN_J3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\lcd_data_pins[5]~I\ : cycloneii_io
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
	datain => \caminho_de_dados|lcd|controladora|WideOr8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_lcd_data_pins(5));

-- Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\lcd_data_pins[6]~I\ : cycloneii_io
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
	datain => \caminho_de_dados|lcd|controladora|WideOr7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_lcd_data_pins(6));

-- Location: PIN_H3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\lcd_data_pins[7]~I\ : cycloneii_io
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
	datain => \caminho_de_dados|lcd|controladora|fsm_dt\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_lcd_data_pins(7));

-- Location: PIN_K1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\lcd_rs_pin~I\ : cycloneii_io
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
	datain => \caminho_de_dados|lcd|controladora|WideOr6~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_lcd_rs_pin);

-- Location: PIN_K3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\lcd_e_pin~I\ : cycloneii_io
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
	datain => \caminho_de_dados|lcd|datapath|dp_E~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_lcd_e_pin);

-- Location: PIN_L4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\lcd_on_pin~I\ : cycloneii_io
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
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_lcd_on_pin);

-- Location: PIN_K2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\lcd_blon_pin~I\ : cycloneii_io
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
	padio => ww_lcd_blon_pin);

-- Location: PIN_K4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\lcd_rw_pin~I\ : cycloneii_io
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
	padio => ww_lcd_rw_pin);

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d7s_1_dez[0]~I\ : cycloneii_io
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
	datain => \caminho_de_dados|displa1|dez|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d7s_1_dez(0));

-- Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d7s_1_dez[1]~I\ : cycloneii_io
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
	datain => \caminho_de_dados|displa1|dez|ALT_INV_Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d7s_1_dez(1));

-- Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d7s_1_dez[2]~I\ : cycloneii_io
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
	datain => \caminho_de_dados|displa1|dez|ALT_INV_Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d7s_1_dez(2));

-- Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d7s_1_dez[3]~I\ : cycloneii_io
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
	datain => \caminho_de_dados|displa1|dez|ALT_INV_Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d7s_1_dez(3));

-- Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d7s_1_dez[4]~I\ : cycloneii_io
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
	datain => \caminho_de_dados|displa1|dez|ALT_INV_Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d7s_1_dez(4));

-- Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d7s_1_dez[5]~I\ : cycloneii_io
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
	datain => \caminho_de_dados|displa1|dez|ALT_INV_Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d7s_1_dez(5));

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d7s_1_dez[6]~I\ : cycloneii_io
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
	datain => \caminho_de_dados|displa1|dez|ALT_INV_Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d7s_1_dez(6));

-- Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d7s_1_un[0]~I\ : cycloneii_io
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
	datain => \caminho_de_dados|displa1|un|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d7s_1_un(0));

-- Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d7s_1_un[1]~I\ : cycloneii_io
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
	datain => \caminho_de_dados|displa1|un|ALT_INV_Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d7s_1_un(1));

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d7s_1_un[2]~I\ : cycloneii_io
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
	datain => \caminho_de_dados|displa1|un|ALT_INV_Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d7s_1_un(2));

-- Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d7s_1_un[3]~I\ : cycloneii_io
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
	datain => \caminho_de_dados|displa1|un|ALT_INV_Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d7s_1_un(3));

-- Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d7s_1_un[4]~I\ : cycloneii_io
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
	datain => \caminho_de_dados|displa1|un|ALT_INV_Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d7s_1_un(4));

-- Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d7s_1_un[5]~I\ : cycloneii_io
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
	datain => \caminho_de_dados|displa1|un|ALT_INV_Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d7s_1_un(5));

-- Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d7s_1_un[6]~I\ : cycloneii_io
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
	datain => \caminho_de_dados|displa1|un|ALT_INV_Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d7s_1_un(6));

-- Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d7s_2_dez[0]~I\ : cycloneii_io
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
	datain => \caminho_de_dados|displa2|dez|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d7s_2_dez(0));

-- Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d7s_2_dez[1]~I\ : cycloneii_io
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
	datain => \caminho_de_dados|displa2|dez|ALT_INV_Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d7s_2_dez(1));

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d7s_2_dez[2]~I\ : cycloneii_io
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
	datain => \caminho_de_dados|displa2|dez|ALT_INV_Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d7s_2_dez(2));

-- Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d7s_2_dez[3]~I\ : cycloneii_io
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
	datain => \caminho_de_dados|displa2|dez|ALT_INV_Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d7s_2_dez(3));

-- Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d7s_2_dez[4]~I\ : cycloneii_io
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
	datain => \caminho_de_dados|displa2|dez|ALT_INV_Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d7s_2_dez(4));

-- Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d7s_2_dez[5]~I\ : cycloneii_io
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
	datain => \caminho_de_dados|displa2|dez|ALT_INV_Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d7s_2_dez(5));

-- Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d7s_2_dez[6]~I\ : cycloneii_io
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
	datain => \caminho_de_dados|displa2|dez|ALT_INV_Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d7s_2_dez(6));

-- Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d7s_2_un[0]~I\ : cycloneii_io
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
	datain => \caminho_de_dados|displa2|un|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d7s_2_un(0));

-- Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d7s_2_un[1]~I\ : cycloneii_io
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
	datain => \caminho_de_dados|displa2|un|ALT_INV_Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d7s_2_un(1));

-- Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d7s_2_un[2]~I\ : cycloneii_io
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
	datain => \caminho_de_dados|displa2|un|ALT_INV_Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d7s_2_un(2));

-- Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d7s_2_un[3]~I\ : cycloneii_io
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
	datain => \caminho_de_dados|displa2|un|ALT_INV_Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d7s_2_un(3));

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d7s_2_un[4]~I\ : cycloneii_io
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
	datain => \caminho_de_dados|displa2|un|ALT_INV_Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d7s_2_un(4));

-- Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d7s_2_un[5]~I\ : cycloneii_io
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
	datain => \caminho_de_dados|displa2|un|ALT_INV_Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d7s_2_un(5));

-- Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d7s_2_un[6]~I\ : cycloneii_io
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
	datain => \caminho_de_dados|displa2|un|ALT_INV_Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d7s_2_un(6));
END structure;


