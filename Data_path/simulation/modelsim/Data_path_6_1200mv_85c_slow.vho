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

-- DATE "12/16/2022 15:46:05"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Data_path IS
    PORT (
	dt_clr : IN std_logic;
	dt_clk : IN std_logic;
	dt_en_cont_1 : IN std_logic;
	dt_en_cont_2 : IN std_logic;
	dt_rmv_moeda : IN std_logic;
	dt_rmv_obst : IN std_logic;
	dt_shift : IN std_logic;
	dt_set_player : IN std_logic;
	dt_clr_player : IN std_logic;
	dt_clr_start : IN std_logic;
	dt_clr_timer : IN std_logic;
	dt_cmd : IN std_logic_vector(2 DOWNTO 0);
	dt_a_key : IN std_logic;
	dt_b_key : IN std_logic;
	dt_start_key : IN std_logic;
	dt_render : IN std_logic;
	dt_player : OUT std_logic;
	dt_start : OUT std_logic;
	dt_end_of_frame : OUT std_logic;
	dt_tem_moeda : OUT std_logic;
	dt_tem_obstaculo : OUT std_logic;
	dt_collected : OUT std_logic;
	dt_ended : OUT std_logic;
	dt_igual : OUT std_logic;
	dt_maior : OUT std_logic;
	dt_menor : OUT std_logic;
	dt_finished : OUT std_logic;
	dt_data : OUT std_logic_vector(7 DOWNTO 0);
	dt_rs : OUT std_logic;
	dt_e : OUT std_logic
	);
END Data_path;

-- Design Ports Information
-- dt_rmv_moeda	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dt_rmv_obst	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dt_player	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dt_start	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dt_end_of_frame	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dt_tem_moeda	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dt_tem_obstaculo	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dt_collected	=>  Location: PIN_L11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dt_ended	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dt_igual	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dt_maior	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dt_menor	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dt_finished	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dt_data[0]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dt_data[1]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dt_data[2]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dt_data[3]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dt_data[4]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dt_data[5]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dt_data[6]	=>  Location: PIN_N13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dt_data[7]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dt_rs	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dt_e	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dt_set_player	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dt_clr_player	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dt_start_key	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dt_clr_start	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dt_clk	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dt_clr_timer	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dt_clr	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dt_a_key	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dt_b_key	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dt_en_cont_1	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dt_en_cont_2	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dt_render	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dt_cmd[0]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dt_cmd[2]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dt_cmd[1]	=>  Location: PIN_L12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dt_shift	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Data_path IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_dt_clr : std_logic;
SIGNAL ww_dt_clk : std_logic;
SIGNAL ww_dt_en_cont_1 : std_logic;
SIGNAL ww_dt_en_cont_2 : std_logic;
SIGNAL ww_dt_rmv_moeda : std_logic;
SIGNAL ww_dt_rmv_obst : std_logic;
SIGNAL ww_dt_shift : std_logic;
SIGNAL ww_dt_set_player : std_logic;
SIGNAL ww_dt_clr_player : std_logic;
SIGNAL ww_dt_clr_start : std_logic;
SIGNAL ww_dt_clr_timer : std_logic;
SIGNAL ww_dt_cmd : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_dt_a_key : std_logic;
SIGNAL ww_dt_b_key : std_logic;
SIGNAL ww_dt_start_key : std_logic;
SIGNAL ww_dt_render : std_logic;
SIGNAL ww_dt_player : std_logic;
SIGNAL ww_dt_start : std_logic;
SIGNAL ww_dt_end_of_frame : std_logic;
SIGNAL ww_dt_tem_moeda : std_logic;
SIGNAL ww_dt_tem_obstaculo : std_logic;
SIGNAL ww_dt_collected : std_logic;
SIGNAL ww_dt_ended : std_logic;
SIGNAL ww_dt_igual : std_logic;
SIGNAL ww_dt_maior : std_logic;
SIGNAL ww_dt_menor : std_logic;
SIGNAL ww_dt_finished : std_logic;
SIGNAL ww_dt_data : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_dt_rs : std_logic;
SIGNAL ww_dt_e : std_logic;
SIGNAL \dt_clr_timer~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dt_clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \divisor_freq|tmp~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \div_freq_10kHz|tmp~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \frame_timer|temp[1]~22_combout\ : std_logic;
SIGNAL \frame_timer|temp[2]~24_combout\ : std_logic;
SIGNAL \frame_timer|temp[15]~50_combout\ : std_logic;
SIGNAL \frame_timer|temp[17]~54_combout\ : std_logic;
SIGNAL \frame_timer|temp[18]~56_combout\ : std_logic;
SIGNAL \contador_moedas_1|Add0~0_combout\ : std_logic;
SIGNAL \lcd|datapath|timer|i[1]~9_combout\ : std_logic;
SIGNAL \lcd|datapath|timer|i[2]~11_combout\ : std_logic;
SIGNAL \div_freq_10kHz|cnt[2]~14_combout\ : std_logic;
SIGNAL \div_freq_10kHz|cnt[10]~31\ : std_logic;
SIGNAL \div_freq_10kHz|cnt[11]~32_combout\ : std_logic;
SIGNAL \div_freq_10kHz|cnt[11]~33\ : std_logic;
SIGNAL \div_freq_10kHz|cnt[12]~34_combout\ : std_logic;
SIGNAL \frame_timer|LessThan0~0_combout\ : std_logic;
SIGNAL \frame_timer|LessThan0~2_combout\ : std_logic;
SIGNAL \lcd|controladora|atual_estado.s41~q\ : std_logic;
SIGNAL \lcd|controladora|atual_estado.s26~q\ : std_logic;
SIGNAL \lcd|controladora|atual_estado.s3~q\ : std_logic;
SIGNAL \lcd|datapath|dp_E~4_combout\ : std_logic;
SIGNAL \contador_moedas_1|cnt[0]~_emulated_q\ : std_logic;
SIGNAL \contador_moedas_1|cnt[1]~_emulated_q\ : std_logic;
SIGNAL \lcd|controladora|prox_estado.s41~0_combout\ : std_logic;
SIGNAL \lcd|datapath|mux15_moeda_q0|Mux0~10_combout\ : std_logic;
SIGNAL \lcd|datapath|mux15_moeda_q0|Mux0~11_combout\ : std_logic;
SIGNAL \lcd|datapath|mux15_moeda_q0|Mux0~12_combout\ : std_logic;
SIGNAL \lcd|datapath|mux15_moeda_q0|Mux0~13_combout\ : std_logic;
SIGNAL \lcd|datapath|mux15_moeda_q0|Mux0~14_combout\ : std_logic;
SIGNAL \lcd|datapath|mux15_moeda_q0|Mux0~15_combout\ : std_logic;
SIGNAL \lcd|datapath|mux15_moeda_q0|Mux0~16_combout\ : std_logic;
SIGNAL \lcd|datapath|mux15_moeda_q0|Mux0~17_combout\ : std_logic;
SIGNAL \lcd|datapath|mux15_moeda_q0|Mux0~18_combout\ : std_logic;
SIGNAL \lcd|datapath|mux15_moeda_q0|Mux0~19_combout\ : std_logic;
SIGNAL \lcd|controladora|Selector10~0_combout\ : std_logic;
SIGNAL \lcd|controladora|Selector10~1_combout\ : std_logic;
SIGNAL \lcd|controladora|Selector1~0_combout\ : std_logic;
SIGNAL \div_freq_10kHz|tmp~0_combout\ : std_logic;
SIGNAL \lcd|datapath|mux15_obstaculo_q1|Mux0~2_combout\ : std_logic;
SIGNAL \lcd|datapath|mux15_obstaculo_q1|Mux0~3_combout\ : std_logic;
SIGNAL \contador_moedas_1|cnt[0]~3_combout\ : std_logic;
SIGNAL \contador_moedas_1|cnt[1]~5_combout\ : std_logic;
SIGNAL \lcd|datapath|reg_linha|qi~_emulated_q\ : std_logic;
SIGNAL \lcd|datapath|reg_linha|qi~2_combout\ : std_logic;
SIGNAL \lcd|datapath|reg_linha|qi~3_combout\ : std_logic;
SIGNAL \lcd|datapath|reg_linha|qi~0_combout\ : std_logic;
SIGNAL \lcd|datapath|dp_E~7_combout\ : std_logic;
SIGNAL \lcd|datapath|reg_linha|qi~1_combout\ : std_logic;
SIGNAL \dt_rmv_moeda~input_o\ : std_logic;
SIGNAL \dt_rmv_obst~input_o\ : std_logic;
SIGNAL \dt_clk~input_o\ : std_logic;
SIGNAL \dt_shift~input_o\ : std_logic;
SIGNAL \dt_clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \div_freq_10kHz|tmp~clkctrl_outclk\ : std_logic;
SIGNAL \dt_player~output_o\ : std_logic;
SIGNAL \dt_start~output_o\ : std_logic;
SIGNAL \dt_end_of_frame~output_o\ : std_logic;
SIGNAL \dt_tem_moeda~output_o\ : std_logic;
SIGNAL \dt_tem_obstaculo~output_o\ : std_logic;
SIGNAL \dt_collected~output_o\ : std_logic;
SIGNAL \dt_ended~output_o\ : std_logic;
SIGNAL \dt_igual~output_o\ : std_logic;
SIGNAL \dt_maior~output_o\ : std_logic;
SIGNAL \dt_menor~output_o\ : std_logic;
SIGNAL \dt_finished~output_o\ : std_logic;
SIGNAL \dt_data[0]~output_o\ : std_logic;
SIGNAL \dt_data[1]~output_o\ : std_logic;
SIGNAL \dt_data[2]~output_o\ : std_logic;
SIGNAL \dt_data[3]~output_o\ : std_logic;
SIGNAL \dt_data[4]~output_o\ : std_logic;
SIGNAL \dt_data[5]~output_o\ : std_logic;
SIGNAL \dt_data[6]~output_o\ : std_logic;
SIGNAL \dt_data[7]~output_o\ : std_logic;
SIGNAL \dt_rs~output_o\ : std_logic;
SIGNAL \dt_e~output_o\ : std_logic;
SIGNAL \dt_clr_player~input_o\ : std_logic;
SIGNAL \dt_set_player~input_o\ : std_logic;
SIGNAL \player_reg|qi~1_combout\ : std_logic;
SIGNAL \player_reg|qi~3_combout\ : std_logic;
SIGNAL \player_reg|qi~0_combout\ : std_logic;
SIGNAL \player_reg|qi~_emulated_q\ : std_logic;
SIGNAL \player_reg|qi~2_combout\ : std_logic;
SIGNAL \dt_start_key~input_o\ : std_logic;
SIGNAL \dt_clr_start~input_o\ : std_logic;
SIGNAL \start_reg|qi~1_combout\ : std_logic;
SIGNAL \start_reg|qi~3_combout\ : std_logic;
SIGNAL \start_reg|qi~0_combout\ : std_logic;
SIGNAL \start_reg|qi~_emulated_q\ : std_logic;
SIGNAL \start_reg|qi~2_combout\ : std_logic;
SIGNAL \frame_timer|temp[0]~66_combout\ : std_logic;
SIGNAL \dt_clr_timer~input_o\ : std_logic;
SIGNAL \dt_clr_timer~inputclkctrl_outclk\ : std_logic;
SIGNAL \frame_timer|temp[1]~23\ : std_logic;
SIGNAL \frame_timer|temp[2]~25\ : std_logic;
SIGNAL \frame_timer|temp[3]~26_combout\ : std_logic;
SIGNAL \frame_timer|temp[3]~27\ : std_logic;
SIGNAL \frame_timer|temp[4]~28_combout\ : std_logic;
SIGNAL \frame_timer|temp[4]~29\ : std_logic;
SIGNAL \frame_timer|temp[5]~30_combout\ : std_logic;
SIGNAL \frame_timer|temp[5]~31\ : std_logic;
SIGNAL \frame_timer|temp[6]~32_combout\ : std_logic;
SIGNAL \frame_timer|temp[6]~33\ : std_logic;
SIGNAL \frame_timer|temp[7]~35\ : std_logic;
SIGNAL \frame_timer|temp[8]~36_combout\ : std_logic;
SIGNAL \frame_timer|temp[8]~37\ : std_logic;
SIGNAL \frame_timer|temp[9]~39\ : std_logic;
SIGNAL \frame_timer|temp[10]~40_combout\ : std_logic;
SIGNAL \frame_timer|temp[10]~41\ : std_logic;
SIGNAL \frame_timer|temp[11]~42_combout\ : std_logic;
SIGNAL \frame_timer|temp[9]~38_combout\ : std_logic;
SIGNAL \frame_timer|temp[7]~34_combout\ : std_logic;
SIGNAL \frame_timer|LessThan0~3_combout\ : std_logic;
SIGNAL \frame_timer|LessThan0~4_combout\ : std_logic;
SIGNAL \frame_timer|LessThan0~5_combout\ : std_logic;
SIGNAL \frame_timer|temp[11]~43\ : std_logic;
SIGNAL \frame_timer|temp[12]~44_combout\ : std_logic;
SIGNAL \frame_timer|temp[12]~45\ : std_logic;
SIGNAL \frame_timer|temp[13]~46_combout\ : std_logic;
SIGNAL \frame_timer|temp[13]~47\ : std_logic;
SIGNAL \frame_timer|temp[14]~48_combout\ : std_logic;
SIGNAL \frame_timer|temp[14]~49\ : std_logic;
SIGNAL \frame_timer|temp[15]~51\ : std_logic;
SIGNAL \frame_timer|temp[16]~52_combout\ : std_logic;
SIGNAL \frame_timer|temp[16]~53\ : std_logic;
SIGNAL \frame_timer|temp[17]~55\ : std_logic;
SIGNAL \frame_timer|temp[18]~57\ : std_logic;
SIGNAL \frame_timer|temp[19]~58_combout\ : std_logic;
SIGNAL \frame_timer|temp[19]~59\ : std_logic;
SIGNAL \frame_timer|temp[20]~60_combout\ : std_logic;
SIGNAL \frame_timer|temp[20]~61\ : std_logic;
SIGNAL \frame_timer|temp[21]~62_combout\ : std_logic;
SIGNAL \frame_timer|LessThan0~1_combout\ : std_logic;
SIGNAL \frame_timer|LessThan0~6_combout\ : std_logic;
SIGNAL \frame_timer|temp[21]~63\ : std_logic;
SIGNAL \frame_timer|temp[22]~64_combout\ : std_logic;
SIGNAL \frame_timer|LessThan0~7_combout\ : std_logic;
SIGNAL \divisor_freq|cnt[0]~1_combout\ : std_logic;
SIGNAL \divisor_freq|cnt[1]~0_combout\ : std_logic;
SIGNAL \dt_clr~input_o\ : std_logic;
SIGNAL \divisor_freq|tmp~1_combout\ : std_logic;
SIGNAL \divisor_freq|tmp~0_combout\ : std_logic;
SIGNAL \divisor_freq|tmp~combout\ : std_logic;
SIGNAL \divisor_freq|tmp~clkctrl_outclk\ : std_logic;
SIGNAL \lfsr_instance|intern[10]~3_combout\ : std_logic;
SIGNAL \lfsr_instance|intern[9]~2_combout\ : std_logic;
SIGNAL \lfsr_instance|intern[8]~feeder_combout\ : std_logic;
SIGNAL \lfsr_instance|intern[7]~feeder_combout\ : std_logic;
SIGNAL \lfsr_instance|intern[6]~feeder_combout\ : std_logic;
SIGNAL \lfsr_instance|intern[5]~feeder_combout\ : std_logic;
SIGNAL \lfsr_instance|intern[4]~feeder_combout\ : std_logic;
SIGNAL \lfsr_instance|intern[3]~feeder_combout\ : std_logic;
SIGNAL \lfsr_instance|intern[2]~feeder_combout\ : std_logic;
SIGNAL \lfsr_instance|intern[1]~feeder_combout\ : std_logic;
SIGNAL \lfsr_instance|intern[0]~feeder_combout\ : std_logic;
SIGNAL \lfsr_instance|tmp~0_combout\ : std_logic;
SIGNAL \lfsr_instance|intern[15]~feeder_combout\ : std_logic;
SIGNAL \lfsr_instance|intern[14]~1_combout\ : std_logic;
SIGNAL \lfsr_instance|intern[13]~feeder_combout\ : std_logic;
SIGNAL \lfsr_instance|intern[12]~0_combout\ : std_logic;
SIGNAL \lfsr_instance|intern[11]~feeder_combout\ : std_logic;
SIGNAL \cont_2b|cnt[0]~1_combout\ : std_logic;
SIGNAL \cont_2b|cnt[1]~0_combout\ : std_logic;
SIGNAL \s7~0_combout\ : std_logic;
SIGNAL \sr_moeda|instancia0_reg|tmp[1]~feeder_combout\ : std_logic;
SIGNAL \sr_moeda|instancia0_reg|tmp[3]~feeder_combout\ : std_logic;
SIGNAL \sr_moeda|instancia0_reg|tmp[5]~feeder_combout\ : std_logic;
SIGNAL \sr_moeda|instancia0_reg|tmp[7]~feeder_combout\ : std_logic;
SIGNAL \sr_moeda|instancia0_reg|tmp[8]~feeder_combout\ : std_logic;
SIGNAL \sr_moeda|instancia0_reg|tmp[9]~feeder_combout\ : std_logic;
SIGNAL \sr_moeda|instancia0_reg|tmp[12]~feeder_combout\ : std_logic;
SIGNAL \sr_moeda|instancia0_reg|tmp[13]~feeder_combout\ : std_logic;
SIGNAL \sr_moeda|instancia0_reg|tmp[14]~feeder_combout\ : std_logic;
SIGNAL \s12~combout\ : std_logic;
SIGNAL \sr_obstaculo|instancia0_reg|tmp[1]~feeder_combout\ : std_logic;
SIGNAL \sr_obstaculo|instancia0_reg|tmp[3]~feeder_combout\ : std_logic;
SIGNAL \sr_obstaculo|instancia0_reg|tmp[4]~feeder_combout\ : std_logic;
SIGNAL \sr_obstaculo|instancia0_reg|tmp[6]~feeder_combout\ : std_logic;
SIGNAL \sr_obstaculo|instancia0_reg|tmp[7]~feeder_combout\ : std_logic;
SIGNAL \sr_obstaculo|instancia0_reg|tmp[9]~feeder_combout\ : std_logic;
SIGNAL \sr_obstaculo|instancia0_reg|tmp[11]~feeder_combout\ : std_logic;
SIGNAL \sr_obstaculo|instancia0_reg|tmp[13]~feeder_combout\ : std_logic;
SIGNAL \sr_obstaculo|instancia0_reg|tmp[15]~feeder_combout\ : std_logic;
SIGNAL \sr_obstaculo|instancia1_reg|tmp[0]~feeder_combout\ : std_logic;
SIGNAL \sr_moeda|instancia1_reg|tmp[1]~feeder_combout\ : std_logic;
SIGNAL \sr_obstaculo|instancia1_reg|tmp[4]~feeder_combout\ : std_logic;
SIGNAL \sr_moeda|instancia1_reg|tmp[5]~feeder_combout\ : std_logic;
SIGNAL \sr_obstaculo|instancia1_reg|tmp[10]~feeder_combout\ : std_logic;
SIGNAL \sr_moeda|instancia1_reg|tmp[11]~feeder_combout\ : std_logic;
SIGNAL \sr_moeda|instancia1_reg|tmp[13]~feeder_combout\ : std_logic;
SIGNAL \sr_moeda|instancia1_reg|tmp[15]~feeder_combout\ : std_logic;
SIGNAL \sr_obstaculo|instancia1_reg|tmp[16]~feeder_combout\ : std_logic;
SIGNAL \dt_b_key~input_o\ : std_logic;
SIGNAL \player_position|qi~1_combout\ : std_logic;
SIGNAL \dt_a_key~input_o\ : std_logic;
SIGNAL \player_position|qi~3_combout\ : std_logic;
SIGNAL \player_position|qi~0_combout\ : std_logic;
SIGNAL \player_position|qi~_emulated_q\ : std_logic;
SIGNAL \player_position|qi~2_combout\ : std_logic;
SIGNAL \comp1|cmp_Q~0_combout\ : std_logic;
SIGNAL \contador_moedas_2|cnt[6]~17_combout\ : std_logic;
SIGNAL \contador_moedas_2|Add0~1\ : std_logic;
SIGNAL \contador_moedas_2|Add0~2_combout\ : std_logic;
SIGNAL \contador_moedas_2|cnt[4]~16_combout\ : std_logic;
SIGNAL \dt_en_cont_2~input_o\ : std_logic;
SIGNAL \contador_moedas_2|Add0~3\ : std_logic;
SIGNAL \contador_moedas_2|Add0~4_combout\ : std_logic;
SIGNAL \contador_moedas_2|Add0~5\ : std_logic;
SIGNAL \contador_moedas_2|Add0~6_combout\ : std_logic;
SIGNAL \contador_moedas_2|Add0~7\ : std_logic;
SIGNAL \contador_moedas_2|Add0~8_combout\ : std_logic;
SIGNAL \contador_moedas_2|cnt[5]~7_combout\ : std_logic;
SIGNAL \contador_moedas_2|cnt[0]~0_combout\ : std_logic;
SIGNAL \contador_moedas_2|cnt[5]~_emulated_q\ : std_logic;
SIGNAL \contador_moedas_2|cnt[5]~6_combout\ : std_logic;
SIGNAL \contador_moedas_2|Add0~9\ : std_logic;
SIGNAL \contador_moedas_2|Add0~10_combout\ : std_logic;
SIGNAL \contador_moedas_2|cnt[6]~9_combout\ : std_logic;
SIGNAL \contador_moedas_2|cnt[6]~_emulated_q\ : std_logic;
SIGNAL \contador_moedas_2|cnt[6]~8_combout\ : std_logic;
SIGNAL \contador_moedas_2|LessThan0~0_combout\ : std_logic;
SIGNAL \contador_moedas_2|LessThan0~1_combout\ : std_logic;
SIGNAL \contador_moedas_2|cnt[0]~1_combout\ : std_logic;
SIGNAL \contador_moedas_2|cnt[0]~3_combout\ : std_logic;
SIGNAL \contador_moedas_2|cnt[0]~_emulated_q\ : std_logic;
SIGNAL \contador_moedas_2|cnt[0]~2_combout\ : std_logic;
SIGNAL \contador_moedas_1|cnt[0]~2_combout\ : std_logic;
SIGNAL \contador_moedas_1|Add0~1\ : std_logic;
SIGNAL \contador_moedas_1|Add0~2_combout\ : std_logic;
SIGNAL \contador_moedas_1|cnt[4]~16_combout\ : std_logic;
SIGNAL \dt_en_cont_1~input_o\ : std_logic;
SIGNAL \contador_moedas_1|Add0~3\ : std_logic;
SIGNAL \contador_moedas_1|Add0~4_combout\ : std_logic;
SIGNAL \contador_moedas_1|Add0~5\ : std_logic;
SIGNAL \contador_moedas_1|Add0~6_combout\ : std_logic;
SIGNAL \contador_moedas_1|Add0~7\ : std_logic;
SIGNAL \contador_moedas_1|Add0~9\ : std_logic;
SIGNAL \contador_moedas_1|Add0~10_combout\ : std_logic;
SIGNAL \contador_moedas_1|cnt[6]~9_combout\ : std_logic;
SIGNAL \contador_moedas_1|cnt[0]~0_combout\ : std_logic;
SIGNAL \contador_moedas_1|cnt[6]~_emulated_q\ : std_logic;
SIGNAL \contador_moedas_1|cnt[6]~8_combout\ : std_logic;
SIGNAL \contador_moedas_1|LessThan0~0_combout\ : std_logic;
SIGNAL \contador_moedas_1|LessThan0~1_combout\ : std_logic;
SIGNAL \contador_moedas_1|cnt[6]~17_combout\ : std_logic;
SIGNAL \contador_moedas_1|cnt[0]~1_combout\ : std_logic;
SIGNAL \contador_moedas_1|cnt[1]~4_combout\ : std_logic;
SIGNAL \contador_moedas_2|Add0~0_combout\ : std_logic;
SIGNAL \contador_moedas_2|cnt[1]~5_combout\ : std_logic;
SIGNAL \contador_moedas_2|cnt[1]~_emulated_q\ : std_logic;
SIGNAL \contador_moedas_2|cnt[1]~4_combout\ : std_logic;
SIGNAL \comparador_moedas|Equal0~0_combout\ : std_logic;
SIGNAL \comparador_moedas|Equal0~1_combout\ : std_logic;
SIGNAL \contador_moedas_1|Add0~8_combout\ : std_logic;
SIGNAL \contador_moedas_1|cnt[5]~7_combout\ : std_logic;
SIGNAL \contador_moedas_1|cnt[5]~_emulated_q\ : std_logic;
SIGNAL \contador_moedas_1|cnt[5]~6_combout\ : std_logic;
SIGNAL \comparador_moedas|Equal0~2_combout\ : std_logic;
SIGNAL \comparador_moedas|Equal0~3_combout\ : std_logic;
SIGNAL \comparador_moedas|Equal0~4_combout\ : std_logic;
SIGNAL \comparador_moedas|LessThan0~1_cout\ : std_logic;
SIGNAL \comparador_moedas|LessThan0~3_cout\ : std_logic;
SIGNAL \comparador_moedas|LessThan0~5_cout\ : std_logic;
SIGNAL \comparador_moedas|LessThan0~7_cout\ : std_logic;
SIGNAL \comparador_moedas|LessThan0~9_cout\ : std_logic;
SIGNAL \comparador_moedas|LessThan0~11_cout\ : std_logic;
SIGNAL \comparador_moedas|LessThan0~12_combout\ : std_logic;
SIGNAL \comparador_moedas|LessThan1~1_cout\ : std_logic;
SIGNAL \comparador_moedas|LessThan1~3_cout\ : std_logic;
SIGNAL \comparador_moedas|LessThan1~5_cout\ : std_logic;
SIGNAL \comparador_moedas|LessThan1~7_cout\ : std_logic;
SIGNAL \comparador_moedas|LessThan1~9_cout\ : std_logic;
SIGNAL \comparador_moedas|LessThan1~11_cout\ : std_logic;
SIGNAL \comparador_moedas|LessThan1~12_combout\ : std_logic;
SIGNAL \lcd|datapath|timer|i[4]~16\ : std_logic;
SIGNAL \lcd|datapath|timer|i[5]~17_combout\ : std_logic;
SIGNAL \lcd|controladora|atual_estado.s0~feeder_combout\ : std_logic;
SIGNAL \lcd|controladora|atual_estado.s0~q\ : std_logic;
SIGNAL \lcd|controladora|WideOr2~combout\ : std_logic;
SIGNAL \lcd|controladora|Selector2~0_combout\ : std_logic;
SIGNAL \lcd|controladora|atual_estado.s5~q\ : std_logic;
SIGNAL \lcd|datapath|comp_t1000|LessThan0~0_combout\ : std_logic;
SIGNAL \lcd|datapath|timer|i[7]~21_combout\ : std_logic;
SIGNAL \lcd|datapath|comp_t1000|LessThan0~1_combout\ : std_logic;
SIGNAL \lcd|controladora|Selector0~0_combout\ : std_logic;
SIGNAL \lcd|controladora|atual_estado.s1~q\ : std_logic;
SIGNAL \lcd|datapath|dp_E~0_combout\ : std_logic;
SIGNAL \lcd|datapath|dp_E~1_combout\ : std_logic;
SIGNAL \lcd|datapath|timer|i[5]~18\ : std_logic;
SIGNAL \lcd|datapath|timer|i[6]~19_combout\ : std_logic;
SIGNAL \lcd|datapath|timer|i[6]~20\ : std_logic;
SIGNAL \lcd|datapath|timer|i[7]~22\ : std_logic;
SIGNAL \lcd|datapath|timer|i[8]~23_combout\ : std_logic;
SIGNAL \lcd|datapath|comp_t2|LessThan0~0_combout\ : std_logic;
SIGNAL \lcd|datapath|comp_t2|LessThan0~1_combout\ : std_logic;
SIGNAL \lcd|datapath|comp_t2|LessThan0~2_combout\ : std_logic;
SIGNAL \lcd|controladora|Selector3~0_combout\ : std_logic;
SIGNAL \lcd|controladora|atual_estado.s7~q\ : std_logic;
SIGNAL \lcd|controladora|prox_estado.s8~0_combout\ : std_logic;
SIGNAL \lcd|controladora|atual_estado.s8~q\ : std_logic;
SIGNAL \lcd|controladora|atual_estado.s9~q\ : std_logic;
SIGNAL \lcd|controladora|atual_estado.s10~q\ : std_logic;
SIGNAL \lcd|controladora|Selector4~0_combout\ : std_logic;
SIGNAL \lcd|controladora|atual_estado.s11~q\ : std_logic;
SIGNAL \lcd|datapath|timer|i[0]~27_combout\ : std_logic;
SIGNAL \lcd|datapath|timer|i[1]~10\ : std_logic;
SIGNAL \lcd|datapath|timer|i[2]~12\ : std_logic;
SIGNAL \lcd|datapath|timer|i[3]~13_combout\ : std_logic;
SIGNAL \lcd|datapath|timer|i[3]~14\ : std_logic;
SIGNAL \lcd|datapath|timer|i[4]~15_combout\ : std_logic;
SIGNAL \lcd|datapath|comp_t40|LessThan0~0_combout\ : std_logic;
SIGNAL \lcd|controladora|prox_estado.s12~0_combout\ : std_logic;
SIGNAL \lcd|controladora|atual_estado.s12~q\ : std_logic;
SIGNAL \lcd|controladora|atual_estado.s13~feeder_combout\ : std_logic;
SIGNAL \lcd|controladora|atual_estado.s13~q\ : std_logic;
SIGNAL \dt_cmd[2]~input_o\ : std_logic;
SIGNAL \dt_cmd[0]~input_o\ : std_logic;
SIGNAL \dt_render~input_o\ : std_logic;
SIGNAL \lcd|controladora|prox_estado.s15~0_combout\ : std_logic;
SIGNAL \lcd|controladora|atual_estado.s15~q\ : std_logic;
SIGNAL \lcd|controladora|Selector6~0_combout\ : std_logic;
SIGNAL \lcd|controladora|atual_estado.s16~q\ : std_logic;
SIGNAL \lcd|controladora|prox_estado.s17~0_combout\ : std_logic;
SIGNAL \lcd|controladora|atual_estado.s17~q\ : std_logic;
SIGNAL \lcd|controladora|Selector12~0_combout\ : std_logic;
SIGNAL \lcd|controladora|atual_estado.s37~q\ : std_logic;
SIGNAL \dt_cmd[1]~input_o\ : std_logic;
SIGNAL \lcd|controladora|prox_estado.s38~0_combout\ : std_logic;
SIGNAL \lcd|controladora|atual_estado.s38~q\ : std_logic;
SIGNAL \lcd|controladora|atual_estado.s39~feeder_combout\ : std_logic;
SIGNAL \lcd|controladora|atual_estado.s39~q\ : std_logic;
SIGNAL \lcd|controladora|prox_estado.s40~0_combout\ : std_logic;
SIGNAL \lcd|controladora|atual_estado.s40~q\ : std_logic;
SIGNAL \lcd|controladora|prox_estado.s42~combout\ : std_logic;
SIGNAL \lcd|controladora|atual_estado.s42~q\ : std_logic;
SIGNAL \lcd|controladora|prox_estado.s43~0_combout\ : std_logic;
SIGNAL \lcd|controladora|atual_estado.s43~q\ : std_logic;
SIGNAL \lcd|controladora|prox_estado.s44~0_combout\ : std_logic;
SIGNAL \lcd|controladora|atual_estado.s44~q\ : std_logic;
SIGNAL \lcd|controladora|prox_estado.s45~0_combout\ : std_logic;
SIGNAL \lcd|controladora|atual_estado.s45~q\ : std_logic;
SIGNAL \lcd|controladora|prox_estado.s46~combout\ : std_logic;
SIGNAL \lcd|controladora|atual_estado.s46~q\ : std_logic;
SIGNAL \lcd|controladora|atual_estado.s47~feeder_combout\ : std_logic;
SIGNAL \lcd|controladora|atual_estado.s47~q\ : std_logic;
SIGNAL \lcd|datapath|cont_pos|i[0]~3_combout\ : std_logic;
SIGNAL \lcd|controladora|prox_estado.s30~0_combout\ : std_logic;
SIGNAL \lcd|controladora|atual_estado.s30~q\ : std_logic;
SIGNAL \lcd|datapath|dp_E~2_combout\ : std_logic;
SIGNAL \lcd|datapath|cont_pos|i[1]~2_combout\ : std_logic;
SIGNAL \lcd|controladora|prox_estado.s29~0_combout\ : std_logic;
SIGNAL \lcd|controladora|prox_estado.s28~0_combout\ : std_logic;
SIGNAL \lcd|controladora|atual_estado.s28~q\ : std_logic;
SIGNAL \lcd|controladora|atual_estado.s31~q\ : std_logic;
SIGNAL \lcd|controladora|Selector8~0_combout\ : std_logic;
SIGNAL \lcd|controladora|atual_estado.s20~q\ : std_logic;
SIGNAL \lcd|datapath|cont_pos|i[2]~1_combout\ : std_logic;
SIGNAL \lcd|datapath|mux15_moeda_q0|Mux0~0_combout\ : std_logic;
SIGNAL \lcd|datapath|mux15_moeda_q0|Mux0~1_combout\ : std_logic;
SIGNAL \lcd|datapath|cont_pos|i[3]~0_combout\ : std_logic;
SIGNAL \lcd|datapath|mux15_moeda_q0|Mux0~7_combout\ : std_logic;
SIGNAL \lcd|datapath|mux15_moeda_q0|Mux0~8_combout\ : std_logic;
SIGNAL \lcd|datapath|mux15_moeda_q0|Mux0~2_combout\ : std_logic;
SIGNAL \lcd|datapath|mux15_moeda_q0|Mux0~3_combout\ : std_logic;
SIGNAL \lcd|datapath|mux15_moeda_q0|Mux0~4_combout\ : std_logic;
SIGNAL \lcd|datapath|mux15_moeda_q0|Mux0~5_combout\ : std_logic;
SIGNAL \lcd|datapath|mux15_moeda_q0|Mux0~6_combout\ : std_logic;
SIGNAL \lcd|datapath|mux15_moeda_q0|Mux0~9_combout\ : std_logic;
SIGNAL \lcd|controladora|prox_estado.s21~0_combout\ : std_logic;
SIGNAL \lcd|controladora|atual_estado.s21~q\ : std_logic;
SIGNAL \lcd|datapath|mux15_obstaculo_q1|Mux0~7_combout\ : std_logic;
SIGNAL \lcd|datapath|mux15_obstaculo_q1|Mux0~8_combout\ : std_logic;
SIGNAL \lcd|datapath|mux15_obstaculo_q1|Mux0~0_combout\ : std_logic;
SIGNAL \lcd|datapath|mux15_obstaculo_q1|Mux0~1_combout\ : std_logic;
SIGNAL \lcd|datapath|mux15_obstaculo_q1|Mux0~4_combout\ : std_logic;
SIGNAL \lcd|datapath|mux15_obstaculo_q1|Mux0~5_combout\ : std_logic;
SIGNAL \lcd|datapath|mux15_obstaculo_q1|Mux0~6_combout\ : std_logic;
SIGNAL \lcd|datapath|mux15_obstaculo_q1|Mux0~9_combout\ : std_logic;
SIGNAL \lcd|controladora|prox_estado.s25~0_combout\ : std_logic;
SIGNAL \lcd|controladora|atual_estado.s25~q\ : std_logic;
SIGNAL \lcd|controladora|Selector9~0_combout\ : std_logic;
SIGNAL \lcd|controladora|atual_estado.s22~q\ : std_logic;
SIGNAL \lcd|controladora|prox_estado.s24~0_combout\ : std_logic;
SIGNAL \lcd|controladora|atual_estado.s24~q\ : std_logic;
SIGNAL \lcd|controladora|prox_estado.s23~0_combout\ : std_logic;
SIGNAL \lcd|controladora|atual_estado.s23~q\ : std_logic;
SIGNAL \lcd|controladora|WideOr7~3_combout\ : std_logic;
SIGNAL \lcd|controladora|atual_estado.s27~feeder_combout\ : std_logic;
SIGNAL \lcd|controladora|atual_estado.s27~q\ : std_logic;
SIGNAL \lcd|controladora|prox_estado.s29~1_combout\ : std_logic;
SIGNAL \lcd|controladora|atual_estado.s29~q\ : std_logic;
SIGNAL \lcd|controladora|prox_estado.s32~0_combout\ : std_logic;
SIGNAL \lcd|controladora|atual_estado.s32~q\ : std_logic;
SIGNAL \lcd|datapath|cont_obj|cnt[0]~0_combout\ : std_logic;
SIGNAL \lcd|controladora|WideOr2~0_combout\ : std_logic;
SIGNAL \lcd|datapath|cont_obj|cnt[1]~1_combout\ : std_logic;
SIGNAL \lcd|controladora|Selector7~0_combout\ : std_logic;
SIGNAL \lcd|controladora|Selector7~1_combout\ : std_logic;
SIGNAL \lcd|controladora|atual_estado.s18~q\ : std_logic;
SIGNAL \lcd|controladora|atual_estado.s19~q\ : std_logic;
SIGNAL \lcd|controladora|prox_estado.s33~0_combout\ : std_logic;
SIGNAL \lcd|controladora|atual_estado.s33~q\ : std_logic;
SIGNAL \lcd|controladora|prox_estado.s35~0_combout\ : std_logic;
SIGNAL \lcd|controladora|atual_estado.s35~q\ : std_logic;
SIGNAL \lcd|controladora|Selector11~0_combout\ : std_logic;
SIGNAL \lcd|controladora|atual_estado.s34~q\ : std_logic;
SIGNAL \lcd|controladora|WideOr27~0_combout\ : std_logic;
SIGNAL \lcd|controladora|atual_estado.s52~q\ : std_logic;
SIGNAL \lcd|controladora|Selector5~0_combout\ : std_logic;
SIGNAL \lcd|controladora|atual_estado.s14~q\ : std_logic;
SIGNAL \lcd|controladora|fsm_finish~combout\ : std_logic;
SIGNAL \lcd|controladora|WideOr12~0_combout\ : std_logic;
SIGNAL \lcd|controladora|prox_estado.s48~0_combout\ : std_logic;
SIGNAL \lcd|controladora|atual_estado.s48~q\ : std_logic;
SIGNAL \lcd|controladora|atual_estado.s49~feeder_combout\ : std_logic;
SIGNAL \lcd|controladora|atual_estado.s49~q\ : std_logic;
SIGNAL \lcd|controladora|atual_estado.s50~feeder_combout\ : std_logic;
SIGNAL \lcd|controladora|atual_estado.s50~q\ : std_logic;
SIGNAL \lcd|controladora|WideOr6~0_combout\ : std_logic;
SIGNAL \lcd|controladora|WideOr12~1_combout\ : std_logic;
SIGNAL \lcd|controladora|WideOr11~0_combout\ : std_logic;
SIGNAL \lcd|controladora|WideOr11~combout\ : std_logic;
SIGNAL \lcd|controladora|WideOr10~0_combout\ : std_logic;
SIGNAL \lcd|controladora|atual_estado.s51~feeder_combout\ : std_logic;
SIGNAL \lcd|controladora|atual_estado.s51~q\ : std_logic;
SIGNAL \lcd|controladora|WideOr10~combout\ : std_logic;
SIGNAL \lcd|controladora|WideOr9~0_combout\ : std_logic;
SIGNAL \lcd|controladora|WideOr9~combout\ : std_logic;
SIGNAL \lcd|controladora|WideOr8~0_combout\ : std_logic;
SIGNAL \lcd|datapath|timer|i[8]~24\ : std_logic;
SIGNAL \lcd|datapath|timer|i[9]~25_combout\ : std_logic;
SIGNAL \lcd|datapath|comp_t100|LessThan0~0_combout\ : std_logic;
SIGNAL \lcd|datapath|comp_t100|LessThan0~1_combout\ : std_logic;
SIGNAL \lcd|controladora|prox_estado.s4~0_combout\ : std_logic;
SIGNAL \lcd|controladora|atual_estado.s4~q\ : std_logic;
SIGNAL \lcd|controladora|prox_estado.s6~0_combout\ : std_logic;
SIGNAL \lcd|controladora|atual_estado.s6~q\ : std_logic;
SIGNAL \lcd|controladora|WideOr7~0_combout\ : std_logic;
SIGNAL \lcd|controladora|prox_estado.s2~0_combout\ : std_logic;
SIGNAL \lcd|controladora|atual_estado.s2~q\ : std_logic;
SIGNAL \lcd|controladora|WideOr7~1_combout\ : std_logic;
SIGNAL \lcd|controladora|WideOr8~combout\ : std_logic;
SIGNAL \lcd|controladora|WideOr7~2_combout\ : std_logic;
SIGNAL \lcd|controladora|WideOr7~combout\ : std_logic;
SIGNAL \lcd|controladora|WideOr6~1_combout\ : std_logic;
SIGNAL \lcd|controladora|WideOr6~2_combout\ : std_logic;
SIGNAL \lcd|controladora|WideOr5~combout\ : std_logic;
SIGNAL \lcd|datapath|dp_E~5_combout\ : std_logic;
SIGNAL \lcd|datapath|dp_E~6_combout\ : std_logic;
SIGNAL \div_freq_10kHz|cnt[1]~12_combout\ : std_logic;
SIGNAL \div_freq_10kHz|cnt[1]~13\ : std_logic;
SIGNAL \div_freq_10kHz|cnt[2]~15\ : std_logic;
SIGNAL \div_freq_10kHz|cnt[3]~16_combout\ : std_logic;
SIGNAL \div_freq_10kHz|cnt[0]~36_combout\ : std_logic;
SIGNAL \div_freq_10kHz|Equal0~0_combout\ : std_logic;
SIGNAL \div_freq_10kHz|cnt[3]~17\ : std_logic;
SIGNAL \div_freq_10kHz|cnt[4]~19\ : std_logic;
SIGNAL \div_freq_10kHz|cnt[5]~20_combout\ : std_logic;
SIGNAL \div_freq_10kHz|cnt[4]~18_combout\ : std_logic;
SIGNAL \div_freq_10kHz|cnt[5]~21\ : std_logic;
SIGNAL \div_freq_10kHz|cnt[6]~22_combout\ : std_logic;
SIGNAL \div_freq_10kHz|Equal0~1_combout\ : std_logic;
SIGNAL \div_freq_10kHz|cnt[6]~23\ : std_logic;
SIGNAL \div_freq_10kHz|cnt[7]~24_combout\ : std_logic;
SIGNAL \div_freq_10kHz|cnt[7]~25\ : std_logic;
SIGNAL \div_freq_10kHz|cnt[8]~27\ : std_logic;
SIGNAL \div_freq_10kHz|cnt[9]~29\ : std_logic;
SIGNAL \div_freq_10kHz|cnt[10]~30_combout\ : std_logic;
SIGNAL \div_freq_10kHz|cnt[9]~28_combout\ : std_logic;
SIGNAL \div_freq_10kHz|cnt[8]~26_combout\ : std_logic;
SIGNAL \div_freq_10kHz|Equal0~2_combout\ : std_logic;
SIGNAL \div_freq_10kHz|Equal0~3_combout\ : std_logic;
SIGNAL \div_freq_10kHz|tmp~2_combout\ : std_logic;
SIGNAL \div_freq_10kHz|tmp~1_combout\ : std_logic;
SIGNAL \div_freq_10kHz|tmp~combout\ : std_logic;
SIGNAL \lcd|datapath|dp_E~3_combout\ : std_logic;
SIGNAL \lcd|datapath|dp_E~combout\ : std_logic;
SIGNAL \contador_moedas_2|cnt\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \sr_moeda|instancia1_reg|tmp\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \sr_obstaculo|instancia0_reg|tmp\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \sr_obstaculo|instancia1_reg|tmp\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \contador_moedas_1|cnt\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \frame_timer|temp\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \divisor_freq|cnt\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \lfsr_instance|intern\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \cont_2b|cnt\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \sr_moeda|instancia0_reg|tmp\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \div_freq_10kHz|cnt\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \lcd|controladora|fsm_dt\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \lcd|datapath|cont_obj|cnt\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \lcd|datapath|cont_pos|i\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \lcd|datapath|timer|i\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ALT_INV_dt_clr_timer~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_dt_clr~input_o\ : std_logic;
SIGNAL \lcd|datapath|reg_linha|ALT_INV_qi~0_combout\ : std_logic;
SIGNAL \lcd|controladora|ALT_INV_WideOr2~combout\ : std_logic;
SIGNAL \lcd|controladora|ALT_INV_WideOr2~0_combout\ : std_logic;
SIGNAL \contador_moedas_2|ALT_INV_cnt[0]~0_combout\ : std_logic;
SIGNAL \contador_moedas_1|ALT_INV_cnt[0]~0_combout\ : std_logic;
SIGNAL \player_position|ALT_INV_qi~0_combout\ : std_logic;
SIGNAL \divisor_freq|ALT_INV_tmp~1_combout\ : std_logic;
SIGNAL \start_reg|ALT_INV_qi~0_combout\ : std_logic;
SIGNAL \player_reg|ALT_INV_qi~0_combout\ : std_logic;
SIGNAL \div_freq_10kHz|ALT_INV_tmp~2_combout\ : std_logic;
SIGNAL \contador_moedas_2|ALT_INV_cnt[4]~16_combout\ : std_logic;
SIGNAL \contador_moedas_1|ALT_INV_cnt[4]~16_combout\ : std_logic;
SIGNAL \lcd|datapath|ALT_INV_dp_E~2_combout\ : std_logic;
SIGNAL \comp1|ALT_INV_cmp_Q~0_combout\ : std_logic;

BEGIN

ww_dt_clr <= dt_clr;
ww_dt_clk <= dt_clk;
ww_dt_en_cont_1 <= dt_en_cont_1;
ww_dt_en_cont_2 <= dt_en_cont_2;
ww_dt_rmv_moeda <= dt_rmv_moeda;
ww_dt_rmv_obst <= dt_rmv_obst;
ww_dt_shift <= dt_shift;
ww_dt_set_player <= dt_set_player;
ww_dt_clr_player <= dt_clr_player;
ww_dt_clr_start <= dt_clr_start;
ww_dt_clr_timer <= dt_clr_timer;
ww_dt_cmd <= dt_cmd;
ww_dt_a_key <= dt_a_key;
ww_dt_b_key <= dt_b_key;
ww_dt_start_key <= dt_start_key;
ww_dt_render <= dt_render;
dt_player <= ww_dt_player;
dt_start <= ww_dt_start;
dt_end_of_frame <= ww_dt_end_of_frame;
dt_tem_moeda <= ww_dt_tem_moeda;
dt_tem_obstaculo <= ww_dt_tem_obstaculo;
dt_collected <= ww_dt_collected;
dt_ended <= ww_dt_ended;
dt_igual <= ww_dt_igual;
dt_maior <= ww_dt_maior;
dt_menor <= ww_dt_menor;
dt_finished <= ww_dt_finished;
dt_data <= ww_dt_data;
dt_rs <= ww_dt_rs;
dt_e <= ww_dt_e;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\dt_clr_timer~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \dt_clr_timer~input_o\);

\dt_clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \dt_clk~input_o\);

\divisor_freq|tmp~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \divisor_freq|tmp~combout\);

\div_freq_10kHz|tmp~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \div_freq_10kHz|tmp~combout\);
\ALT_INV_dt_clr_timer~inputclkctrl_outclk\ <= NOT \dt_clr_timer~inputclkctrl_outclk\;
\ALT_INV_dt_clr~input_o\ <= NOT \dt_clr~input_o\;
\lcd|datapath|reg_linha|ALT_INV_qi~0_combout\ <= NOT \lcd|datapath|reg_linha|qi~0_combout\;
\lcd|controladora|ALT_INV_WideOr2~combout\ <= NOT \lcd|controladora|WideOr2~combout\;
\lcd|controladora|ALT_INV_WideOr2~0_combout\ <= NOT \lcd|controladora|WideOr2~0_combout\;
\contador_moedas_2|ALT_INV_cnt[0]~0_combout\ <= NOT \contador_moedas_2|cnt[0]~0_combout\;
\contador_moedas_1|ALT_INV_cnt[0]~0_combout\ <= NOT \contador_moedas_1|cnt[0]~0_combout\;
\player_position|ALT_INV_qi~0_combout\ <= NOT \player_position|qi~0_combout\;
\divisor_freq|ALT_INV_tmp~1_combout\ <= NOT \divisor_freq|tmp~1_combout\;
\start_reg|ALT_INV_qi~0_combout\ <= NOT \start_reg|qi~0_combout\;
\player_reg|ALT_INV_qi~0_combout\ <= NOT \player_reg|qi~0_combout\;
\div_freq_10kHz|ALT_INV_tmp~2_combout\ <= NOT \div_freq_10kHz|tmp~2_combout\;
\contador_moedas_2|ALT_INV_cnt[4]~16_combout\ <= NOT \contador_moedas_2|cnt[4]~16_combout\;
\contador_moedas_1|ALT_INV_cnt[4]~16_combout\ <= NOT \contador_moedas_1|cnt[4]~16_combout\;
\lcd|datapath|ALT_INV_dp_E~2_combout\ <= NOT \lcd|datapath|dp_E~2_combout\;
\comp1|ALT_INV_cmp_Q~0_combout\ <= NOT \comp1|cmp_Q~0_combout\;

-- Location: FF_X21_Y29_N7
\frame_timer|temp[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dt_clk~inputclkctrl_outclk\,
	d => \frame_timer|temp[15]~50_combout\,
	clrn => \ALT_INV_dt_clr_timer~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \frame_timer|temp\(15));

-- Location: FF_X21_Y29_N11
\frame_timer|temp[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dt_clk~inputclkctrl_outclk\,
	d => \frame_timer|temp[17]~54_combout\,
	clrn => \ALT_INV_dt_clr_timer~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \frame_timer|temp\(17));

-- Location: FF_X21_Y29_N13
\frame_timer|temp[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dt_clk~inputclkctrl_outclk\,
	d => \frame_timer|temp[18]~56_combout\,
	clrn => \ALT_INV_dt_clr_timer~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \frame_timer|temp\(18));

-- Location: FF_X21_Y30_N13
\frame_timer|temp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dt_clk~inputclkctrl_outclk\,
	d => \frame_timer|temp[2]~24_combout\,
	clrn => \ALT_INV_dt_clr_timer~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \frame_timer|temp\(2));

-- Location: FF_X21_Y30_N11
\frame_timer|temp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dt_clk~inputclkctrl_outclk\,
	d => \frame_timer|temp[1]~22_combout\,
	clrn => \ALT_INV_dt_clr_timer~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \frame_timer|temp\(1));

-- Location: LCCOMB_X21_Y30_N10
\frame_timer|temp[1]~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \frame_timer|temp[1]~22_combout\ = (\frame_timer|temp\(1) & (\frame_timer|temp\(0) $ (VCC))) # (!\frame_timer|temp\(1) & (\frame_timer|temp\(0) & VCC))
-- \frame_timer|temp[1]~23\ = CARRY((\frame_timer|temp\(1) & \frame_timer|temp\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \frame_timer|temp\(1),
	datab => \frame_timer|temp\(0),
	datad => VCC,
	combout => \frame_timer|temp[1]~22_combout\,
	cout => \frame_timer|temp[1]~23\);

-- Location: LCCOMB_X21_Y30_N12
\frame_timer|temp[2]~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \frame_timer|temp[2]~24_combout\ = (\frame_timer|temp\(2) & (!\frame_timer|temp[1]~23\)) # (!\frame_timer|temp\(2) & ((\frame_timer|temp[1]~23\) # (GND)))
-- \frame_timer|temp[2]~25\ = CARRY((!\frame_timer|temp[1]~23\) # (!\frame_timer|temp\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \frame_timer|temp\(2),
	datad => VCC,
	cin => \frame_timer|temp[1]~23\,
	combout => \frame_timer|temp[2]~24_combout\,
	cout => \frame_timer|temp[2]~25\);

-- Location: LCCOMB_X21_Y29_N6
\frame_timer|temp[15]~50\ : cycloneiv_lcell_comb
-- Equation(s):
-- \frame_timer|temp[15]~50_combout\ = (\frame_timer|temp\(15) & (\frame_timer|temp[14]~49\ $ (GND))) # (!\frame_timer|temp\(15) & (!\frame_timer|temp[14]~49\ & VCC))
-- \frame_timer|temp[15]~51\ = CARRY((\frame_timer|temp\(15) & !\frame_timer|temp[14]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \frame_timer|temp\(15),
	datad => VCC,
	cin => \frame_timer|temp[14]~49\,
	combout => \frame_timer|temp[15]~50_combout\,
	cout => \frame_timer|temp[15]~51\);

-- Location: LCCOMB_X21_Y29_N10
\frame_timer|temp[17]~54\ : cycloneiv_lcell_comb
-- Equation(s):
-- \frame_timer|temp[17]~54_combout\ = (\frame_timer|temp\(17) & (\frame_timer|temp[16]~53\ $ (GND))) # (!\frame_timer|temp\(17) & (!\frame_timer|temp[16]~53\ & VCC))
-- \frame_timer|temp[17]~55\ = CARRY((\frame_timer|temp\(17) & !\frame_timer|temp[16]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \frame_timer|temp\(17),
	datad => VCC,
	cin => \frame_timer|temp[16]~53\,
	combout => \frame_timer|temp[17]~54_combout\,
	cout => \frame_timer|temp[17]~55\);

-- Location: LCCOMB_X21_Y29_N12
\frame_timer|temp[18]~56\ : cycloneiv_lcell_comb
-- Equation(s):
-- \frame_timer|temp[18]~56_combout\ = (\frame_timer|temp\(18) & (!\frame_timer|temp[17]~55\)) # (!\frame_timer|temp\(18) & ((\frame_timer|temp[17]~55\) # (GND)))
-- \frame_timer|temp[18]~57\ = CARRY((!\frame_timer|temp[17]~55\) # (!\frame_timer|temp\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \frame_timer|temp\(18),
	datad => VCC,
	cin => \frame_timer|temp[17]~55\,
	combout => \frame_timer|temp[18]~56_combout\,
	cout => \frame_timer|temp[18]~57\);

-- Location: LCCOMB_X30_Y30_N12
\contador_moedas_1|Add0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \contador_moedas_1|Add0~0_combout\ = (\contador_moedas_1|cnt[1]~4_combout\ & (\contador_moedas_1|cnt[0]~2_combout\ $ (VCC))) # (!\contador_moedas_1|cnt[1]~4_combout\ & (\contador_moedas_1|cnt[0]~2_combout\ & VCC))
-- \contador_moedas_1|Add0~1\ = CARRY((\contador_moedas_1|cnt[1]~4_combout\ & \contador_moedas_1|cnt[0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_moedas_1|cnt[1]~4_combout\,
	datab => \contador_moedas_1|cnt[0]~2_combout\,
	datad => VCC,
	combout => \contador_moedas_1|Add0~0_combout\,
	cout => \contador_moedas_1|Add0~1\);

-- Location: FF_X31_Y27_N11
\lcd|datapath|timer|i[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div_freq_10kHz|tmp~clkctrl_outclk\,
	d => \lcd|datapath|timer|i[1]~9_combout\,
	clrn => \lcd|controladora|ALT_INV_WideOr2~combout\,
	ena => \lcd|datapath|dp_E~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|datapath|timer|i\(1));

-- Location: FF_X31_Y27_N13
\lcd|datapath|timer|i[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div_freq_10kHz|tmp~clkctrl_outclk\,
	d => \lcd|datapath|timer|i[2]~11_combout\,
	clrn => \lcd|controladora|ALT_INV_WideOr2~combout\,
	ena => \lcd|datapath|dp_E~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|datapath|timer|i\(2));

-- Location: FF_X16_Y1_N7
\div_freq_10kHz|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dt_clk~input_o\,
	d => \div_freq_10kHz|cnt[2]~14_combout\,
	clrn => \div_freq_10kHz|ALT_INV_tmp~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_freq_10kHz|cnt\(2));

-- Location: FF_X16_Y1_N25
\div_freq_10kHz|cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dt_clk~input_o\,
	d => \div_freq_10kHz|cnt[11]~32_combout\,
	clrn => \div_freq_10kHz|ALT_INV_tmp~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_freq_10kHz|cnt\(11));

-- Location: FF_X16_Y1_N27
\div_freq_10kHz|cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dt_clk~input_o\,
	d => \div_freq_10kHz|cnt[12]~34_combout\,
	clrn => \div_freq_10kHz|ALT_INV_tmp~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_freq_10kHz|cnt\(12));

-- Location: LCCOMB_X31_Y27_N10
\lcd|datapath|timer|i[1]~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lcd|datapath|timer|i[1]~9_combout\ = (\lcd|datapath|timer|i\(1) & (\lcd|datapath|timer|i\(0) $ (VCC))) # (!\lcd|datapath|timer|i\(1) & (\lcd|datapath|timer|i\(0) & VCC))
-- \lcd|datapath|timer|i[1]~10\ = CARRY((\lcd|datapath|timer|i\(1) & \lcd|datapath|timer|i\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|datapath|timer|i\(1),
	datab => \lcd|datapath|timer|i\(0),
	datad => VCC,
	combout => \lcd|datapath|timer|i[1]~9_combout\,
	cout => \lcd|datapath|timer|i[1]~10\);

-- Location: LCCOMB_X31_Y27_N12
\lcd|datapath|timer|i[2]~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lcd|datapath|timer|i[2]~11_combout\ = (\lcd|datapath|timer|i\(2) & (!\lcd|datapath|timer|i[1]~10\)) # (!\lcd|datapath|timer|i\(2) & ((\lcd|datapath|timer|i[1]~10\) # (GND)))
-- \lcd|datapath|timer|i[2]~12\ = CARRY((!\lcd|datapath|timer|i[1]~10\) # (!\lcd|datapath|timer|i\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|datapath|timer|i\(2),
	datad => VCC,
	cin => \lcd|datapath|timer|i[1]~10\,
	combout => \lcd|datapath|timer|i[2]~11_combout\,
	cout => \lcd|datapath|timer|i[2]~12\);

-- Location: LCCOMB_X16_Y1_N6
\div_freq_10kHz|cnt[2]~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \div_freq_10kHz|cnt[2]~14_combout\ = (\div_freq_10kHz|cnt\(2) & (!\div_freq_10kHz|cnt[1]~13\)) # (!\div_freq_10kHz|cnt\(2) & ((\div_freq_10kHz|cnt[1]~13\) # (GND)))
-- \div_freq_10kHz|cnt[2]~15\ = CARRY((!\div_freq_10kHz|cnt[1]~13\) # (!\div_freq_10kHz|cnt\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div_freq_10kHz|cnt\(2),
	datad => VCC,
	cin => \div_freq_10kHz|cnt[1]~13\,
	combout => \div_freq_10kHz|cnt[2]~14_combout\,
	cout => \div_freq_10kHz|cnt[2]~15\);

-- Location: LCCOMB_X16_Y1_N22
\div_freq_10kHz|cnt[10]~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \div_freq_10kHz|cnt[10]~30_combout\ = (\div_freq_10kHz|cnt\(10) & (!\div_freq_10kHz|cnt[9]~29\)) # (!\div_freq_10kHz|cnt\(10) & ((\div_freq_10kHz|cnt[9]~29\) # (GND)))
-- \div_freq_10kHz|cnt[10]~31\ = CARRY((!\div_freq_10kHz|cnt[9]~29\) # (!\div_freq_10kHz|cnt\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div_freq_10kHz|cnt\(10),
	datad => VCC,
	cin => \div_freq_10kHz|cnt[9]~29\,
	combout => \div_freq_10kHz|cnt[10]~30_combout\,
	cout => \div_freq_10kHz|cnt[10]~31\);

-- Location: LCCOMB_X16_Y1_N24
\div_freq_10kHz|cnt[11]~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \div_freq_10kHz|cnt[11]~32_combout\ = (\div_freq_10kHz|cnt\(11) & (\div_freq_10kHz|cnt[10]~31\ $ (GND))) # (!\div_freq_10kHz|cnt\(11) & (!\div_freq_10kHz|cnt[10]~31\ & VCC))
-- \div_freq_10kHz|cnt[11]~33\ = CARRY((\div_freq_10kHz|cnt\(11) & !\div_freq_10kHz|cnt[10]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div_freq_10kHz|cnt\(11),
	datad => VCC,
	cin => \div_freq_10kHz|cnt[10]~31\,
	combout => \div_freq_10kHz|cnt[11]~32_combout\,
	cout => \div_freq_10kHz|cnt[11]~33\);

-- Location: LCCOMB_X16_Y1_N26
\div_freq_10kHz|cnt[12]~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \div_freq_10kHz|cnt[12]~34_combout\ = \div_freq_10kHz|cnt\(12) $ (\div_freq_10kHz|cnt[11]~33\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div_freq_10kHz|cnt\(12),
	cin => \div_freq_10kHz|cnt[11]~33\,
	combout => \div_freq_10kHz|cnt[12]~34_combout\);

-- Location: LCCOMB_X21_Y29_N26
\frame_timer|LessThan0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \frame_timer|LessThan0~0_combout\ = (\frame_timer|temp\(17) & (\frame_timer|temp\(18) & (\frame_timer|temp\(16) & \frame_timer|temp\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \frame_timer|temp\(17),
	datab => \frame_timer|temp\(18),
	datac => \frame_timer|temp\(16),
	datad => \frame_timer|temp\(15),
	combout => \frame_timer|LessThan0~0_combout\);

-- Location: LCCOMB_X21_Y30_N6
\frame_timer|LessThan0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \frame_timer|LessThan0~2_combout\ = (\frame_timer|temp\(3) & ((\frame_timer|temp\(2)) # ((\frame_timer|temp\(1) & \frame_timer|temp\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \frame_timer|temp\(3),
	datab => \frame_timer|temp\(2),
	datac => \frame_timer|temp\(1),
	datad => \frame_timer|temp\(0),
	combout => \frame_timer|LessThan0~2_combout\);

-- Location: FF_X29_Y26_N13
\lcd|controladora|atual_estado.s41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div_freq_10kHz|tmp~clkctrl_outclk\,
	d => \lcd|controladora|prox_estado.s41~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|controladora|atual_estado.s41~q\);

-- Location: FF_X29_Y29_N13
\lcd|controladora|atual_estado.s26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div_freq_10kHz|tmp~clkctrl_outclk\,
	d => \lcd|controladora|Selector10~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|controladora|atual_estado.s26~q\);

-- Location: FF_X32_Y27_N7
\lcd|controladora|atual_estado.s3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div_freq_10kHz|tmp~clkctrl_outclk\,
	d => \lcd|controladora|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|controladora|atual_estado.s3~q\);

-- Location: LCCOMB_X29_Y29_N30
\lcd|datapath|dp_E~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lcd|datapath|dp_E~4_combout\ = (!\lcd|controladora|atual_estado.s21~q\ & (!\lcd|controladora|atual_estado.s22~q\ & (!\lcd|controladora|atual_estado.s27~q\ & !\lcd|controladora|atual_estado.s25~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|controladora|atual_estado.s21~q\,
	datab => \lcd|controladora|atual_estado.s22~q\,
	datac => \lcd|controladora|atual_estado.s27~q\,
	datad => \lcd|controladora|atual_estado.s25~q\,
	combout => \lcd|datapath|dp_E~4_combout\);

-- Location: FF_X30_Y30_N5
\contador_moedas_1|cnt[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dt_clk~inputclkctrl_outclk\,
	d => \contador_moedas_1|cnt[0]~3_combout\,
	clrn => \contador_moedas_1|ALT_INV_cnt[0]~0_combout\,
	ena => \dt_en_cont_1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_moedas_1|cnt[0]~_emulated_q\);

-- Location: FF_X30_Y30_N9
\contador_moedas_1|cnt[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dt_clk~inputclkctrl_outclk\,
	d => \contador_moedas_1|cnt[1]~5_combout\,
	clrn => \contador_moedas_1|ALT_INV_cnt[0]~0_combout\,
	ena => \dt_en_cont_1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_moedas_1|cnt[1]~_emulated_q\);

-- Location: LCCOMB_X29_Y26_N12
\lcd|controladora|prox_estado.s41~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lcd|controladora|prox_estado.s41~0_combout\ = (\dt_cmd[0]~input_o\ & \lcd|controladora|atual_estado.s39~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dt_cmd[0]~input_o\,
	datad => \lcd|controladora|atual_estado.s39~q\,
	combout => \lcd|controladora|prox_estado.s41~0_combout\);

-- Location: LCCOMB_X30_Y29_N28
\lcd|datapath|mux15_moeda_q0|Mux0~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lcd|datapath|mux15_moeda_q0|Mux0~10_combout\ = (\lcd|datapath|cont_pos|i\(1) & (((\lcd|datapath|cont_pos|i\(0))))) # (!\lcd|datapath|cont_pos|i\(1) & ((\lcd|datapath|cont_pos|i\(0) & ((\sr_moeda|instancia0_reg|tmp\(10)))) # (!\lcd|datapath|cont_pos|i\(0) 
-- & (\sr_moeda|instancia0_reg|tmp\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sr_moeda|instancia0_reg|tmp\(9),
	datab => \lcd|datapath|cont_pos|i\(1),
	datac => \sr_moeda|instancia0_reg|tmp\(10),
	datad => \lcd|datapath|cont_pos|i\(0),
	combout => \lcd|datapath|mux15_moeda_q0|Mux0~10_combout\);

-- Location: LCCOMB_X30_Y29_N22
\lcd|datapath|mux15_moeda_q0|Mux0~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lcd|datapath|mux15_moeda_q0|Mux0~11_combout\ = (\lcd|datapath|cont_pos|i\(1) & ((\lcd|datapath|mux15_moeda_q0|Mux0~10_combout\ & (\sr_moeda|instancia0_reg|tmp\(12))) # (!\lcd|datapath|mux15_moeda_q0|Mux0~10_combout\ & 
-- ((\sr_moeda|instancia0_reg|tmp\(11)))))) # (!\lcd|datapath|cont_pos|i\(1) & (((\lcd|datapath|mux15_moeda_q0|Mux0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sr_moeda|instancia0_reg|tmp\(12),
	datab => \lcd|datapath|cont_pos|i\(1),
	datac => \sr_moeda|instancia0_reg|tmp\(11),
	datad => \lcd|datapath|mux15_moeda_q0|Mux0~10_combout\,
	combout => \lcd|datapath|mux15_moeda_q0|Mux0~11_combout\);

-- Location: LCCOMB_X30_Y29_N0
\lcd|datapath|mux15_moeda_q0|Mux0~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lcd|datapath|mux15_moeda_q0|Mux0~12_combout\ = (\lcd|datapath|cont_pos|i\(0) & (((\lcd|datapath|cont_pos|i\(1))))) # (!\lcd|datapath|cont_pos|i\(0) & ((\lcd|datapath|cont_pos|i\(1) & (\sr_moeda|instancia0_reg|tmp\(7))) # (!\lcd|datapath|cont_pos|i\(1) & 
-- ((\sr_moeda|instancia0_reg|tmp\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sr_moeda|instancia0_reg|tmp\(7),
	datab => \lcd|datapath|cont_pos|i\(0),
	datac => \sr_moeda|instancia0_reg|tmp\(5),
	datad => \lcd|datapath|cont_pos|i\(1),
	combout => \lcd|datapath|mux15_moeda_q0|Mux0~12_combout\);

-- Location: LCCOMB_X30_Y29_N14
\lcd|datapath|mux15_moeda_q0|Mux0~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lcd|datapath|mux15_moeda_q0|Mux0~13_combout\ = (\lcd|datapath|cont_pos|i\(0) & ((\lcd|datapath|mux15_moeda_q0|Mux0~12_combout\ & (\sr_moeda|instancia0_reg|tmp\(8))) # (!\lcd|datapath|mux15_moeda_q0|Mux0~12_combout\ & 
-- ((\sr_moeda|instancia0_reg|tmp\(6)))))) # (!\lcd|datapath|cont_pos|i\(0) & (((\lcd|datapath|mux15_moeda_q0|Mux0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sr_moeda|instancia0_reg|tmp\(8),
	datab => \lcd|datapath|cont_pos|i\(0),
	datac => \sr_moeda|instancia0_reg|tmp\(6),
	datad => \lcd|datapath|mux15_moeda_q0|Mux0~12_combout\,
	combout => \lcd|datapath|mux15_moeda_q0|Mux0~13_combout\);

-- Location: LCCOMB_X31_Y29_N2
\lcd|datapath|mux15_moeda_q0|Mux0~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lcd|datapath|mux15_moeda_q0|Mux0~14_combout\ = (\lcd|datapath|cont_pos|i\(0) & (((\lcd|datapath|cont_pos|i\(1))))) # (!\lcd|datapath|cont_pos|i\(0) & ((\lcd|datapath|cont_pos|i\(1) & (\sr_moeda|instancia0_reg|tmp\(3))) # (!\lcd|datapath|cont_pos|i\(1) & 
-- ((\sr_moeda|instancia0_reg|tmp\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sr_moeda|instancia0_reg|tmp\(3),
	datab => \lcd|datapath|cont_pos|i\(0),
	datac => \sr_moeda|instancia0_reg|tmp\(1),
	datad => \lcd|datapath|cont_pos|i\(1),
	combout => \lcd|datapath|mux15_moeda_q0|Mux0~14_combout\);

-- Location: LCCOMB_X31_Y29_N16
\lcd|datapath|mux15_moeda_q0|Mux0~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lcd|datapath|mux15_moeda_q0|Mux0~15_combout\ = (\lcd|datapath|cont_pos|i\(0) & ((\lcd|datapath|mux15_moeda_q0|Mux0~14_combout\ & ((\sr_moeda|instancia0_reg|tmp\(4)))) # (!\lcd|datapath|mux15_moeda_q0|Mux0~14_combout\ & 
-- (\sr_moeda|instancia0_reg|tmp\(2))))) # (!\lcd|datapath|cont_pos|i\(0) & (((\lcd|datapath|mux15_moeda_q0|Mux0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sr_moeda|instancia0_reg|tmp\(2),
	datab => \lcd|datapath|cont_pos|i\(0),
	datac => \sr_moeda|instancia0_reg|tmp\(4),
	datad => \lcd|datapath|mux15_moeda_q0|Mux0~14_combout\,
	combout => \lcd|datapath|mux15_moeda_q0|Mux0~15_combout\);

-- Location: LCCOMB_X30_Y29_N2
\lcd|datapath|mux15_moeda_q0|Mux0~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lcd|datapath|mux15_moeda_q0|Mux0~16_combout\ = (\lcd|datapath|cont_pos|i\(3) & (\lcd|datapath|cont_pos|i\(2))) # (!\lcd|datapath|cont_pos|i\(3) & ((\lcd|datapath|cont_pos|i\(2) & (\lcd|datapath|mux15_moeda_q0|Mux0~13_combout\)) # 
-- (!\lcd|datapath|cont_pos|i\(2) & ((\lcd|datapath|mux15_moeda_q0|Mux0~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|datapath|cont_pos|i\(3),
	datab => \lcd|datapath|cont_pos|i\(2),
	datac => \lcd|datapath|mux15_moeda_q0|Mux0~13_combout\,
	datad => \lcd|datapath|mux15_moeda_q0|Mux0~15_combout\,
	combout => \lcd|datapath|mux15_moeda_q0|Mux0~16_combout\);

-- Location: LCCOMB_X30_Y29_N24
\lcd|datapath|mux15_moeda_q0|Mux0~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lcd|datapath|mux15_moeda_q0|Mux0~17_combout\ = (\lcd|datapath|cont_pos|i\(1) & (((\lcd|datapath|cont_pos|i\(0))))) # (!\lcd|datapath|cont_pos|i\(1) & ((\lcd|datapath|cont_pos|i\(0) & ((\sr_moeda|instancia0_reg|tmp\(14)))) # (!\lcd|datapath|cont_pos|i\(0) 
-- & (\sr_moeda|instancia0_reg|tmp\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sr_moeda|instancia0_reg|tmp\(13),
	datab => \lcd|datapath|cont_pos|i\(1),
	datac => \sr_moeda|instancia0_reg|tmp\(14),
	datad => \lcd|datapath|cont_pos|i\(0),
	combout => \lcd|datapath|mux15_moeda_q0|Mux0~17_combout\);

-- Location: LCCOMB_X30_Y29_N30
\lcd|datapath|mux15_moeda_q0|Mux0~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lcd|datapath|mux15_moeda_q0|Mux0~18_combout\ = (\lcd|datapath|cont_pos|i\(1) & ((\lcd|datapath|mux15_moeda_q0|Mux0~17_combout\ & ((\sr_moeda|instancia0_reg|tmp\(16)))) # (!\lcd|datapath|mux15_moeda_q0|Mux0~17_combout\ & 
-- (\sr_moeda|instancia0_reg|tmp\(15))))) # (!\lcd|datapath|cont_pos|i\(1) & (((\lcd|datapath|mux15_moeda_q0|Mux0~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sr_moeda|instancia0_reg|tmp\(15),
	datab => \lcd|datapath|cont_pos|i\(1),
	datac => \sr_moeda|instancia0_reg|tmp\(16),
	datad => \lcd|datapath|mux15_moeda_q0|Mux0~17_combout\,
	combout => \lcd|datapath|mux15_moeda_q0|Mux0~18_combout\);

-- Location: LCCOMB_X30_Y29_N10
\lcd|datapath|mux15_moeda_q0|Mux0~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lcd|datapath|mux15_moeda_q0|Mux0~19_combout\ = (\lcd|datapath|cont_pos|i\(3) & ((\lcd|datapath|mux15_moeda_q0|Mux0~16_combout\ & ((\lcd|datapath|mux15_moeda_q0|Mux0~18_combout\))) # (!\lcd|datapath|mux15_moeda_q0|Mux0~16_combout\ & 
-- (\lcd|datapath|mux15_moeda_q0|Mux0~11_combout\)))) # (!\lcd|datapath|cont_pos|i\(3) & (((\lcd|datapath|mux15_moeda_q0|Mux0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|datapath|mux15_moeda_q0|Mux0~11_combout\,
	datab => \lcd|datapath|cont_pos|i\(3),
	datac => \lcd|datapath|mux15_moeda_q0|Mux0~18_combout\,
	datad => \lcd|datapath|mux15_moeda_q0|Mux0~16_combout\,
	combout => \lcd|datapath|mux15_moeda_q0|Mux0~19_combout\);

-- Location: LCCOMB_X29_Y29_N2
\lcd|controladora|Selector10~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lcd|controladora|Selector10~0_combout\ = (\lcd|datapath|cont_obj|cnt\(0) & ((\lcd|datapath|mux15_moeda_q0|Mux0~9_combout\))) # (!\lcd|datapath|cont_obj|cnt\(0) & (\lcd|datapath|mux15_moeda_q0|Mux0~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd|datapath|cont_obj|cnt\(0),
	datac => \lcd|datapath|mux15_moeda_q0|Mux0~19_combout\,
	datad => \lcd|datapath|mux15_moeda_q0|Mux0~9_combout\,
	combout => \lcd|controladora|Selector10~0_combout\);

-- Location: LCCOMB_X29_Y29_N12
\lcd|controladora|Selector10~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lcd|controladora|Selector10~1_combout\ = (\lcd|controladora|atual_estado.s20~q\ & (((\lcd|controladora|atual_estado.s25~q\ & !\lcd|datapath|reg_linha|qi~2_combout\)) # (!\lcd|controladora|Selector10~0_combout\))) # (!\lcd|controladora|atual_estado.s20~q\ 
-- & (\lcd|controladora|atual_estado.s25~q\ & (!\lcd|datapath|reg_linha|qi~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|controladora|atual_estado.s20~q\,
	datab => \lcd|controladora|atual_estado.s25~q\,
	datac => \lcd|datapath|reg_linha|qi~2_combout\,
	datad => \lcd|controladora|Selector10~0_combout\,
	combout => \lcd|controladora|Selector10~1_combout\);

-- Location: LCCOMB_X32_Y27_N6
\lcd|controladora|Selector1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lcd|controladora|Selector1~0_combout\ = (\lcd|controladora|atual_estado.s2~q\) # ((\lcd|controladora|atual_estado.s3~q\ & !\lcd|datapath|comp_t100|LessThan0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd|controladora|atual_estado.s2~q\,
	datac => \lcd|controladora|atual_estado.s3~q\,
	datad => \lcd|datapath|comp_t100|LessThan0~1_combout\,
	combout => \lcd|controladora|Selector1~0_combout\);

-- Location: LCCOMB_X15_Y1_N30
\div_freq_10kHz|tmp~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \div_freq_10kHz|tmp~0_combout\ = (\div_freq_10kHz|tmp~combout\) # (!\div_freq_10kHz|cnt\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div_freq_10kHz|tmp~combout\,
	datad => \div_freq_10kHz|cnt\(12),
	combout => \div_freq_10kHz|tmp~0_combout\);

-- Location: LCCOMB_X30_Y28_N4
\lcd|datapath|mux15_obstaculo_q1|Mux0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lcd|datapath|mux15_obstaculo_q1|Mux0~2_combout\ = (\lcd|datapath|cont_pos|i\(2) & (((\lcd|datapath|cont_pos|i\(3))) # (!\sr_obstaculo|instancia1_reg|tmp\(6)))) # (!\lcd|datapath|cont_pos|i\(2) & (((!\sr_obstaculo|instancia1_reg|tmp\(2) & 
-- !\lcd|datapath|cont_pos|i\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sr_obstaculo|instancia1_reg|tmp\(6),
	datab => \lcd|datapath|cont_pos|i\(2),
	datac => \sr_obstaculo|instancia1_reg|tmp\(2),
	datad => \lcd|datapath|cont_pos|i\(3),
	combout => \lcd|datapath|mux15_obstaculo_q1|Mux0~2_combout\);

-- Location: LCCOMB_X30_Y28_N12
\lcd|datapath|mux15_obstaculo_q1|Mux0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lcd|datapath|mux15_obstaculo_q1|Mux0~3_combout\ = (\lcd|datapath|cont_pos|i\(3) & ((\lcd|datapath|mux15_obstaculo_q1|Mux0~2_combout\ & ((!\sr_obstaculo|instancia1_reg|tmp\(14)))) # (!\lcd|datapath|mux15_obstaculo_q1|Mux0~2_combout\ & 
-- (!\sr_obstaculo|instancia1_reg|tmp\(10))))) # (!\lcd|datapath|cont_pos|i\(3) & (((\lcd|datapath|mux15_obstaculo_q1|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sr_obstaculo|instancia1_reg|tmp\(10),
	datab => \lcd|datapath|cont_pos|i\(3),
	datac => \sr_obstaculo|instancia1_reg|tmp\(14),
	datad => \lcd|datapath|mux15_obstaculo_q1|Mux0~2_combout\,
	combout => \lcd|datapath|mux15_obstaculo_q1|Mux0~3_combout\);

-- Location: LCCOMB_X30_Y30_N4
\contador_moedas_1|cnt[0]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \contador_moedas_1|cnt[0]~3_combout\ = \contador_moedas_1|cnt[0]~2_combout\ $ (!\contador_moedas_1|cnt[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_moedas_1|cnt[0]~2_combout\,
	datad => \contador_moedas_1|cnt[0]~1_combout\,
	combout => \contador_moedas_1|cnt[0]~3_combout\);

-- Location: LCCOMB_X30_Y30_N8
\contador_moedas_1|cnt[1]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \contador_moedas_1|cnt[1]~5_combout\ = \contador_moedas_1|Add0~0_combout\ $ (\contador_moedas_1|cnt[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_moedas_1|Add0~0_combout\,
	datab => \contador_moedas_1|cnt[0]~1_combout\,
	combout => \contador_moedas_1|cnt[1]~5_combout\);

-- Location: FF_X30_Y27_N29
\lcd|datapath|reg_linha|qi~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div_freq_10kHz|tmp~clkctrl_outclk\,
	d => \lcd|datapath|reg_linha|qi~3_combout\,
	clrn => \lcd|datapath|reg_linha|ALT_INV_qi~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|datapath|reg_linha|qi~_emulated_q\);

-- Location: LCCOMB_X30_Y27_N20
\lcd|datapath|reg_linha|qi~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lcd|datapath|reg_linha|qi~2_combout\ = (!\lcd|controladora|atual_estado.s30~q\ & ((\lcd|datapath|dp_E~7_combout\) # (\lcd|datapath|reg_linha|qi~1_combout\ $ (\lcd|datapath|reg_linha|qi~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|controladora|atual_estado.s30~q\,
	datab => \lcd|datapath|reg_linha|qi~1_combout\,
	datac => \lcd|datapath|reg_linha|qi~_emulated_q\,
	datad => \lcd|datapath|dp_E~7_combout\,
	combout => \lcd|datapath|reg_linha|qi~2_combout\);

-- Location: LCCOMB_X30_Y27_N28
\lcd|datapath|reg_linha|qi~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lcd|datapath|reg_linha|qi~3_combout\ = \lcd|datapath|reg_linha|qi~2_combout\ $ (\lcd|datapath|reg_linha|qi~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lcd|datapath|reg_linha|qi~2_combout\,
	datad => \lcd|datapath|reg_linha|qi~1_combout\,
	combout => \lcd|datapath|reg_linha|qi~3_combout\);

-- Location: LCCOMB_X30_Y27_N26
\lcd|datapath|reg_linha|qi~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lcd|datapath|reg_linha|qi~0_combout\ = (\lcd|controladora|atual_estado.s30~q\) # (\lcd|datapath|dp_E~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lcd|controladora|atual_estado.s30~q\,
	datad => \lcd|datapath|dp_E~7_combout\,
	combout => \lcd|datapath|reg_linha|qi~0_combout\);

-- Location: LCCOMB_X30_Y27_N0
\lcd|datapath|dp_E~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lcd|datapath|dp_E~7_combout\ = ((\lcd|controladora|atual_estado.s32~q\) # (\lcd|controladora|atual_estado.s14~q\)) # (!\lcd|controladora|atual_estado.s0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|controladora|atual_estado.s0~q\,
	datac => \lcd|controladora|atual_estado.s32~q\,
	datad => \lcd|controladora|atual_estado.s14~q\,
	combout => \lcd|datapath|dp_E~7_combout\);

-- Location: LCCOMB_X30_Y27_N16
\lcd|datapath|reg_linha|qi~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lcd|datapath|reg_linha|qi~1_combout\ = (!\lcd|controladora|atual_estado.s30~q\ & ((\lcd|datapath|dp_E~7_combout\) # (\lcd|datapath|reg_linha|qi~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd|datapath|dp_E~7_combout\,
	datac => \lcd|controladora|atual_estado.s30~q\,
	datad => \lcd|datapath|reg_linha|qi~1_combout\,
	combout => \lcd|datapath|reg_linha|qi~1_combout\);

-- Location: IOIBUF_X16_Y0_N15
\dt_clk~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dt_clk,
	o => \dt_clk~input_o\);

-- Location: IOIBUF_X33_Y15_N8
\dt_shift~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dt_shift,
	o => \dt_shift~input_o\);

-- Location: CLKCTRL_G17
\dt_clk~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \dt_clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \dt_clk~inputclkctrl_outclk\);

-- Location: CLKCTRL_G18
\div_freq_10kHz|tmp~clkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \div_freq_10kHz|tmp~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \div_freq_10kHz|tmp~clkctrl_outclk\);

-- Location: IOOBUF_X33_Y14_N2
\dt_player~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \player_reg|qi~2_combout\,
	devoe => ww_devoe,
	o => \dt_player~output_o\);

-- Location: IOOBUF_X20_Y31_N9
\dt_start~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \start_reg|qi~2_combout\,
	devoe => ww_devoe,
	o => \dt_start~output_o\);

-- Location: IOOBUF_X20_Y31_N2
\dt_end_of_frame~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \frame_timer|LessThan0~7_combout\,
	devoe => ww_devoe,
	o => \dt_end_of_frame~output_o\);

-- Location: IOOBUF_X33_Y28_N9
\dt_tem_moeda~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sr_moeda|instancia0_reg|tmp\(16),
	devoe => ww_devoe,
	o => \dt_tem_moeda~output_o\);

-- Location: IOOBUF_X33_Y28_N2
\dt_tem_obstaculo~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sr_obstaculo|instancia0_reg|tmp\(16),
	devoe => ww_devoe,
	o => \dt_tem_obstaculo~output_o\);

-- Location: IOOBUF_X31_Y0_N2
\dt_collected~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \comp1|ALT_INV_cmp_Q~0_combout\,
	devoe => ww_devoe,
	o => \dt_collected~output_o\);

-- Location: IOOBUF_X31_Y0_N9
\dt_ended~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \comp1|ALT_INV_cmp_Q~0_combout\,
	devoe => ww_devoe,
	o => \dt_ended~output_o\);

-- Location: IOOBUF_X24_Y31_N9
\dt_igual~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \comparador_moedas|Equal0~4_combout\,
	devoe => ww_devoe,
	o => \dt_igual~output_o\);

-- Location: IOOBUF_X26_Y31_N2
\dt_maior~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \comparador_moedas|LessThan0~12_combout\,
	devoe => ww_devoe,
	o => \dt_maior~output_o\);

-- Location: IOOBUF_X26_Y31_N9
\dt_menor~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \comparador_moedas|LessThan1~12_combout\,
	devoe => ww_devoe,
	o => \dt_menor~output_o\);

-- Location: IOOBUF_X29_Y31_N2
\dt_finished~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lcd|controladora|fsm_finish~combout\,
	devoe => ww_devoe,
	o => \dt_finished~output_o\);

-- Location: IOOBUF_X24_Y31_N2
\dt_data[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lcd|controladora|WideOr12~1_combout\,
	devoe => ww_devoe,
	o => \dt_data[0]~output_o\);

-- Location: IOOBUF_X33_Y24_N2
\dt_data[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lcd|controladora|WideOr11~combout\,
	devoe => ww_devoe,
	o => \dt_data[1]~output_o\);

-- Location: IOOBUF_X33_Y27_N9
\dt_data[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lcd|controladora|WideOr10~combout\,
	devoe => ww_devoe,
	o => \dt_data[2]~output_o\);

-- Location: IOOBUF_X33_Y27_N2
\dt_data[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lcd|controladora|WideOr9~combout\,
	devoe => ww_devoe,
	o => \dt_data[3]~output_o\);

-- Location: IOOBUF_X33_Y22_N9
\dt_data[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lcd|controladora|WideOr8~combout\,
	devoe => ww_devoe,
	o => \dt_data[4]~output_o\);

-- Location: IOOBUF_X33_Y12_N9
\dt_data[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lcd|controladora|WideOr7~combout\,
	devoe => ww_devoe,
	o => \dt_data[5]~output_o\);

-- Location: IOOBUF_X33_Y10_N9
\dt_data[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lcd|controladora|WideOr6~2_combout\,
	devoe => ww_devoe,
	o => \dt_data[6]~output_o\);

-- Location: IOOBUF_X33_Y25_N2
\dt_data[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lcd|controladora|fsm_dt\(7),
	devoe => ww_devoe,
	o => \dt_data[7]~output_o\);

-- Location: IOOBUF_X33_Y24_N9
\dt_rs~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lcd|controladora|WideOr5~combout\,
	devoe => ww_devoe,
	o => \dt_rs~output_o\);

-- Location: IOOBUF_X33_Y22_N2
\dt_e~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lcd|datapath|dp_E~combout\,
	devoe => ww_devoe,
	o => \dt_e~output_o\);

-- Location: IOIBUF_X33_Y14_N8
\dt_clr_player~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dt_clr_player,
	o => \dt_clr_player~input_o\);

-- Location: IOIBUF_X33_Y11_N1
\dt_set_player~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dt_set_player,
	o => \dt_set_player~input_o\);

-- Location: LCCOMB_X32_Y18_N2
\player_reg|qi~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \player_reg|qi~1_combout\ = (!\dt_clr_player~input_o\ & ((\dt_set_player~input_o\) # (\player_reg|qi~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dt_clr_player~input_o\,
	datac => \dt_set_player~input_o\,
	datad => \player_reg|qi~1_combout\,
	combout => \player_reg|qi~1_combout\);

-- Location: LCCOMB_X32_Y18_N0
\player_reg|qi~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \player_reg|qi~3_combout\ = \player_reg|qi~1_combout\ $ (\player_reg|qi~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \player_reg|qi~1_combout\,
	datad => \player_reg|qi~2_combout\,
	combout => \player_reg|qi~3_combout\);

-- Location: LCCOMB_X32_Y18_N12
\player_reg|qi~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \player_reg|qi~0_combout\ = (\dt_clr_player~input_o\) # (\dt_set_player~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dt_clr_player~input_o\,
	datac => \dt_set_player~input_o\,
	combout => \player_reg|qi~0_combout\);

-- Location: FF_X32_Y18_N1
\player_reg|qi~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dt_clk~inputclkctrl_outclk\,
	d => \player_reg|qi~3_combout\,
	clrn => \player_reg|ALT_INV_qi~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \player_reg|qi~_emulated_q\);

-- Location: LCCOMB_X32_Y18_N6
\player_reg|qi~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \player_reg|qi~2_combout\ = (!\dt_clr_player~input_o\ & ((\dt_set_player~input_o\) # (\player_reg|qi~1_combout\ $ (\player_reg|qi~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \player_reg|qi~1_combout\,
	datab => \dt_set_player~input_o\,
	datac => \dt_clr_player~input_o\,
	datad => \player_reg|qi~_emulated_q\,
	combout => \player_reg|qi~2_combout\);

-- Location: IOIBUF_X22_Y31_N8
\dt_start_key~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dt_start_key,
	o => \dt_start_key~input_o\);

-- Location: IOIBUF_X22_Y31_N1
\dt_clr_start~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dt_clr_start,
	o => \dt_clr_start~input_o\);

-- Location: LCCOMB_X22_Y30_N2
\start_reg|qi~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \start_reg|qi~1_combout\ = (!\dt_clr_start~input_o\ & ((\dt_start_key~input_o\) # (\start_reg|qi~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dt_start_key~input_o\,
	datac => \dt_clr_start~input_o\,
	datad => \start_reg|qi~1_combout\,
	combout => \start_reg|qi~1_combout\);

-- Location: LCCOMB_X22_Y30_N0
\start_reg|qi~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \start_reg|qi~3_combout\ = \start_reg|qi~1_combout\ $ (\start_reg|qi~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \start_reg|qi~1_combout\,
	datad => \start_reg|qi~2_combout\,
	combout => \start_reg|qi~3_combout\);

-- Location: LCCOMB_X22_Y30_N12
\start_reg|qi~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \start_reg|qi~0_combout\ = (\dt_start_key~input_o\) # (\dt_clr_start~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dt_start_key~input_o\,
	datac => \dt_clr_start~input_o\,
	combout => \start_reg|qi~0_combout\);

-- Location: FF_X22_Y30_N1
\start_reg|qi~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dt_clk~inputclkctrl_outclk\,
	d => \start_reg|qi~3_combout\,
	clrn => \start_reg|ALT_INV_qi~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \start_reg|qi~_emulated_q\);

-- Location: LCCOMB_X22_Y30_N6
\start_reg|qi~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \start_reg|qi~2_combout\ = (!\dt_clr_start~input_o\ & ((\dt_start_key~input_o\) # (\start_reg|qi~1_combout\ $ (\start_reg|qi~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dt_start_key~input_o\,
	datab => \start_reg|qi~1_combout\,
	datac => \dt_clr_start~input_o\,
	datad => \start_reg|qi~_emulated_q\,
	combout => \start_reg|qi~2_combout\);

-- Location: LCCOMB_X21_Y30_N8
\frame_timer|temp[0]~66\ : cycloneiv_lcell_comb
-- Equation(s):
-- \frame_timer|temp[0]~66_combout\ = !\frame_timer|temp\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \frame_timer|temp\(0),
	combout => \frame_timer|temp[0]~66_combout\);

-- Location: IOIBUF_X16_Y0_N22
\dt_clr_timer~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dt_clr_timer,
	o => \dt_clr_timer~input_o\);

-- Location: CLKCTRL_G19
\dt_clr_timer~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \dt_clr_timer~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \dt_clr_timer~inputclkctrl_outclk\);

-- Location: FF_X21_Y30_N9
\frame_timer|temp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dt_clk~inputclkctrl_outclk\,
	d => \frame_timer|temp[0]~66_combout\,
	clrn => \ALT_INV_dt_clr_timer~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \frame_timer|temp\(0));

-- Location: LCCOMB_X21_Y30_N14
\frame_timer|temp[3]~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \frame_timer|temp[3]~26_combout\ = (\frame_timer|temp\(3) & (\frame_timer|temp[2]~25\ $ (GND))) # (!\frame_timer|temp\(3) & (!\frame_timer|temp[2]~25\ & VCC))
-- \frame_timer|temp[3]~27\ = CARRY((\frame_timer|temp\(3) & !\frame_timer|temp[2]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \frame_timer|temp\(3),
	datad => VCC,
	cin => \frame_timer|temp[2]~25\,
	combout => \frame_timer|temp[3]~26_combout\,
	cout => \frame_timer|temp[3]~27\);

-- Location: FF_X21_Y30_N15
\frame_timer|temp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dt_clk~inputclkctrl_outclk\,
	d => \frame_timer|temp[3]~26_combout\,
	clrn => \ALT_INV_dt_clr_timer~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \frame_timer|temp\(3));

-- Location: LCCOMB_X21_Y30_N16
\frame_timer|temp[4]~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \frame_timer|temp[4]~28_combout\ = (\frame_timer|temp\(4) & (!\frame_timer|temp[3]~27\)) # (!\frame_timer|temp\(4) & ((\frame_timer|temp[3]~27\) # (GND)))
-- \frame_timer|temp[4]~29\ = CARRY((!\frame_timer|temp[3]~27\) # (!\frame_timer|temp\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \frame_timer|temp\(4),
	datad => VCC,
	cin => \frame_timer|temp[3]~27\,
	combout => \frame_timer|temp[4]~28_combout\,
	cout => \frame_timer|temp[4]~29\);

-- Location: FF_X21_Y30_N17
\frame_timer|temp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dt_clk~inputclkctrl_outclk\,
	d => \frame_timer|temp[4]~28_combout\,
	clrn => \ALT_INV_dt_clr_timer~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \frame_timer|temp\(4));

-- Location: LCCOMB_X21_Y30_N18
\frame_timer|temp[5]~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \frame_timer|temp[5]~30_combout\ = (\frame_timer|temp\(5) & (\frame_timer|temp[4]~29\ $ (GND))) # (!\frame_timer|temp\(5) & (!\frame_timer|temp[4]~29\ & VCC))
-- \frame_timer|temp[5]~31\ = CARRY((\frame_timer|temp\(5) & !\frame_timer|temp[4]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \frame_timer|temp\(5),
	datad => VCC,
	cin => \frame_timer|temp[4]~29\,
	combout => \frame_timer|temp[5]~30_combout\,
	cout => \frame_timer|temp[5]~31\);

-- Location: FF_X21_Y30_N19
\frame_timer|temp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dt_clk~inputclkctrl_outclk\,
	d => \frame_timer|temp[5]~30_combout\,
	clrn => \ALT_INV_dt_clr_timer~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \frame_timer|temp\(5));

-- Location: LCCOMB_X21_Y30_N20
\frame_timer|temp[6]~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \frame_timer|temp[6]~32_combout\ = (\frame_timer|temp\(6) & (!\frame_timer|temp[5]~31\)) # (!\frame_timer|temp\(6) & ((\frame_timer|temp[5]~31\) # (GND)))
-- \frame_timer|temp[6]~33\ = CARRY((!\frame_timer|temp[5]~31\) # (!\frame_timer|temp\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \frame_timer|temp\(6),
	datad => VCC,
	cin => \frame_timer|temp[5]~31\,
	combout => \frame_timer|temp[6]~32_combout\,
	cout => \frame_timer|temp[6]~33\);

-- Location: FF_X21_Y30_N21
\frame_timer|temp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dt_clk~inputclkctrl_outclk\,
	d => \frame_timer|temp[6]~32_combout\,
	clrn => \ALT_INV_dt_clr_timer~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \frame_timer|temp\(6));

-- Location: LCCOMB_X21_Y30_N22
\frame_timer|temp[7]~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \frame_timer|temp[7]~34_combout\ = (\frame_timer|temp\(7) & (\frame_timer|temp[6]~33\ $ (GND))) # (!\frame_timer|temp\(7) & (!\frame_timer|temp[6]~33\ & VCC))
-- \frame_timer|temp[7]~35\ = CARRY((\frame_timer|temp\(7) & !\frame_timer|temp[6]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \frame_timer|temp\(7),
	datad => VCC,
	cin => \frame_timer|temp[6]~33\,
	combout => \frame_timer|temp[7]~34_combout\,
	cout => \frame_timer|temp[7]~35\);

-- Location: LCCOMB_X21_Y30_N24
\frame_timer|temp[8]~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \frame_timer|temp[8]~36_combout\ = (\frame_timer|temp\(8) & (!\frame_timer|temp[7]~35\)) # (!\frame_timer|temp\(8) & ((\frame_timer|temp[7]~35\) # (GND)))
-- \frame_timer|temp[8]~37\ = CARRY((!\frame_timer|temp[7]~35\) # (!\frame_timer|temp\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \frame_timer|temp\(8),
	datad => VCC,
	cin => \frame_timer|temp[7]~35\,
	combout => \frame_timer|temp[8]~36_combout\,
	cout => \frame_timer|temp[8]~37\);

-- Location: FF_X21_Y30_N25
\frame_timer|temp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dt_clk~inputclkctrl_outclk\,
	d => \frame_timer|temp[8]~36_combout\,
	clrn => \ALT_INV_dt_clr_timer~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \frame_timer|temp\(8));

-- Location: LCCOMB_X21_Y30_N26
\frame_timer|temp[9]~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \frame_timer|temp[9]~38_combout\ = (\frame_timer|temp\(9) & (\frame_timer|temp[8]~37\ $ (GND))) # (!\frame_timer|temp\(9) & (!\frame_timer|temp[8]~37\ & VCC))
-- \frame_timer|temp[9]~39\ = CARRY((\frame_timer|temp\(9) & !\frame_timer|temp[8]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \frame_timer|temp\(9),
	datad => VCC,
	cin => \frame_timer|temp[8]~37\,
	combout => \frame_timer|temp[9]~38_combout\,
	cout => \frame_timer|temp[9]~39\);

-- Location: LCCOMB_X21_Y30_N28
\frame_timer|temp[10]~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \frame_timer|temp[10]~40_combout\ = (\frame_timer|temp\(10) & (!\frame_timer|temp[9]~39\)) # (!\frame_timer|temp\(10) & ((\frame_timer|temp[9]~39\) # (GND)))
-- \frame_timer|temp[10]~41\ = CARRY((!\frame_timer|temp[9]~39\) # (!\frame_timer|temp\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \frame_timer|temp\(10),
	datad => VCC,
	cin => \frame_timer|temp[9]~39\,
	combout => \frame_timer|temp[10]~40_combout\,
	cout => \frame_timer|temp[10]~41\);

-- Location: FF_X21_Y30_N29
\frame_timer|temp[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dt_clk~inputclkctrl_outclk\,
	d => \frame_timer|temp[10]~40_combout\,
	clrn => \ALT_INV_dt_clr_timer~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \frame_timer|temp\(10));

-- Location: LCCOMB_X21_Y30_N30
\frame_timer|temp[11]~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \frame_timer|temp[11]~42_combout\ = (\frame_timer|temp\(11) & (\frame_timer|temp[10]~41\ $ (GND))) # (!\frame_timer|temp\(11) & (!\frame_timer|temp[10]~41\ & VCC))
-- \frame_timer|temp[11]~43\ = CARRY((\frame_timer|temp\(11) & !\frame_timer|temp[10]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \frame_timer|temp\(11),
	datad => VCC,
	cin => \frame_timer|temp[10]~41\,
	combout => \frame_timer|temp[11]~42_combout\,
	cout => \frame_timer|temp[11]~43\);

-- Location: FF_X21_Y30_N31
\frame_timer|temp[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dt_clk~inputclkctrl_outclk\,
	d => \frame_timer|temp[11]~42_combout\,
	clrn => \ALT_INV_dt_clr_timer~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \frame_timer|temp\(11));

-- Location: FF_X21_Y30_N27
\frame_timer|temp[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dt_clk~inputclkctrl_outclk\,
	d => \frame_timer|temp[9]~38_combout\,
	clrn => \ALT_INV_dt_clr_timer~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \frame_timer|temp\(9));

-- Location: FF_X21_Y30_N23
\frame_timer|temp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dt_clk~inputclkctrl_outclk\,
	d => \frame_timer|temp[7]~34_combout\,
	clrn => \ALT_INV_dt_clr_timer~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \frame_timer|temp\(7));

-- Location: LCCOMB_X21_Y30_N0
\frame_timer|LessThan0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \frame_timer|LessThan0~3_combout\ = (\frame_timer|temp\(4)) # ((\frame_timer|temp\(5)) # ((\frame_timer|temp\(7)) # (\frame_timer|temp\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \frame_timer|temp\(4),
	datab => \frame_timer|temp\(5),
	datac => \frame_timer|temp\(7),
	datad => \frame_timer|temp\(6),
	combout => \frame_timer|LessThan0~3_combout\);

-- Location: LCCOMB_X21_Y30_N2
\frame_timer|LessThan0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \frame_timer|LessThan0~4_combout\ = (\frame_timer|LessThan0~2_combout\) # ((\frame_timer|temp\(8)) # ((\frame_timer|temp\(9)) # (\frame_timer|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \frame_timer|LessThan0~2_combout\,
	datab => \frame_timer|temp\(8),
	datac => \frame_timer|temp\(9),
	datad => \frame_timer|LessThan0~3_combout\,
	combout => \frame_timer|LessThan0~4_combout\);

-- Location: LCCOMB_X21_Y30_N4
\frame_timer|LessThan0~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \frame_timer|LessThan0~5_combout\ = (\frame_timer|temp\(12) & ((\frame_timer|temp\(11)) # ((\frame_timer|temp\(10) & \frame_timer|LessThan0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \frame_timer|temp\(12),
	datab => \frame_timer|temp\(10),
	datac => \frame_timer|temp\(11),
	datad => \frame_timer|LessThan0~4_combout\,
	combout => \frame_timer|LessThan0~5_combout\);

-- Location: LCCOMB_X21_Y29_N0
\frame_timer|temp[12]~44\ : cycloneiv_lcell_comb
-- Equation(s):
-- \frame_timer|temp[12]~44_combout\ = (\frame_timer|temp\(12) & (!\frame_timer|temp[11]~43\)) # (!\frame_timer|temp\(12) & ((\frame_timer|temp[11]~43\) # (GND)))
-- \frame_timer|temp[12]~45\ = CARRY((!\frame_timer|temp[11]~43\) # (!\frame_timer|temp\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \frame_timer|temp\(12),
	datad => VCC,
	cin => \frame_timer|temp[11]~43\,
	combout => \frame_timer|temp[12]~44_combout\,
	cout => \frame_timer|temp[12]~45\);

-- Location: FF_X21_Y29_N1
\frame_timer|temp[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dt_clk~inputclkctrl_outclk\,
	d => \frame_timer|temp[12]~44_combout\,
	clrn => \ALT_INV_dt_clr_timer~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \frame_timer|temp\(12));

-- Location: LCCOMB_X21_Y29_N2
\frame_timer|temp[13]~46\ : cycloneiv_lcell_comb
-- Equation(s):
-- \frame_timer|temp[13]~46_combout\ = (\frame_timer|temp\(13) & (\frame_timer|temp[12]~45\ $ (GND))) # (!\frame_timer|temp\(13) & (!\frame_timer|temp[12]~45\ & VCC))
-- \frame_timer|temp[13]~47\ = CARRY((\frame_timer|temp\(13) & !\frame_timer|temp[12]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \frame_timer|temp\(13),
	datad => VCC,
	cin => \frame_timer|temp[12]~45\,
	combout => \frame_timer|temp[13]~46_combout\,
	cout => \frame_timer|temp[13]~47\);

-- Location: FF_X21_Y29_N3
\frame_timer|temp[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dt_clk~inputclkctrl_outclk\,
	d => \frame_timer|temp[13]~46_combout\,
	clrn => \ALT_INV_dt_clr_timer~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \frame_timer|temp\(13));

-- Location: LCCOMB_X21_Y29_N4
\frame_timer|temp[14]~48\ : cycloneiv_lcell_comb
-- Equation(s):
-- \frame_timer|temp[14]~48_combout\ = (\frame_timer|temp\(14) & (!\frame_timer|temp[13]~47\)) # (!\frame_timer|temp\(14) & ((\frame_timer|temp[13]~47\) # (GND)))
-- \frame_timer|temp[14]~49\ = CARRY((!\frame_timer|temp[13]~47\) # (!\frame_timer|temp\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \frame_timer|temp\(14),
	datad => VCC,
	cin => \frame_timer|temp[13]~47\,
	combout => \frame_timer|temp[14]~48_combout\,
	cout => \frame_timer|temp[14]~49\);

-- Location: FF_X21_Y29_N5
\frame_timer|temp[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dt_clk~inputclkctrl_outclk\,
	d => \frame_timer|temp[14]~48_combout\,
	clrn => \ALT_INV_dt_clr_timer~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \frame_timer|temp\(14));

-- Location: LCCOMB_X21_Y29_N8
\frame_timer|temp[16]~52\ : cycloneiv_lcell_comb
-- Equation(s):
-- \frame_timer|temp[16]~52_combout\ = (\frame_timer|temp\(16) & (!\frame_timer|temp[15]~51\)) # (!\frame_timer|temp\(16) & ((\frame_timer|temp[15]~51\) # (GND)))
-- \frame_timer|temp[16]~53\ = CARRY((!\frame_timer|temp[15]~51\) # (!\frame_timer|temp\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \frame_timer|temp\(16),
	datad => VCC,
	cin => \frame_timer|temp[15]~51\,
	combout => \frame_timer|temp[16]~52_combout\,
	cout => \frame_timer|temp[16]~53\);

-- Location: FF_X21_Y29_N9
\frame_timer|temp[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dt_clk~inputclkctrl_outclk\,
	d => \frame_timer|temp[16]~52_combout\,
	clrn => \ALT_INV_dt_clr_timer~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \frame_timer|temp\(16));

-- Location: LCCOMB_X21_Y29_N14
\frame_timer|temp[19]~58\ : cycloneiv_lcell_comb
-- Equation(s):
-- \frame_timer|temp[19]~58_combout\ = (\frame_timer|temp\(19) & (\frame_timer|temp[18]~57\ $ (GND))) # (!\frame_timer|temp\(19) & (!\frame_timer|temp[18]~57\ & VCC))
-- \frame_timer|temp[19]~59\ = CARRY((\frame_timer|temp\(19) & !\frame_timer|temp[18]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \frame_timer|temp\(19),
	datad => VCC,
	cin => \frame_timer|temp[18]~57\,
	combout => \frame_timer|temp[19]~58_combout\,
	cout => \frame_timer|temp[19]~59\);

-- Location: FF_X21_Y29_N15
\frame_timer|temp[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dt_clk~inputclkctrl_outclk\,
	d => \frame_timer|temp[19]~58_combout\,
	clrn => \ALT_INV_dt_clr_timer~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \frame_timer|temp\(19));

-- Location: LCCOMB_X21_Y29_N16
\frame_timer|temp[20]~60\ : cycloneiv_lcell_comb
-- Equation(s):
-- \frame_timer|temp[20]~60_combout\ = (\frame_timer|temp\(20) & (!\frame_timer|temp[19]~59\)) # (!\frame_timer|temp\(20) & ((\frame_timer|temp[19]~59\) # (GND)))
-- \frame_timer|temp[20]~61\ = CARRY((!\frame_timer|temp[19]~59\) # (!\frame_timer|temp\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \frame_timer|temp\(20),
	datad => VCC,
	cin => \frame_timer|temp[19]~59\,
	combout => \frame_timer|temp[20]~60_combout\,
	cout => \frame_timer|temp[20]~61\);

-- Location: FF_X21_Y29_N17
\frame_timer|temp[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dt_clk~inputclkctrl_outclk\,
	d => \frame_timer|temp[20]~60_combout\,
	clrn => \ALT_INV_dt_clr_timer~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \frame_timer|temp\(20));

-- Location: LCCOMB_X21_Y29_N18
\frame_timer|temp[21]~62\ : cycloneiv_lcell_comb
-- Equation(s):
-- \frame_timer|temp[21]~62_combout\ = (\frame_timer|temp\(21) & (\frame_timer|temp[20]~61\ $ (GND))) # (!\frame_timer|temp\(21) & (!\frame_timer|temp[20]~61\ & VCC))
-- \frame_timer|temp[21]~63\ = CARRY((\frame_timer|temp\(21) & !\frame_timer|temp[20]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \frame_timer|temp\(21),
	datad => VCC,
	cin => \frame_timer|temp[20]~61\,
	combout => \frame_timer|temp[21]~62_combout\,
	cout => \frame_timer|temp[21]~63\);

-- Location: FF_X21_Y29_N19
\frame_timer|temp[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dt_clk~inputclkctrl_outclk\,
	d => \frame_timer|temp[21]~62_combout\,
	clrn => \ALT_INV_dt_clr_timer~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \frame_timer|temp\(21));

-- Location: LCCOMB_X21_Y29_N28
\frame_timer|LessThan0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \frame_timer|LessThan0~1_combout\ = (\frame_timer|LessThan0~0_combout\ & (\frame_timer|temp\(21) & (\frame_timer|temp\(19) & \frame_timer|temp\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \frame_timer|LessThan0~0_combout\,
	datab => \frame_timer|temp\(21),
	datac => \frame_timer|temp\(19),
	datad => \frame_timer|temp\(20),
	combout => \frame_timer|LessThan0~1_combout\);

-- Location: LCCOMB_X21_Y29_N30
\frame_timer|LessThan0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \frame_timer|LessThan0~6_combout\ = (\frame_timer|temp\(14)) # (\frame_timer|temp\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \frame_timer|temp\(14),
	datad => \frame_timer|temp\(13),
	combout => \frame_timer|LessThan0~6_combout\);

-- Location: LCCOMB_X21_Y29_N20
\frame_timer|temp[22]~64\ : cycloneiv_lcell_comb
-- Equation(s):
-- \frame_timer|temp[22]~64_combout\ = \frame_timer|temp[21]~63\ $ (\frame_timer|temp\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \frame_timer|temp\(22),
	cin => \frame_timer|temp[21]~63\,
	combout => \frame_timer|temp[22]~64_combout\);

-- Location: FF_X21_Y29_N21
\frame_timer|temp[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dt_clk~inputclkctrl_outclk\,
	d => \frame_timer|temp[22]~64_combout\,
	clrn => \ALT_INV_dt_clr_timer~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \frame_timer|temp\(22));

-- Location: LCCOMB_X21_Y29_N24
\frame_timer|LessThan0~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \frame_timer|LessThan0~7_combout\ = (\frame_timer|temp\(22)) # ((\frame_timer|LessThan0~1_combout\ & ((\frame_timer|LessThan0~5_combout\) # (\frame_timer|LessThan0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \frame_timer|LessThan0~5_combout\,
	datab => \frame_timer|LessThan0~1_combout\,
	datac => \frame_timer|LessThan0~6_combout\,
	datad => \frame_timer|temp\(22),
	combout => \frame_timer|LessThan0~7_combout\);

-- Location: LCCOMB_X32_Y15_N24
\divisor_freq|cnt[0]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \divisor_freq|cnt[0]~1_combout\ = !\divisor_freq|cnt\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \divisor_freq|cnt\(0),
	combout => \divisor_freq|cnt[0]~1_combout\);

-- Location: FF_X32_Y15_N25
\divisor_freq|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dt_shift~input_o\,
	d => \divisor_freq|cnt[0]~1_combout\,
	clrn => \divisor_freq|ALT_INV_tmp~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor_freq|cnt\(0));

-- Location: LCCOMB_X32_Y15_N26
\divisor_freq|cnt[1]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \divisor_freq|cnt[1]~0_combout\ = (\divisor_freq|cnt\(1)) # (\divisor_freq|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \divisor_freq|cnt\(1),
	datad => \divisor_freq|cnt\(0),
	combout => \divisor_freq|cnt[1]~0_combout\);

-- Location: FF_X32_Y15_N27
\divisor_freq|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dt_shift~input_o\,
	d => \divisor_freq|cnt[1]~0_combout\,
	clrn => \divisor_freq|ALT_INV_tmp~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor_freq|cnt\(1));

-- Location: IOIBUF_X31_Y31_N1
\dt_clr~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dt_clr,
	o => \dt_clr~input_o\);

-- Location: LCCOMB_X32_Y15_N28
\divisor_freq|tmp~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \divisor_freq|tmp~1_combout\ = (\dt_clr~input_o\) # ((\divisor_freq|cnt\(0) & \divisor_freq|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \divisor_freq|cnt\(0),
	datac => \divisor_freq|cnt\(1),
	datad => \dt_clr~input_o\,
	combout => \divisor_freq|tmp~1_combout\);

-- Location: LCCOMB_X32_Y15_N16
\divisor_freq|tmp~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \divisor_freq|tmp~0_combout\ = (\divisor_freq|tmp~combout\) # ((!\divisor_freq|cnt\(1)) # (!\divisor_freq|cnt\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \divisor_freq|tmp~combout\,
	datac => \divisor_freq|cnt\(0),
	datad => \divisor_freq|cnt\(1),
	combout => \divisor_freq|tmp~0_combout\);

-- Location: LCCOMB_X32_Y15_N30
\divisor_freq|tmp\ : cycloneiv_lcell_comb
-- Equation(s):
-- \divisor_freq|tmp~combout\ = (\divisor_freq|tmp~1_combout\ & ((!\divisor_freq|tmp~0_combout\))) # (!\divisor_freq|tmp~1_combout\ & (\divisor_freq|tmp~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \divisor_freq|tmp~combout\,
	datac => \divisor_freq|tmp~1_combout\,
	datad => \divisor_freq|tmp~0_combout\,
	combout => \divisor_freq|tmp~combout\);

-- Location: CLKCTRL_G8
\divisor_freq|tmp~clkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \divisor_freq|tmp~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \divisor_freq|tmp~clkctrl_outclk\);

-- Location: LCCOMB_X31_Y28_N22
\lfsr_instance|intern[10]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lfsr_instance|intern[10]~3_combout\ = !\lfsr_instance|intern\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lfsr_instance|intern\(11),
	combout => \lfsr_instance|intern[10]~3_combout\);

-- Location: FF_X31_Y28_N23
\lfsr_instance|intern[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_freq|tmp~clkctrl_outclk\,
	d => \lfsr_instance|intern[10]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lfsr_instance|intern\(10));

-- Location: LCCOMB_X31_Y28_N0
\lfsr_instance|intern[9]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lfsr_instance|intern[9]~2_combout\ = !\lfsr_instance|intern\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lfsr_instance|intern\(10),
	combout => \lfsr_instance|intern[9]~2_combout\);

-- Location: FF_X31_Y28_N1
\lfsr_instance|intern[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_freq|tmp~clkctrl_outclk\,
	d => \lfsr_instance|intern[9]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lfsr_instance|intern\(9));

-- Location: LCCOMB_X31_Y28_N18
\lfsr_instance|intern[8]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lfsr_instance|intern[8]~feeder_combout\ = \lfsr_instance|intern\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lfsr_instance|intern\(9),
	combout => \lfsr_instance|intern[8]~feeder_combout\);

-- Location: FF_X31_Y28_N19
\lfsr_instance|intern[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_freq|tmp~clkctrl_outclk\,
	d => \lfsr_instance|intern[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lfsr_instance|intern\(8));

-- Location: LCCOMB_X32_Y28_N12
\lfsr_instance|intern[7]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lfsr_instance|intern[7]~feeder_combout\ = \lfsr_instance|intern\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lfsr_instance|intern\(8),
	combout => \lfsr_instance|intern[7]~feeder_combout\);

-- Location: FF_X32_Y28_N13
\lfsr_instance|intern[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_freq|tmp~clkctrl_outclk\,
	d => \lfsr_instance|intern[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lfsr_instance|intern\(7));

-- Location: LCCOMB_X32_Y28_N2
\lfsr_instance|intern[6]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lfsr_instance|intern[6]~feeder_combout\ = \lfsr_instance|intern\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lfsr_instance|intern\(7),
	combout => \lfsr_instance|intern[6]~feeder_combout\);

-- Location: FF_X32_Y28_N3
\lfsr_instance|intern[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_freq|tmp~clkctrl_outclk\,
	d => \lfsr_instance|intern[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lfsr_instance|intern\(6));

-- Location: LCCOMB_X32_Y28_N24
\lfsr_instance|intern[5]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lfsr_instance|intern[5]~feeder_combout\ = \lfsr_instance|intern\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lfsr_instance|intern\(6),
	combout => \lfsr_instance|intern[5]~feeder_combout\);

-- Location: FF_X32_Y28_N25
\lfsr_instance|intern[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_freq|tmp~clkctrl_outclk\,
	d => \lfsr_instance|intern[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lfsr_instance|intern\(5));

-- Location: LCCOMB_X31_Y28_N28
\lfsr_instance|intern[4]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lfsr_instance|intern[4]~feeder_combout\ = \lfsr_instance|intern\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lfsr_instance|intern\(5),
	combout => \lfsr_instance|intern[4]~feeder_combout\);

-- Location: FF_X31_Y28_N29
\lfsr_instance|intern[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_freq|tmp~clkctrl_outclk\,
	d => \lfsr_instance|intern[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lfsr_instance|intern\(4));

-- Location: LCCOMB_X32_Y28_N10
\lfsr_instance|intern[3]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lfsr_instance|intern[3]~feeder_combout\ = \lfsr_instance|intern\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lfsr_instance|intern\(4),
	combout => \lfsr_instance|intern[3]~feeder_combout\);

-- Location: FF_X32_Y28_N11
\lfsr_instance|intern[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_freq|tmp~clkctrl_outclk\,
	d => \lfsr_instance|intern[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lfsr_instance|intern\(3));

-- Location: LCCOMB_X32_Y28_N16
\lfsr_instance|intern[2]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lfsr_instance|intern[2]~feeder_combout\ = \lfsr_instance|intern\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lfsr_instance|intern\(3),
	combout => \lfsr_instance|intern[2]~feeder_combout\);

-- Location: FF_X32_Y28_N17
\lfsr_instance|intern[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_freq|tmp~clkctrl_outclk\,
	d => \lfsr_instance|intern[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lfsr_instance|intern\(2));

-- Location: LCCOMB_X31_Y28_N6
\lfsr_instance|intern[1]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lfsr_instance|intern[1]~feeder_combout\ = \lfsr_instance|intern\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lfsr_instance|intern\(2),
	combout => \lfsr_instance|intern[1]~feeder_combout\);

-- Location: FF_X31_Y28_N7
\lfsr_instance|intern[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_freq|tmp~clkctrl_outclk\,
	d => \lfsr_instance|intern[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lfsr_instance|intern\(1));

-- Location: LCCOMB_X31_Y28_N8
\lfsr_instance|intern[0]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lfsr_instance|intern[0]~feeder_combout\ = \lfsr_instance|intern\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lfsr_instance|intern\(1),
	combout => \lfsr_instance|intern[0]~feeder_combout\);

-- Location: FF_X31_Y28_N9
\lfsr_instance|intern[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_freq|tmp~clkctrl_outclk\,
	d => \lfsr_instance|intern[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lfsr_instance|intern\(0));

-- Location: LCCOMB_X32_Y28_N30
\lfsr_instance|tmp~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lfsr_instance|tmp~0_combout\ = \lfsr_instance|intern\(7) $ (\lfsr_instance|intern\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lfsr_instance|intern\(7),
	datad => \lfsr_instance|intern\(0),
	combout => \lfsr_instance|tmp~0_combout\);

-- Location: FF_X32_Y28_N31
\lfsr_instance|intern[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_freq|tmp~clkctrl_outclk\,
	d => \lfsr_instance|tmp~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lfsr_instance|intern\(17));

-- Location: FF_X31_Y28_N17
\lfsr_instance|intern[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_freq|tmp~clkctrl_outclk\,
	asdata => \lfsr_instance|intern\(17),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lfsr_instance|intern\(16));

-- Location: LCCOMB_X31_Y28_N24
\lfsr_instance|intern[15]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lfsr_instance|intern[15]~feeder_combout\ = \lfsr_instance|intern\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lfsr_instance|intern\(16),
	combout => \lfsr_instance|intern[15]~feeder_combout\);

-- Location: FF_X31_Y28_N25
\lfsr_instance|intern[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_freq|tmp~clkctrl_outclk\,
	d => \lfsr_instance|intern[15]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lfsr_instance|intern\(15));

-- Location: LCCOMB_X31_Y28_N2
\lfsr_instance|intern[14]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lfsr_instance|intern[14]~1_combout\ = !\lfsr_instance|intern\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lfsr_instance|intern\(15),
	combout => \lfsr_instance|intern[14]~1_combout\);

-- Location: FF_X31_Y28_N3
\lfsr_instance|intern[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_freq|tmp~clkctrl_outclk\,
	d => \lfsr_instance|intern[14]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lfsr_instance|intern\(14));

-- Location: LCCOMB_X31_Y28_N12
\lfsr_instance|intern[13]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lfsr_instance|intern[13]~feeder_combout\ = \lfsr_instance|intern\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lfsr_instance|intern\(14),
	combout => \lfsr_instance|intern[13]~feeder_combout\);

-- Location: FF_X31_Y28_N13
\lfsr_instance|intern[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_freq|tmp~clkctrl_outclk\,
	d => \lfsr_instance|intern[13]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lfsr_instance|intern\(13));

-- Location: LCCOMB_X31_Y28_N10
\lfsr_instance|intern[12]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lfsr_instance|intern[12]~0_combout\ = !\lfsr_instance|intern\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lfsr_instance|intern\(13),
	combout => \lfsr_instance|intern[12]~0_combout\);

-- Location: FF_X31_Y28_N11
\lfsr_instance|intern[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_freq|tmp~clkctrl_outclk\,
	d => \lfsr_instance|intern[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lfsr_instance|intern\(12));

-- Location: LCCOMB_X32_Y29_N10
\lfsr_instance|intern[11]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lfsr_instance|intern[11]~feeder_combout\ = \lfsr_instance|intern\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lfsr_instance|intern\(12),
	combout => \lfsr_instance|intern[11]~feeder_combout\);

-- Location: FF_X32_Y29_N11
\lfsr_instance|intern[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_freq|tmp~clkctrl_outclk\,
	d => \lfsr_instance|intern[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lfsr_instance|intern\(11));

-- Location: LCCOMB_X31_Y29_N8
\cont_2b|cnt[0]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cont_2b|cnt[0]~1_combout\ = !\cont_2b|cnt\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cont_2b|cnt\(0),
	combout => \cont_2b|cnt[0]~1_combout\);

-- Location: FF_X31_Y29_N9
\cont_2b|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_freq|tmp~clkctrl_outclk\,
	d => \cont_2b|cnt[0]~1_combout\,
	clrn => \ALT_INV_dt_clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cont_2b|cnt\(0));

-- Location: LCCOMB_X31_Y29_N26
\cont_2b|cnt[1]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cont_2b|cnt[1]~0_combout\ = \cont_2b|cnt\(1) $ (\cont_2b|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cont_2b|cnt\(1),
	datad => \cont_2b|cnt\(0),
	combout => \cont_2b|cnt[1]~0_combout\);

-- Location: FF_X31_Y29_N27
\cont_2b|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_freq|tmp~clkctrl_outclk\,
	d => \cont_2b|cnt[1]~0_combout\,
	clrn => \ALT_INV_dt_clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cont_2b|cnt\(1));

-- Location: LCCOMB_X31_Y29_N20
\s7~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s7~0_combout\ = (\lfsr_instance|intern\(11) & ((\cont_2b|cnt\(0)) # (\cont_2b|cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont_2b|cnt\(0),
	datab => \lfsr_instance|intern\(11),
	datac => \cont_2b|cnt\(1),
	combout => \s7~0_combout\);

-- Location: FF_X31_Y29_N21
\sr_moeda|instancia0_reg|tmp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_freq|tmp~clkctrl_outclk\,
	d => \s7~0_combout\,
	clrn => \ALT_INV_dt_clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sr_moeda|instancia0_reg|tmp\(0));

-- Location: LCCOMB_X31_Y29_N22
\sr_moeda|instancia0_reg|tmp[1]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sr_moeda|instancia0_reg|tmp[1]~feeder_combout\ = \sr_moeda|instancia0_reg|tmp\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sr_moeda|instancia0_reg|tmp\(0),
	combout => \sr_moeda|instancia0_reg|tmp[1]~feeder_combout\);

-- Location: FF_X31_Y29_N23
\sr_moeda|instancia0_reg|tmp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_freq|tmp~clkctrl_outclk\,
	d => \sr_moeda|instancia0_reg|tmp[1]~feeder_combout\,
	clrn => \ALT_INV_dt_clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sr_moeda|instancia0_reg|tmp\(1));

-- Location: FF_X31_Y29_N3
\sr_moeda|instancia0_reg|tmp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_freq|tmp~clkctrl_outclk\,
	asdata => \sr_moeda|instancia0_reg|tmp\(1),
	clrn => \ALT_INV_dt_clr~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sr_moeda|instancia0_reg|tmp\(2));

-- Location: LCCOMB_X31_Y29_N10
\sr_moeda|instancia0_reg|tmp[3]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sr_moeda|instancia0_reg|tmp[3]~feeder_combout\ = \sr_moeda|instancia0_reg|tmp\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sr_moeda|instancia0_reg|tmp\(2),
	combout => \sr_moeda|instancia0_reg|tmp[3]~feeder_combout\);

-- Location: FF_X31_Y29_N11
\sr_moeda|instancia0_reg|tmp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_freq|tmp~clkctrl_outclk\,
	d => \sr_moeda|instancia0_reg|tmp[3]~feeder_combout\,
	clrn => \ALT_INV_dt_clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sr_moeda|instancia0_reg|tmp\(3));

-- Location: FF_X31_Y29_N17
\sr_moeda|instancia0_reg|tmp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_freq|tmp~clkctrl_outclk\,
	asdata => \sr_moeda|instancia0_reg|tmp\(3),
	clrn => \ALT_INV_dt_clr~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sr_moeda|instancia0_reg|tmp\(4));

-- Location: LCCOMB_X30_Y29_N8
\sr_moeda|instancia0_reg|tmp[5]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sr_moeda|instancia0_reg|tmp[5]~feeder_combout\ = \sr_moeda|instancia0_reg|tmp\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sr_moeda|instancia0_reg|tmp\(4),
	combout => \sr_moeda|instancia0_reg|tmp[5]~feeder_combout\);

-- Location: FF_X30_Y29_N9
\sr_moeda|instancia0_reg|tmp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_freq|tmp~clkctrl_outclk\,
	d => \sr_moeda|instancia0_reg|tmp[5]~feeder_combout\,
	clrn => \ALT_INV_dt_clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sr_moeda|instancia0_reg|tmp\(5));

-- Location: FF_X30_Y29_N1
\sr_moeda|instancia0_reg|tmp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_freq|tmp~clkctrl_outclk\,
	asdata => \sr_moeda|instancia0_reg|tmp\(5),
	clrn => \ALT_INV_dt_clr~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sr_moeda|instancia0_reg|tmp\(6));

-- Location: LCCOMB_X30_Y29_N18
\sr_moeda|instancia0_reg|tmp[7]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sr_moeda|instancia0_reg|tmp[7]~feeder_combout\ = \sr_moeda|instancia0_reg|tmp\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sr_moeda|instancia0_reg|tmp\(6),
	combout => \sr_moeda|instancia0_reg|tmp[7]~feeder_combout\);

-- Location: FF_X30_Y29_N19
\sr_moeda|instancia0_reg|tmp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_freq|tmp~clkctrl_outclk\,
	d => \sr_moeda|instancia0_reg|tmp[7]~feeder_combout\,
	clrn => \ALT_INV_dt_clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sr_moeda|instancia0_reg|tmp\(7));

-- Location: LCCOMB_X30_Y29_N26
\sr_moeda|instancia0_reg|tmp[8]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sr_moeda|instancia0_reg|tmp[8]~feeder_combout\ = \sr_moeda|instancia0_reg|tmp\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sr_moeda|instancia0_reg|tmp\(7),
	combout => \sr_moeda|instancia0_reg|tmp[8]~feeder_combout\);

-- Location: FF_X30_Y29_N27
\sr_moeda|instancia0_reg|tmp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_freq|tmp~clkctrl_outclk\,
	d => \sr_moeda|instancia0_reg|tmp[8]~feeder_combout\,
	clrn => \ALT_INV_dt_clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sr_moeda|instancia0_reg|tmp\(8));

-- Location: LCCOMB_X30_Y29_N12
\sr_moeda|instancia0_reg|tmp[9]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sr_moeda|instancia0_reg|tmp[9]~feeder_combout\ = \sr_moeda|instancia0_reg|tmp\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sr_moeda|instancia0_reg|tmp\(8),
	combout => \sr_moeda|instancia0_reg|tmp[9]~feeder_combout\);

-- Location: FF_X30_Y29_N13
\sr_moeda|instancia0_reg|tmp[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_freq|tmp~clkctrl_outclk\,
	d => \sr_moeda|instancia0_reg|tmp[9]~feeder_combout\,
	clrn => \ALT_INV_dt_clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sr_moeda|instancia0_reg|tmp\(9));

-- Location: FF_X30_Y29_N29
\sr_moeda|instancia0_reg|tmp[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_freq|tmp~clkctrl_outclk\,
	asdata => \sr_moeda|instancia0_reg|tmp\(9),
	clrn => \ALT_INV_dt_clr~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sr_moeda|instancia0_reg|tmp\(10));

-- Location: FF_X30_Y29_N23
\sr_moeda|instancia0_reg|tmp[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_freq|tmp~clkctrl_outclk\,
	asdata => \sr_moeda|instancia0_reg|tmp\(10),
	clrn => \ALT_INV_dt_clr~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sr_moeda|instancia0_reg|tmp\(11));

-- Location: LCCOMB_X30_Y29_N6
\sr_moeda|instancia0_reg|tmp[12]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sr_moeda|instancia0_reg|tmp[12]~feeder_combout\ = \sr_moeda|instancia0_reg|tmp\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sr_moeda|instancia0_reg|tmp\(11),
	combout => \sr_moeda|instancia0_reg|tmp[12]~feeder_combout\);

-- Location: FF_X30_Y29_N7
\sr_moeda|instancia0_reg|tmp[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_freq|tmp~clkctrl_outclk\,
	d => \sr_moeda|instancia0_reg|tmp[12]~feeder_combout\,
	clrn => \ALT_INV_dt_clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sr_moeda|instancia0_reg|tmp\(12));

-- Location: LCCOMB_X30_Y29_N16
\sr_moeda|instancia0_reg|tmp[13]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sr_moeda|instancia0_reg|tmp[13]~feeder_combout\ = \sr_moeda|instancia0_reg|tmp\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sr_moeda|instancia0_reg|tmp\(12),
	combout => \sr_moeda|instancia0_reg|tmp[13]~feeder_combout\);

-- Location: FF_X30_Y29_N17
\sr_moeda|instancia0_reg|tmp[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_freq|tmp~clkctrl_outclk\,
	d => \sr_moeda|instancia0_reg|tmp[13]~feeder_combout\,
	clrn => \ALT_INV_dt_clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sr_moeda|instancia0_reg|tmp\(13));

-- Location: LCCOMB_X30_Y29_N4
\sr_moeda|instancia0_reg|tmp[14]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sr_moeda|instancia0_reg|tmp[14]~feeder_combout\ = \sr_moeda|instancia0_reg|tmp\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sr_moeda|instancia0_reg|tmp\(13),
	combout => \sr_moeda|instancia0_reg|tmp[14]~feeder_combout\);

-- Location: FF_X30_Y29_N5
\sr_moeda|instancia0_reg|tmp[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_freq|tmp~clkctrl_outclk\,
	d => \sr_moeda|instancia0_reg|tmp[14]~feeder_combout\,
	clrn => \ALT_INV_dt_clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sr_moeda|instancia0_reg|tmp\(14));

-- Location: FF_X30_Y29_N25
\sr_moeda|instancia0_reg|tmp[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_freq|tmp~clkctrl_outclk\,
	asdata => \sr_moeda|instancia0_reg|tmp\(14),
	clrn => \ALT_INV_dt_clr~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sr_moeda|instancia0_reg|tmp\(15));

-- Location: FF_X30_Y29_N31
\sr_moeda|instancia0_reg|tmp[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_freq|tmp~clkctrl_outclk\,
	asdata => \sr_moeda|instancia0_reg|tmp\(15),
	clrn => \ALT_INV_dt_clr~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sr_moeda|instancia0_reg|tmp\(16));

-- Location: LCCOMB_X31_Y29_N0
s12 : cycloneiv_lcell_comb
-- Equation(s):
-- \s12~combout\ = (!\cont_2b|cnt\(0)) # (!\cont_2b|cnt\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cont_2b|cnt\(1),
	datad => \cont_2b|cnt\(0),
	combout => \s12~combout\);

-- Location: FF_X31_Y29_N1
\sr_obstaculo|instancia0_reg|tmp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_freq|tmp~clkctrl_outclk\,
	d => \s12~combout\,
	clrn => \ALT_INV_dt_clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sr_obstaculo|instancia0_reg|tmp\(0));

-- Location: LCCOMB_X31_Y29_N28
\sr_obstaculo|instancia0_reg|tmp[1]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sr_obstaculo|instancia0_reg|tmp[1]~feeder_combout\ = \sr_obstaculo|instancia0_reg|tmp\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sr_obstaculo|instancia0_reg|tmp\(0),
	combout => \sr_obstaculo|instancia0_reg|tmp[1]~feeder_combout\);

-- Location: FF_X31_Y29_N29
\sr_obstaculo|instancia0_reg|tmp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_freq|tmp~clkctrl_outclk\,
	d => \sr_obstaculo|instancia0_reg|tmp[1]~feeder_combout\,
	clrn => \ALT_INV_dt_clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sr_obstaculo|instancia0_reg|tmp\(1));

-- Location: FF_X31_Y29_N13
\sr_obstaculo|instancia0_reg|tmp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_freq|tmp~clkctrl_outclk\,
	asdata => \sr_obstaculo|instancia0_reg|tmp\(1),
	clrn => \ALT_INV_dt_clr~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sr_obstaculo|instancia0_reg|tmp\(2));

-- Location: LCCOMB_X32_Y29_N22
\sr_obstaculo|instancia0_reg|tmp[3]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sr_obstaculo|instancia0_reg|tmp[3]~feeder_combout\ = \sr_obstaculo|instancia0_reg|tmp\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sr_obstaculo|instancia0_reg|tmp\(2),
	combout => \sr_obstaculo|instancia0_reg|tmp[3]~feeder_combout\);

-- Location: FF_X32_Y29_N23
\sr_obstaculo|instancia0_reg|tmp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_freq|tmp~clkctrl_outclk\,
	d => \sr_obstaculo|instancia0_reg|tmp[3]~feeder_combout\,
	clrn => \ALT_INV_dt_clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sr_obstaculo|instancia0_reg|tmp\(3));

-- Location: LCCOMB_X32_Y29_N26
\sr_obstaculo|instancia0_reg|tmp[4]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sr_obstaculo|instancia0_reg|tmp[4]~feeder_combout\ = \sr_obstaculo|instancia0_reg|tmp\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sr_obstaculo|instancia0_reg|tmp\(3),
	combout => \sr_obstaculo|instancia0_reg|tmp[4]~feeder_combout\);

-- Location: FF_X32_Y29_N27
\sr_obstaculo|instancia0_reg|tmp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_freq|tmp~clkctrl_outclk\,
	d => \sr_obstaculo|instancia0_reg|tmp[4]~feeder_combout\,
	clrn => \ALT_INV_dt_clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sr_obstaculo|instancia0_reg|tmp\(4));

-- Location: FF_X32_Y29_N1
\sr_obstaculo|instancia0_reg|tmp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_freq|tmp~clkctrl_outclk\,
	asdata => \sr_obstaculo|instancia0_reg|tmp\(4),
	clrn => \ALT_INV_dt_clr~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sr_obstaculo|instancia0_reg|tmp\(5));

-- Location: LCCOMB_X32_Y29_N12
\sr_obstaculo|instancia0_reg|tmp[6]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sr_obstaculo|instancia0_reg|tmp[6]~feeder_combout\ = \sr_obstaculo|instancia0_reg|tmp\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sr_obstaculo|instancia0_reg|tmp\(5),
	combout => \sr_obstaculo|instancia0_reg|tmp[6]~feeder_combout\);

-- Location: FF_X32_Y29_N13
\sr_obstaculo|instancia0_reg|tmp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_freq|tmp~clkctrl_outclk\,
	d => \sr_obstaculo|instancia0_reg|tmp[6]~feeder_combout\,
	clrn => \ALT_INV_dt_clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sr_obstaculo|instancia0_reg|tmp\(6));

-- Location: LCCOMB_X32_Y29_N30
\sr_obstaculo|instancia0_reg|tmp[7]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sr_obstaculo|instancia0_reg|tmp[7]~feeder_combout\ = \sr_obstaculo|instancia0_reg|tmp\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sr_obstaculo|instancia0_reg|tmp\(6),
	combout => \sr_obstaculo|instancia0_reg|tmp[7]~feeder_combout\);

-- Location: FF_X32_Y29_N31
\sr_obstaculo|instancia0_reg|tmp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_freq|tmp~clkctrl_outclk\,
	d => \sr_obstaculo|instancia0_reg|tmp[7]~feeder_combout\,
	clrn => \ALT_INV_dt_clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sr_obstaculo|instancia0_reg|tmp\(7));

-- Location: FF_X32_Y29_N3
\sr_obstaculo|instancia0_reg|tmp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_freq|tmp~clkctrl_outclk\,
	asdata => \sr_obstaculo|instancia0_reg|tmp\(7),
	clrn => \ALT_INV_dt_clr~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sr_obstaculo|instancia0_reg|tmp\(8));

-- Location: LCCOMB_X31_Y29_N4
\sr_obstaculo|instancia0_reg|tmp[9]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sr_obstaculo|instancia0_reg|tmp[9]~feeder_combout\ = \sr_obstaculo|instancia0_reg|tmp\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sr_obstaculo|instancia0_reg|tmp\(8),
	combout => \sr_obstaculo|instancia0_reg|tmp[9]~feeder_combout\);

-- Location: FF_X31_Y29_N5
\sr_obstaculo|instancia0_reg|tmp[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_freq|tmp~clkctrl_outclk\,
	d => \sr_obstaculo|instancia0_reg|tmp[9]~feeder_combout\,
	clrn => \ALT_INV_dt_clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sr_obstaculo|instancia0_reg|tmp\(9));

-- Location: FF_X31_Y29_N15
\sr_obstaculo|instancia0_reg|tmp[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_freq|tmp~clkctrl_outclk\,
	asdata => \sr_obstaculo|instancia0_reg|tmp\(9),
	clrn => \ALT_INV_dt_clr~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sr_obstaculo|instancia0_reg|tmp\(10));

-- Location: LCCOMB_X32_Y29_N6
\sr_obstaculo|instancia0_reg|tmp[11]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sr_obstaculo|instancia0_reg|tmp[11]~feeder_combout\ = \sr_obstaculo|instancia0_reg|tmp\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sr_obstaculo|instancia0_reg|tmp\(10),
	combout => \sr_obstaculo|instancia0_reg|tmp[11]~feeder_combout\);

-- Location: FF_X32_Y29_N7
\sr_obstaculo|instancia0_reg|tmp[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_freq|tmp~clkctrl_outclk\,
	d => \sr_obstaculo|instancia0_reg|tmp[11]~feeder_combout\,
	clrn => \ALT_INV_dt_clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sr_obstaculo|instancia0_reg|tmp\(11));

-- Location: FF_X32_Y29_N5
\sr_obstaculo|instancia0_reg|tmp[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_freq|tmp~clkctrl_outclk\,
	asdata => \sr_obstaculo|instancia0_reg|tmp\(11),
	clrn => \ALT_INV_dt_clr~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sr_obstaculo|instancia0_reg|tmp\(12));

-- Location: LCCOMB_X32_Y29_N14
\sr_obstaculo|instancia0_reg|tmp[13]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sr_obstaculo|instancia0_reg|tmp[13]~feeder_combout\ = \sr_obstaculo|instancia0_reg|tmp\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sr_obstaculo|instancia0_reg|tmp\(12),
	combout => \sr_obstaculo|instancia0_reg|tmp[13]~feeder_combout\);

-- Location: FF_X32_Y29_N15
\sr_obstaculo|instancia0_reg|tmp[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_freq|tmp~clkctrl_outclk\,
	d => \sr_obstaculo|instancia0_reg|tmp[13]~feeder_combout\,
	clrn => \ALT_INV_dt_clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sr_obstaculo|instancia0_reg|tmp\(13));

-- Location: FF_X32_Y29_N17
\sr_obstaculo|instancia0_reg|tmp[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_freq|tmp~clkctrl_outclk\,
	asdata => \sr_obstaculo|instancia0_reg|tmp\(13),
	clrn => \ALT_INV_dt_clr~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sr_obstaculo|instancia0_reg|tmp\(14));

-- Location: LCCOMB_X32_Y29_N24
\sr_obstaculo|instancia0_reg|tmp[15]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sr_obstaculo|instancia0_reg|tmp[15]~feeder_combout\ = \sr_obstaculo|instancia0_reg|tmp\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sr_obstaculo|instancia0_reg|tmp\(14),
	combout => \sr_obstaculo|instancia0_reg|tmp[15]~feeder_combout\);

-- Location: FF_X32_Y29_N25
\sr_obstaculo|instancia0_reg|tmp[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_freq|tmp~clkctrl_outclk\,
	d => \sr_obstaculo|instancia0_reg|tmp[15]~feeder_combout\,
	clrn => \ALT_INV_dt_clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sr_obstaculo|instancia0_reg|tmp\(15));

-- Location: FF_X32_Y29_N9
\sr_obstaculo|instancia0_reg|tmp[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_freq|tmp~clkctrl_outclk\,
	asdata => \sr_obstaculo|instancia0_reg|tmp\(15),
	clrn => \ALT_INV_dt_clr~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sr_obstaculo|instancia0_reg|tmp\(16));

-- Location: LCCOMB_X31_Y28_N26
\sr_obstaculo|instancia1_reg|tmp[0]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sr_obstaculo|instancia1_reg|tmp[0]~feeder_combout\ = \lfsr_instance|intern\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lfsr_instance|intern\(4),
	combout => \sr_obstaculo|instancia1_reg|tmp[0]~feeder_combout\);

-- Location: FF_X31_Y28_N27
\sr_obstaculo|instancia1_reg|tmp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_freq|tmp~clkctrl_outclk\,
	d => \sr_obstaculo|instancia1_reg|tmp[0]~feeder_combout\,
	clrn => \ALT_INV_dt_clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sr_obstaculo|instancia1_reg|tmp\(0));

-- Location: LCCOMB_X30_Y28_N8
\sr_moeda|instancia1_reg|tmp[1]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sr_moeda|instancia1_reg|tmp[1]~feeder_combout\ = \sr_obstaculo|instancia1_reg|tmp\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sr_obstaculo|instancia1_reg|tmp\(0),
	combout => \sr_moeda|instancia1_reg|tmp[1]~feeder_combout\);

-- Location: FF_X30_Y28_N9
\sr_moeda|instancia1_reg|tmp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_freq|tmp~clkctrl_outclk\,
	d => \sr_moeda|instancia1_reg|tmp[1]~feeder_combout\,
	clrn => \ALT_INV_dt_clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sr_moeda|instancia1_reg|tmp\(1));

-- Location: FF_X30_Y28_N5
\sr_obstaculo|instancia1_reg|tmp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_freq|tmp~clkctrl_outclk\,
	asdata => \sr_moeda|instancia1_reg|tmp\(1),
	clrn => \ALT_INV_dt_clr~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sr_obstaculo|instancia1_reg|tmp\(2));

-- Location: FF_X30_Y28_N29
\sr_moeda|instancia1_reg|tmp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_freq|tmp~clkctrl_outclk\,
	asdata => \sr_obstaculo|instancia1_reg|tmp\(2),
	clrn => \ALT_INV_dt_clr~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sr_moeda|instancia1_reg|tmp\(3));

-- Location: LCCOMB_X30_Y28_N16
\sr_obstaculo|instancia1_reg|tmp[4]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sr_obstaculo|instancia1_reg|tmp[4]~feeder_combout\ = \sr_moeda|instancia1_reg|tmp\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sr_moeda|instancia1_reg|tmp\(3),
	combout => \sr_obstaculo|instancia1_reg|tmp[4]~feeder_combout\);

-- Location: FF_X30_Y28_N17
\sr_obstaculo|instancia1_reg|tmp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_freq|tmp~clkctrl_outclk\,
	d => \sr_obstaculo|instancia1_reg|tmp[4]~feeder_combout\,
	clrn => \ALT_INV_dt_clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sr_obstaculo|instancia1_reg|tmp\(4));

-- Location: LCCOMB_X30_Y28_N30
\sr_moeda|instancia1_reg|tmp[5]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sr_moeda|instancia1_reg|tmp[5]~feeder_combout\ = \sr_obstaculo|instancia1_reg|tmp\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sr_obstaculo|instancia1_reg|tmp\(4),
	combout => \sr_moeda|instancia1_reg|tmp[5]~feeder_combout\);

-- Location: FF_X30_Y28_N31
\sr_moeda|instancia1_reg|tmp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_freq|tmp~clkctrl_outclk\,
	d => \sr_moeda|instancia1_reg|tmp[5]~feeder_combout\,
	clrn => \ALT_INV_dt_clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sr_moeda|instancia1_reg|tmp\(5));

-- Location: FF_X30_Y28_N27
\sr_obstaculo|instancia1_reg|tmp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_freq|tmp~clkctrl_outclk\,
	asdata => \sr_moeda|instancia1_reg|tmp\(5),
	clrn => \ALT_INV_dt_clr~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sr_obstaculo|instancia1_reg|tmp\(6));

-- Location: FF_X30_Y28_N23
\sr_moeda|instancia1_reg|tmp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_freq|tmp~clkctrl_outclk\,
	asdata => \sr_obstaculo|instancia1_reg|tmp\(6),
	clrn => \ALT_INV_dt_clr~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sr_moeda|instancia1_reg|tmp\(7));

-- Location: FF_X30_Y28_N21
\sr_obstaculo|instancia1_reg|tmp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_freq|tmp~clkctrl_outclk\,
	asdata => \sr_moeda|instancia1_reg|tmp\(7),
	clrn => \ALT_INV_dt_clr~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sr_obstaculo|instancia1_reg|tmp\(8));

-- Location: FF_X30_Y28_N3
\sr_moeda|instancia1_reg|tmp[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_freq|tmp~clkctrl_outclk\,
	asdata => \sr_obstaculo|instancia1_reg|tmp\(8),
	clrn => \ALT_INV_dt_clr~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sr_moeda|instancia1_reg|tmp\(9));

-- Location: LCCOMB_X31_Y28_N4
\sr_obstaculo|instancia1_reg|tmp[10]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sr_obstaculo|instancia1_reg|tmp[10]~feeder_combout\ = \sr_moeda|instancia1_reg|tmp\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sr_moeda|instancia1_reg|tmp\(9),
	combout => \sr_obstaculo|instancia1_reg|tmp[10]~feeder_combout\);

-- Location: FF_X31_Y28_N5
\sr_obstaculo|instancia1_reg|tmp[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_freq|tmp~clkctrl_outclk\,
	d => \sr_obstaculo|instancia1_reg|tmp[10]~feeder_combout\,
	clrn => \ALT_INV_dt_clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sr_obstaculo|instancia1_reg|tmp\(10));

-- Location: LCCOMB_X31_Y28_N14
\sr_moeda|instancia1_reg|tmp[11]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sr_moeda|instancia1_reg|tmp[11]~feeder_combout\ = \sr_obstaculo|instancia1_reg|tmp\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sr_obstaculo|instancia1_reg|tmp\(10),
	combout => \sr_moeda|instancia1_reg|tmp[11]~feeder_combout\);

-- Location: FF_X31_Y28_N15
\sr_moeda|instancia1_reg|tmp[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_freq|tmp~clkctrl_outclk\,
	d => \sr_moeda|instancia1_reg|tmp[11]~feeder_combout\,
	clrn => \ALT_INV_dt_clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sr_moeda|instancia1_reg|tmp\(11));

-- Location: FF_X30_Y28_N19
\sr_obstaculo|instancia1_reg|tmp[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_freq|tmp~clkctrl_outclk\,
	asdata => \sr_moeda|instancia1_reg|tmp\(11),
	clrn => \ALT_INV_dt_clr~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sr_obstaculo|instancia1_reg|tmp\(12));

-- Location: LCCOMB_X30_Y28_N14
\sr_moeda|instancia1_reg|tmp[13]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sr_moeda|instancia1_reg|tmp[13]~feeder_combout\ = \sr_obstaculo|instancia1_reg|tmp\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sr_obstaculo|instancia1_reg|tmp\(12),
	combout => \sr_moeda|instancia1_reg|tmp[13]~feeder_combout\);

-- Location: FF_X30_Y28_N15
\sr_moeda|instancia1_reg|tmp[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_freq|tmp~clkctrl_outclk\,
	d => \sr_moeda|instancia1_reg|tmp[13]~feeder_combout\,
	clrn => \ALT_INV_dt_clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sr_moeda|instancia1_reg|tmp\(13));

-- Location: FF_X30_Y28_N13
\sr_obstaculo|instancia1_reg|tmp[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_freq|tmp~clkctrl_outclk\,
	asdata => \sr_moeda|instancia1_reg|tmp\(13),
	clrn => \ALT_INV_dt_clr~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sr_obstaculo|instancia1_reg|tmp\(14));

-- Location: LCCOMB_X31_Y28_N30
\sr_moeda|instancia1_reg|tmp[15]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sr_moeda|instancia1_reg|tmp[15]~feeder_combout\ = \sr_obstaculo|instancia1_reg|tmp\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sr_obstaculo|instancia1_reg|tmp\(14),
	combout => \sr_moeda|instancia1_reg|tmp[15]~feeder_combout\);

-- Location: FF_X31_Y28_N31
\sr_moeda|instancia1_reg|tmp[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_freq|tmp~clkctrl_outclk\,
	d => \sr_moeda|instancia1_reg|tmp[15]~feeder_combout\,
	clrn => \ALT_INV_dt_clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sr_moeda|instancia1_reg|tmp\(15));

-- Location: LCCOMB_X31_Y28_N20
\sr_obstaculo|instancia1_reg|tmp[16]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sr_obstaculo|instancia1_reg|tmp[16]~feeder_combout\ = \sr_moeda|instancia1_reg|tmp\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sr_moeda|instancia1_reg|tmp\(15),
	combout => \sr_obstaculo|instancia1_reg|tmp[16]~feeder_combout\);

-- Location: FF_X31_Y28_N21
\sr_obstaculo|instancia1_reg|tmp[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_freq|tmp~clkctrl_outclk\,
	d => \sr_obstaculo|instancia1_reg|tmp[16]~feeder_combout\,
	clrn => \ALT_INV_dt_clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sr_obstaculo|instancia1_reg|tmp\(16));

-- Location: IOIBUF_X33_Y15_N1
\dt_b_key~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dt_b_key,
	o => \dt_b_key~input_o\);

-- Location: LCCOMB_X31_Y26_N0
\player_position|qi~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \player_position|qi~1_combout\ = (!\dt_b_key~input_o\ & ((\dt_a_key~input_o\) # (\player_position|qi~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dt_a_key~input_o\,
	datac => \dt_b_key~input_o\,
	datad => \player_position|qi~1_combout\,
	combout => \player_position|qi~1_combout\);

-- Location: IOIBUF_X33_Y25_N8
\dt_a_key~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dt_a_key,
	o => \dt_a_key~input_o\);

-- Location: LCCOMB_X31_Y26_N18
\player_position|qi~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \player_position|qi~3_combout\ = \player_position|qi~1_combout\ $ (\player_position|qi~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \player_position|qi~1_combout\,
	datad => \player_position|qi~2_combout\,
	combout => \player_position|qi~3_combout\);

-- Location: LCCOMB_X31_Y26_N26
\player_position|qi~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \player_position|qi~0_combout\ = (\dt_a_key~input_o\) # (\dt_b_key~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dt_a_key~input_o\,
	datac => \dt_b_key~input_o\,
	combout => \player_position|qi~0_combout\);

-- Location: FF_X31_Y26_N19
\player_position|qi~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dt_clk~inputclkctrl_outclk\,
	d => \player_position|qi~3_combout\,
	clrn => \player_position|ALT_INV_qi~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \player_position|qi~_emulated_q\);

-- Location: LCCOMB_X31_Y26_N28
\player_position|qi~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \player_position|qi~2_combout\ = (!\dt_b_key~input_o\ & ((\dt_a_key~input_o\) # (\player_position|qi~1_combout\ $ (\player_position|qi~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dt_b_key~input_o\,
	datab => \player_position|qi~1_combout\,
	datac => \dt_a_key~input_o\,
	datad => \player_position|qi~_emulated_q\,
	combout => \player_position|qi~2_combout\);

-- Location: LCCOMB_X31_Y26_N20
\comp1|cmp_Q~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp1|cmp_Q~0_combout\ = \sr_obstaculo|instancia1_reg|tmp\(16) $ (\player_position|qi~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sr_obstaculo|instancia1_reg|tmp\(16),
	datac => \player_position|qi~2_combout\,
	combout => \comp1|cmp_Q~0_combout\);

-- Location: LCCOMB_X32_Y30_N2
\contador_moedas_2|cnt[6]~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \contador_moedas_2|cnt[6]~17_combout\ = (!\contador_moedas_2|LessThan0~1_combout\ & \dt_clr~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_moedas_2|LessThan0~1_combout\,
	datad => \dt_clr~input_o\,
	combout => \contador_moedas_2|cnt[6]~17_combout\);

-- Location: LCCOMB_X32_Y30_N18
\contador_moedas_2|Add0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \contador_moedas_2|Add0~0_combout\ = (\contador_moedas_2|cnt[1]~4_combout\ & (\contador_moedas_2|cnt[0]~2_combout\ $ (VCC))) # (!\contador_moedas_2|cnt[1]~4_combout\ & (\contador_moedas_2|cnt[0]~2_combout\ & VCC))
-- \contador_moedas_2|Add0~1\ = CARRY((\contador_moedas_2|cnt[1]~4_combout\ & \contador_moedas_2|cnt[0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_moedas_2|cnt[1]~4_combout\,
	datab => \contador_moedas_2|cnt[0]~2_combout\,
	datad => VCC,
	combout => \contador_moedas_2|Add0~0_combout\,
	cout => \contador_moedas_2|Add0~1\);

-- Location: LCCOMB_X32_Y30_N20
\contador_moedas_2|Add0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \contador_moedas_2|Add0~2_combout\ = (\contador_moedas_2|cnt\(2) & (!\contador_moedas_2|Add0~1\)) # (!\contador_moedas_2|cnt\(2) & ((\contador_moedas_2|Add0~1\) # (GND)))
-- \contador_moedas_2|Add0~3\ = CARRY((!\contador_moedas_2|Add0~1\) # (!\contador_moedas_2|cnt\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador_moedas_2|cnt\(2),
	datad => VCC,
	cin => \contador_moedas_2|Add0~1\,
	combout => \contador_moedas_2|Add0~2_combout\,
	cout => \contador_moedas_2|Add0~3\);

-- Location: LCCOMB_X32_Y30_N30
\contador_moedas_2|cnt[4]~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \contador_moedas_2|cnt[4]~16_combout\ = (\dt_clr~input_o\) # (\contador_moedas_2|LessThan0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dt_clr~input_o\,
	datac => \contador_moedas_2|LessThan0~1_combout\,
	combout => \contador_moedas_2|cnt[4]~16_combout\);

-- Location: IOIBUF_X31_Y31_N8
\dt_en_cont_2~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dt_en_cont_2,
	o => \dt_en_cont_2~input_o\);

-- Location: FF_X32_Y30_N21
\contador_moedas_2|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dt_clk~inputclkctrl_outclk\,
	d => \contador_moedas_2|Add0~2_combout\,
	clrn => \contador_moedas_2|ALT_INV_cnt[4]~16_combout\,
	ena => \dt_en_cont_2~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_moedas_2|cnt\(2));

-- Location: LCCOMB_X32_Y30_N22
\contador_moedas_2|Add0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \contador_moedas_2|Add0~4_combout\ = (\contador_moedas_2|cnt\(3) & (\contador_moedas_2|Add0~3\ $ (GND))) # (!\contador_moedas_2|cnt\(3) & (!\contador_moedas_2|Add0~3\ & VCC))
-- \contador_moedas_2|Add0~5\ = CARRY((\contador_moedas_2|cnt\(3) & !\contador_moedas_2|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador_moedas_2|cnt\(3),
	datad => VCC,
	cin => \contador_moedas_2|Add0~3\,
	combout => \contador_moedas_2|Add0~4_combout\,
	cout => \contador_moedas_2|Add0~5\);

-- Location: FF_X32_Y30_N23
\contador_moedas_2|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dt_clk~inputclkctrl_outclk\,
	d => \contador_moedas_2|Add0~4_combout\,
	clrn => \contador_moedas_2|ALT_INV_cnt[4]~16_combout\,
	ena => \dt_en_cont_2~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_moedas_2|cnt\(3));

-- Location: LCCOMB_X32_Y30_N24
\contador_moedas_2|Add0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \contador_moedas_2|Add0~6_combout\ = (\contador_moedas_2|cnt\(4) & (!\contador_moedas_2|Add0~5\)) # (!\contador_moedas_2|cnt\(4) & ((\contador_moedas_2|Add0~5\) # (GND)))
-- \contador_moedas_2|Add0~7\ = CARRY((!\contador_moedas_2|Add0~5\) # (!\contador_moedas_2|cnt\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador_moedas_2|cnt\(4),
	datad => VCC,
	cin => \contador_moedas_2|Add0~5\,
	combout => \contador_moedas_2|Add0~6_combout\,
	cout => \contador_moedas_2|Add0~7\);

-- Location: FF_X32_Y30_N25
\contador_moedas_2|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dt_clk~inputclkctrl_outclk\,
	d => \contador_moedas_2|Add0~6_combout\,
	clrn => \contador_moedas_2|ALT_INV_cnt[4]~16_combout\,
	ena => \dt_en_cont_2~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_moedas_2|cnt\(4));

-- Location: LCCOMB_X32_Y30_N26
\contador_moedas_2|Add0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \contador_moedas_2|Add0~8_combout\ = (\contador_moedas_2|cnt[5]~6_combout\ & (\contador_moedas_2|Add0~7\ $ (GND))) # (!\contador_moedas_2|cnt[5]~6_combout\ & (!\contador_moedas_2|Add0~7\ & VCC))
-- \contador_moedas_2|Add0~9\ = CARRY((\contador_moedas_2|cnt[5]~6_combout\ & !\contador_moedas_2|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador_moedas_2|cnt[5]~6_combout\,
	datad => VCC,
	cin => \contador_moedas_2|Add0~7\,
	combout => \contador_moedas_2|Add0~8_combout\,
	cout => \contador_moedas_2|Add0~9\);

-- Location: LCCOMB_X32_Y30_N16
\contador_moedas_2|cnt[5]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \contador_moedas_2|cnt[5]~7_combout\ = \contador_moedas_2|cnt[0]~1_combout\ $ (\contador_moedas_2|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_moedas_2|cnt[0]~1_combout\,
	datac => \contador_moedas_2|Add0~8_combout\,
	combout => \contador_moedas_2|cnt[5]~7_combout\);

-- Location: LCCOMB_X32_Y30_N14
\contador_moedas_2|cnt[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \contador_moedas_2|cnt[0]~0_combout\ = (\contador_moedas_2|LessThan0~1_combout\) # (\contador_moedas_2|cnt[6]~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \contador_moedas_2|LessThan0~1_combout\,
	datad => \contador_moedas_2|cnt[6]~17_combout\,
	combout => \contador_moedas_2|cnt[0]~0_combout\);

-- Location: FF_X32_Y30_N17
\contador_moedas_2|cnt[5]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dt_clk~inputclkctrl_outclk\,
	d => \contador_moedas_2|cnt[5]~7_combout\,
	clrn => \contador_moedas_2|ALT_INV_cnt[0]~0_combout\,
	ena => \dt_en_cont_2~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_moedas_2|cnt[5]~_emulated_q\);

-- Location: LCCOMB_X32_Y30_N6
\contador_moedas_2|cnt[5]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \contador_moedas_2|cnt[5]~6_combout\ = (!\contador_moedas_2|cnt[6]~17_combout\ & ((\contador_moedas_2|LessThan0~1_combout\) # (\contador_moedas_2|cnt[0]~1_combout\ $ (\contador_moedas_2|cnt[5]~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_moedas_2|cnt[0]~1_combout\,
	datab => \contador_moedas_2|cnt[6]~17_combout\,
	datac => \contador_moedas_2|LessThan0~1_combout\,
	datad => \contador_moedas_2|cnt[5]~_emulated_q\,
	combout => \contador_moedas_2|cnt[5]~6_combout\);

-- Location: LCCOMB_X32_Y30_N28
\contador_moedas_2|Add0~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \contador_moedas_2|Add0~10_combout\ = \contador_moedas_2|cnt[6]~8_combout\ $ (\contador_moedas_2|Add0~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador_moedas_2|cnt[6]~8_combout\,
	cin => \contador_moedas_2|Add0~9\,
	combout => \contador_moedas_2|Add0~10_combout\);

-- Location: LCCOMB_X32_Y30_N4
\contador_moedas_2|cnt[6]~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \contador_moedas_2|cnt[6]~9_combout\ = \contador_moedas_2|cnt[0]~1_combout\ $ (\contador_moedas_2|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \contador_moedas_2|cnt[0]~1_combout\,
	datad => \contador_moedas_2|Add0~10_combout\,
	combout => \contador_moedas_2|cnt[6]~9_combout\);

-- Location: FF_X32_Y30_N5
\contador_moedas_2|cnt[6]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dt_clk~inputclkctrl_outclk\,
	d => \contador_moedas_2|cnt[6]~9_combout\,
	clrn => \contador_moedas_2|ALT_INV_cnt[0]~0_combout\,
	ena => \dt_en_cont_2~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_moedas_2|cnt[6]~_emulated_q\);

-- Location: LCCOMB_X31_Y30_N18
\contador_moedas_2|cnt[6]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \contador_moedas_2|cnt[6]~8_combout\ = (!\contador_moedas_2|cnt[6]~17_combout\ & ((\contador_moedas_2|LessThan0~1_combout\) # (\contador_moedas_2|cnt[0]~1_combout\ $ (\contador_moedas_2|cnt[6]~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_moedas_2|cnt[6]~17_combout\,
	datab => \contador_moedas_2|cnt[0]~1_combout\,
	datac => \contador_moedas_2|LessThan0~1_combout\,
	datad => \contador_moedas_2|cnt[6]~_emulated_q\,
	combout => \contador_moedas_2|cnt[6]~8_combout\);

-- Location: LCCOMB_X31_Y30_N22
\contador_moedas_2|LessThan0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \contador_moedas_2|LessThan0~0_combout\ = (\contador_moedas_2|cnt[5]~6_combout\ & ((\contador_moedas_2|cnt\(3)) # ((\contador_moedas_2|cnt\(2)) # (\contador_moedas_2|cnt\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_moedas_2|cnt[5]~6_combout\,
	datab => \contador_moedas_2|cnt\(3),
	datac => \contador_moedas_2|cnt\(2),
	datad => \contador_moedas_2|cnt\(4),
	combout => \contador_moedas_2|LessThan0~0_combout\);

-- Location: LCCOMB_X32_Y30_N8
\contador_moedas_2|LessThan0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \contador_moedas_2|LessThan0~1_combout\ = (\contador_moedas_2|cnt[6]~8_combout\ & \contador_moedas_2|LessThan0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \contador_moedas_2|cnt[6]~8_combout\,
	datad => \contador_moedas_2|LessThan0~0_combout\,
	combout => \contador_moedas_2|LessThan0~1_combout\);

-- Location: LCCOMB_X31_Y30_N28
\contador_moedas_2|cnt[0]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \contador_moedas_2|cnt[0]~1_combout\ = (!\contador_moedas_2|cnt[6]~17_combout\ & ((\contador_moedas_2|LessThan0~1_combout\) # (\contador_moedas_2|cnt[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_moedas_2|cnt[6]~17_combout\,
	datac => \contador_moedas_2|LessThan0~1_combout\,
	datad => \contador_moedas_2|cnt[0]~1_combout\,
	combout => \contador_moedas_2|cnt[0]~1_combout\);

-- Location: LCCOMB_X31_Y30_N24
\contador_moedas_2|cnt[0]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \contador_moedas_2|cnt[0]~3_combout\ = \contador_moedas_2|cnt[0]~2_combout\ $ (!\contador_moedas_2|cnt[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \contador_moedas_2|cnt[0]~2_combout\,
	datad => \contador_moedas_2|cnt[0]~1_combout\,
	combout => \contador_moedas_2|cnt[0]~3_combout\);

-- Location: FF_X31_Y30_N25
\contador_moedas_2|cnt[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dt_clk~inputclkctrl_outclk\,
	d => \contador_moedas_2|cnt[0]~3_combout\,
	clrn => \contador_moedas_2|ALT_INV_cnt[0]~0_combout\,
	ena => \dt_en_cont_2~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_moedas_2|cnt[0]~_emulated_q\);

-- Location: LCCOMB_X32_Y30_N0
\contador_moedas_2|cnt[0]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \contador_moedas_2|cnt[0]~2_combout\ = (!\contador_moedas_2|cnt[6]~17_combout\ & ((\contador_moedas_2|LessThan0~1_combout\) # (\contador_moedas_2|cnt[0]~1_combout\ $ (\contador_moedas_2|cnt[0]~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_moedas_2|cnt[0]~1_combout\,
	datab => \contador_moedas_2|cnt[0]~_emulated_q\,
	datac => \contador_moedas_2|LessThan0~1_combout\,
	datad => \contador_moedas_2|cnt[6]~17_combout\,
	combout => \contador_moedas_2|cnt[0]~2_combout\);

-- Location: LCCOMB_X30_Y30_N2
\contador_moedas_1|cnt[0]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \contador_moedas_1|cnt[0]~2_combout\ = (!\contador_moedas_1|cnt[6]~17_combout\ & ((\contador_moedas_1|LessThan0~1_combout\) # (\contador_moedas_1|cnt[0]~_emulated_q\ $ (\contador_moedas_1|cnt[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_moedas_1|cnt[0]~_emulated_q\,
	datab => \contador_moedas_1|cnt[0]~1_combout\,
	datac => \contador_moedas_1|cnt[6]~17_combout\,
	datad => \contador_moedas_1|LessThan0~1_combout\,
	combout => \contador_moedas_1|cnt[0]~2_combout\);

-- Location: LCCOMB_X30_Y30_N14
\contador_moedas_1|Add0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \contador_moedas_1|Add0~2_combout\ = (\contador_moedas_1|cnt\(2) & (!\contador_moedas_1|Add0~1\)) # (!\contador_moedas_1|cnt\(2) & ((\contador_moedas_1|Add0~1\) # (GND)))
-- \contador_moedas_1|Add0~3\ = CARRY((!\contador_moedas_1|Add0~1\) # (!\contador_moedas_1|cnt\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador_moedas_1|cnt\(2),
	datad => VCC,
	cin => \contador_moedas_1|Add0~1\,
	combout => \contador_moedas_1|Add0~2_combout\,
	cout => \contador_moedas_1|Add0~3\);

-- Location: LCCOMB_X30_Y30_N0
\contador_moedas_1|cnt[4]~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \contador_moedas_1|cnt[4]~16_combout\ = (\dt_clr~input_o\) # (\contador_moedas_1|LessThan0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dt_clr~input_o\,
	datad => \contador_moedas_1|LessThan0~1_combout\,
	combout => \contador_moedas_1|cnt[4]~16_combout\);

-- Location: IOIBUF_X29_Y31_N8
\dt_en_cont_1~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dt_en_cont_1,
	o => \dt_en_cont_1~input_o\);

-- Location: FF_X30_Y30_N15
\contador_moedas_1|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dt_clk~inputclkctrl_outclk\,
	d => \contador_moedas_1|Add0~2_combout\,
	clrn => \contador_moedas_1|ALT_INV_cnt[4]~16_combout\,
	ena => \dt_en_cont_1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_moedas_1|cnt\(2));

-- Location: LCCOMB_X30_Y30_N16
\contador_moedas_1|Add0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \contador_moedas_1|Add0~4_combout\ = (\contador_moedas_1|cnt\(3) & (\contador_moedas_1|Add0~3\ $ (GND))) # (!\contador_moedas_1|cnt\(3) & (!\contador_moedas_1|Add0~3\ & VCC))
-- \contador_moedas_1|Add0~5\ = CARRY((\contador_moedas_1|cnt\(3) & !\contador_moedas_1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador_moedas_1|cnt\(3),
	datad => VCC,
	cin => \contador_moedas_1|Add0~3\,
	combout => \contador_moedas_1|Add0~4_combout\,
	cout => \contador_moedas_1|Add0~5\);

-- Location: FF_X30_Y30_N17
\contador_moedas_1|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dt_clk~inputclkctrl_outclk\,
	d => \contador_moedas_1|Add0~4_combout\,
	clrn => \contador_moedas_1|ALT_INV_cnt[4]~16_combout\,
	ena => \dt_en_cont_1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_moedas_1|cnt\(3));

-- Location: LCCOMB_X30_Y30_N18
\contador_moedas_1|Add0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \contador_moedas_1|Add0~6_combout\ = (\contador_moedas_1|cnt\(4) & (!\contador_moedas_1|Add0~5\)) # (!\contador_moedas_1|cnt\(4) & ((\contador_moedas_1|Add0~5\) # (GND)))
-- \contador_moedas_1|Add0~7\ = CARRY((!\contador_moedas_1|Add0~5\) # (!\contador_moedas_1|cnt\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador_moedas_1|cnt\(4),
	datad => VCC,
	cin => \contador_moedas_1|Add0~5\,
	combout => \contador_moedas_1|Add0~6_combout\,
	cout => \contador_moedas_1|Add0~7\);

-- Location: FF_X30_Y30_N19
\contador_moedas_1|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dt_clk~inputclkctrl_outclk\,
	d => \contador_moedas_1|Add0~6_combout\,
	clrn => \contador_moedas_1|ALT_INV_cnt[4]~16_combout\,
	ena => \dt_en_cont_1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_moedas_1|cnt\(4));

-- Location: LCCOMB_X30_Y30_N20
\contador_moedas_1|Add0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \contador_moedas_1|Add0~8_combout\ = (\contador_moedas_1|cnt[5]~6_combout\ & (\contador_moedas_1|Add0~7\ $ (GND))) # (!\contador_moedas_1|cnt[5]~6_combout\ & (!\contador_moedas_1|Add0~7\ & VCC))
-- \contador_moedas_1|Add0~9\ = CARRY((\contador_moedas_1|cnt[5]~6_combout\ & !\contador_moedas_1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contador_moedas_1|cnt[5]~6_combout\,
	datad => VCC,
	cin => \contador_moedas_1|Add0~7\,
	combout => \contador_moedas_1|Add0~8_combout\,
	cout => \contador_moedas_1|Add0~9\);

-- Location: LCCOMB_X30_Y30_N22
\contador_moedas_1|Add0~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \contador_moedas_1|Add0~10_combout\ = \contador_moedas_1|cnt[6]~8_combout\ $ (\contador_moedas_1|Add0~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador_moedas_1|cnt[6]~8_combout\,
	cin => \contador_moedas_1|Add0~9\,
	combout => \contador_moedas_1|Add0~10_combout\);

-- Location: LCCOMB_X30_Y30_N6
\contador_moedas_1|cnt[6]~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \contador_moedas_1|cnt[6]~9_combout\ = \contador_moedas_1|cnt[0]~1_combout\ $ (\contador_moedas_1|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \contador_moedas_1|cnt[0]~1_combout\,
	datad => \contador_moedas_1|Add0~10_combout\,
	combout => \contador_moedas_1|cnt[6]~9_combout\);

-- Location: LCCOMB_X30_Y30_N28
\contador_moedas_1|cnt[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \contador_moedas_1|cnt[0]~0_combout\ = (\contador_moedas_1|cnt[6]~17_combout\) # (\contador_moedas_1|LessThan0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \contador_moedas_1|cnt[6]~17_combout\,
	datad => \contador_moedas_1|LessThan0~1_combout\,
	combout => \contador_moedas_1|cnt[0]~0_combout\);

-- Location: FF_X30_Y30_N7
\contador_moedas_1|cnt[6]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dt_clk~inputclkctrl_outclk\,
	d => \contador_moedas_1|cnt[6]~9_combout\,
	clrn => \contador_moedas_1|ALT_INV_cnt[0]~0_combout\,
	ena => \dt_en_cont_1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_moedas_1|cnt[6]~_emulated_q\);

-- Location: LCCOMB_X29_Y30_N20
\contador_moedas_1|cnt[6]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \contador_moedas_1|cnt[6]~8_combout\ = (!\contador_moedas_1|cnt[6]~17_combout\ & ((\contador_moedas_1|LessThan0~1_combout\) # (\contador_moedas_1|cnt[0]~1_combout\ $ (\contador_moedas_1|cnt[6]~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_moedas_1|cnt[0]~1_combout\,
	datab => \contador_moedas_1|cnt[6]~17_combout\,
	datac => \contador_moedas_1|LessThan0~1_combout\,
	datad => \contador_moedas_1|cnt[6]~_emulated_q\,
	combout => \contador_moedas_1|cnt[6]~8_combout\);

-- Location: LCCOMB_X30_Y30_N30
\contador_moedas_1|LessThan0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \contador_moedas_1|LessThan0~0_combout\ = (\contador_moedas_1|cnt[5]~6_combout\ & ((\contador_moedas_1|cnt\(4)) # ((\contador_moedas_1|cnt\(2)) # (\contador_moedas_1|cnt\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_moedas_1|cnt[5]~6_combout\,
	datab => \contador_moedas_1|cnt\(4),
	datac => \contador_moedas_1|cnt\(2),
	datad => \contador_moedas_1|cnt\(3),
	combout => \contador_moedas_1|LessThan0~0_combout\);

-- Location: LCCOMB_X30_Y30_N24
\contador_moedas_1|LessThan0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \contador_moedas_1|LessThan0~1_combout\ = (\contador_moedas_1|cnt[6]~8_combout\ & \contador_moedas_1|LessThan0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \contador_moedas_1|cnt[6]~8_combout\,
	datac => \contador_moedas_1|LessThan0~0_combout\,
	combout => \contador_moedas_1|LessThan0~1_combout\);

-- Location: LCCOMB_X30_Y30_N26
\contador_moedas_1|cnt[6]~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \contador_moedas_1|cnt[6]~17_combout\ = (!\contador_moedas_1|LessThan0~1_combout\ & \dt_clr~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \contador_moedas_1|LessThan0~1_combout\,
	datad => \dt_clr~input_o\,
	combout => \contador_moedas_1|cnt[6]~17_combout\);

-- Location: LCCOMB_X29_Y30_N18
\contador_moedas_1|cnt[0]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \contador_moedas_1|cnt[0]~1_combout\ = (!\contador_moedas_1|cnt[6]~17_combout\ & ((\contador_moedas_1|LessThan0~1_combout\) # (\contador_moedas_1|cnt[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_moedas_1|LessThan0~1_combout\,
	datab => \contador_moedas_1|cnt[6]~17_combout\,
	datad => \contador_moedas_1|cnt[0]~1_combout\,
	combout => \contador_moedas_1|cnt[0]~1_combout\);

-- Location: LCCOMB_X30_Y30_N10
\contador_moedas_1|cnt[1]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \contador_moedas_1|cnt[1]~4_combout\ = (!\contador_moedas_1|cnt[6]~17_combout\ & ((\contador_moedas_1|LessThan0~1_combout\) # (\contador_moedas_1|cnt[1]~_emulated_q\ $ (\contador_moedas_1|cnt[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_moedas_1|cnt[1]~_emulated_q\,
	datab => \contador_moedas_1|cnt[0]~1_combout\,
	datac => \contador_moedas_1|cnt[6]~17_combout\,
	datad => \contador_moedas_1|LessThan0~1_combout\,
	combout => \contador_moedas_1|cnt[1]~4_combout\);

-- Location: LCCOMB_X32_Y30_N12
\contador_moedas_2|cnt[1]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \contador_moedas_2|cnt[1]~5_combout\ = \contador_moedas_2|cnt[0]~1_combout\ $ (\contador_moedas_2|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_moedas_2|cnt[0]~1_combout\,
	datac => \contador_moedas_2|Add0~0_combout\,
	combout => \contador_moedas_2|cnt[1]~5_combout\);

-- Location: FF_X32_Y30_N13
\contador_moedas_2|cnt[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dt_clk~inputclkctrl_outclk\,
	d => \contador_moedas_2|cnt[1]~5_combout\,
	clrn => \contador_moedas_2|ALT_INV_cnt[0]~0_combout\,
	ena => \dt_en_cont_2~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_moedas_2|cnt[1]~_emulated_q\);

-- Location: LCCOMB_X32_Y30_N10
\contador_moedas_2|cnt[1]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \contador_moedas_2|cnt[1]~4_combout\ = (!\contador_moedas_2|cnt[6]~17_combout\ & ((\contador_moedas_2|LessThan0~1_combout\) # (\contador_moedas_2|cnt[0]~1_combout\ $ (\contador_moedas_2|cnt[1]~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_moedas_2|cnt[0]~1_combout\,
	datab => \contador_moedas_2|cnt[1]~_emulated_q\,
	datac => \contador_moedas_2|LessThan0~1_combout\,
	datad => \contador_moedas_2|cnt[6]~17_combout\,
	combout => \contador_moedas_2|cnt[1]~4_combout\);

-- Location: LCCOMB_X29_Y30_N30
\comparador_moedas|Equal0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comparador_moedas|Equal0~0_combout\ = (\contador_moedas_1|cnt[0]~2_combout\ & (\contador_moedas_2|cnt[0]~2_combout\ & (\contador_moedas_1|cnt[1]~4_combout\ $ (!\contador_moedas_2|cnt[1]~4_combout\)))) # (!\contador_moedas_1|cnt[0]~2_combout\ & 
-- (!\contador_moedas_2|cnt[0]~2_combout\ & (\contador_moedas_1|cnt[1]~4_combout\ $ (!\contador_moedas_2|cnt[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_moedas_1|cnt[0]~2_combout\,
	datab => \contador_moedas_2|cnt[0]~2_combout\,
	datac => \contador_moedas_1|cnt[1]~4_combout\,
	datad => \contador_moedas_2|cnt[1]~4_combout\,
	combout => \comparador_moedas|Equal0~0_combout\);

-- Location: LCCOMB_X29_Y30_N28
\comparador_moedas|Equal0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comparador_moedas|Equal0~1_combout\ = (\contador_moedas_1|cnt\(2) & (\contador_moedas_2|cnt\(2) & (\contador_moedas_1|cnt\(3) $ (!\contador_moedas_2|cnt\(3))))) # (!\contador_moedas_1|cnt\(2) & (!\contador_moedas_2|cnt\(2) & (\contador_moedas_1|cnt\(3) $ 
-- (!\contador_moedas_2|cnt\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_moedas_1|cnt\(2),
	datab => \contador_moedas_2|cnt\(2),
	datac => \contador_moedas_1|cnt\(3),
	datad => \contador_moedas_2|cnt\(3),
	combout => \comparador_moedas|Equal0~1_combout\);

-- Location: LCCOMB_X29_Y30_N24
\contador_moedas_1|cnt[5]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \contador_moedas_1|cnt[5]~7_combout\ = \contador_moedas_1|Add0~8_combout\ $ (\contador_moedas_1|cnt[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \contador_moedas_1|Add0~8_combout\,
	datad => \contador_moedas_1|cnt[0]~1_combout\,
	combout => \contador_moedas_1|cnt[5]~7_combout\);

-- Location: FF_X29_Y30_N25
\contador_moedas_1|cnt[5]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dt_clk~inputclkctrl_outclk\,
	d => \contador_moedas_1|cnt[5]~7_combout\,
	clrn => \contador_moedas_1|ALT_INV_cnt[0]~0_combout\,
	ena => \dt_en_cont_1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_moedas_1|cnt[5]~_emulated_q\);

-- Location: LCCOMB_X29_Y30_N14
\contador_moedas_1|cnt[5]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \contador_moedas_1|cnt[5]~6_combout\ = (!\contador_moedas_1|cnt[6]~17_combout\ & ((\contador_moedas_1|LessThan0~1_combout\) # (\contador_moedas_1|cnt[0]~1_combout\ $ (\contador_moedas_1|cnt[5]~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_moedas_1|cnt[0]~1_combout\,
	datab => \contador_moedas_1|cnt[6]~17_combout\,
	datac => \contador_moedas_1|LessThan0~1_combout\,
	datad => \contador_moedas_1|cnt[5]~_emulated_q\,
	combout => \contador_moedas_1|cnt[5]~6_combout\);

-- Location: LCCOMB_X29_Y30_N22
\comparador_moedas|Equal0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comparador_moedas|Equal0~2_combout\ = (\contador_moedas_2|cnt[5]~6_combout\ & (\contador_moedas_1|cnt[5]~6_combout\ & (\contador_moedas_2|cnt\(4) $ (!\contador_moedas_1|cnt\(4))))) # (!\contador_moedas_2|cnt[5]~6_combout\ & 
-- (!\contador_moedas_1|cnt[5]~6_combout\ & (\contador_moedas_2|cnt\(4) $ (!\contador_moedas_1|cnt\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_moedas_2|cnt[5]~6_combout\,
	datab => \contador_moedas_1|cnt[5]~6_combout\,
	datac => \contador_moedas_2|cnt\(4),
	datad => \contador_moedas_1|cnt\(4),
	combout => \comparador_moedas|Equal0~2_combout\);

-- Location: LCCOMB_X29_Y30_N16
\comparador_moedas|Equal0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comparador_moedas|Equal0~3_combout\ = \contador_moedas_1|cnt[6]~8_combout\ $ (\contador_moedas_2|cnt[6]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \contador_moedas_1|cnt[6]~8_combout\,
	datac => \contador_moedas_2|cnt[6]~8_combout\,
	combout => \comparador_moedas|Equal0~3_combout\);

-- Location: LCCOMB_X29_Y30_N26
\comparador_moedas|Equal0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comparador_moedas|Equal0~4_combout\ = (\comparador_moedas|Equal0~0_combout\ & (\comparador_moedas|Equal0~1_combout\ & (\comparador_moedas|Equal0~2_combout\ & !\comparador_moedas|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comparador_moedas|Equal0~0_combout\,
	datab => \comparador_moedas|Equal0~1_combout\,
	datac => \comparador_moedas|Equal0~2_combout\,
	datad => \comparador_moedas|Equal0~3_combout\,
	combout => \comparador_moedas|Equal0~4_combout\);

-- Location: LCCOMB_X29_Y30_N0
\comparador_moedas|LessThan0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comparador_moedas|LessThan0~1_cout\ = CARRY((\contador_moedas_1|cnt[0]~2_combout\ & !\contador_moedas_2|cnt[0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contador_moedas_1|cnt[0]~2_combout\,
	datab => \contador_moedas_2|cnt[0]~2_combout\,
	datad => VCC,
	cout => \comparador_moedas|LessThan0~1_cout\);

-- Location: LCCOMB_X29_Y30_N2
\comparador_moedas|LessThan0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comparador_moedas|LessThan0~3_cout\ = CARRY((\contador_moedas_1|cnt[1]~4_combout\ & (\contador_moedas_2|cnt[1]~4_combout\ & !\comparador_moedas|LessThan0~1_cout\)) # (!\contador_moedas_1|cnt[1]~4_combout\ & ((\contador_moedas_2|cnt[1]~4_combout\) # 
-- (!\comparador_moedas|LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contador_moedas_1|cnt[1]~4_combout\,
	datab => \contador_moedas_2|cnt[1]~4_combout\,
	datad => VCC,
	cin => \comparador_moedas|LessThan0~1_cout\,
	cout => \comparador_moedas|LessThan0~3_cout\);

-- Location: LCCOMB_X29_Y30_N4
\comparador_moedas|LessThan0~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comparador_moedas|LessThan0~5_cout\ = CARRY((\contador_moedas_1|cnt\(2) & ((!\comparador_moedas|LessThan0~3_cout\) # (!\contador_moedas_2|cnt\(2)))) # (!\contador_moedas_1|cnt\(2) & (!\contador_moedas_2|cnt\(2) & !\comparador_moedas|LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contador_moedas_1|cnt\(2),
	datab => \contador_moedas_2|cnt\(2),
	datad => VCC,
	cin => \comparador_moedas|LessThan0~3_cout\,
	cout => \comparador_moedas|LessThan0~5_cout\);

-- Location: LCCOMB_X29_Y30_N6
\comparador_moedas|LessThan0~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comparador_moedas|LessThan0~7_cout\ = CARRY((\contador_moedas_1|cnt\(3) & (\contador_moedas_2|cnt\(3) & !\comparador_moedas|LessThan0~5_cout\)) # (!\contador_moedas_1|cnt\(3) & ((\contador_moedas_2|cnt\(3)) # (!\comparador_moedas|LessThan0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contador_moedas_1|cnt\(3),
	datab => \contador_moedas_2|cnt\(3),
	datad => VCC,
	cin => \comparador_moedas|LessThan0~5_cout\,
	cout => \comparador_moedas|LessThan0~7_cout\);

-- Location: LCCOMB_X29_Y30_N8
\comparador_moedas|LessThan0~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comparador_moedas|LessThan0~9_cout\ = CARRY((\contador_moedas_2|cnt\(4) & (\contador_moedas_1|cnt\(4) & !\comparador_moedas|LessThan0~7_cout\)) # (!\contador_moedas_2|cnt\(4) & ((\contador_moedas_1|cnt\(4)) # (!\comparador_moedas|LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contador_moedas_2|cnt\(4),
	datab => \contador_moedas_1|cnt\(4),
	datad => VCC,
	cin => \comparador_moedas|LessThan0~7_cout\,
	cout => \comparador_moedas|LessThan0~9_cout\);

-- Location: LCCOMB_X29_Y30_N10
\comparador_moedas|LessThan0~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comparador_moedas|LessThan0~11_cout\ = CARRY((\contador_moedas_2|cnt[5]~6_combout\ & ((!\comparador_moedas|LessThan0~9_cout\) # (!\contador_moedas_1|cnt[5]~6_combout\))) # (!\contador_moedas_2|cnt[5]~6_combout\ & (!\contador_moedas_1|cnt[5]~6_combout\ & 
-- !\comparador_moedas|LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contador_moedas_2|cnt[5]~6_combout\,
	datab => \contador_moedas_1|cnt[5]~6_combout\,
	datad => VCC,
	cin => \comparador_moedas|LessThan0~9_cout\,
	cout => \comparador_moedas|LessThan0~11_cout\);

-- Location: LCCOMB_X29_Y30_N12
\comparador_moedas|LessThan0~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comparador_moedas|LessThan0~12_combout\ = (\contador_moedas_2|cnt[6]~8_combout\ & (\contador_moedas_1|cnt[6]~8_combout\ & !\comparador_moedas|LessThan0~11_cout\)) # (!\contador_moedas_2|cnt[6]~8_combout\ & ((\contador_moedas_1|cnt[6]~8_combout\) # 
-- (!\comparador_moedas|LessThan0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contador_moedas_2|cnt[6]~8_combout\,
	datab => \contador_moedas_1|cnt[6]~8_combout\,
	cin => \comparador_moedas|LessThan0~11_cout\,
	combout => \comparador_moedas|LessThan0~12_combout\);

-- Location: LCCOMB_X31_Y30_N4
\comparador_moedas|LessThan1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comparador_moedas|LessThan1~1_cout\ = CARRY((!\contador_moedas_1|cnt[0]~2_combout\ & \contador_moedas_2|cnt[0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contador_moedas_1|cnt[0]~2_combout\,
	datab => \contador_moedas_2|cnt[0]~2_combout\,
	datad => VCC,
	cout => \comparador_moedas|LessThan1~1_cout\);

-- Location: LCCOMB_X31_Y30_N6
\comparador_moedas|LessThan1~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comparador_moedas|LessThan1~3_cout\ = CARRY((\contador_moedas_2|cnt[1]~4_combout\ & (\contador_moedas_1|cnt[1]~4_combout\ & !\comparador_moedas|LessThan1~1_cout\)) # (!\contador_moedas_2|cnt[1]~4_combout\ & ((\contador_moedas_1|cnt[1]~4_combout\) # 
-- (!\comparador_moedas|LessThan1~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contador_moedas_2|cnt[1]~4_combout\,
	datab => \contador_moedas_1|cnt[1]~4_combout\,
	datad => VCC,
	cin => \comparador_moedas|LessThan1~1_cout\,
	cout => \comparador_moedas|LessThan1~3_cout\);

-- Location: LCCOMB_X31_Y30_N8
\comparador_moedas|LessThan1~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comparador_moedas|LessThan1~5_cout\ = CARRY((\contador_moedas_2|cnt\(2) & ((!\comparador_moedas|LessThan1~3_cout\) # (!\contador_moedas_1|cnt\(2)))) # (!\contador_moedas_2|cnt\(2) & (!\contador_moedas_1|cnt\(2) & !\comparador_moedas|LessThan1~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contador_moedas_2|cnt\(2),
	datab => \contador_moedas_1|cnt\(2),
	datad => VCC,
	cin => \comparador_moedas|LessThan1~3_cout\,
	cout => \comparador_moedas|LessThan1~5_cout\);

-- Location: LCCOMB_X31_Y30_N10
\comparador_moedas|LessThan1~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comparador_moedas|LessThan1~7_cout\ = CARRY((\contador_moedas_1|cnt\(3) & ((!\comparador_moedas|LessThan1~5_cout\) # (!\contador_moedas_2|cnt\(3)))) # (!\contador_moedas_1|cnt\(3) & (!\contador_moedas_2|cnt\(3) & !\comparador_moedas|LessThan1~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contador_moedas_1|cnt\(3),
	datab => \contador_moedas_2|cnt\(3),
	datad => VCC,
	cin => \comparador_moedas|LessThan1~5_cout\,
	cout => \comparador_moedas|LessThan1~7_cout\);

-- Location: LCCOMB_X31_Y30_N12
\comparador_moedas|LessThan1~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comparador_moedas|LessThan1~9_cout\ = CARRY((\contador_moedas_1|cnt\(4) & (\contador_moedas_2|cnt\(4) & !\comparador_moedas|LessThan1~7_cout\)) # (!\contador_moedas_1|cnt\(4) & ((\contador_moedas_2|cnt\(4)) # (!\comparador_moedas|LessThan1~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contador_moedas_1|cnt\(4),
	datab => \contador_moedas_2|cnt\(4),
	datad => VCC,
	cin => \comparador_moedas|LessThan1~7_cout\,
	cout => \comparador_moedas|LessThan1~9_cout\);

-- Location: LCCOMB_X31_Y30_N14
\comparador_moedas|LessThan1~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comparador_moedas|LessThan1~11_cout\ = CARRY((\contador_moedas_2|cnt[5]~6_combout\ & (\contador_moedas_1|cnt[5]~6_combout\ & !\comparador_moedas|LessThan1~9_cout\)) # (!\contador_moedas_2|cnt[5]~6_combout\ & ((\contador_moedas_1|cnt[5]~6_combout\) # 
-- (!\comparador_moedas|LessThan1~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contador_moedas_2|cnt[5]~6_combout\,
	datab => \contador_moedas_1|cnt[5]~6_combout\,
	datad => VCC,
	cin => \comparador_moedas|LessThan1~9_cout\,
	cout => \comparador_moedas|LessThan1~11_cout\);

-- Location: LCCOMB_X31_Y30_N16
\comparador_moedas|LessThan1~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comparador_moedas|LessThan1~12_combout\ = (\contador_moedas_1|cnt[6]~8_combout\ & (!\comparador_moedas|LessThan1~11_cout\ & \contador_moedas_2|cnt[6]~8_combout\)) # (!\contador_moedas_1|cnt[6]~8_combout\ & ((\contador_moedas_2|cnt[6]~8_combout\) # 
-- (!\comparador_moedas|LessThan1~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contador_moedas_1|cnt[6]~8_combout\,
	datad => \contador_moedas_2|cnt[6]~8_combout\,
	cin => \comparador_moedas|LessThan1~11_cout\,
	combout => \comparador_moedas|LessThan1~12_combout\);

-- Location: LCCOMB_X31_Y27_N16
\lcd|datapath|timer|i[4]~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lcd|datapath|timer|i[4]~15_combout\ = (\lcd|datapath|timer|i\(4) & (!\lcd|datapath|timer|i[3]~14\)) # (!\lcd|datapath|timer|i\(4) & ((\lcd|datapath|timer|i[3]~14\) # (GND)))
-- \lcd|datapath|timer|i[4]~16\ = CARRY((!\lcd|datapath|timer|i[3]~14\) # (!\lcd|datapath|timer|i\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lcd|datapath|timer|i\(4),
	datad => VCC,
	cin => \lcd|datapath|timer|i[3]~14\,
	combout => \lcd|datapath|timer|i[4]~15_combout\,
	cout => \lcd|datapath|timer|i[4]~16\);

-- Location: LCCOMB_X31_Y27_N18
\lcd|datapath|timer|i[5]~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lcd|datapath|timer|i[5]~17_combout\ = (\lcd|datapath|timer|i\(5) & (\lcd|datapath|timer|i[4]~16\ $ (GND))) # (!\lcd|datapath|timer|i\(5) & (!\lcd|datapath|timer|i[4]~16\ & VCC))
-- \lcd|datapath|timer|i[5]~18\ = CARRY((\lcd|datapath|timer|i\(5) & !\lcd|datapath|timer|i[4]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lcd|datapath|timer|i\(5),
	datad => VCC,
	cin => \lcd|datapath|timer|i[4]~16\,
	combout => \lcd|datapath|timer|i[5]~17_combout\,
	cout => \lcd|datapath|timer|i[5]~18\);

-- Location: LCCOMB_X30_Y27_N30
\lcd|controladora|atual_estado.s0~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lcd|controladora|atual_estado.s0~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \lcd|controladora|atual_estado.s0~feeder_combout\);

-- Location: FF_X30_Y27_N31
\lcd|controladora|atual_estado.s0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div_freq_10kHz|tmp~clkctrl_outclk\,
	d => \lcd|controladora|atual_estado.s0~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|controladora|atual_estado.s0~q\);

-- Location: LCCOMB_X30_Y27_N8
\lcd|controladora|WideOr2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lcd|controladora|WideOr2~combout\ = (\lcd|controladora|atual_estado.s14~q\) # ((\lcd|controladora|atual_estado.s10~q\) # (!\lcd|controladora|atual_estado.s0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|controladora|atual_estado.s14~q\,
	datac => \lcd|controladora|atual_estado.s10~q\,
	datad => \lcd|controladora|atual_estado.s0~q\,
	combout => \lcd|controladora|WideOr2~combout\);

-- Location: LCCOMB_X32_Y27_N28
\lcd|controladora|Selector2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lcd|controladora|Selector2~0_combout\ = (\lcd|controladora|atual_estado.s4~q\) # ((\lcd|controladora|atual_estado.s5~q\ & !\lcd|datapath|comp_t2|LessThan0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|controladora|atual_estado.s4~q\,
	datac => \lcd|controladora|atual_estado.s5~q\,
	datad => \lcd|datapath|comp_t2|LessThan0~2_combout\,
	combout => \lcd|controladora|Selector2~0_combout\);

-- Location: FF_X32_Y27_N29
\lcd|controladora|atual_estado.s5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div_freq_10kHz|tmp~clkctrl_outclk\,
	d => \lcd|controladora|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|controladora|atual_estado.s5~q\);

-- Location: LCCOMB_X31_Y27_N28
\lcd|datapath|comp_t1000|LessThan0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lcd|datapath|comp_t1000|LessThan0~0_combout\ = (\lcd|datapath|timer|i\(5) & (\lcd|datapath|timer|i\(6) & ((\lcd|datapath|timer|i\(4)) # (\lcd|datapath|timer|i\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|datapath|timer|i\(5),
	datab => \lcd|datapath|timer|i\(4),
	datac => \lcd|datapath|timer|i\(3),
	datad => \lcd|datapath|timer|i\(6),
	combout => \lcd|datapath|comp_t1000|LessThan0~0_combout\);

-- Location: LCCOMB_X31_Y27_N22
\lcd|datapath|timer|i[7]~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lcd|datapath|timer|i[7]~21_combout\ = (\lcd|datapath|timer|i\(7) & (\lcd|datapath|timer|i[6]~20\ $ (GND))) # (!\lcd|datapath|timer|i\(7) & (!\lcd|datapath|timer|i[6]~20\ & VCC))
-- \lcd|datapath|timer|i[7]~22\ = CARRY((\lcd|datapath|timer|i\(7) & !\lcd|datapath|timer|i[6]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|datapath|timer|i\(7),
	datad => VCC,
	cin => \lcd|datapath|timer|i[6]~20\,
	combout => \lcd|datapath|timer|i[7]~21_combout\,
	cout => \lcd|datapath|timer|i[7]~22\);

-- Location: FF_X31_Y27_N23
\lcd|datapath|timer|i[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div_freq_10kHz|tmp~clkctrl_outclk\,
	d => \lcd|datapath|timer|i[7]~21_combout\,
	clrn => \lcd|controladora|ALT_INV_WideOr2~combout\,
	ena => \lcd|datapath|dp_E~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|datapath|timer|i\(7));

-- Location: LCCOMB_X31_Y27_N8
\lcd|datapath|comp_t1000|LessThan0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lcd|datapath|comp_t1000|LessThan0~1_combout\ = (\lcd|datapath|timer|i\(9) & (\lcd|datapath|comp_t1000|LessThan0~0_combout\ & (\lcd|datapath|timer|i\(7) & \lcd|datapath|timer|i\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|datapath|timer|i\(9),
	datab => \lcd|datapath|comp_t1000|LessThan0~0_combout\,
	datac => \lcd|datapath|timer|i\(7),
	datad => \lcd|datapath|timer|i\(8),
	combout => \lcd|datapath|comp_t1000|LessThan0~1_combout\);

-- Location: LCCOMB_X32_Y27_N4
\lcd|controladora|Selector0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lcd|controladora|Selector0~0_combout\ = ((\lcd|controladora|atual_estado.s1~q\ & !\lcd|datapath|comp_t1000|LessThan0~1_combout\)) # (!\lcd|controladora|atual_estado.s0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd|controladora|atual_estado.s0~q\,
	datac => \lcd|controladora|atual_estado.s1~q\,
	datad => \lcd|datapath|comp_t1000|LessThan0~1_combout\,
	combout => \lcd|controladora|Selector0~0_combout\);

-- Location: FF_X32_Y27_N5
\lcd|controladora|atual_estado.s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div_freq_10kHz|tmp~clkctrl_outclk\,
	d => \lcd|controladora|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|controladora|atual_estado.s1~q\);

-- Location: LCCOMB_X32_Y27_N24
\lcd|datapath|dp_E~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lcd|datapath|dp_E~0_combout\ = (!\lcd|controladora|atual_estado.s3~q\ & (!\lcd|controladora|atual_estado.s5~q\ & (!\lcd|controladora|atual_estado.s1~q\ & !\lcd|controladora|atual_estado.s7~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|controladora|atual_estado.s3~q\,
	datab => \lcd|controladora|atual_estado.s5~q\,
	datac => \lcd|controladora|atual_estado.s1~q\,
	datad => \lcd|controladora|atual_estado.s7~q\,
	combout => \lcd|datapath|dp_E~0_combout\);

-- Location: LCCOMB_X31_Y27_N4
\lcd|datapath|dp_E~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lcd|datapath|dp_E~1_combout\ = (\lcd|controladora|atual_estado.s16~q\) # ((\lcd|controladora|atual_estado.s11~q\) # (!\lcd|datapath|dp_E~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|controladora|atual_estado.s16~q\,
	datac => \lcd|controladora|atual_estado.s11~q\,
	datad => \lcd|datapath|dp_E~0_combout\,
	combout => \lcd|datapath|dp_E~1_combout\);

-- Location: FF_X31_Y27_N19
\lcd|datapath|timer|i[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div_freq_10kHz|tmp~clkctrl_outclk\,
	d => \lcd|datapath|timer|i[5]~17_combout\,
	clrn => \lcd|controladora|ALT_INV_WideOr2~combout\,
	ena => \lcd|datapath|dp_E~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|datapath|timer|i\(5));

-- Location: LCCOMB_X31_Y27_N20
\lcd|datapath|timer|i[6]~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lcd|datapath|timer|i[6]~19_combout\ = (\lcd|datapath|timer|i\(6) & (!\lcd|datapath|timer|i[5]~18\)) # (!\lcd|datapath|timer|i\(6) & ((\lcd|datapath|timer|i[5]~18\) # (GND)))
-- \lcd|datapath|timer|i[6]~20\ = CARRY((!\lcd|datapath|timer|i[5]~18\) # (!\lcd|datapath|timer|i\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lcd|datapath|timer|i\(6),
	datad => VCC,
	cin => \lcd|datapath|timer|i[5]~18\,
	combout => \lcd|datapath|timer|i[6]~19_combout\,
	cout => \lcd|datapath|timer|i[6]~20\);

-- Location: FF_X31_Y27_N21
\lcd|datapath|timer|i[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div_freq_10kHz|tmp~clkctrl_outclk\,
	d => \lcd|datapath|timer|i[6]~19_combout\,
	clrn => \lcd|controladora|ALT_INV_WideOr2~combout\,
	ena => \lcd|datapath|dp_E~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|datapath|timer|i\(6));

-- Location: LCCOMB_X31_Y27_N24
\lcd|datapath|timer|i[8]~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lcd|datapath|timer|i[8]~23_combout\ = (\lcd|datapath|timer|i\(8) & (!\lcd|datapath|timer|i[7]~22\)) # (!\lcd|datapath|timer|i\(8) & ((\lcd|datapath|timer|i[7]~22\) # (GND)))
-- \lcd|datapath|timer|i[8]~24\ = CARRY((!\lcd|datapath|timer|i[7]~22\) # (!\lcd|datapath|timer|i\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lcd|datapath|timer|i\(8),
	datad => VCC,
	cin => \lcd|datapath|timer|i[7]~22\,
	combout => \lcd|datapath|timer|i[8]~23_combout\,
	cout => \lcd|datapath|timer|i[8]~24\);

-- Location: FF_X31_Y27_N25
\lcd|datapath|timer|i[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div_freq_10kHz|tmp~clkctrl_outclk\,
	d => \lcd|datapath|timer|i[8]~23_combout\,
	clrn => \lcd|controladora|ALT_INV_WideOr2~combout\,
	ena => \lcd|datapath|dp_E~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|datapath|timer|i\(8));

-- Location: LCCOMB_X31_Y27_N30
\lcd|datapath|comp_t2|LessThan0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lcd|datapath|comp_t2|LessThan0~0_combout\ = (!\lcd|datapath|timer|i\(9) & (!\lcd|datapath|timer|i\(8) & (!\lcd|datapath|timer|i\(7) & !\lcd|datapath|timer|i\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|datapath|timer|i\(9),
	datab => \lcd|datapath|timer|i\(8),
	datac => \lcd|datapath|timer|i\(7),
	datad => \lcd|datapath|timer|i\(6),
	combout => \lcd|datapath|comp_t2|LessThan0~0_combout\);

-- Location: LCCOMB_X31_Y27_N6
\lcd|datapath|comp_t2|LessThan0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lcd|datapath|comp_t2|LessThan0~1_combout\ = (!\lcd|datapath|timer|i\(2) & (!\lcd|datapath|timer|i\(3) & !\lcd|datapath|timer|i\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|datapath|timer|i\(2),
	datac => \lcd|datapath|timer|i\(3),
	datad => \lcd|datapath|timer|i\(4),
	combout => \lcd|datapath|comp_t2|LessThan0~1_combout\);

-- Location: LCCOMB_X32_Y27_N10
\lcd|datapath|comp_t2|LessThan0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lcd|datapath|comp_t2|LessThan0~2_combout\ = (\lcd|datapath|timer|i\(1)) # (((\lcd|datapath|timer|i\(5)) # (!\lcd|datapath|comp_t2|LessThan0~1_combout\)) # (!\lcd|datapath|comp_t2|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|datapath|timer|i\(1),
	datab => \lcd|datapath|comp_t2|LessThan0~0_combout\,
	datac => \lcd|datapath|comp_t2|LessThan0~1_combout\,
	datad => \lcd|datapath|timer|i\(5),
	combout => \lcd|datapath|comp_t2|LessThan0~2_combout\);

-- Location: LCCOMB_X32_Y27_N2
\lcd|controladora|Selector3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lcd|controladora|Selector3~0_combout\ = (\lcd|controladora|atual_estado.s6~q\) # ((\lcd|controladora|atual_estado.s7~q\ & !\lcd|datapath|comp_t2|LessThan0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|controladora|atual_estado.s6~q\,
	datac => \lcd|controladora|atual_estado.s7~q\,
	datad => \lcd|datapath|comp_t2|LessThan0~2_combout\,
	combout => \lcd|controladora|Selector3~0_combout\);

-- Location: FF_X32_Y27_N3
\lcd|controladora|atual_estado.s7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div_freq_10kHz|tmp~clkctrl_outclk\,
	d => \lcd|controladora|Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|controladora|atual_estado.s7~q\);

-- Location: LCCOMB_X32_Y27_N0
\lcd|controladora|prox_estado.s8~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lcd|controladora|prox_estado.s8~0_combout\ = (\lcd|controladora|atual_estado.s7~q\ & \lcd|datapath|comp_t2|LessThan0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd|controladora|atual_estado.s7~q\,
	datad => \lcd|datapath|comp_t2|LessThan0~2_combout\,
	combout => \lcd|controladora|prox_estado.s8~0_combout\);

-- Location: FF_X32_Y27_N1
\lcd|controladora|atual_estado.s8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div_freq_10kHz|tmp~clkctrl_outclk\,
	d => \lcd|controladora|prox_estado.s8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|controladora|atual_estado.s8~q\);

-- Location: FF_X30_Y27_N15
\lcd|controladora|atual_estado.s9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div_freq_10kHz|tmp~clkctrl_outclk\,
	asdata => \lcd|controladora|atual_estado.s8~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|controladora|atual_estado.s9~q\);

-- Location: FF_X30_Y27_N11
\lcd|controladora|atual_estado.s10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div_freq_10kHz|tmp~clkctrl_outclk\,
	asdata => \lcd|controladora|atual_estado.s9~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|controladora|atual_estado.s10~q\);

-- Location: LCCOMB_X29_Y27_N6
\lcd|controladora|Selector4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lcd|controladora|Selector4~0_combout\ = (\lcd|controladora|atual_estado.s10~q\) # ((!\lcd|datapath|comp_t40|LessThan0~0_combout\ & \lcd|controladora|atual_estado.s11~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd|datapath|comp_t40|LessThan0~0_combout\,
	datac => \lcd|controladora|atual_estado.s11~q\,
	datad => \lcd|controladora|atual_estado.s10~q\,
	combout => \lcd|controladora|Selector4~0_combout\);

-- Location: FF_X29_Y27_N7
\lcd|controladora|atual_estado.s11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div_freq_10kHz|tmp~clkctrl_outclk\,
	d => \lcd|controladora|Selector4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|controladora|atual_estado.s11~q\);

-- Location: LCCOMB_X31_Y27_N2
\lcd|datapath|timer|i[0]~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lcd|datapath|timer|i[0]~27_combout\ = \lcd|datapath|timer|i\(0) $ (((\lcd|controladora|atual_estado.s16~q\) # ((\lcd|controladora|atual_estado.s11~q\) # (!\lcd|datapath|dp_E~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|controladora|atual_estado.s16~q\,
	datab => \lcd|controladora|atual_estado.s11~q\,
	datac => \lcd|datapath|timer|i\(0),
	datad => \lcd|datapath|dp_E~0_combout\,
	combout => \lcd|datapath|timer|i[0]~27_combout\);

-- Location: FF_X31_Y27_N3
\lcd|datapath|timer|i[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div_freq_10kHz|tmp~clkctrl_outclk\,
	d => \lcd|datapath|timer|i[0]~27_combout\,
	clrn => \lcd|controladora|ALT_INV_WideOr2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|datapath|timer|i\(0));

-- Location: LCCOMB_X31_Y27_N14
\lcd|datapath|timer|i[3]~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lcd|datapath|timer|i[3]~13_combout\ = (\lcd|datapath|timer|i\(3) & (\lcd|datapath|timer|i[2]~12\ $ (GND))) # (!\lcd|datapath|timer|i\(3) & (!\lcd|datapath|timer|i[2]~12\ & VCC))
-- \lcd|datapath|timer|i[3]~14\ = CARRY((\lcd|datapath|timer|i\(3) & !\lcd|datapath|timer|i[2]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lcd|datapath|timer|i\(3),
	datad => VCC,
	cin => \lcd|datapath|timer|i[2]~12\,
	combout => \lcd|datapath|timer|i[3]~13_combout\,
	cout => \lcd|datapath|timer|i[3]~14\);

-- Location: FF_X31_Y27_N15
\lcd|datapath|timer|i[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div_freq_10kHz|tmp~clkctrl_outclk\,
	d => \lcd|datapath|timer|i[3]~13_combout\,
	clrn => \lcd|controladora|ALT_INV_WideOr2~combout\,
	ena => \lcd|datapath|dp_E~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|datapath|timer|i\(3));

-- Location: FF_X31_Y27_N17
\lcd|datapath|timer|i[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div_freq_10kHz|tmp~clkctrl_outclk\,
	d => \lcd|datapath|timer|i[4]~15_combout\,
	clrn => \lcd|controladora|ALT_INV_WideOr2~combout\,
	ena => \lcd|datapath|dp_E~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|datapath|timer|i\(4));

-- Location: LCCOMB_X31_Y27_N0
\lcd|datapath|comp_t40|LessThan0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lcd|datapath|comp_t40|LessThan0~0_combout\ = ((\lcd|datapath|timer|i\(5) & ((\lcd|datapath|timer|i\(4)) # (\lcd|datapath|timer|i\(3))))) # (!\lcd|datapath|comp_t2|LessThan0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|datapath|comp_t2|LessThan0~0_combout\,
	datab => \lcd|datapath|timer|i\(4),
	datac => \lcd|datapath|timer|i\(3),
	datad => \lcd|datapath|timer|i\(5),
	combout => \lcd|datapath|comp_t40|LessThan0~0_combout\);

-- Location: LCCOMB_X29_Y27_N18
\lcd|controladora|prox_estado.s12~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lcd|controladora|prox_estado.s12~0_combout\ = (\lcd|controladora|atual_estado.s11~q\ & \lcd|datapath|comp_t40|LessThan0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|controladora|atual_estado.s11~q\,
	datac => \lcd|datapath|comp_t40|LessThan0~0_combout\,
	combout => \lcd|controladora|prox_estado.s12~0_combout\);

-- Location: FF_X29_Y27_N19
\lcd|controladora|atual_estado.s12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div_freq_10kHz|tmp~clkctrl_outclk\,
	d => \lcd|controladora|prox_estado.s12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|controladora|atual_estado.s12~q\);

-- Location: LCCOMB_X29_Y27_N20
\lcd|controladora|atual_estado.s13~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lcd|controladora|atual_estado.s13~feeder_combout\ = \lcd|controladora|atual_estado.s12~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lcd|controladora|atual_estado.s12~q\,
	combout => \lcd|controladora|atual_estado.s13~feeder_combout\);

-- Location: FF_X29_Y27_N21
\lcd|controladora|atual_estado.s13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div_freq_10kHz|tmp~clkctrl_outclk\,
	d => \lcd|controladora|atual_estado.s13~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|controladora|atual_estado.s13~q\);

-- Location: IOIBUF_X33_Y11_N8
\dt_cmd[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dt_cmd(2),
	o => \dt_cmd[2]~input_o\);

-- Location: IOIBUF_X16_Y31_N8
\dt_cmd[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dt_cmd(0),
	o => \dt_cmd[0]~input_o\);

-- Location: IOIBUF_X16_Y31_N1
\dt_render~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dt_render,
	o => \dt_render~input_o\);

-- Location: LCCOMB_X30_Y27_N6
\lcd|controladora|prox_estado.s15~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lcd|controladora|prox_estado.s15~0_combout\ = (\lcd|controladora|atual_estado.s14~q\ & \dt_render~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd|controladora|atual_estado.s14~q\,
	datac => \dt_render~input_o\,
	combout => \lcd|controladora|prox_estado.s15~0_combout\);

-- Location: FF_X30_Y27_N7
\lcd|controladora|atual_estado.s15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div_freq_10kHz|tmp~clkctrl_outclk\,
	d => \lcd|controladora|prox_estado.s15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|controladora|atual_estado.s15~q\);

-- Location: LCCOMB_X30_Y27_N2
\lcd|controladora|Selector6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lcd|controladora|Selector6~0_combout\ = (\lcd|controladora|atual_estado.s15~q\) # ((!\lcd|datapath|comp_t40|LessThan0~0_combout\ & \lcd|controladora|atual_estado.s16~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd|datapath|comp_t40|LessThan0~0_combout\,
	datac => \lcd|controladora|atual_estado.s16~q\,
	datad => \lcd|controladora|atual_estado.s15~q\,
	combout => \lcd|controladora|Selector6~0_combout\);

-- Location: FF_X30_Y27_N3
\lcd|controladora|atual_estado.s16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div_freq_10kHz|tmp~clkctrl_outclk\,
	d => \lcd|controladora|Selector6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|controladora|atual_estado.s16~q\);

-- Location: LCCOMB_X30_Y27_N18
\lcd|controladora|prox_estado.s17~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lcd|controladora|prox_estado.s17~0_combout\ = (\lcd|datapath|comp_t40|LessThan0~0_combout\ & \lcd|controladora|atual_estado.s16~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lcd|datapath|comp_t40|LessThan0~0_combout\,
	datad => \lcd|controladora|atual_estado.s16~q\,
	combout => \lcd|controladora|prox_estado.s17~0_combout\);

-- Location: FF_X30_Y27_N19
\lcd|controladora|atual_estado.s17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div_freq_10kHz|tmp~clkctrl_outclk\,
	d => \lcd|controladora|prox_estado.s17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|controladora|atual_estado.s17~q\);

-- Location: LCCOMB_X30_Y26_N8
\lcd|controladora|Selector12~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lcd|controladora|Selector12~0_combout\ = (\lcd|controladora|atual_estado.s17~q\ & ((\dt_cmd[1]~input_o\) # ((\dt_cmd[0]~input_o\) # (\dt_cmd[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dt_cmd[1]~input_o\,
	datab => \dt_cmd[0]~input_o\,
	datac => \lcd|controladora|atual_estado.s17~q\,
	datad => \dt_cmd[2]~input_o\,
	combout => \lcd|controladora|Selector12~0_combout\);

-- Location: FF_X30_Y26_N9
\lcd|controladora|atual_estado.s37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div_freq_10kHz|tmp~clkctrl_outclk\,
	d => \lcd|controladora|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|controladora|atual_estado.s37~q\);

-- Location: IOIBUF_X33_Y12_N1
\dt_cmd[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dt_cmd(1),
	o => \dt_cmd[1]~input_o\);

-- Location: LCCOMB_X30_Y26_N2
\lcd|controladora|prox_estado.s38~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lcd|controladora|prox_estado.s38~0_combout\ = (\dt_cmd[2]~input_o\ & (\lcd|controladora|atual_estado.s37~q\ & !\dt_cmd[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dt_cmd[2]~input_o\,
	datac => \lcd|controladora|atual_estado.s37~q\,
	datad => \dt_cmd[1]~input_o\,
	combout => \lcd|controladora|prox_estado.s38~0_combout\);

-- Location: FF_X30_Y26_N3
\lcd|controladora|atual_estado.s38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div_freq_10kHz|tmp~clkctrl_outclk\,
	d => \lcd|controladora|prox_estado.s38~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|controladora|atual_estado.s38~q\);

-- Location: LCCOMB_X29_Y26_N6
\lcd|controladora|atual_estado.s39~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lcd|controladora|atual_estado.s39~feeder_combout\ = \lcd|controladora|atual_estado.s38~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lcd|controladora|atual_estado.s38~q\,
	combout => \lcd|controladora|atual_estado.s39~feeder_combout\);

-- Location: FF_X29_Y26_N7
\lcd|controladora|atual_estado.s39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div_freq_10kHz|tmp~clkctrl_outclk\,
	d => \lcd|controladora|atual_estado.s39~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|controladora|atual_estado.s39~q\);

-- Location: LCCOMB_X29_Y26_N2
\lcd|controladora|prox_estado.s40~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lcd|controladora|prox_estado.s40~0_combout\ = (!\dt_cmd[0]~input_o\ & \lcd|controladora|atual_estado.s39~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dt_cmd[0]~input_o\,
	datad => \lcd|controladora|atual_estado.s39~q\,
	combout => \lcd|controladora|prox_estado.s40~0_combout\);

-- Location: FF_X29_Y26_N3
\lcd|controladora|atual_estado.s40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div_freq_10kHz|tmp~clkctrl_outclk\,
	d => \lcd|controladora|prox_estado.s40~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|controladora|atual_estado.s40~q\);

-- Location: LCCOMB_X29_Y26_N8
\lcd|controladora|prox_estado.s42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lcd|controladora|prox_estado.s42~combout\ = (\lcd|controladora|atual_estado.s41~q\) # (\lcd|controladora|atual_estado.s40~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|controladora|atual_estado.s41~q\,
	datad => \lcd|controladora|atual_estado.s40~q\,
	combout => \lcd|controladora|prox_estado.s42~combout\);

-- Location: FF_X29_Y26_N9
\lcd|controladora|atual_estado.s42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div_freq_10kHz|tmp~clkctrl_outclk\,
	d => \lcd|controladora|prox_estado.s42~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|controladora|atual_estado.s42~q\);

-- Location: LCCOMB_X30_Y26_N18
\lcd|controladora|prox_estado.s43~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lcd|controladora|prox_estado.s43~0_combout\ = (\dt_cmd[2]~input_o\ & (\lcd|controladora|atual_estado.s37~q\ & \dt_cmd[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dt_cmd[2]~input_o\,
	datac => \lcd|controladora|atual_estado.s37~q\,
	datad => \dt_cmd[1]~input_o\,
	combout => \lcd|controladora|prox_estado.s43~0_combout\);

-- Location: FF_X30_Y26_N19
\lcd|controladora|atual_estado.s43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div_freq_10kHz|tmp~clkctrl_outclk\,
	d => \lcd|controladora|prox_estado.s43~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|controladora|atual_estado.s43~q\);

-- Location: LCCOMB_X29_Y26_N4
\lcd|controladora|prox_estado.s44~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lcd|controladora|prox_estado.s44~0_combout\ = (!\dt_cmd[0]~input_o\ & \lcd|controladora|atual_estado.s43~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dt_cmd[0]~input_o\,
	datad => \lcd|controladora|atual_estado.s43~q\,
	combout => \lcd|controladora|prox_estado.s44~0_combout\);

-- Location: FF_X29_Y26_N5
\lcd|controladora|atual_estado.s44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div_freq_10kHz|tmp~clkctrl_outclk\,
	d => \lcd|controladora|prox_estado.s44~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|controladora|atual_estado.s44~q\);

-- Location: LCCOMB_X29_Y26_N22
\lcd|controladora|prox_estado.s45~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lcd|controladora|prox_estado.s45~0_combout\ = (\dt_cmd[0]~input_o\ & \lcd|controladora|atual_estado.s43~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dt_cmd[0]~input_o\,
	datad => \lcd|controladora|atual_estado.s43~q\,
	combout => \lcd|controladora|prox_estado.s45~0_combout\);

-- Location: FF_X29_Y26_N23
\lcd|controladora|atual_estado.s45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div_freq_10kHz|tmp~clkctrl_outclk\,
	d => \lcd|controladora|prox_estado.s45~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|controladora|atual_estado.s45~q\);

-- Location: LCCOMB_X29_Y26_N18
\lcd|controladora|prox_estado.s46\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lcd|controladora|prox_estado.s46~combout\ = (\lcd|controladora|atual_estado.s44~q\) # (\lcd|controladora|atual_estado.s45~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd|controladora|atual_estado.s44~q\,
	datac => \lcd|controladora|atual_estado.s45~q\,
	combout => \lcd|controladora|prox_estado.s46~combout\);

-- Location: FF_X29_Y26_N19
\lcd|controladora|atual_estado.s46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div_freq_10kHz|tmp~clkctrl_outclk\,
	d => \lcd|controladora|prox_estado.s46~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|controladora|atual_estado.s46~q\);

-- Location: LCCOMB_X29_Y26_N26
\lcd|controladora|atual_estado.s47~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lcd|controladora|atual_estado.s47~feeder_combout\ = \lcd|controladora|atual_estado.s46~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lcd|controladora|atual_estado.s46~q\,
	combout => \lcd|controladora|atual_estado.s47~feeder_combout\);

-- Location: FF_X29_Y26_N27
\lcd|controladora|atual_estado.s47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div_freq_10kHz|tmp~clkctrl_outclk\,
	d => \lcd|controladora|atual_estado.s47~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|controladora|atual_estado.s47~q\);

-- Location: LCCOMB_X31_Y29_N18
\lcd|datapath|cont_pos|i[0]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lcd|datapath|cont_pos|i[0]~3_combout\ = \lcd|controladora|atual_estado.s28~q\ $ (\lcd|datapath|cont_pos|i\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|controladora|atual_estado.s28~q\,
	datac => \lcd|datapath|cont_pos|i\(0),
	combout => \lcd|datapath|cont_pos|i[0]~3_combout\);

-- Location: LCCOMB_X30_Y27_N22
\lcd|controladora|prox_estado.s30~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lcd|controladora|prox_estado.s30~0_combout\ = (!\lcd|datapath|reg_linha|qi~2_combout\ & \lcd|controladora|atual_estado.s29~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|datapath|reg_linha|qi~2_combout\,
	datac => \lcd|controladora|atual_estado.s29~q\,
	combout => \lcd|controladora|prox_estado.s30~0_combout\);

-- Location: FF_X30_Y27_N23
\lcd|controladora|atual_estado.s30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div_freq_10kHz|tmp~clkctrl_outclk\,
	d => \lcd|controladora|prox_estado.s30~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|controladora|atual_estado.s30~q\);

-- Location: LCCOMB_X30_Y27_N24
\lcd|datapath|dp_E~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lcd|datapath|dp_E~2_combout\ = ((\lcd|controladora|atual_estado.s32~q\) # ((\lcd|controladora|atual_estado.s30~q\) # (\lcd|controladora|atual_estado.s14~q\))) # (!\lcd|controladora|atual_estado.s0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|controladora|atual_estado.s0~q\,
	datab => \lcd|controladora|atual_estado.s32~q\,
	datac => \lcd|controladora|atual_estado.s30~q\,
	datad => \lcd|controladora|atual_estado.s14~q\,
	combout => \lcd|datapath|dp_E~2_combout\);

-- Location: FF_X31_Y29_N19
\lcd|datapath|cont_pos|i[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div_freq_10kHz|tmp~clkctrl_outclk\,
	d => \lcd|datapath|cont_pos|i[0]~3_combout\,
	clrn => \lcd|datapath|ALT_INV_dp_E~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|datapath|cont_pos|i\(0));

-- Location: LCCOMB_X31_Y29_N24
\lcd|datapath|cont_pos|i[1]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lcd|datapath|cont_pos|i[1]~2_combout\ = \lcd|datapath|cont_pos|i\(1) $ (((\lcd|controladora|atual_estado.s28~q\ & \lcd|datapath|cont_pos|i\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|controladora|atual_estado.s28~q\,
	datab => \lcd|datapath|cont_pos|i\(0),
	datac => \lcd|datapath|cont_pos|i\(1),
	combout => \lcd|datapath|cont_pos|i[1]~2_combout\);

-- Location: FF_X31_Y29_N25
\lcd|datapath|cont_pos|i[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div_freq_10kHz|tmp~clkctrl_outclk\,
	d => \lcd|datapath|cont_pos|i[1]~2_combout\,
	clrn => \lcd|datapath|ALT_INV_dp_E~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|datapath|cont_pos|i\(1));

-- Location: LCCOMB_X31_Y28_N16
\lcd|controladora|prox_estado.s29~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lcd|controladora|prox_estado.s29~0_combout\ = (\lcd|datapath|cont_pos|i\(2) & (\lcd|datapath|cont_pos|i\(0) & \lcd|datapath|cont_pos|i\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|datapath|cont_pos|i\(2),
	datab => \lcd|datapath|cont_pos|i\(0),
	datad => \lcd|datapath|cont_pos|i\(1),
	combout => \lcd|controladora|prox_estado.s29~0_combout\);

-- Location: LCCOMB_X30_Y26_N24
\lcd|controladora|prox_estado.s28~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lcd|controladora|prox_estado.s28~0_combout\ = (\lcd|controladora|atual_estado.s27~q\ & ((!\lcd|controladora|prox_estado.s29~0_combout\) # (!\lcd|datapath|cont_pos|i\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|datapath|cont_pos|i\(3),
	datab => \lcd|controladora|atual_estado.s27~q\,
	datad => \lcd|controladora|prox_estado.s29~0_combout\,
	combout => \lcd|controladora|prox_estado.s28~0_combout\);

-- Location: FF_X30_Y26_N25
\lcd|controladora|atual_estado.s28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div_freq_10kHz|tmp~clkctrl_outclk\,
	d => \lcd|controladora|prox_estado.s28~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|controladora|atual_estado.s28~q\);

-- Location: FF_X30_Y27_N25
\lcd|controladora|atual_estado.s31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div_freq_10kHz|tmp~clkctrl_outclk\,
	asdata => \lcd|controladora|atual_estado.s30~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|controladora|atual_estado.s31~q\);

-- Location: LCCOMB_X30_Y26_N22
\lcd|controladora|Selector8~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lcd|controladora|Selector8~0_combout\ = (\lcd|controladora|atual_estado.s28~q\) # ((\lcd|controladora|atual_estado.s31~q\) # ((\lcd|controladora|atual_estado.s19~q\ & !\lcd|datapath|cont_obj|cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|controladora|atual_estado.s19~q\,
	datab => \lcd|controladora|atual_estado.s28~q\,
	datac => \lcd|datapath|cont_obj|cnt\(1),
	datad => \lcd|controladora|atual_estado.s31~q\,
	combout => \lcd|controladora|Selector8~0_combout\);

-- Location: FF_X30_Y26_N23
\lcd|controladora|atual_estado.s20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div_freq_10kHz|tmp~clkctrl_outclk\,
	d => \lcd|controladora|Selector8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|controladora|atual_estado.s20~q\);

-- Location: LCCOMB_X31_Y29_N30
\lcd|datapath|cont_pos|i[2]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lcd|datapath|cont_pos|i[2]~1_combout\ = \lcd|datapath|cont_pos|i\(2) $ (((\lcd|controladora|atual_estado.s28~q\ & (\lcd|datapath|cont_pos|i\(1) & \lcd|datapath|cont_pos|i\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|controladora|atual_estado.s28~q\,
	datab => \lcd|datapath|cont_pos|i\(1),
	datac => \lcd|datapath|cont_pos|i\(2),
	datad => \lcd|datapath|cont_pos|i\(0),
	combout => \lcd|datapath|cont_pos|i[2]~1_combout\);

-- Location: FF_X31_Y29_N31
\lcd|datapath|cont_pos|i[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div_freq_10kHz|tmp~clkctrl_outclk\,
	d => \lcd|datapath|cont_pos|i[2]~1_combout\,
	clrn => \lcd|datapath|ALT_INV_dp_E~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|datapath|cont_pos|i\(2));

-- Location: LCCOMB_X31_Y29_N12
\lcd|datapath|mux15_moeda_q0|Mux0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lcd|datapath|mux15_moeda_q0|Mux0~0_combout\ = (\lcd|datapath|cont_pos|i\(3) & ((\sr_obstaculo|instancia0_reg|tmp\(10)) # ((\lcd|datapath|cont_pos|i\(2))))) # (!\lcd|datapath|cont_pos|i\(3) & (((\sr_obstaculo|instancia0_reg|tmp\(2) & 
-- !\lcd|datapath|cont_pos|i\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|datapath|cont_pos|i\(3),
	datab => \sr_obstaculo|instancia0_reg|tmp\(10),
	datac => \sr_obstaculo|instancia0_reg|tmp\(2),
	datad => \lcd|datapath|cont_pos|i\(2),
	combout => \lcd|datapath|mux15_moeda_q0|Mux0~0_combout\);

-- Location: LCCOMB_X32_Y29_N18
\lcd|datapath|mux15_moeda_q0|Mux0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lcd|datapath|mux15_moeda_q0|Mux0~1_combout\ = (\lcd|datapath|cont_pos|i\(2) & ((\lcd|datapath|mux15_moeda_q0|Mux0~0_combout\ & ((\sr_obstaculo|instancia0_reg|tmp\(14)))) # (!\lcd|datapath|mux15_moeda_q0|Mux0~0_combout\ & 
-- (\sr_obstaculo|instancia0_reg|tmp\(6))))) # (!\lcd|datapath|cont_pos|i\(2) & (((\lcd|datapath|mux15_moeda_q0|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sr_obstaculo|instancia0_reg|tmp\(6),
	datab => \lcd|datapath|cont_pos|i\(2),
	datac => \sr_obstaculo|instancia0_reg|tmp\(14),
	datad => \lcd|datapath|mux15_moeda_q0|Mux0~0_combout\,
	combout => \lcd|datapath|mux15_moeda_q0|Mux0~1_combout\);

-- Location: LCCOMB_X31_Y29_N6
\lcd|datapath|cont_pos|i[3]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lcd|datapath|cont_pos|i[3]~0_combout\ = \lcd|datapath|cont_pos|i\(3) $ (((\lcd|controladora|atual_estado.s28~q\ & \lcd|controladora|prox_estado.s29~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|controladora|atual_estado.s28~q\,
	datac => \lcd|datapath|cont_pos|i\(3),
	datad => \lcd|controladora|prox_estado.s29~0_combout\,
	combout => \lcd|datapath|cont_pos|i[3]~0_combout\);

-- Location: FF_X31_Y29_N7
\lcd|datapath|cont_pos|i[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div_freq_10kHz|tmp~clkctrl_outclk\,
	d => \lcd|datapath|cont_pos|i[3]~0_combout\,
	clrn => \lcd|datapath|ALT_INV_dp_E~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|datapath|cont_pos|i\(3));

-- Location: LCCOMB_X32_Y29_N0
\lcd|datapath|mux15_moeda_q0|Mux0~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lcd|datapath|mux15_moeda_q0|Mux0~7_combout\ = (\lcd|datapath|cont_pos|i\(3) & (((\lcd|datapath|cont_pos|i\(2))))) # (!\lcd|datapath|cont_pos|i\(3) & ((\lcd|datapath|cont_pos|i\(2) & (\sr_obstaculo|instancia0_reg|tmp\(8))) # (!\lcd|datapath|cont_pos|i\(2) 
-- & ((\sr_obstaculo|instancia0_reg|tmp\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sr_obstaculo|instancia0_reg|tmp\(8),
	datab => \lcd|datapath|cont_pos|i\(3),
	datac => \sr_obstaculo|instancia0_reg|tmp\(4),
	datad => \lcd|datapath|cont_pos|i\(2),
	combout => \lcd|datapath|mux15_moeda_q0|Mux0~7_combout\);

-- Location: LCCOMB_X32_Y29_N4
\lcd|datapath|mux15_moeda_q0|Mux0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lcd|datapath|mux15_moeda_q0|Mux0~8_combout\ = (\lcd|datapath|cont_pos|i\(3) & ((\lcd|datapath|mux15_moeda_q0|Mux0~7_combout\ & (\sr_obstaculo|instancia0_reg|tmp\(16))) # (!\lcd|datapath|mux15_moeda_q0|Mux0~7_combout\ & 
-- ((\sr_obstaculo|instancia0_reg|tmp\(12)))))) # (!\lcd|datapath|cont_pos|i\(3) & (((\lcd|datapath|mux15_moeda_q0|Mux0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sr_obstaculo|instancia0_reg|tmp\(16),
	datab => \lcd|datapath|cont_pos|i\(3),
	datac => \sr_obstaculo|instancia0_reg|tmp\(12),
	datad => \lcd|datapath|mux15_moeda_q0|Mux0~7_combout\,
	combout => \lcd|datapath|mux15_moeda_q0|Mux0~8_combout\);

-- Location: LCCOMB_X32_Y29_N2
\lcd|datapath|mux15_moeda_q0|Mux0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lcd|datapath|mux15_moeda_q0|Mux0~2_combout\ = (\lcd|datapath|cont_pos|i\(3) & (((\lcd|datapath|cont_pos|i\(2))))) # (!\lcd|datapath|cont_pos|i\(3) & ((\lcd|datapath|cont_pos|i\(2) & ((\sr_obstaculo|instancia0_reg|tmp\(7)))) # 
-- (!\lcd|datapath|cont_pos|i\(2) & (\sr_obstaculo|instancia0_reg|tmp\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sr_obstaculo|instancia0_reg|tmp\(3),
	datab => \lcd|datapath|cont_pos|i\(3),
	datac => \sr_obstaculo|instancia0_reg|tmp\(7),
	datad => \lcd|datapath|cont_pos|i\(2),
	combout => \lcd|datapath|mux15_moeda_q0|Mux0~2_combout\);

-- Location: LCCOMB_X32_Y29_N8
\lcd|datapath|mux15_moeda_q0|Mux0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lcd|datapath|mux15_moeda_q0|Mux0~3_combout\ = (\lcd|datapath|cont_pos|i\(3) & ((\lcd|datapath|mux15_moeda_q0|Mux0~2_combout\ & ((\sr_obstaculo|instancia0_reg|tmp\(15)))) # (!\lcd|datapath|mux15_moeda_q0|Mux0~2_combout\ & 
-- (\sr_obstaculo|instancia0_reg|tmp\(11))))) # (!\lcd|datapath|cont_pos|i\(3) & (((\lcd|datapath|mux15_moeda_q0|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sr_obstaculo|instancia0_reg|tmp\(11),
	datab => \lcd|datapath|cont_pos|i\(3),
	datac => \sr_obstaculo|instancia0_reg|tmp\(15),
	datad => \lcd|datapath|mux15_moeda_q0|Mux0~2_combout\,
	combout => \lcd|datapath|mux15_moeda_q0|Mux0~3_combout\);

-- Location: LCCOMB_X31_Y29_N14
\lcd|datapath|mux15_moeda_q0|Mux0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lcd|datapath|mux15_moeda_q0|Mux0~4_combout\ = (\lcd|datapath|cont_pos|i\(3) & ((\lcd|datapath|cont_pos|i\(2)) # ((\sr_obstaculo|instancia0_reg|tmp\(9))))) # (!\lcd|datapath|cont_pos|i\(3) & (!\lcd|datapath|cont_pos|i\(2) & 
-- ((\sr_obstaculo|instancia0_reg|tmp\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|datapath|cont_pos|i\(3),
	datab => \lcd|datapath|cont_pos|i\(2),
	datac => \sr_obstaculo|instancia0_reg|tmp\(9),
	datad => \sr_obstaculo|instancia0_reg|tmp\(1),
	combout => \lcd|datapath|mux15_moeda_q0|Mux0~4_combout\);

-- Location: LCCOMB_X32_Y29_N16
\lcd|datapath|mux15_moeda_q0|Mux0~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lcd|datapath|mux15_moeda_q0|Mux0~5_combout\ = (\lcd|datapath|cont_pos|i\(2) & ((\lcd|datapath|mux15_moeda_q0|Mux0~4_combout\ & ((\sr_obstaculo|instancia0_reg|tmp\(13)))) # (!\lcd|datapath|mux15_moeda_q0|Mux0~4_combout\ & 
-- (\sr_obstaculo|instancia0_reg|tmp\(5))))) # (!\lcd|datapath|cont_pos|i\(2) & (((\lcd|datapath|mux15_moeda_q0|Mux0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sr_obstaculo|instancia0_reg|tmp\(5),
	datab => \lcd|datapath|cont_pos|i\(2),
	datac => \sr_obstaculo|instancia0_reg|tmp\(13),
	datad => \lcd|datapath|mux15_moeda_q0|Mux0~4_combout\,
	combout => \lcd|datapath|mux15_moeda_q0|Mux0~5_combout\);

-- Location: LCCOMB_X32_Y29_N28
\lcd|datapath|mux15_moeda_q0|Mux0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lcd|datapath|mux15_moeda_q0|Mux0~6_combout\ = (\lcd|datapath|cont_pos|i\(0) & (\lcd|datapath|cont_pos|i\(1))) # (!\lcd|datapath|cont_pos|i\(0) & ((\lcd|datapath|cont_pos|i\(1) & (\lcd|datapath|mux15_moeda_q0|Mux0~3_combout\)) # 
-- (!\lcd|datapath|cont_pos|i\(1) & ((\lcd|datapath|mux15_moeda_q0|Mux0~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|datapath|cont_pos|i\(0),
	datab => \lcd|datapath|cont_pos|i\(1),
	datac => \lcd|datapath|mux15_moeda_q0|Mux0~3_combout\,
	datad => \lcd|datapath|mux15_moeda_q0|Mux0~5_combout\,
	combout => \lcd|datapath|mux15_moeda_q0|Mux0~6_combout\);

-- Location: LCCOMB_X32_Y29_N20
\lcd|datapath|mux15_moeda_q0|Mux0~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lcd|datapath|mux15_moeda_q0|Mux0~9_combout\ = (\lcd|datapath|cont_pos|i\(0) & ((\lcd|datapath|mux15_moeda_q0|Mux0~6_combout\ & ((\lcd|datapath|mux15_moeda_q0|Mux0~8_combout\))) # (!\lcd|datapath|mux15_moeda_q0|Mux0~6_combout\ & 
-- (\lcd|datapath|mux15_moeda_q0|Mux0~1_combout\)))) # (!\lcd|datapath|cont_pos|i\(0) & (((\lcd|datapath|mux15_moeda_q0|Mux0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|datapath|cont_pos|i\(0),
	datab => \lcd|datapath|mux15_moeda_q0|Mux0~1_combout\,
	datac => \lcd|datapath|mux15_moeda_q0|Mux0~8_combout\,
	datad => \lcd|datapath|mux15_moeda_q0|Mux0~6_combout\,
	combout => \lcd|datapath|mux15_moeda_q0|Mux0~9_combout\);

-- Location: LCCOMB_X30_Y29_N20
\lcd|controladora|prox_estado.s21~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lcd|controladora|prox_estado.s21~0_combout\ = (\lcd|controladora|atual_estado.s20~q\ & ((\lcd|datapath|cont_obj|cnt\(0) & ((\lcd|datapath|mux15_moeda_q0|Mux0~9_combout\))) # (!\lcd|datapath|cont_obj|cnt\(0) & 
-- (\lcd|datapath|mux15_moeda_q0|Mux0~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|datapath|mux15_moeda_q0|Mux0~19_combout\,
	datab => \lcd|datapath|cont_obj|cnt\(0),
	datac => \lcd|controladora|atual_estado.s20~q\,
	datad => \lcd|datapath|mux15_moeda_q0|Mux0~9_combout\,
	combout => \lcd|controladora|prox_estado.s21~0_combout\);

-- Location: FF_X30_Y29_N21
\lcd|controladora|atual_estado.s21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div_freq_10kHz|tmp~clkctrl_outclk\,
	d => \lcd|controladora|prox_estado.s21~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|controladora|atual_estado.s21~q\);

-- Location: LCCOMB_X30_Y28_N18
\lcd|datapath|mux15_obstaculo_q1|Mux0~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lcd|datapath|mux15_obstaculo_q1|Mux0~7_combout\ = (\lcd|datapath|cont_pos|i\(3) & ((\lcd|datapath|cont_pos|i\(2)) # ((!\sr_obstaculo|instancia1_reg|tmp\(12))))) # (!\lcd|datapath|cont_pos|i\(3) & (!\lcd|datapath|cont_pos|i\(2) & 
-- ((!\sr_obstaculo|instancia1_reg|tmp\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|datapath|cont_pos|i\(3),
	datab => \lcd|datapath|cont_pos|i\(2),
	datac => \sr_obstaculo|instancia1_reg|tmp\(12),
	datad => \sr_obstaculo|instancia1_reg|tmp\(4),
	combout => \lcd|datapath|mux15_obstaculo_q1|Mux0~7_combout\);

-- Location: LCCOMB_X30_Y28_N20
\lcd|datapath|mux15_obstaculo_q1|Mux0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lcd|datapath|mux15_obstaculo_q1|Mux0~8_combout\ = (\lcd|datapath|cont_pos|i\(2) & ((\lcd|datapath|mux15_obstaculo_q1|Mux0~7_combout\ & (!\sr_obstaculo|instancia1_reg|tmp\(16))) # (!\lcd|datapath|mux15_obstaculo_q1|Mux0~7_combout\ & 
-- ((!\sr_obstaculo|instancia1_reg|tmp\(8)))))) # (!\lcd|datapath|cont_pos|i\(2) & (((\lcd|datapath|mux15_obstaculo_q1|Mux0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sr_obstaculo|instancia1_reg|tmp\(16),
	datab => \lcd|datapath|cont_pos|i\(2),
	datac => \sr_obstaculo|instancia1_reg|tmp\(8),
	datad => \lcd|datapath|mux15_obstaculo_q1|Mux0~7_combout\,
	combout => \lcd|datapath|mux15_obstaculo_q1|Mux0~8_combout\);

-- Location: LCCOMB_X30_Y28_N28
\lcd|datapath|mux15_obstaculo_q1|Mux0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lcd|datapath|mux15_obstaculo_q1|Mux0~0_combout\ = (\lcd|datapath|cont_pos|i\(3) & ((\lcd|datapath|cont_pos|i\(2)) # ((!\sr_moeda|instancia1_reg|tmp\(11))))) # (!\lcd|datapath|cont_pos|i\(3) & (!\lcd|datapath|cont_pos|i\(2) & 
-- (!\sr_moeda|instancia1_reg|tmp\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|datapath|cont_pos|i\(3),
	datab => \lcd|datapath|cont_pos|i\(2),
	datac => \sr_moeda|instancia1_reg|tmp\(3),
	datad => \sr_moeda|instancia1_reg|tmp\(11),
	combout => \lcd|datapath|mux15_obstaculo_q1|Mux0~0_combout\);

-- Location: LCCOMB_X30_Y28_N22
\lcd|datapath|mux15_obstaculo_q1|Mux0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lcd|datapath|mux15_obstaculo_q1|Mux0~1_combout\ = (\lcd|datapath|cont_pos|i\(2) & ((\lcd|datapath|mux15_obstaculo_q1|Mux0~0_combout\ & (!\sr_moeda|instancia1_reg|tmp\(15))) # (!\lcd|datapath|mux15_obstaculo_q1|Mux0~0_combout\ & 
-- ((!\sr_moeda|instancia1_reg|tmp\(7)))))) # (!\lcd|datapath|cont_pos|i\(2) & (((\lcd|datapath|mux15_obstaculo_q1|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sr_moeda|instancia1_reg|tmp\(15),
	datab => \lcd|datapath|cont_pos|i\(2),
	datac => \sr_moeda|instancia1_reg|tmp\(7),
	datad => \lcd|datapath|mux15_obstaculo_q1|Mux0~0_combout\,
	combout => \lcd|datapath|mux15_obstaculo_q1|Mux0~1_combout\);

-- Location: LCCOMB_X30_Y28_N26
\lcd|datapath|mux15_obstaculo_q1|Mux0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lcd|datapath|mux15_obstaculo_q1|Mux0~4_combout\ = (\lcd|datapath|cont_pos|i\(2) & ((\lcd|datapath|cont_pos|i\(3)) # ((!\sr_moeda|instancia1_reg|tmp\(5))))) # (!\lcd|datapath|cont_pos|i\(2) & (!\lcd|datapath|cont_pos|i\(3) & 
-- ((!\sr_moeda|instancia1_reg|tmp\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|datapath|cont_pos|i\(2),
	datab => \lcd|datapath|cont_pos|i\(3),
	datac => \sr_moeda|instancia1_reg|tmp\(5),
	datad => \sr_moeda|instancia1_reg|tmp\(1),
	combout => \lcd|datapath|mux15_obstaculo_q1|Mux0~4_combout\);

-- Location: LCCOMB_X30_Y28_N2
\lcd|datapath|mux15_obstaculo_q1|Mux0~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lcd|datapath|mux15_obstaculo_q1|Mux0~5_combout\ = (\lcd|datapath|cont_pos|i\(3) & ((\lcd|datapath|mux15_obstaculo_q1|Mux0~4_combout\ & (!\sr_moeda|instancia1_reg|tmp\(13))) # (!\lcd|datapath|mux15_obstaculo_q1|Mux0~4_combout\ & 
-- ((!\sr_moeda|instancia1_reg|tmp\(9)))))) # (!\lcd|datapath|cont_pos|i\(3) & (((\lcd|datapath|mux15_obstaculo_q1|Mux0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sr_moeda|instancia1_reg|tmp\(13),
	datab => \lcd|datapath|cont_pos|i\(3),
	datac => \sr_moeda|instancia1_reg|tmp\(9),
	datad => \lcd|datapath|mux15_obstaculo_q1|Mux0~4_combout\,
	combout => \lcd|datapath|mux15_obstaculo_q1|Mux0~5_combout\);

-- Location: LCCOMB_X30_Y28_N6
\lcd|datapath|mux15_obstaculo_q1|Mux0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lcd|datapath|mux15_obstaculo_q1|Mux0~6_combout\ = (\lcd|datapath|cont_pos|i\(1) & (((\lcd|datapath|cont_pos|i\(0))))) # (!\lcd|datapath|cont_pos|i\(1) & ((\lcd|datapath|cont_pos|i\(0) & (\lcd|datapath|mux15_obstaculo_q1|Mux0~3_combout\)) # 
-- (!\lcd|datapath|cont_pos|i\(0) & ((\lcd|datapath|mux15_obstaculo_q1|Mux0~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|datapath|mux15_obstaculo_q1|Mux0~3_combout\,
	datab => \lcd|datapath|cont_pos|i\(1),
	datac => \lcd|datapath|cont_pos|i\(0),
	datad => \lcd|datapath|mux15_obstaculo_q1|Mux0~5_combout\,
	combout => \lcd|datapath|mux15_obstaculo_q1|Mux0~6_combout\);

-- Location: LCCOMB_X30_Y28_N10
\lcd|datapath|mux15_obstaculo_q1|Mux0~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lcd|datapath|mux15_obstaculo_q1|Mux0~9_combout\ = (\lcd|datapath|cont_pos|i\(1) & ((\lcd|datapath|mux15_obstaculo_q1|Mux0~6_combout\ & (\lcd|datapath|mux15_obstaculo_q1|Mux0~8_combout\)) # (!\lcd|datapath|mux15_obstaculo_q1|Mux0~6_combout\ & 
-- ((\lcd|datapath|mux15_obstaculo_q1|Mux0~1_combout\))))) # (!\lcd|datapath|cont_pos|i\(1) & (((\lcd|datapath|mux15_obstaculo_q1|Mux0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|datapath|cont_pos|i\(1),
	datab => \lcd|datapath|mux15_obstaculo_q1|Mux0~8_combout\,
	datac => \lcd|datapath|mux15_obstaculo_q1|Mux0~1_combout\,
	datad => \lcd|datapath|mux15_obstaculo_q1|Mux0~6_combout\,
	combout => \lcd|datapath|mux15_obstaculo_q1|Mux0~9_combout\);

-- Location: LCCOMB_X30_Y28_N0
\lcd|controladora|prox_estado.s25~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lcd|controladora|prox_estado.s25~0_combout\ = (\lcd|controladora|atual_estado.s21~q\ & \lcd|datapath|mux15_obstaculo_q1|Mux0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lcd|controladora|atual_estado.s21~q\,
	datad => \lcd|datapath|mux15_obstaculo_q1|Mux0~9_combout\,
	combout => \lcd|controladora|prox_estado.s25~0_combout\);

-- Location: FF_X30_Y28_N1
\lcd|controladora|atual_estado.s25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div_freq_10kHz|tmp~clkctrl_outclk\,
	d => \lcd|controladora|prox_estado.s25~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|controladora|atual_estado.s25~q\);

-- Location: LCCOMB_X30_Y28_N24
\lcd|controladora|Selector9~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lcd|controladora|Selector9~0_combout\ = (\lcd|datapath|reg_linha|qi~2_combout\ & ((\lcd|controladora|atual_estado.s25~q\) # ((\lcd|controladora|atual_estado.s21~q\ & !\lcd|datapath|mux15_obstaculo_q1|Mux0~9_combout\)))) # 
-- (!\lcd|datapath|reg_linha|qi~2_combout\ & (((\lcd|controladora|atual_estado.s21~q\ & !\lcd|datapath|mux15_obstaculo_q1|Mux0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|datapath|reg_linha|qi~2_combout\,
	datab => \lcd|controladora|atual_estado.s25~q\,
	datac => \lcd|controladora|atual_estado.s21~q\,
	datad => \lcd|datapath|mux15_obstaculo_q1|Mux0~9_combout\,
	combout => \lcd|controladora|Selector9~0_combout\);

-- Location: FF_X30_Y28_N25
\lcd|controladora|atual_estado.s22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div_freq_10kHz|tmp~clkctrl_outclk\,
	d => \lcd|controladora|Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|controladora|atual_estado.s22~q\);

-- Location: LCCOMB_X29_Y29_N22
\lcd|controladora|prox_estado.s24~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lcd|controladora|prox_estado.s24~0_combout\ = (\lcd|datapath|cont_obj|cnt\(0) & \lcd|controladora|atual_estado.s22~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd|datapath|cont_obj|cnt\(0),
	datac => \lcd|controladora|atual_estado.s22~q\,
	combout => \lcd|controladora|prox_estado.s24~0_combout\);

-- Location: FF_X29_Y29_N23
\lcd|controladora|atual_estado.s24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div_freq_10kHz|tmp~clkctrl_outclk\,
	d => \lcd|controladora|prox_estado.s24~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|controladora|atual_estado.s24~q\);

-- Location: LCCOMB_X29_Y29_N16
\lcd|controladora|prox_estado.s23~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lcd|controladora|prox_estado.s23~0_combout\ = (!\lcd|datapath|cont_obj|cnt\(0) & \lcd|controladora|atual_estado.s22~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd|datapath|cont_obj|cnt\(0),
	datac => \lcd|controladora|atual_estado.s22~q\,
	combout => \lcd|controladora|prox_estado.s23~0_combout\);

-- Location: FF_X29_Y29_N17
\lcd|controladora|atual_estado.s23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div_freq_10kHz|tmp~clkctrl_outclk\,
	d => \lcd|controladora|prox_estado.s23~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|controladora|atual_estado.s23~q\);

-- Location: LCCOMB_X29_Y29_N18
\lcd|controladora|WideOr7~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lcd|controladora|WideOr7~3_combout\ = (\lcd|controladora|atual_estado.s26~q\) # ((\lcd|controladora|atual_estado.s24~q\) # (\lcd|controladora|atual_estado.s23~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|controladora|atual_estado.s26~q\,
	datac => \lcd|controladora|atual_estado.s24~q\,
	datad => \lcd|controladora|atual_estado.s23~q\,
	combout => \lcd|controladora|WideOr7~3_combout\);

-- Location: LCCOMB_X29_Y29_N28
\lcd|controladora|atual_estado.s27~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lcd|controladora|atual_estado.s27~feeder_combout\ = \lcd|controladora|WideOr7~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lcd|controladora|WideOr7~3_combout\,
	combout => \lcd|controladora|atual_estado.s27~feeder_combout\);

-- Location: FF_X29_Y29_N29
\lcd|controladora|atual_estado.s27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div_freq_10kHz|tmp~clkctrl_outclk\,
	d => \lcd|controladora|atual_estado.s27~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|controladora|atual_estado.s27~q\);

-- Location: LCCOMB_X30_Y26_N30
\lcd|controladora|prox_estado.s29~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lcd|controladora|prox_estado.s29~1_combout\ = (\lcd|datapath|cont_pos|i\(3) & (\lcd|controladora|atual_estado.s27~q\ & \lcd|controladora|prox_estado.s29~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|datapath|cont_pos|i\(3),
	datab => \lcd|controladora|atual_estado.s27~q\,
	datad => \lcd|controladora|prox_estado.s29~0_combout\,
	combout => \lcd|controladora|prox_estado.s29~1_combout\);

-- Location: FF_X30_Y26_N31
\lcd|controladora|atual_estado.s29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div_freq_10kHz|tmp~clkctrl_outclk\,
	d => \lcd|controladora|prox_estado.s29~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|controladora|atual_estado.s29~q\);

-- Location: LCCOMB_X30_Y27_N4
\lcd|controladora|prox_estado.s32~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lcd|controladora|prox_estado.s32~0_combout\ = (\lcd|datapath|reg_linha|qi~2_combout\ & \lcd|controladora|atual_estado.s29~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|datapath|reg_linha|qi~2_combout\,
	datac => \lcd|controladora|atual_estado.s29~q\,
	combout => \lcd|controladora|prox_estado.s32~0_combout\);

-- Location: FF_X30_Y27_N5
\lcd|controladora|atual_estado.s32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div_freq_10kHz|tmp~clkctrl_outclk\,
	d => \lcd|controladora|prox_estado.s32~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|controladora|atual_estado.s32~q\);

-- Location: LCCOMB_X29_Y29_N0
\lcd|datapath|cont_obj|cnt[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lcd|datapath|cont_obj|cnt[0]~0_combout\ = \lcd|datapath|cont_obj|cnt\(0) $ (\lcd|controladora|atual_estado.s32~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lcd|datapath|cont_obj|cnt\(0),
	datad => \lcd|controladora|atual_estado.s32~q\,
	combout => \lcd|datapath|cont_obj|cnt[0]~0_combout\);

-- Location: LCCOMB_X30_Y27_N14
\lcd|controladora|WideOr2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lcd|controladora|WideOr2~0_combout\ = (\lcd|controladora|atual_estado.s14~q\) # (!\lcd|controladora|atual_estado.s0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|controladora|atual_estado.s14~q\,
	datad => \lcd|controladora|atual_estado.s0~q\,
	combout => \lcd|controladora|WideOr2~0_combout\);

-- Location: FF_X29_Y29_N1
\lcd|datapath|cont_obj|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div_freq_10kHz|tmp~clkctrl_outclk\,
	d => \lcd|datapath|cont_obj|cnt[0]~0_combout\,
	clrn => \lcd|controladora|ALT_INV_WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|datapath|cont_obj|cnt\(0));

-- Location: LCCOMB_X29_Y29_N4
\lcd|datapath|cont_obj|cnt[1]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lcd|datapath|cont_obj|cnt[1]~1_combout\ = \lcd|datapath|cont_obj|cnt\(1) $ (((\lcd|datapath|cont_obj|cnt\(0) & \lcd|controladora|atual_estado.s32~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd|datapath|cont_obj|cnt\(0),
	datac => \lcd|datapath|cont_obj|cnt\(1),
	datad => \lcd|controladora|atual_estado.s32~q\,
	combout => \lcd|datapath|cont_obj|cnt[1]~1_combout\);

-- Location: FF_X29_Y29_N5
\lcd|datapath|cont_obj|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div_freq_10kHz|tmp~clkctrl_outclk\,
	d => \lcd|datapath|cont_obj|cnt[1]~1_combout\,
	clrn => \lcd|controladora|ALT_INV_WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|datapath|cont_obj|cnt\(1));

-- Location: LCCOMB_X30_Y26_N0
\lcd|controladora|Selector7~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lcd|controladora|Selector7~0_combout\ = (!\dt_cmd[1]~input_o\ & (!\dt_cmd[0]~input_o\ & (\lcd|controladora|atual_estado.s17~q\ & !\dt_cmd[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dt_cmd[1]~input_o\,
	datab => \dt_cmd[0]~input_o\,
	datac => \lcd|controladora|atual_estado.s17~q\,
	datad => \dt_cmd[2]~input_o\,
	combout => \lcd|controladora|Selector7~0_combout\);

-- Location: LCCOMB_X30_Y26_N14
\lcd|controladora|Selector7~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lcd|controladora|Selector7~1_combout\ = (\lcd|controladora|atual_estado.s32~q\) # (\lcd|controladora|Selector7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd|controladora|atual_estado.s32~q\,
	datad => \lcd|controladora|Selector7~0_combout\,
	combout => \lcd|controladora|Selector7~1_combout\);

-- Location: FF_X30_Y26_N15
\lcd|controladora|atual_estado.s18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div_freq_10kHz|tmp~clkctrl_outclk\,
	d => \lcd|controladora|Selector7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|controladora|atual_estado.s18~q\);

-- Location: FF_X30_Y26_N11
\lcd|controladora|atual_estado.s19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div_freq_10kHz|tmp~clkctrl_outclk\,
	asdata => \lcd|controladora|atual_estado.s18~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|controladora|atual_estado.s19~q\);

-- Location: LCCOMB_X30_Y26_N6
\lcd|controladora|prox_estado.s33~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lcd|controladora|prox_estado.s33~0_combout\ = (\lcd|datapath|cont_obj|cnt\(1) & \lcd|controladora|atual_estado.s19~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lcd|datapath|cont_obj|cnt\(1),
	datad => \lcd|controladora|atual_estado.s19~q\,
	combout => \lcd|controladora|prox_estado.s33~0_combout\);

-- Location: FF_X30_Y26_N7
\lcd|controladora|atual_estado.s33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div_freq_10kHz|tmp~clkctrl_outclk\,
	d => \lcd|controladora|prox_estado.s33~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|controladora|atual_estado.s33~q\);

-- Location: LCCOMB_X31_Y26_N24
\lcd|controladora|prox_estado.s35~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lcd|controladora|prox_estado.s35~0_combout\ = (\lcd|controladora|atual_estado.s33~q\ & !\player_position|qi~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lcd|controladora|atual_estado.s33~q\,
	datad => \player_position|qi~2_combout\,
	combout => \lcd|controladora|prox_estado.s35~0_combout\);

-- Location: FF_X31_Y26_N25
\lcd|controladora|atual_estado.s35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div_freq_10kHz|tmp~clkctrl_outclk\,
	d => \lcd|controladora|prox_estado.s35~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|controladora|atual_estado.s35~q\);

-- Location: LCCOMB_X31_Y26_N22
\lcd|controladora|Selector11~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lcd|controladora|Selector11~0_combout\ = (\lcd|controladora|atual_estado.s35~q\) # ((\lcd|controladora|atual_estado.s33~q\ & \player_position|qi~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd|controladora|atual_estado.s35~q\,
	datac => \lcd|controladora|atual_estado.s33~q\,
	datad => \player_position|qi~2_combout\,
	combout => \lcd|controladora|Selector11~0_combout\);

-- Location: FF_X31_Y26_N23
\lcd|controladora|atual_estado.s34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div_freq_10kHz|tmp~clkctrl_outclk\,
	d => \lcd|controladora|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|controladora|atual_estado.s34~q\);

-- Location: LCCOMB_X29_Y26_N16
\lcd|controladora|WideOr27~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lcd|controladora|WideOr27~0_combout\ = (\lcd|controladora|atual_estado.s51~q\) # ((\lcd|controladora|atual_estado.s42~q\) # ((\lcd|controladora|atual_estado.s47~q\) # (\lcd|controladora|atual_estado.s34~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|controladora|atual_estado.s51~q\,
	datab => \lcd|controladora|atual_estado.s42~q\,
	datac => \lcd|controladora|atual_estado.s47~q\,
	datad => \lcd|controladora|atual_estado.s34~q\,
	combout => \lcd|controladora|WideOr27~0_combout\);

-- Location: FF_X29_Y26_N17
\lcd|controladora|atual_estado.s52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div_freq_10kHz|tmp~clkctrl_outclk\,
	d => \lcd|controladora|WideOr27~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|controladora|atual_estado.s52~q\);

-- Location: LCCOMB_X30_Y27_N12
\lcd|controladora|Selector5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lcd|controladora|Selector5~0_combout\ = (\lcd|controladora|atual_estado.s13~q\) # ((\lcd|controladora|atual_estado.s52~q\) # ((!\dt_render~input_o\ & \lcd|controladora|atual_estado.s14~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dt_render~input_o\,
	datab => \lcd|controladora|atual_estado.s13~q\,
	datac => \lcd|controladora|atual_estado.s14~q\,
	datad => \lcd|controladora|atual_estado.s52~q\,
	combout => \lcd|controladora|Selector5~0_combout\);

-- Location: FF_X30_Y27_N13
\lcd|controladora|atual_estado.s14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div_freq_10kHz|tmp~clkctrl_outclk\,
	d => \lcd|controladora|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|controladora|atual_estado.s14~q\);

-- Location: LCCOMB_X30_Y27_N10
\lcd|controladora|fsm_finish\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lcd|controladora|fsm_finish~combout\ = (\lcd|controladora|atual_estado.s14~q\) # (\lcd|controladora|atual_estado.s52~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd|controladora|atual_estado.s14~q\,
	datad => \lcd|controladora|atual_estado.s52~q\,
	combout => \lcd|controladora|fsm_finish~combout\);

-- Location: LCCOMB_X29_Y27_N12
\lcd|controladora|WideOr12~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lcd|controladora|WideOr12~0_combout\ = (\lcd|controladora|atual_estado.s23~q\) # ((\lcd|controladora|atual_estado.s40~q\) # ((\lcd|controladora|atual_estado.s44~q\) # (\lcd|controladora|atual_estado.s24~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|controladora|atual_estado.s23~q\,
	datab => \lcd|controladora|atual_estado.s40~q\,
	datac => \lcd|controladora|atual_estado.s44~q\,
	datad => \lcd|controladora|atual_estado.s24~q\,
	combout => \lcd|controladora|WideOr12~0_combout\);

-- Location: LCCOMB_X30_Y26_N12
\lcd|controladora|prox_estado.s48~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lcd|controladora|prox_estado.s48~0_combout\ = (\lcd|controladora|atual_estado.s37~q\ & !\dt_cmd[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lcd|controladora|atual_estado.s37~q\,
	datad => \dt_cmd[2]~input_o\,
	combout => \lcd|controladora|prox_estado.s48~0_combout\);

-- Location: FF_X30_Y26_N13
\lcd|controladora|atual_estado.s48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div_freq_10kHz|tmp~clkctrl_outclk\,
	d => \lcd|controladora|prox_estado.s48~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|controladora|atual_estado.s48~q\);

-- Location: LCCOMB_X29_Y27_N2
\lcd|controladora|atual_estado.s49~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lcd|controladora|atual_estado.s49~feeder_combout\ = \lcd|controladora|atual_estado.s48~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lcd|controladora|atual_estado.s48~q\,
	combout => \lcd|controladora|atual_estado.s49~feeder_combout\);

-- Location: FF_X29_Y27_N3
\lcd|controladora|atual_estado.s49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div_freq_10kHz|tmp~clkctrl_outclk\,
	d => \lcd|controladora|atual_estado.s49~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|controladora|atual_estado.s49~q\);

-- Location: LCCOMB_X29_Y27_N16
\lcd|controladora|atual_estado.s50~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lcd|controladora|atual_estado.s50~feeder_combout\ = \lcd|controladora|atual_estado.s49~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lcd|controladora|atual_estado.s49~q\,
	combout => \lcd|controladora|atual_estado.s50~feeder_combout\);

-- Location: FF_X29_Y27_N17
\lcd|controladora|atual_estado.s50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div_freq_10kHz|tmp~clkctrl_outclk\,
	d => \lcd|controladora|atual_estado.s50~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|controladora|atual_estado.s50~q\);

-- Location: LCCOMB_X29_Y27_N10
\lcd|controladora|WideOr6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lcd|controladora|WideOr6~0_combout\ = (!\lcd|controladora|atual_estado.s34~q\ & (!\lcd|controladora|atual_estado.s49~q\ & (!\lcd|controladora|atual_estado.s47~q\ & !\lcd|controladora|atual_estado.s50~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|controladora|atual_estado.s34~q\,
	datab => \lcd|controladora|atual_estado.s49~q\,
	datac => \lcd|controladora|atual_estado.s47~q\,
	datad => \lcd|controladora|atual_estado.s50~q\,
	combout => \lcd|controladora|WideOr6~0_combout\);

-- Location: LCCOMB_X29_Y27_N24
\lcd|controladora|WideOr12~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lcd|controladora|WideOr12~1_combout\ = (\lcd|controladora|WideOr12~0_combout\) # ((\lcd|controladora|atual_estado.s10~q\) # ((\lcd|controladora|atual_estado.s15~q\) # (!\lcd|controladora|WideOr6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|controladora|WideOr12~0_combout\,
	datab => \lcd|controladora|atual_estado.s10~q\,
	datac => \lcd|controladora|atual_estado.s15~q\,
	datad => \lcd|controladora|WideOr6~0_combout\,
	combout => \lcd|controladora|WideOr12~1_combout\);

-- Location: LCCOMB_X29_Y26_N0
\lcd|controladora|WideOr11~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lcd|controladora|WideOr11~0_combout\ = (!\lcd|controladora|atual_estado.s41~q\ & (!\lcd|controladora|atual_estado.s34~q\ & !\lcd|controladora|atual_estado.s45~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|controladora|atual_estado.s41~q\,
	datab => \lcd|controladora|atual_estado.s34~q\,
	datac => \lcd|controladora|atual_estado.s45~q\,
	combout => \lcd|controladora|WideOr11~0_combout\);

-- Location: LCCOMB_X29_Y27_N28
\lcd|controladora|WideOr11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lcd|controladora|WideOr11~combout\ = (\lcd|controladora|atual_estado.s47~q\) # (((\lcd|controladora|atual_estado.s23~q\) # (\lcd|controladora|atual_estado.s12~q\)) # (!\lcd|controladora|WideOr11~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|controladora|atual_estado.s47~q\,
	datab => \lcd|controladora|WideOr11~0_combout\,
	datac => \lcd|controladora|atual_estado.s23~q\,
	datad => \lcd|controladora|atual_estado.s12~q\,
	combout => \lcd|controladora|WideOr11~combout\);

-- Location: LCCOMB_X29_Y27_N22
\lcd|controladora|WideOr10~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lcd|controladora|WideOr10~0_combout\ = (\lcd|controladora|atual_estado.s48~q\) # ((\lcd|controladora|atual_estado.s12~q\) # ((\lcd|controladora|atual_estado.s47~q\) # (\lcd|controladora|atual_estado.s24~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|controladora|atual_estado.s48~q\,
	datab => \lcd|controladora|atual_estado.s12~q\,
	datac => \lcd|controladora|atual_estado.s47~q\,
	datad => \lcd|controladora|atual_estado.s24~q\,
	combout => \lcd|controladora|WideOr10~0_combout\);

-- Location: LCCOMB_X29_Y27_N8
\lcd|controladora|atual_estado.s51~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lcd|controladora|atual_estado.s51~feeder_combout\ = \lcd|controladora|atual_estado.s50~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lcd|controladora|atual_estado.s50~q\,
	combout => \lcd|controladora|atual_estado.s51~feeder_combout\);

-- Location: FF_X29_Y27_N9
\lcd|controladora|atual_estado.s51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div_freq_10kHz|tmp~clkctrl_outclk\,
	d => \lcd|controladora|atual_estado.s51~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|controladora|atual_estado.s51~q\);

-- Location: LCCOMB_X29_Y27_N26
\lcd|controladora|WideOr10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lcd|controladora|WideOr10~combout\ = (\lcd|controladora|WideOr10~0_combout\) # ((\lcd|controladora|atual_estado.s50~q\) # (\lcd|controladora|atual_estado.s51~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|controladora|WideOr10~0_combout\,
	datab => \lcd|controladora|atual_estado.s50~q\,
	datac => \lcd|controladora|atual_estado.s51~q\,
	combout => \lcd|controladora|WideOr10~combout\);

-- Location: LCCOMB_X29_Y27_N30
\lcd|controladora|WideOr9~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lcd|controladora|WideOr9~0_combout\ = (\lcd|controladora|atual_estado.s34~q\) # ((\lcd|controladora|atual_estado.s49~q\) # ((\lcd|controladora|atual_estado.s8~q\) # (\lcd|controladora|atual_estado.s9~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|controladora|atual_estado.s34~q\,
	datab => \lcd|controladora|atual_estado.s49~q\,
	datac => \lcd|controladora|atual_estado.s8~q\,
	datad => \lcd|controladora|atual_estado.s9~q\,
	combout => \lcd|controladora|WideOr9~0_combout\);

-- Location: LCCOMB_X29_Y27_N0
\lcd|controladora|WideOr9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lcd|controladora|WideOr9~combout\ = (\lcd|controladora|WideOr9~0_combout\) # (\lcd|controladora|atual_estado.s13~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lcd|controladora|WideOr9~0_combout\,
	datad => \lcd|controladora|atual_estado.s13~q\,
	combout => \lcd|controladora|WideOr9~combout\);

-- Location: LCCOMB_X29_Y26_N24
\lcd|controladora|WideOr8~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lcd|controladora|WideOr8~0_combout\ = (\lcd|controladora|atual_estado.s47~q\) # ((\lcd|controladora|atual_estado.s43~q\) # ((\lcd|controladora|atual_estado.s48~q\) # (\lcd|controladora|atual_estado.s39~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|controladora|atual_estado.s47~q\,
	datab => \lcd|controladora|atual_estado.s43~q\,
	datac => \lcd|controladora|atual_estado.s48~q\,
	datad => \lcd|controladora|atual_estado.s39~q\,
	combout => \lcd|controladora|WideOr8~0_combout\);

-- Location: LCCOMB_X31_Y27_N26
\lcd|datapath|timer|i[9]~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lcd|datapath|timer|i[9]~25_combout\ = \lcd|datapath|timer|i\(9) $ (!\lcd|datapath|timer|i[8]~24\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|datapath|timer|i\(9),
	cin => \lcd|datapath|timer|i[8]~24\,
	combout => \lcd|datapath|timer|i[9]~25_combout\);

-- Location: FF_X31_Y27_N27
\lcd|datapath|timer|i[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div_freq_10kHz|tmp~clkctrl_outclk\,
	d => \lcd|datapath|timer|i[9]~25_combout\,
	clrn => \lcd|controladora|ALT_INV_WideOr2~combout\,
	ena => \lcd|datapath|dp_E~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|datapath|timer|i\(9));

-- Location: LCCOMB_X32_Y27_N20
\lcd|datapath|comp_t100|LessThan0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lcd|datapath|comp_t100|LessThan0~0_combout\ = (!\lcd|datapath|timer|i\(8) & (!\lcd|datapath|timer|i\(9) & !\lcd|datapath|timer|i\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd|datapath|timer|i\(8),
	datac => \lcd|datapath|timer|i\(9),
	datad => \lcd|datapath|timer|i\(7),
	combout => \lcd|datapath|comp_t100|LessThan0~0_combout\);

-- Location: LCCOMB_X32_Y27_N18
\lcd|datapath|comp_t100|LessThan0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lcd|datapath|comp_t100|LessThan0~1_combout\ = ((\lcd|datapath|timer|i\(6) & (\lcd|datapath|timer|i\(5) & !\lcd|datapath|comp_t2|LessThan0~1_combout\))) # (!\lcd|datapath|comp_t100|LessThan0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|datapath|timer|i\(6),
	datab => \lcd|datapath|timer|i\(5),
	datac => \lcd|datapath|comp_t2|LessThan0~1_combout\,
	datad => \lcd|datapath|comp_t100|LessThan0~0_combout\,
	combout => \lcd|datapath|comp_t100|LessThan0~1_combout\);

-- Location: LCCOMB_X32_Y27_N22
\lcd|controladora|prox_estado.s4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lcd|controladora|prox_estado.s4~0_combout\ = (\lcd|controladora|atual_estado.s3~q\ & \lcd|datapath|comp_t100|LessThan0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|controladora|atual_estado.s3~q\,
	datad => \lcd|datapath|comp_t100|LessThan0~1_combout\,
	combout => \lcd|controladora|prox_estado.s4~0_combout\);

-- Location: FF_X32_Y27_N23
\lcd|controladora|atual_estado.s4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div_freq_10kHz|tmp~clkctrl_outclk\,
	d => \lcd|controladora|prox_estado.s4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|controladora|atual_estado.s4~q\);

-- Location: LCCOMB_X32_Y27_N12
\lcd|controladora|prox_estado.s6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lcd|controladora|prox_estado.s6~0_combout\ = (\lcd|controladora|atual_estado.s5~q\ & \lcd|datapath|comp_t2|LessThan0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd|controladora|atual_estado.s5~q\,
	datad => \lcd|datapath|comp_t2|LessThan0~2_combout\,
	combout => \lcd|controladora|prox_estado.s6~0_combout\);

-- Location: FF_X32_Y27_N13
\lcd|controladora|atual_estado.s6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div_freq_10kHz|tmp~clkctrl_outclk\,
	d => \lcd|controladora|prox_estado.s6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|controladora|atual_estado.s6~q\);

-- Location: LCCOMB_X32_Y27_N26
\lcd|controladora|WideOr7~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lcd|controladora|WideOr7~0_combout\ = (!\lcd|controladora|atual_estado.s40~q\ & (!\lcd|controladora|atual_estado.s44~q\ & (!\lcd|controladora|atual_estado.s4~q\ & !\lcd|controladora|atual_estado.s6~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|controladora|atual_estado.s40~q\,
	datab => \lcd|controladora|atual_estado.s44~q\,
	datac => \lcd|controladora|atual_estado.s4~q\,
	datad => \lcd|controladora|atual_estado.s6~q\,
	combout => \lcd|controladora|WideOr7~0_combout\);

-- Location: LCCOMB_X32_Y27_N16
\lcd|controladora|prox_estado.s2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lcd|controladora|prox_estado.s2~0_combout\ = (\lcd|controladora|atual_estado.s1~q\ & \lcd|datapath|comp_t1000|LessThan0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lcd|controladora|atual_estado.s1~q\,
	datad => \lcd|datapath|comp_t1000|LessThan0~1_combout\,
	combout => \lcd|controladora|prox_estado.s2~0_combout\);

-- Location: FF_X32_Y27_N17
\lcd|controladora|atual_estado.s2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div_freq_10kHz|tmp~clkctrl_outclk\,
	d => \lcd|controladora|prox_estado.s2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|controladora|atual_estado.s2~q\);

-- Location: LCCOMB_X32_Y27_N30
\lcd|controladora|WideOr7~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lcd|controladora|WideOr7~1_combout\ = (\lcd|controladora|WideOr11~0_combout\ & (!\lcd|controladora|atual_estado.s8~q\ & (\lcd|controladora|WideOr7~0_combout\ & !\lcd|controladora|atual_estado.s2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|controladora|WideOr11~0_combout\,
	datab => \lcd|controladora|atual_estado.s8~q\,
	datac => \lcd|controladora|WideOr7~0_combout\,
	datad => \lcd|controladora|atual_estado.s2~q\,
	combout => \lcd|controladora|WideOr7~1_combout\);

-- Location: LCCOMB_X29_Y26_N10
\lcd|controladora|WideOr8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lcd|controladora|WideOr8~combout\ = (\lcd|controladora|WideOr8~0_combout\) # (!\lcd|controladora|WideOr7~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd|controladora|WideOr8~0_combout\,
	datad => \lcd|controladora|WideOr7~1_combout\,
	combout => \lcd|controladora|WideOr8~combout\);

-- Location: LCCOMB_X29_Y26_N28
\lcd|controladora|WideOr7~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lcd|controladora|WideOr7~2_combout\ = (\lcd|controladora|atual_estado.s38~q\) # ((\lcd|controladora|atual_estado.s46~q\) # (\lcd|controladora|atual_estado.s42~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|controladora|atual_estado.s38~q\,
	datab => \lcd|controladora|atual_estado.s46~q\,
	datac => \lcd|controladora|atual_estado.s42~q\,
	combout => \lcd|controladora|WideOr7~2_combout\);

-- Location: LCCOMB_X29_Y26_N14
\lcd|controladora|WideOr7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lcd|controladora|WideOr7~combout\ = (\lcd|controladora|atual_estado.s28~q\) # ((\lcd|controladora|WideOr7~2_combout\) # ((\lcd|controladora|WideOr7~3_combout\) # (!\lcd|controladora|WideOr7~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|controladora|atual_estado.s28~q\,
	datab => \lcd|controladora|WideOr7~2_combout\,
	datac => \lcd|controladora|WideOr7~3_combout\,
	datad => \lcd|controladora|WideOr7~1_combout\,
	combout => \lcd|controladora|WideOr7~combout\);

-- Location: LCCOMB_X29_Y26_N20
\lcd|controladora|WideOr6~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lcd|controladora|WideOr6~1_combout\ = (\lcd|controladora|atual_estado.s39~q\) # ((\lcd|controladora|atual_estado.s48~q\) # ((\lcd|controladora|atual_estado.s51~q\) # (\lcd|controladora|atual_estado.s43~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|controladora|atual_estado.s39~q\,
	datab => \lcd|controladora|atual_estado.s48~q\,
	datac => \lcd|controladora|atual_estado.s51~q\,
	datad => \lcd|controladora|atual_estado.s43~q\,
	combout => \lcd|controladora|WideOr6~1_combout\);

-- Location: LCCOMB_X30_Y26_N16
\lcd|controladora|WideOr6~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lcd|controladora|WideOr6~2_combout\ = ((\lcd|controladora|atual_estado.s35~q\) # ((\lcd|controladora|WideOr6~1_combout\) # (\lcd|controladora|atual_estado.s31~q\))) # (!\lcd|controladora|WideOr6~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|controladora|WideOr6~0_combout\,
	datab => \lcd|controladora|atual_estado.s35~q\,
	datac => \lcd|controladora|WideOr6~1_combout\,
	datad => \lcd|controladora|atual_estado.s31~q\,
	combout => \lcd|controladora|WideOr6~2_combout\);

-- Location: LCCOMB_X29_Y25_N28
\lcd|controladora|fsm_dt[7]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lcd|controladora|fsm_dt\(7) = (\lcd|controladora|atual_estado.s34~q\) # (\lcd|controladora|atual_estado.s24~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lcd|controladora|atual_estado.s34~q\,
	datad => \lcd|controladora|atual_estado.s24~q\,
	combout => \lcd|controladora|fsm_dt\(7));

-- Location: LCCOMB_X30_Y26_N28
\lcd|controladora|WideOr5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lcd|controladora|WideOr5~combout\ = (\lcd|controladora|atual_estado.s31~q\) # ((\lcd|controladora|atual_estado.s18~q\) # (\lcd|controladora|atual_estado.s35~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd|controladora|atual_estado.s31~q\,
	datac => \lcd|controladora|atual_estado.s18~q\,
	datad => \lcd|controladora|atual_estado.s35~q\,
	combout => \lcd|controladora|WideOr5~combout\);

-- Location: LCCOMB_X30_Y26_N20
\lcd|datapath|dp_E~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lcd|datapath|dp_E~5_combout\ = (!\lcd|controladora|atual_estado.s33~q\ & (!\lcd|controladora|atual_estado.s29~q\ & (!\lcd|controladora|atual_estado.s37~q\ & !\lcd|controladora|atual_estado.s28~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|controladora|atual_estado.s33~q\,
	datab => \lcd|controladora|atual_estado.s29~q\,
	datac => \lcd|controladora|atual_estado.s37~q\,
	datad => \lcd|controladora|atual_estado.s28~q\,
	combout => \lcd|datapath|dp_E~5_combout\);

-- Location: LCCOMB_X30_Y26_N26
\lcd|datapath|dp_E~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lcd|datapath|dp_E~6_combout\ = (\lcd|datapath|dp_E~4_combout\ & (!\lcd|controladora|atual_estado.s52~q\ & \lcd|datapath|dp_E~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|datapath|dp_E~4_combout\,
	datac => \lcd|controladora|atual_estado.s52~q\,
	datad => \lcd|datapath|dp_E~5_combout\,
	combout => \lcd|datapath|dp_E~6_combout\);

-- Location: LCCOMB_X16_Y1_N4
\div_freq_10kHz|cnt[1]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \div_freq_10kHz|cnt[1]~12_combout\ = (\div_freq_10kHz|cnt\(0) & (\div_freq_10kHz|cnt\(1) $ (VCC))) # (!\div_freq_10kHz|cnt\(0) & (\div_freq_10kHz|cnt\(1) & VCC))
-- \div_freq_10kHz|cnt[1]~13\ = CARRY((\div_freq_10kHz|cnt\(0) & \div_freq_10kHz|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div_freq_10kHz|cnt\(0),
	datab => \div_freq_10kHz|cnt\(1),
	datad => VCC,
	combout => \div_freq_10kHz|cnt[1]~12_combout\,
	cout => \div_freq_10kHz|cnt[1]~13\);

-- Location: FF_X16_Y1_N5
\div_freq_10kHz|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dt_clk~input_o\,
	d => \div_freq_10kHz|cnt[1]~12_combout\,
	clrn => \div_freq_10kHz|ALT_INV_tmp~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_freq_10kHz|cnt\(1));

-- Location: LCCOMB_X16_Y1_N8
\div_freq_10kHz|cnt[3]~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \div_freq_10kHz|cnt[3]~16_combout\ = (\div_freq_10kHz|cnt\(3) & (\div_freq_10kHz|cnt[2]~15\ $ (GND))) # (!\div_freq_10kHz|cnt\(3) & (!\div_freq_10kHz|cnt[2]~15\ & VCC))
-- \div_freq_10kHz|cnt[3]~17\ = CARRY((\div_freq_10kHz|cnt\(3) & !\div_freq_10kHz|cnt[2]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_freq_10kHz|cnt\(3),
	datad => VCC,
	cin => \div_freq_10kHz|cnt[2]~15\,
	combout => \div_freq_10kHz|cnt[3]~16_combout\,
	cout => \div_freq_10kHz|cnt[3]~17\);

-- Location: FF_X16_Y1_N9
\div_freq_10kHz|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dt_clk~input_o\,
	d => \div_freq_10kHz|cnt[3]~16_combout\,
	clrn => \div_freq_10kHz|ALT_INV_tmp~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_freq_10kHz|cnt\(3));

-- Location: LCCOMB_X16_Y1_N30
\div_freq_10kHz|cnt[0]~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \div_freq_10kHz|cnt[0]~36_combout\ = !\div_freq_10kHz|cnt\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \div_freq_10kHz|cnt\(0),
	combout => \div_freq_10kHz|cnt[0]~36_combout\);

-- Location: FF_X16_Y1_N31
\div_freq_10kHz|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dt_clk~input_o\,
	d => \div_freq_10kHz|cnt[0]~36_combout\,
	clrn => \div_freq_10kHz|ALT_INV_tmp~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_freq_10kHz|cnt\(0));

-- Location: LCCOMB_X16_Y1_N28
\div_freq_10kHz|Equal0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \div_freq_10kHz|Equal0~0_combout\ = (!\div_freq_10kHz|cnt\(2) & (\div_freq_10kHz|cnt\(3) & (!\div_freq_10kHz|cnt\(1) & !\div_freq_10kHz|cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div_freq_10kHz|cnt\(2),
	datab => \div_freq_10kHz|cnt\(3),
	datac => \div_freq_10kHz|cnt\(1),
	datad => \div_freq_10kHz|cnt\(0),
	combout => \div_freq_10kHz|Equal0~0_combout\);

-- Location: LCCOMB_X16_Y1_N10
\div_freq_10kHz|cnt[4]~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \div_freq_10kHz|cnt[4]~18_combout\ = (\div_freq_10kHz|cnt\(4) & (!\div_freq_10kHz|cnt[3]~17\)) # (!\div_freq_10kHz|cnt\(4) & ((\div_freq_10kHz|cnt[3]~17\) # (GND)))
-- \div_freq_10kHz|cnt[4]~19\ = CARRY((!\div_freq_10kHz|cnt[3]~17\) # (!\div_freq_10kHz|cnt\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div_freq_10kHz|cnt\(4),
	datad => VCC,
	cin => \div_freq_10kHz|cnt[3]~17\,
	combout => \div_freq_10kHz|cnt[4]~18_combout\,
	cout => \div_freq_10kHz|cnt[4]~19\);

-- Location: LCCOMB_X16_Y1_N12
\div_freq_10kHz|cnt[5]~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \div_freq_10kHz|cnt[5]~20_combout\ = (\div_freq_10kHz|cnt\(5) & (\div_freq_10kHz|cnt[4]~19\ $ (GND))) # (!\div_freq_10kHz|cnt\(5) & (!\div_freq_10kHz|cnt[4]~19\ & VCC))
-- \div_freq_10kHz|cnt[5]~21\ = CARRY((\div_freq_10kHz|cnt\(5) & !\div_freq_10kHz|cnt[4]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div_freq_10kHz|cnt\(5),
	datad => VCC,
	cin => \div_freq_10kHz|cnt[4]~19\,
	combout => \div_freq_10kHz|cnt[5]~20_combout\,
	cout => \div_freq_10kHz|cnt[5]~21\);

-- Location: FF_X16_Y1_N13
\div_freq_10kHz|cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dt_clk~input_o\,
	d => \div_freq_10kHz|cnt[5]~20_combout\,
	clrn => \div_freq_10kHz|ALT_INV_tmp~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_freq_10kHz|cnt\(5));

-- Location: FF_X16_Y1_N11
\div_freq_10kHz|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dt_clk~input_o\,
	d => \div_freq_10kHz|cnt[4]~18_combout\,
	clrn => \div_freq_10kHz|ALT_INV_tmp~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_freq_10kHz|cnt\(4));

-- Location: LCCOMB_X16_Y1_N14
\div_freq_10kHz|cnt[6]~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \div_freq_10kHz|cnt[6]~22_combout\ = (\div_freq_10kHz|cnt\(6) & (!\div_freq_10kHz|cnt[5]~21\)) # (!\div_freq_10kHz|cnt\(6) & ((\div_freq_10kHz|cnt[5]~21\) # (GND)))
-- \div_freq_10kHz|cnt[6]~23\ = CARRY((!\div_freq_10kHz|cnt[5]~21\) # (!\div_freq_10kHz|cnt\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_freq_10kHz|cnt\(6),
	datad => VCC,
	cin => \div_freq_10kHz|cnt[5]~21\,
	combout => \div_freq_10kHz|cnt[6]~22_combout\,
	cout => \div_freq_10kHz|cnt[6]~23\);

-- Location: FF_X16_Y1_N15
\div_freq_10kHz|cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dt_clk~input_o\,
	d => \div_freq_10kHz|cnt[6]~22_combout\,
	clrn => \div_freq_10kHz|ALT_INV_tmp~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_freq_10kHz|cnt\(6));

-- Location: LCCOMB_X15_Y1_N6
\div_freq_10kHz|Equal0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \div_freq_10kHz|Equal0~1_combout\ = (\div_freq_10kHz|cnt\(7) & (!\div_freq_10kHz|cnt\(5) & (!\div_freq_10kHz|cnt\(4) & !\div_freq_10kHz|cnt\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div_freq_10kHz|cnt\(7),
	datab => \div_freq_10kHz|cnt\(5),
	datac => \div_freq_10kHz|cnt\(4),
	datad => \div_freq_10kHz|cnt\(6),
	combout => \div_freq_10kHz|Equal0~1_combout\);

-- Location: LCCOMB_X16_Y1_N16
\div_freq_10kHz|cnt[7]~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \div_freq_10kHz|cnt[7]~24_combout\ = (\div_freq_10kHz|cnt\(7) & (\div_freq_10kHz|cnt[6]~23\ $ (GND))) # (!\div_freq_10kHz|cnt\(7) & (!\div_freq_10kHz|cnt[6]~23\ & VCC))
-- \div_freq_10kHz|cnt[7]~25\ = CARRY((\div_freq_10kHz|cnt\(7) & !\div_freq_10kHz|cnt[6]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_freq_10kHz|cnt\(7),
	datad => VCC,
	cin => \div_freq_10kHz|cnt[6]~23\,
	combout => \div_freq_10kHz|cnt[7]~24_combout\,
	cout => \div_freq_10kHz|cnt[7]~25\);

-- Location: FF_X16_Y1_N17
\div_freq_10kHz|cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dt_clk~input_o\,
	d => \div_freq_10kHz|cnt[7]~24_combout\,
	clrn => \div_freq_10kHz|ALT_INV_tmp~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_freq_10kHz|cnt\(7));

-- Location: LCCOMB_X16_Y1_N18
\div_freq_10kHz|cnt[8]~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \div_freq_10kHz|cnt[8]~26_combout\ = (\div_freq_10kHz|cnt\(8) & (!\div_freq_10kHz|cnt[7]~25\)) # (!\div_freq_10kHz|cnt\(8) & ((\div_freq_10kHz|cnt[7]~25\) # (GND)))
-- \div_freq_10kHz|cnt[8]~27\ = CARRY((!\div_freq_10kHz|cnt[7]~25\) # (!\div_freq_10kHz|cnt\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div_freq_10kHz|cnt\(8),
	datad => VCC,
	cin => \div_freq_10kHz|cnt[7]~25\,
	combout => \div_freq_10kHz|cnt[8]~26_combout\,
	cout => \div_freq_10kHz|cnt[8]~27\);

-- Location: LCCOMB_X16_Y1_N20
\div_freq_10kHz|cnt[9]~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \div_freq_10kHz|cnt[9]~28_combout\ = (\div_freq_10kHz|cnt\(9) & (\div_freq_10kHz|cnt[8]~27\ $ (GND))) # (!\div_freq_10kHz|cnt\(9) & (!\div_freq_10kHz|cnt[8]~27\ & VCC))
-- \div_freq_10kHz|cnt[9]~29\ = CARRY((\div_freq_10kHz|cnt\(9) & !\div_freq_10kHz|cnt[8]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div_freq_10kHz|cnt\(9),
	datad => VCC,
	cin => \div_freq_10kHz|cnt[8]~27\,
	combout => \div_freq_10kHz|cnt[9]~28_combout\,
	cout => \div_freq_10kHz|cnt[9]~29\);

-- Location: FF_X16_Y1_N23
\div_freq_10kHz|cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dt_clk~input_o\,
	d => \div_freq_10kHz|cnt[10]~30_combout\,
	clrn => \div_freq_10kHz|ALT_INV_tmp~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_freq_10kHz|cnt\(10));

-- Location: FF_X16_Y1_N21
\div_freq_10kHz|cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dt_clk~input_o\,
	d => \div_freq_10kHz|cnt[9]~28_combout\,
	clrn => \div_freq_10kHz|ALT_INV_tmp~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_freq_10kHz|cnt\(9));

-- Location: FF_X16_Y1_N19
\div_freq_10kHz|cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dt_clk~input_o\,
	d => \div_freq_10kHz|cnt[8]~26_combout\,
	clrn => \div_freq_10kHz|ALT_INV_tmp~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_freq_10kHz|cnt\(8));

-- Location: LCCOMB_X15_Y1_N14
\div_freq_10kHz|Equal0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \div_freq_10kHz|Equal0~2_combout\ = (!\div_freq_10kHz|cnt\(11) & (!\div_freq_10kHz|cnt\(10) & (\div_freq_10kHz|cnt\(9) & \div_freq_10kHz|cnt\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div_freq_10kHz|cnt\(11),
	datab => \div_freq_10kHz|cnt\(10),
	datac => \div_freq_10kHz|cnt\(9),
	datad => \div_freq_10kHz|cnt\(8),
	combout => \div_freq_10kHz|Equal0~2_combout\);

-- Location: LCCOMB_X16_Y1_N0
\div_freq_10kHz|Equal0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \div_freq_10kHz|Equal0~3_combout\ = (\div_freq_10kHz|cnt\(12) & (\div_freq_10kHz|Equal0~0_combout\ & (\div_freq_10kHz|Equal0~1_combout\ & \div_freq_10kHz|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div_freq_10kHz|cnt\(12),
	datab => \div_freq_10kHz|Equal0~0_combout\,
	datac => \div_freq_10kHz|Equal0~1_combout\,
	datad => \div_freq_10kHz|Equal0~2_combout\,
	combout => \div_freq_10kHz|Equal0~3_combout\);

-- Location: LCCOMB_X16_Y1_N2
\div_freq_10kHz|tmp~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \div_freq_10kHz|tmp~2_combout\ = (\dt_clr~input_o\) # (\div_freq_10kHz|Equal0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dt_clr~input_o\,
	datad => \div_freq_10kHz|Equal0~3_combout\,
	combout => \div_freq_10kHz|tmp~2_combout\);

-- Location: LCCOMB_X15_Y1_N28
\div_freq_10kHz|tmp~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \div_freq_10kHz|tmp~1_combout\ = (\div_freq_10kHz|tmp~0_combout\) # (((!\div_freq_10kHz|Equal0~1_combout\) # (!\div_freq_10kHz|Equal0~2_combout\)) # (!\div_freq_10kHz|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div_freq_10kHz|tmp~0_combout\,
	datab => \div_freq_10kHz|Equal0~0_combout\,
	datac => \div_freq_10kHz|Equal0~2_combout\,
	datad => \div_freq_10kHz|Equal0~1_combout\,
	combout => \div_freq_10kHz|tmp~1_combout\);

-- Location: LCCOMB_X15_Y1_N26
\div_freq_10kHz|tmp\ : cycloneiv_lcell_comb
-- Equation(s):
-- \div_freq_10kHz|tmp~combout\ = (\div_freq_10kHz|tmp~2_combout\ & ((!\div_freq_10kHz|tmp~1_combout\))) # (!\div_freq_10kHz|tmp~2_combout\ & (\div_freq_10kHz|tmp~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div_freq_10kHz|tmp~combout\,
	datac => \div_freq_10kHz|tmp~2_combout\,
	datad => \div_freq_10kHz|tmp~1_combout\,
	combout => \div_freq_10kHz|tmp~combout\);

-- Location: LCCOMB_X30_Y26_N10
\lcd|datapath|dp_E~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lcd|datapath|dp_E~3_combout\ = (!\lcd|controladora|atual_estado.s17~q\ & (!\lcd|controladora|atual_estado.s20~q\ & (!\lcd|controladora|atual_estado.s19~q\ & \div_freq_10kHz|tmp~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|controladora|atual_estado.s17~q\,
	datab => \lcd|controladora|atual_estado.s20~q\,
	datac => \lcd|controladora|atual_estado.s19~q\,
	datad => \div_freq_10kHz|tmp~combout\,
	combout => \lcd|datapath|dp_E~3_combout\);

-- Location: LCCOMB_X30_Y26_N4
\lcd|datapath|dp_E\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lcd|datapath|dp_E~combout\ = (!\lcd|datapath|dp_E~1_combout\ & (!\lcd|datapath|dp_E~2_combout\ & (\lcd|datapath|dp_E~6_combout\ & \lcd|datapath|dp_E~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|datapath|dp_E~1_combout\,
	datab => \lcd|datapath|dp_E~2_combout\,
	datac => \lcd|datapath|dp_E~6_combout\,
	datad => \lcd|datapath|dp_E~3_combout\,
	combout => \lcd|datapath|dp_E~combout\);

-- Location: IOIBUF_X8_Y0_N8
\dt_rmv_moeda~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dt_rmv_moeda,
	o => \dt_rmv_moeda~input_o\);

-- Location: IOIBUF_X12_Y0_N1
\dt_rmv_obst~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dt_rmv_obst,
	o => \dt_rmv_obst~input_o\);

ww_dt_player <= \dt_player~output_o\;

ww_dt_start <= \dt_start~output_o\;

ww_dt_end_of_frame <= \dt_end_of_frame~output_o\;

ww_dt_tem_moeda <= \dt_tem_moeda~output_o\;

ww_dt_tem_obstaculo <= \dt_tem_obstaculo~output_o\;

ww_dt_collected <= \dt_collected~output_o\;

ww_dt_ended <= \dt_ended~output_o\;

ww_dt_igual <= \dt_igual~output_o\;

ww_dt_maior <= \dt_maior~output_o\;

ww_dt_menor <= \dt_menor~output_o\;

ww_dt_finished <= \dt_finished~output_o\;

ww_dt_data(0) <= \dt_data[0]~output_o\;

ww_dt_data(1) <= \dt_data[1]~output_o\;

ww_dt_data(2) <= \dt_data[2]~output_o\;

ww_dt_data(3) <= \dt_data[3]~output_o\;

ww_dt_data(4) <= \dt_data[4]~output_o\;

ww_dt_data(5) <= \dt_data[5]~output_o\;

ww_dt_data(6) <= \dt_data[6]~output_o\;

ww_dt_data(7) <= \dt_data[7]~output_o\;

ww_dt_rs <= \dt_rs~output_o\;

ww_dt_e <= \dt_e~output_o\;
END structure;


