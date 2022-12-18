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

-- DATE "12/15/2022 18:55:53"

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
	dt_CLEAR : IN std_logic;
	dt_CLOCK : IN std_logic;
	dt_C1 : IN std_logic;
	dt_C2 : IN std_logic;
	dt_rmv_moeda : IN std_logic;
	dt_rmv_obst : IN std_logic;
	dt_lfsr_shft : IN std_logic;
	dt_set_player : IN std_logic;
	dt_clr_player : IN std_logic;
	dt_clr_start : IN std_logic;
	dt_clr_timer : IN std_logic;
	dt_cmd : IN std_logic_vector(2 DOWNTO 0);
	dt_A : IN std_logic;
	dt_B : IN std_logic;
	dt_START : IN std_logic;
	dt_player : OUT std_logic;
	dt_frame_timer : OUT std_logic;
	dt_collected : OUT std_logic;
	dt_ended : OUT std_logic;
	dt_cmp_Q : OUT std_logic;
	dt_cnt_Q : OUT std_logic_vector(6 DOWNTO 0);
	dt_reg_Q : OUT std_logic_vector(1 DOWNTO 0);
	dt_empate : OUT std_logic;
	dt_1_maior_2 : OUT std_logic;
	dt_2_maior_1 : OUT std_logic
	);
END Data_path;

-- Design Ports Information
-- dt_rmv_moeda	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dt_rmv_obst	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dt_clr_start	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dt_clr_timer	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dt_cmd[0]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dt_cmd[1]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dt_cmd[2]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dt_START	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dt_player	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dt_frame_timer	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dt_collected	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dt_ended	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dt_cmp_Q	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dt_cnt_Q[0]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dt_cnt_Q[1]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dt_cnt_Q[2]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dt_cnt_Q[3]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dt_cnt_Q[4]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dt_cnt_Q[5]	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dt_cnt_Q[6]	=>  Location: PIN_L11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dt_reg_Q[0]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dt_reg_Q[1]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dt_empate	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dt_1_maior_2	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dt_2_maior_1	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dt_set_player	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dt_clr_player	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dt_lfsr_shft	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dt_A	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dt_B	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dt_CLOCK	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dt_CLEAR	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dt_C1	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dt_C2	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_dt_CLEAR : std_logic;
SIGNAL ww_dt_CLOCK : std_logic;
SIGNAL ww_dt_C1 : std_logic;
SIGNAL ww_dt_C2 : std_logic;
SIGNAL ww_dt_rmv_moeda : std_logic;
SIGNAL ww_dt_rmv_obst : std_logic;
SIGNAL ww_dt_lfsr_shft : std_logic;
SIGNAL ww_dt_set_player : std_logic;
SIGNAL ww_dt_clr_player : std_logic;
SIGNAL ww_dt_clr_start : std_logic;
SIGNAL ww_dt_clr_timer : std_logic;
SIGNAL ww_dt_cmd : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_dt_A : std_logic;
SIGNAL ww_dt_B : std_logic;
SIGNAL ww_dt_START : std_logic;
SIGNAL ww_dt_player : std_logic;
SIGNAL ww_dt_frame_timer : std_logic;
SIGNAL ww_dt_collected : std_logic;
SIGNAL ww_dt_ended : std_logic;
SIGNAL ww_dt_cmp_Q : std_logic;
SIGNAL ww_dt_cnt_Q : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_dt_reg_Q : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_dt_empate : std_logic;
SIGNAL ww_dt_1_maior_2 : std_logic;
SIGNAL ww_dt_2_maior_1 : std_logic;
SIGNAL \sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|altsyncram2|ram_block3a0_PORTADATAIN_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|altsyncram2|ram_block3a0_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|altsyncram2|ram_block3a0_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|altsyncram2|ram_block3a0_PORTBDATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \dt_lfsr_shft~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dt_CLOCK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \contador_P2|Add0~0_combout\ : std_logic;
SIGNAL \contador_P2|cnt[1]~_emulated_q\ : std_logic;
SIGNAL \contador_P2|cnt[0]~_emulated_q\ : std_logic;
SIGNAL \sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|cntr1|cmpr4|aneb_result_wire[0]~0_combout\ : std_logic;
SIGNAL \contador_P2|cnt[1]~5_combout\ : std_logic;
SIGNAL \contador_P2|cnt[0]~3_combout\ : std_logic;
SIGNAL \lfsr_instance|intern[0]~2_combout\ : std_logic;
SIGNAL \dt_rmv_moeda~input_o\ : std_logic;
SIGNAL \dt_rmv_obst~input_o\ : std_logic;
SIGNAL \dt_clr_start~input_o\ : std_logic;
SIGNAL \dt_clr_timer~input_o\ : std_logic;
SIGNAL \dt_cmd[0]~input_o\ : std_logic;
SIGNAL \dt_cmd[1]~input_o\ : std_logic;
SIGNAL \dt_cmd[2]~input_o\ : std_logic;
SIGNAL \dt_START~input_o\ : std_logic;
SIGNAL \dt_CLOCK~input_o\ : std_logic;
SIGNAL \dt_CLOCK~inputclkctrl_outclk\ : std_logic;
SIGNAL \lfsr_instance|intern[1]~feeder_combout\ : std_logic;
SIGNAL \dt_player~output_o\ : std_logic;
SIGNAL \dt_frame_timer~output_o\ : std_logic;
SIGNAL \dt_collected~output_o\ : std_logic;
SIGNAL \dt_ended~output_o\ : std_logic;
SIGNAL \dt_cmp_Q~output_o\ : std_logic;
SIGNAL \dt_cnt_Q[0]~output_o\ : std_logic;
SIGNAL \dt_cnt_Q[1]~output_o\ : std_logic;
SIGNAL \dt_cnt_Q[2]~output_o\ : std_logic;
SIGNAL \dt_cnt_Q[3]~output_o\ : std_logic;
SIGNAL \dt_cnt_Q[4]~output_o\ : std_logic;
SIGNAL \dt_cnt_Q[5]~output_o\ : std_logic;
SIGNAL \dt_cnt_Q[6]~output_o\ : std_logic;
SIGNAL \dt_reg_Q[0]~output_o\ : std_logic;
SIGNAL \dt_reg_Q[1]~output_o\ : std_logic;
SIGNAL \dt_empate~output_o\ : std_logic;
SIGNAL \dt_1_maior_2~output_o\ : std_logic;
SIGNAL \dt_2_maior_1~output_o\ : std_logic;
SIGNAL \dt_clr_player~input_o\ : std_logic;
SIGNAL \dt_set_player~input_o\ : std_logic;
SIGNAL \player|qi~1_combout\ : std_logic;
SIGNAL \player|qi~3_combout\ : std_logic;
SIGNAL \player|qi~0_combout\ : std_logic;
SIGNAL \player|qi~_emulated_q\ : std_logic;
SIGNAL \player|qi~2_combout\ : std_logic;
SIGNAL \dt_B~input_o\ : std_logic;
SIGNAL \dt_A~input_o\ : std_logic;
SIGNAL \player_pos|qi~1_combout\ : std_logic;
SIGNAL \player_pos|qi~3_combout\ : std_logic;
SIGNAL \player_pos|qi~0_combout\ : std_logic;
SIGNAL \player_pos|qi~_emulated_q\ : std_logic;
SIGNAL \player_pos|qi~2_combout\ : std_logic;
SIGNAL \dt_lfsr_shft~input_o\ : std_logic;
SIGNAL \dt_lfsr_shft~inputclkctrl_outclk\ : std_logic;
SIGNAL \lfsr_instance|intern[3]~feeder_combout\ : std_logic;
SIGNAL \lfsr_instance|intern[2]~1_combout\ : std_logic;
SIGNAL \lfsr_instance|tmp~0_combout\ : std_logic;
SIGNAL \lfsr_instance|intern[6]~feeder_combout\ : std_logic;
SIGNAL \lfsr_instance|intern[5]~feeder_combout\ : std_logic;
SIGNAL \lfsr_instance|intern[4]~0_combout\ : std_logic;
SIGNAL \lfsr_instance|intern[4]~_wirecell_combout\ : std_logic;
SIGNAL \sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|cntr1|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|cntr1|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|cntr1|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|cntr1|counter_comb_bita3~combout\ : std_logic;
SIGNAL \sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|cntr1|counter_reg_bit[3]~3_combout\ : std_logic;
SIGNAL \sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|cntr1|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|cntr1|counter_comb_bita3~0_combout\ : std_logic;
SIGNAL \sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|cntr1|counter_comb_bita0~combout\ : std_logic;
SIGNAL \sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|cntr1|counter_reg_bit[0]~0_combout\ : std_logic;
SIGNAL \sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|cntr1|counter_comb_bita1~combout\ : std_logic;
SIGNAL \sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|cntr1|counter_reg_bit[1]~1_combout\ : std_logic;
SIGNAL \sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|cntr1|counter_comb_bita2~combout\ : std_logic;
SIGNAL \sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|cntr1|counter_reg_bit[2]~2_combout\ : std_logic;
SIGNAL \sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|altsyncram2|ram_block3a0~portbdataout\ : std_logic;
SIGNAL \comp_pm|cmp_Q~0_combout\ : std_logic;
SIGNAL \sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|altsyncram2|ram_block3a1\ : std_logic;
SIGNAL \comp_po|cmp_Q~0_combout\ : std_logic;
SIGNAL \contador_P1|Add0~0_combout\ : std_logic;
SIGNAL \contador_P1|cnt[1]~5_combout\ : std_logic;
SIGNAL \contador_P1|cnt[0]~0_combout\ : std_logic;
SIGNAL \dt_C1~input_o\ : std_logic;
SIGNAL \contador_P1|cnt[1]~_emulated_q\ : std_logic;
SIGNAL \contador_P1|cnt[1]~4_combout\ : std_logic;
SIGNAL \contador_P1|Add0~1\ : std_logic;
SIGNAL \contador_P1|Add0~2_combout\ : std_logic;
SIGNAL \dt_CLEAR~input_o\ : std_logic;
SIGNAL \contador_P1|cnt[4]~16_combout\ : std_logic;
SIGNAL \contador_P1|Add0~3\ : std_logic;
SIGNAL \contador_P1|Add0~5\ : std_logic;
SIGNAL \contador_P1|Add0~6_combout\ : std_logic;
SIGNAL \contador_P1|Add0~4_combout\ : std_logic;
SIGNAL \contador_P1|LessThan0~0_combout\ : std_logic;
SIGNAL \contador_P1|LessThan0~1_combout\ : std_logic;
SIGNAL \contador_P1|cnt[6]~17_combout\ : std_logic;
SIGNAL \contador_P1|cnt[0]~1_combout\ : std_logic;
SIGNAL \contador_P1|Add0~7\ : std_logic;
SIGNAL \contador_P1|Add0~8_combout\ : std_logic;
SIGNAL \contador_P1|cnt[5]~7_combout\ : std_logic;
SIGNAL \contador_P1|cnt[5]~_emulated_q\ : std_logic;
SIGNAL \contador_P1|cnt[5]~6_combout\ : std_logic;
SIGNAL \contador_P1|Add0~9\ : std_logic;
SIGNAL \contador_P1|Add0~10_combout\ : std_logic;
SIGNAL \contador_P1|cnt[6]~9_combout\ : std_logic;
SIGNAL \contador_P1|cnt[6]~_emulated_q\ : std_logic;
SIGNAL \contador_P1|cnt[6]~8_combout\ : std_logic;
SIGNAL \comp_placar|Equal0~3_combout\ : std_logic;
SIGNAL \contador_P2|cnt[6]~17_combout\ : std_logic;
SIGNAL \contador_P2|Add0~5\ : std_logic;
SIGNAL \contador_P2|Add0~6_combout\ : std_logic;
SIGNAL \contador_P2|cnt[4]~16_combout\ : std_logic;
SIGNAL \dt_C2~input_o\ : std_logic;
SIGNAL \contador_P2|Add0~7\ : std_logic;
SIGNAL \contador_P2|Add0~8_combout\ : std_logic;
SIGNAL \contador_P2|cnt[5]~7_combout\ : std_logic;
SIGNAL \contador_P2|cnt[0]~0_combout\ : std_logic;
SIGNAL \contador_P2|cnt[5]~_emulated_q\ : std_logic;
SIGNAL \contador_P2|cnt[5]~6_combout\ : std_logic;
SIGNAL \contador_P2|Add0~9\ : std_logic;
SIGNAL \contador_P2|Add0~10_combout\ : std_logic;
SIGNAL \contador_P2|cnt[6]~9_combout\ : std_logic;
SIGNAL \contador_P2|cnt[6]~_emulated_q\ : std_logic;
SIGNAL \contador_P2|cnt[6]~8_combout\ : std_logic;
SIGNAL \contador_P2|LessThan0~0_combout\ : std_logic;
SIGNAL \contador_P2|LessThan0~1_combout\ : std_logic;
SIGNAL \contador_P2|cnt[0]~1_combout\ : std_logic;
SIGNAL \contador_P2|cnt[0]~2_combout\ : std_logic;
SIGNAL \contador_P2|Add0~1\ : std_logic;
SIGNAL \contador_P2|Add0~3\ : std_logic;
SIGNAL \contador_P2|Add0~4_combout\ : std_logic;
SIGNAL \comp_placar|Equal0~1_combout\ : std_logic;
SIGNAL \contador_P2|cnt[1]~4_combout\ : std_logic;
SIGNAL \contador_P1|cnt[0]~3_combout\ : std_logic;
SIGNAL \contador_P1|cnt[0]~_emulated_q\ : std_logic;
SIGNAL \contador_P1|cnt[0]~2_combout\ : std_logic;
SIGNAL \comp_placar|Equal0~0_combout\ : std_logic;
SIGNAL \comp_placar|Equal0~2_combout\ : std_logic;
SIGNAL \comp_placar|Equal0~4_combout\ : std_logic;
SIGNAL \comp_placar|LessThan0~1_cout\ : std_logic;
SIGNAL \comp_placar|LessThan0~3_cout\ : std_logic;
SIGNAL \comp_placar|LessThan0~5_cout\ : std_logic;
SIGNAL \comp_placar|LessThan0~7_cout\ : std_logic;
SIGNAL \comp_placar|LessThan0~9_cout\ : std_logic;
SIGNAL \comp_placar|LessThan0~11_cout\ : std_logic;
SIGNAL \comp_placar|LessThan0~12_combout\ : std_logic;
SIGNAL \contador_P2|Add0~2_combout\ : std_logic;
SIGNAL \comp_placar|LessThan1~1_cout\ : std_logic;
SIGNAL \comp_placar|LessThan1~3_cout\ : std_logic;
SIGNAL \comp_placar|LessThan1~5_cout\ : std_logic;
SIGNAL \comp_placar|LessThan1~7_cout\ : std_logic;
SIGNAL \comp_placar|LessThan1~9_cout\ : std_logic;
SIGNAL \comp_placar|LessThan1~11_cout\ : std_logic;
SIGNAL \comp_placar|LessThan1~12_combout\ : std_logic;
SIGNAL \sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|cntr1|counter_reg_bit\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \lfsr_instance|intern\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \contador_P2|cnt\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \contador_P1|cnt\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \contador_P2|ALT_INV_cnt[0]~0_combout\ : std_logic;
SIGNAL \contador_P1|ALT_INV_cnt[0]~0_combout\ : std_logic;
SIGNAL \player_pos|ALT_INV_qi~0_combout\ : std_logic;
SIGNAL \player|ALT_INV_qi~0_combout\ : std_logic;
SIGNAL \contador_P2|ALT_INV_cnt[4]~16_combout\ : std_logic;
SIGNAL \contador_P1|ALT_INV_cnt[4]~16_combout\ : std_logic;
SIGNAL \comp_po|ALT_INV_cmp_Q~0_combout\ : std_logic;
SIGNAL \comp_pm|ALT_INV_cmp_Q~0_combout\ : std_logic;

BEGIN

ww_dt_CLEAR <= dt_CLEAR;
ww_dt_CLOCK <= dt_CLOCK;
ww_dt_C1 <= dt_C1;
ww_dt_C2 <= dt_C2;
ww_dt_rmv_moeda <= dt_rmv_moeda;
ww_dt_rmv_obst <= dt_rmv_obst;
ww_dt_lfsr_shft <= dt_lfsr_shft;
ww_dt_set_player <= dt_set_player;
ww_dt_clr_player <= dt_clr_player;
ww_dt_clr_start <= dt_clr_start;
ww_dt_clr_timer <= dt_clr_timer;
ww_dt_cmd <= dt_cmd;
ww_dt_A <= dt_A;
ww_dt_B <= dt_B;
ww_dt_START <= dt_START;
dt_player <= ww_dt_player;
dt_frame_timer <= ww_dt_frame_timer;
dt_collected <= ww_dt_collected;
dt_ended <= ww_dt_ended;
dt_cmp_Q <= ww_dt_cmp_Q;
dt_cnt_Q <= ww_dt_cnt_Q;
dt_reg_Q <= ww_dt_reg_Q;
dt_empate <= ww_dt_empate;
dt_1_maior_2 <= ww_dt_1_maior_2;
dt_2_maior_1 <= ww_dt_2_maior_1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|altsyncram2|ram_block3a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \lfsr_instance|intern\(5) & \lfsr_instance|intern[4]~_wirecell_combout\);

\sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|altsyncram2|ram_block3a0_PORTAADDR_bus\ <= (\sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|cntr1|counter_reg_bit\(3) & \sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|cntr1|counter_reg_bit\(2)
& \sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|cntr1|counter_reg_bit\(1) & \sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|cntr1|counter_reg_bit\(0));

\sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|altsyncram2|ram_block3a0_PORTBADDR_bus\ <= (\sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|cntr1|counter_reg_bit\(3) & \sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|cntr1|counter_reg_bit\(2)
& \sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|cntr1|counter_reg_bit\(1) & \sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|cntr1|counter_reg_bit\(0));

\sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|altsyncram2|ram_block3a0~portbdataout\ <= \sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|altsyncram2|ram_block3a0_PORTBDATAOUT_bus\(0);
\sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|altsyncram2|ram_block3a1\ <= \sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|altsyncram2|ram_block3a0_PORTBDATAOUT_bus\(1);

\dt_lfsr_shft~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \dt_lfsr_shft~input_o\);

\dt_CLOCK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \dt_CLOCK~input_o\);
\contador_P2|ALT_INV_cnt[0]~0_combout\ <= NOT \contador_P2|cnt[0]~0_combout\;
\contador_P1|ALT_INV_cnt[0]~0_combout\ <= NOT \contador_P1|cnt[0]~0_combout\;
\player_pos|ALT_INV_qi~0_combout\ <= NOT \player_pos|qi~0_combout\;
\player|ALT_INV_qi~0_combout\ <= NOT \player|qi~0_combout\;
\contador_P2|ALT_INV_cnt[4]~16_combout\ <= NOT \contador_P2|cnt[4]~16_combout\;
\contador_P1|ALT_INV_cnt[4]~16_combout\ <= NOT \contador_P1|cnt[4]~16_combout\;
\comp_po|ALT_INV_cmp_Q~0_combout\ <= NOT \comp_po|cmp_Q~0_combout\;
\comp_pm|ALT_INV_cmp_Q~0_combout\ <= NOT \comp_pm|cmp_Q~0_combout\;

-- Location: LCCOMB_X25_Y29_N10
\contador_P2|Add0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \contador_P2|Add0~0_combout\ = (\contador_P2|cnt[1]~4_combout\ & (\contador_P2|cnt[0]~2_combout\ $ (VCC))) # (!\contador_P2|cnt[1]~4_combout\ & (\contador_P2|cnt[0]~2_combout\ & VCC))
-- \contador_P2|Add0~1\ = CARRY((\contador_P2|cnt[1]~4_combout\ & \contador_P2|cnt[0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_P2|cnt[1]~4_combout\,
	datab => \contador_P2|cnt[0]~2_combout\,
	datad => VCC,
	combout => \contador_P2|Add0~0_combout\,
	cout => \contador_P2|Add0~1\);

-- Location: FF_X25_Y29_N25
\contador_P2|cnt[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dt_CLOCK~inputclkctrl_outclk\,
	d => \contador_P2|cnt[1]~5_combout\,
	clrn => \contador_P2|ALT_INV_cnt[0]~0_combout\,
	ena => \dt_C2~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_P2|cnt[1]~_emulated_q\);

-- Location: FF_X25_Y29_N29
\contador_P2|cnt[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dt_CLOCK~inputclkctrl_outclk\,
	asdata => \contador_P2|cnt[0]~3_combout\,
	clrn => \contador_P2|ALT_INV_cnt[0]~0_combout\,
	sload => VCC,
	ena => \dt_C2~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_P2|cnt[0]~_emulated_q\);

-- Location: LCCOMB_X27_Y2_N22
\sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|cntr1|cmpr4|aneb_result_wire[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|cntr1|cmpr4|aneb_result_wire[0]~0_combout\ = (\sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|cntr1|counter_reg_bit\(1) & (\sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|cntr1|counter_reg_bit\(3) & 
-- (\sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|cntr1|counter_reg_bit\(2) & !\sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|cntr1|counter_reg_bit\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|cntr1|counter_reg_bit\(1),
	datab => \sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|cntr1|counter_reg_bit\(3),
	datac => \sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|cntr1|counter_reg_bit\(2),
	datad => \sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|cntr1|counter_reg_bit\(0),
	combout => \sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|cntr1|cmpr4|aneb_result_wire[0]~0_combout\);

-- Location: LCCOMB_X25_Y29_N24
\contador_P2|cnt[1]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \contador_P2|cnt[1]~5_combout\ = \contador_P2|cnt[0]~1_combout\ $ (\contador_P2|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \contador_P2|cnt[0]~1_combout\,
	datad => \contador_P2|Add0~0_combout\,
	combout => \contador_P2|cnt[1]~5_combout\);

-- Location: LCCOMB_X26_Y29_N0
\contador_P2|cnt[0]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \contador_P2|cnt[0]~3_combout\ = \contador_P2|cnt[0]~1_combout\ $ (!\contador_P2|cnt[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_P2|cnt[0]~1_combout\,
	datad => \contador_P2|cnt[0]~2_combout\,
	combout => \contador_P2|cnt[0]~3_combout\);

-- Location: FF_X29_Y2_N27
\lfsr_instance|intern[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dt_lfsr_shft~inputclkctrl_outclk\,
	d => \lfsr_instance|intern[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lfsr_instance|intern\(0));

-- Location: FF_X29_Y2_N11
\lfsr_instance|intern[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dt_lfsr_shft~inputclkctrl_outclk\,
	d => \lfsr_instance|intern[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lfsr_instance|intern\(1));

-- Location: LCCOMB_X29_Y2_N26
\lfsr_instance|intern[0]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lfsr_instance|intern[0]~2_combout\ = !\lfsr_instance|intern\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lfsr_instance|intern\(1),
	combout => \lfsr_instance|intern[0]~2_combout\);

-- Location: IOIBUF_X16_Y0_N15
\dt_CLOCK~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dt_CLOCK,
	o => \dt_CLOCK~input_o\);

-- Location: CLKCTRL_G17
\dt_CLOCK~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \dt_CLOCK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \dt_CLOCK~inputclkctrl_outclk\);

-- Location: LCCOMB_X29_Y2_N10
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

-- Location: IOOBUF_X33_Y15_N2
\dt_player~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \player|qi~2_combout\,
	devoe => ww_devoe,
	o => \dt_player~output_o\);

-- Location: IOOBUF_X12_Y0_N9
\dt_frame_timer~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dt_frame_timer~output_o\);

-- Location: IOOBUF_X24_Y0_N9
\dt_collected~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \comp_pm|ALT_INV_cmp_Q~0_combout\,
	devoe => ww_devoe,
	o => \dt_collected~output_o\);

-- Location: IOOBUF_X24_Y0_N2
\dt_ended~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \comp_po|ALT_INV_cmp_Q~0_combout\,
	devoe => ww_devoe,
	o => \dt_ended~output_o\);

-- Location: IOOBUF_X22_Y0_N2
\dt_cmp_Q~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dt_cmp_Q~output_o\);

-- Location: IOOBUF_X12_Y31_N9
\dt_cnt_Q[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dt_cnt_Q[0]~output_o\);

-- Location: IOOBUF_X12_Y0_N2
\dt_cnt_Q[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dt_cnt_Q[1]~output_o\);

-- Location: IOOBUF_X10_Y31_N2
\dt_cnt_Q[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dt_cnt_Q[2]~output_o\);

-- Location: IOOBUF_X14_Y31_N2
\dt_cnt_Q[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dt_cnt_Q[3]~output_o\);

-- Location: IOOBUF_X29_Y31_N9
\dt_cnt_Q[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dt_cnt_Q[4]~output_o\);

-- Location: IOOBUF_X29_Y0_N9
\dt_cnt_Q[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dt_cnt_Q[5]~output_o\);

-- Location: IOOBUF_X31_Y0_N2
\dt_cnt_Q[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dt_cnt_Q[6]~output_o\);

-- Location: IOOBUF_X22_Y31_N9
\dt_reg_Q[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dt_reg_Q[0]~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\dt_reg_Q[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dt_reg_Q[1]~output_o\);

-- Location: IOOBUF_X24_Y31_N2
\dt_empate~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \comp_placar|Equal0~4_combout\,
	devoe => ww_devoe,
	o => \dt_empate~output_o\);

-- Location: IOOBUF_X22_Y31_N2
\dt_1_maior_2~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \comp_placar|LessThan0~12_combout\,
	devoe => ww_devoe,
	o => \dt_1_maior_2~output_o\);

-- Location: IOOBUF_X24_Y31_N9
\dt_2_maior_1~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \comp_placar|LessThan1~12_combout\,
	devoe => ww_devoe,
	o => \dt_2_maior_1~output_o\);

-- Location: IOIBUF_X33_Y15_N8
\dt_clr_player~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dt_clr_player,
	o => \dt_clr_player~input_o\);

-- Location: IOIBUF_X33_Y14_N8
\dt_set_player~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dt_set_player,
	o => \dt_set_player~input_o\);

-- Location: LCCOMB_X32_Y16_N2
\player|qi~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \player|qi~1_combout\ = (!\dt_clr_player~input_o\ & ((\dt_set_player~input_o\) # (\player|qi~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dt_clr_player~input_o\,
	datac => \dt_set_player~input_o\,
	datad => \player|qi~1_combout\,
	combout => \player|qi~1_combout\);

-- Location: LCCOMB_X32_Y16_N0
\player|qi~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \player|qi~3_combout\ = \player|qi~1_combout\ $ (\player|qi~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \player|qi~1_combout\,
	datad => \player|qi~2_combout\,
	combout => \player|qi~3_combout\);

-- Location: LCCOMB_X32_Y16_N12
\player|qi~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \player|qi~0_combout\ = (\dt_clr_player~input_o\) # (\dt_set_player~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dt_clr_player~input_o\,
	datac => \dt_set_player~input_o\,
	combout => \player|qi~0_combout\);

-- Location: FF_X32_Y16_N1
\player|qi~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dt_CLOCK~inputclkctrl_outclk\,
	d => \player|qi~3_combout\,
	clrn => \player|ALT_INV_qi~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \player|qi~_emulated_q\);

-- Location: LCCOMB_X32_Y16_N18
\player|qi~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \player|qi~2_combout\ = (!\dt_clr_player~input_o\ & ((\dt_set_player~input_o\) # (\player|qi~1_combout\ $ (\player|qi~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \player|qi~1_combout\,
	datab => \dt_set_player~input_o\,
	datac => \dt_clr_player~input_o\,
	datad => \player|qi~_emulated_q\,
	combout => \player|qi~2_combout\);

-- Location: IOIBUF_X26_Y0_N1
\dt_B~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dt_B,
	o => \dt_B~input_o\);

-- Location: IOIBUF_X26_Y0_N8
\dt_A~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dt_A,
	o => \dt_A~input_o\);

-- Location: LCCOMB_X26_Y2_N28
\player_pos|qi~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \player_pos|qi~1_combout\ = (!\dt_B~input_o\ & ((\dt_A~input_o\) # (\player_pos|qi~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dt_A~input_o\,
	datac => \dt_B~input_o\,
	datad => \player_pos|qi~1_combout\,
	combout => \player_pos|qi~1_combout\);

-- Location: LCCOMB_X26_Y2_N2
\player_pos|qi~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \player_pos|qi~3_combout\ = \player_pos|qi~1_combout\ $ (\player_pos|qi~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \player_pos|qi~1_combout\,
	datad => \player_pos|qi~2_combout\,
	combout => \player_pos|qi~3_combout\);

-- Location: LCCOMB_X26_Y2_N22
\player_pos|qi~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \player_pos|qi~0_combout\ = (\dt_A~input_o\) # (\dt_B~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dt_A~input_o\,
	datac => \dt_B~input_o\,
	combout => \player_pos|qi~0_combout\);

-- Location: FF_X26_Y2_N3
\player_pos|qi~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dt_CLOCK~inputclkctrl_outclk\,
	d => \player_pos|qi~3_combout\,
	clrn => \player_pos|ALT_INV_qi~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \player_pos|qi~_emulated_q\);

-- Location: LCCOMB_X26_Y2_N20
\player_pos|qi~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \player_pos|qi~2_combout\ = (!\dt_B~input_o\ & ((\dt_A~input_o\) # (\player_pos|qi~1_combout\ $ (\player_pos|qi~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \player_pos|qi~1_combout\,
	datab => \dt_B~input_o\,
	datac => \dt_A~input_o\,
	datad => \player_pos|qi~_emulated_q\,
	combout => \player_pos|qi~2_combout\);

-- Location: IOIBUF_X16_Y0_N22
\dt_lfsr_shft~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dt_lfsr_shft,
	o => \dt_lfsr_shft~input_o\);

-- Location: CLKCTRL_G19
\dt_lfsr_shft~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \dt_lfsr_shft~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \dt_lfsr_shft~inputclkctrl_outclk\);

-- Location: LCCOMB_X29_Y2_N24
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

-- Location: FF_X29_Y2_N25
\lfsr_instance|intern[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dt_lfsr_shft~inputclkctrl_outclk\,
	d => \lfsr_instance|intern[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lfsr_instance|intern\(3));

-- Location: LCCOMB_X29_Y2_N28
\lfsr_instance|intern[2]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lfsr_instance|intern[2]~1_combout\ = !\lfsr_instance|intern\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lfsr_instance|intern\(3),
	combout => \lfsr_instance|intern[2]~1_combout\);

-- Location: FF_X29_Y2_N29
\lfsr_instance|intern[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dt_lfsr_shft~inputclkctrl_outclk\,
	d => \lfsr_instance|intern[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lfsr_instance|intern\(2));

-- Location: LCCOMB_X29_Y2_N18
\lfsr_instance|tmp~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lfsr_instance|tmp~0_combout\ = \lfsr_instance|intern\(0) $ (\lfsr_instance|intern\(3) $ (\lfsr_instance|intern\(4) $ (!\lfsr_instance|intern\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lfsr_instance|intern\(0),
	datab => \lfsr_instance|intern\(3),
	datac => \lfsr_instance|intern\(4),
	datad => \lfsr_instance|intern\(2),
	combout => \lfsr_instance|tmp~0_combout\);

-- Location: FF_X29_Y2_N19
\lfsr_instance|intern[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dt_lfsr_shft~inputclkctrl_outclk\,
	d => \lfsr_instance|tmp~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lfsr_instance|intern\(7));

-- Location: LCCOMB_X29_Y2_N16
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

-- Location: FF_X29_Y2_N17
\lfsr_instance|intern[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dt_lfsr_shft~inputclkctrl_outclk\,
	d => \lfsr_instance|intern[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lfsr_instance|intern\(6));

-- Location: LCCOMB_X29_Y2_N14
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

-- Location: FF_X29_Y2_N15
\lfsr_instance|intern[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dt_lfsr_shft~inputclkctrl_outclk\,
	d => \lfsr_instance|intern[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lfsr_instance|intern\(5));

-- Location: LCCOMB_X29_Y2_N12
\lfsr_instance|intern[4]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lfsr_instance|intern[4]~0_combout\ = !\lfsr_instance|intern\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lfsr_instance|intern\(5),
	combout => \lfsr_instance|intern[4]~0_combout\);

-- Location: FF_X29_Y2_N13
\lfsr_instance|intern[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dt_lfsr_shft~inputclkctrl_outclk\,
	d => \lfsr_instance|intern[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lfsr_instance|intern\(4));

-- Location: LCCOMB_X29_Y2_N20
\lfsr_instance|intern[4]~_wirecell\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lfsr_instance|intern[4]~_wirecell_combout\ = !\lfsr_instance|intern\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lfsr_instance|intern\(4),
	combout => \lfsr_instance|intern[4]~_wirecell_combout\);

-- Location: LCCOMB_X27_Y2_N0
\sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|cntr1|counter_comb_bita0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|cntr1|counter_comb_bita0~combout\ = \sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|cntr1|counter_reg_bit\(0) $ (VCC)
-- \sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|cntr1|counter_comb_bita0~COUT\ = CARRY(\sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|cntr1|counter_reg_bit\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|cntr1|counter_reg_bit\(0),
	datad => VCC,
	combout => \sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|cntr1|counter_comb_bita0~combout\,
	cout => \sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|cntr1|counter_comb_bita0~COUT\);

-- Location: LCCOMB_X27_Y2_N2
\sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|cntr1|counter_comb_bita1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|cntr1|counter_comb_bita1~combout\ = (\sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|cntr1|counter_reg_bit\(1) & (!\sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|cntr1|counter_comb_bita0~COUT\)) # 
-- (!\sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|cntr1|counter_reg_bit\(1) & ((\sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|cntr1|counter_comb_bita0~COUT\) # (GND)))
-- \sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|cntr1|counter_comb_bita1~COUT\ = CARRY((!\sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|cntr1|counter_comb_bita0~COUT\) # 
-- (!\sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|cntr1|counter_reg_bit\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|cntr1|counter_reg_bit\(1),
	datad => VCC,
	cin => \sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|cntr1|counter_comb_bita0~COUT\,
	combout => \sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|cntr1|counter_comb_bita1~combout\,
	cout => \sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|cntr1|counter_comb_bita1~COUT\);

-- Location: LCCOMB_X27_Y2_N4
\sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|cntr1|counter_comb_bita2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|cntr1|counter_comb_bita2~combout\ = (\sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|cntr1|counter_reg_bit\(2) & (\sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|cntr1|counter_comb_bita1~COUT\ $ 
-- (GND))) # (!\sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|cntr1|counter_reg_bit\(2) & (!\sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|cntr1|counter_comb_bita1~COUT\ & VCC))
-- \sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|cntr1|counter_comb_bita2~COUT\ = CARRY((\sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|cntr1|counter_reg_bit\(2) & !\sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|cntr1|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|cntr1|counter_reg_bit\(2),
	datad => VCC,
	cin => \sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|cntr1|counter_comb_bita1~COUT\,
	combout => \sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|cntr1|counter_comb_bita2~combout\,
	cout => \sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|cntr1|counter_comb_bita2~COUT\);

-- Location: LCCOMB_X27_Y2_N6
\sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|cntr1|counter_comb_bita3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|cntr1|counter_comb_bita3~combout\ = (\sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|cntr1|counter_reg_bit\(3) & (!\sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|cntr1|counter_comb_bita2~COUT\)) # 
-- (!\sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|cntr1|counter_reg_bit\(3) & ((\sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|cntr1|counter_comb_bita2~COUT\) # (GND)))
-- \sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|cntr1|counter_comb_bita3~COUT\ = CARRY((!\sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|cntr1|counter_comb_bita2~COUT\) # 
-- (!\sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|cntr1|counter_reg_bit\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|cntr1|counter_reg_bit\(3),
	datad => VCC,
	cin => \sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|cntr1|counter_comb_bita2~COUT\,
	combout => \sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|cntr1|counter_comb_bita3~combout\,
	cout => \sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|cntr1|counter_comb_bita3~COUT\);

-- Location: LCCOMB_X27_Y2_N24
\sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|cntr1|counter_reg_bit[3]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|cntr1|counter_reg_bit[3]~3_combout\ = (!\sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|cntr1|cmpr4|aneb_result_wire[0]~0_combout\ & 
-- (!\sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|cntr1|counter_comb_bita3~0_combout\ & \sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|cntr1|counter_comb_bita3~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|cntr1|cmpr4|aneb_result_wire[0]~0_combout\,
	datac => \sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|cntr1|counter_comb_bita3~0_combout\,
	datad => \sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|cntr1|counter_comb_bita3~combout\,
	combout => \sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|cntr1|counter_reg_bit[3]~3_combout\);

-- Location: FF_X27_Y2_N25
\sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|cntr1|counter_reg_bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dt_lfsr_shft~inputclkctrl_outclk\,
	d => \sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|cntr1|counter_reg_bit[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|cntr1|counter_reg_bit\(3));

-- Location: LCCOMB_X27_Y2_N8
\sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|cntr1|counter_comb_bita3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|cntr1|counter_comb_bita3~0_combout\ = !\sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|cntr1|counter_comb_bita3~COUT\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|cntr1|counter_comb_bita3~COUT\,
	combout => \sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|cntr1|counter_comb_bita3~0_combout\);

-- Location: LCCOMB_X27_Y2_N10
\sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|cntr1|counter_reg_bit[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|cntr1|counter_reg_bit[0]~0_combout\ = (!\sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|cntr1|cmpr4|aneb_result_wire[0]~0_combout\ & 
-- (!\sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|cntr1|counter_comb_bita3~0_combout\ & \sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|cntr1|counter_comb_bita0~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|cntr1|cmpr4|aneb_result_wire[0]~0_combout\,
	datac => \sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|cntr1|counter_comb_bita3~0_combout\,
	datad => \sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|cntr1|counter_comb_bita0~combout\,
	combout => \sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|cntr1|counter_reg_bit[0]~0_combout\);

-- Location: FF_X27_Y2_N11
\sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|cntr1|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dt_lfsr_shft~inputclkctrl_outclk\,
	d => \sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|cntr1|counter_reg_bit[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|cntr1|counter_reg_bit\(0));

-- Location: LCCOMB_X27_Y2_N12
\sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|cntr1|counter_reg_bit[1]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|cntr1|counter_reg_bit[1]~1_combout\ = (!\sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|cntr1|cmpr4|aneb_result_wire[0]~0_combout\ & 
-- (!\sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|cntr1|counter_comb_bita3~0_combout\ & \sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|cntr1|counter_comb_bita1~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|cntr1|cmpr4|aneb_result_wire[0]~0_combout\,
	datac => \sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|cntr1|counter_comb_bita3~0_combout\,
	datad => \sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|cntr1|counter_comb_bita1~combout\,
	combout => \sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|cntr1|counter_reg_bit[1]~1_combout\);

-- Location: FF_X27_Y2_N13
\sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|cntr1|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dt_lfsr_shft~inputclkctrl_outclk\,
	d => \sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|cntr1|counter_reg_bit[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|cntr1|counter_reg_bit\(1));

-- Location: LCCOMB_X27_Y2_N26
\sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|cntr1|counter_reg_bit[2]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|cntr1|counter_reg_bit[2]~2_combout\ = (!\sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|cntr1|cmpr4|aneb_result_wire[0]~0_combout\ & 
-- (\sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|cntr1|counter_comb_bita2~combout\ & !\sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|cntr1|counter_comb_bita3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|cntr1|cmpr4|aneb_result_wire[0]~0_combout\,
	datab => \sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|cntr1|counter_comb_bita2~combout\,
	datac => \sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|cntr1|counter_comb_bita3~0_combout\,
	combout => \sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|cntr1|counter_reg_bit[2]~2_combout\);

-- Location: FF_X27_Y2_N27
\sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|cntr1|counter_reg_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dt_lfsr_shft~inputclkctrl_outclk\,
	d => \sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|cntr1|counter_reg_bit[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|cntr1|counter_reg_bit\(2));

-- Location: M9K_X28_Y2_N0
\sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|altsyncram2|ram_block3a0\ : cycloneiv_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "sr18bits_dual:sr_moedas|reg18bits:instancia1_reg|altshift_taps:tmp_rtl_0|shift_taps_6am:auto_generated|altsyncram_sh81:altsyncram2|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 36,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 15,
	port_a_logical_ram_width => 2,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 4,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock0",
	port_b_data_width => 36,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 15,
	port_b_logical_ram_depth => 15,
	port_b_logical_ram_width => 2,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => VCC,
	portbre => VCC,
	clk0 => \dt_lfsr_shft~inputclkctrl_outclk\,
	portadatain => \sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|altsyncram2|ram_block3a0_PORTADATAIN_bus\,
	portaaddr => \sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|altsyncram2|ram_block3a0_PORTAADDR_bus\,
	portbaddr => \sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|altsyncram2|ram_block3a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|altsyncram2|ram_block3a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X26_Y2_N0
\comp_pm|cmp_Q~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp_pm|cmp_Q~0_combout\ = \player_pos|qi~2_combout\ $ (\sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|altsyncram2|ram_block3a0~portbdataout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \player_pos|qi~2_combout\,
	datad => \sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|altsyncram2|ram_block3a0~portbdataout\,
	combout => \comp_pm|cmp_Q~0_combout\);

-- Location: LCCOMB_X25_Y2_N0
\comp_po|cmp_Q~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp_po|cmp_Q~0_combout\ = \player_pos|qi~2_combout\ $ (\sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|altsyncram2|ram_block3a1\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \player_pos|qi~2_combout\,
	datad => \sr_moedas|instancia1_reg|tmp_rtl_0|auto_generated|altsyncram2|ram_block3a1\,
	combout => \comp_po|cmp_Q~0_combout\);

-- Location: LCCOMB_X26_Y30_N18
\contador_P1|Add0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \contador_P1|Add0~0_combout\ = (\contador_P1|cnt[0]~2_combout\ & (\contador_P1|cnt[1]~4_combout\ $ (VCC))) # (!\contador_P1|cnt[0]~2_combout\ & (\contador_P1|cnt[1]~4_combout\ & VCC))
-- \contador_P1|Add0~1\ = CARRY((\contador_P1|cnt[0]~2_combout\ & \contador_P1|cnt[1]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_P1|cnt[0]~2_combout\,
	datab => \contador_P1|cnt[1]~4_combout\,
	datad => VCC,
	combout => \contador_P1|Add0~0_combout\,
	cout => \contador_P1|Add0~1\);

-- Location: LCCOMB_X26_Y30_N8
\contador_P1|cnt[1]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \contador_P1|cnt[1]~5_combout\ = \contador_P1|cnt[0]~1_combout\ $ (\contador_P1|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_P1|cnt[0]~1_combout\,
	datad => \contador_P1|Add0~0_combout\,
	combout => \contador_P1|cnt[1]~5_combout\);

-- Location: LCCOMB_X26_Y30_N12
\contador_P1|cnt[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \contador_P1|cnt[0]~0_combout\ = (\contador_P1|LessThan0~1_combout\) # (\contador_P1|cnt[6]~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \contador_P1|LessThan0~1_combout\,
	datad => \contador_P1|cnt[6]~17_combout\,
	combout => \contador_P1|cnt[0]~0_combout\);

-- Location: IOIBUF_X26_Y31_N8
\dt_C1~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dt_C1,
	o => \dt_C1~input_o\);

-- Location: FF_X26_Y30_N9
\contador_P1|cnt[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dt_CLOCK~inputclkctrl_outclk\,
	d => \contador_P1|cnt[1]~5_combout\,
	clrn => \contador_P1|ALT_INV_cnt[0]~0_combout\,
	ena => \dt_C1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_P1|cnt[1]~_emulated_q\);

-- Location: LCCOMB_X26_Y30_N14
\contador_P1|cnt[1]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \contador_P1|cnt[1]~4_combout\ = (!\contador_P1|cnt[6]~17_combout\ & ((\contador_P1|LessThan0~1_combout\) # (\contador_P1|cnt[0]~1_combout\ $ (\contador_P1|cnt[1]~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_P1|cnt[0]~1_combout\,
	datab => \contador_P1|cnt[1]~_emulated_q\,
	datac => \contador_P1|LessThan0~1_combout\,
	datad => \contador_P1|cnt[6]~17_combout\,
	combout => \contador_P1|cnt[1]~4_combout\);

-- Location: LCCOMB_X26_Y30_N20
\contador_P1|Add0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \contador_P1|Add0~2_combout\ = (\contador_P1|cnt\(2) & (!\contador_P1|Add0~1\)) # (!\contador_P1|cnt\(2) & ((\contador_P1|Add0~1\) # (GND)))
-- \contador_P1|Add0~3\ = CARRY((!\contador_P1|Add0~1\) # (!\contador_P1|cnt\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador_P1|cnt\(2),
	datad => VCC,
	cin => \contador_P1|Add0~1\,
	combout => \contador_P1|Add0~2_combout\,
	cout => \contador_P1|Add0~3\);

-- Location: IOIBUF_X26_Y31_N1
\dt_CLEAR~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dt_CLEAR,
	o => \dt_CLEAR~input_o\);

-- Location: LCCOMB_X26_Y30_N16
\contador_P1|cnt[4]~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \contador_P1|cnt[4]~16_combout\ = (\dt_CLEAR~input_o\) # (\contador_P1|LessThan0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dt_CLEAR~input_o\,
	datac => \contador_P1|LessThan0~1_combout\,
	combout => \contador_P1|cnt[4]~16_combout\);

-- Location: FF_X26_Y30_N21
\contador_P1|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dt_CLOCK~inputclkctrl_outclk\,
	d => \contador_P1|Add0~2_combout\,
	clrn => \contador_P1|ALT_INV_cnt[4]~16_combout\,
	ena => \dt_C1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_P1|cnt\(2));

-- Location: LCCOMB_X26_Y30_N22
\contador_P1|Add0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \contador_P1|Add0~4_combout\ = (\contador_P1|cnt\(3) & (\contador_P1|Add0~3\ $ (GND))) # (!\contador_P1|cnt\(3) & (!\contador_P1|Add0~3\ & VCC))
-- \contador_P1|Add0~5\ = CARRY((\contador_P1|cnt\(3) & !\contador_P1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contador_P1|cnt\(3),
	datad => VCC,
	cin => \contador_P1|Add0~3\,
	combout => \contador_P1|Add0~4_combout\,
	cout => \contador_P1|Add0~5\);

-- Location: LCCOMB_X26_Y30_N24
\contador_P1|Add0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \contador_P1|Add0~6_combout\ = (\contador_P1|cnt\(4) & (!\contador_P1|Add0~5\)) # (!\contador_P1|cnt\(4) & ((\contador_P1|Add0~5\) # (GND)))
-- \contador_P1|Add0~7\ = CARRY((!\contador_P1|Add0~5\) # (!\contador_P1|cnt\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador_P1|cnt\(4),
	datad => VCC,
	cin => \contador_P1|Add0~5\,
	combout => \contador_P1|Add0~6_combout\,
	cout => \contador_P1|Add0~7\);

-- Location: FF_X26_Y30_N25
\contador_P1|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dt_CLOCK~inputclkctrl_outclk\,
	d => \contador_P1|Add0~6_combout\,
	clrn => \contador_P1|ALT_INV_cnt[4]~16_combout\,
	ena => \dt_C1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_P1|cnt\(4));

-- Location: FF_X26_Y30_N23
\contador_P1|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dt_CLOCK~inputclkctrl_outclk\,
	d => \contador_P1|Add0~4_combout\,
	clrn => \contador_P1|ALT_INV_cnt[4]~16_combout\,
	ena => \dt_C1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_P1|cnt\(3));

-- Location: LCCOMB_X26_Y30_N30
\contador_P1|LessThan0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \contador_P1|LessThan0~0_combout\ = (\contador_P1|cnt[5]~6_combout\ & ((\contador_P1|cnt\(4)) # ((\contador_P1|cnt\(3)) # (\contador_P1|cnt\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_P1|cnt[5]~6_combout\,
	datab => \contador_P1|cnt\(4),
	datac => \contador_P1|cnt\(3),
	datad => \contador_P1|cnt\(2),
	combout => \contador_P1|LessThan0~0_combout\);

-- Location: LCCOMB_X26_Y30_N4
\contador_P1|LessThan0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \contador_P1|LessThan0~1_combout\ = (\contador_P1|LessThan0~0_combout\ & \contador_P1|cnt[6]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \contador_P1|LessThan0~0_combout\,
	datad => \contador_P1|cnt[6]~8_combout\,
	combout => \contador_P1|LessThan0~1_combout\);

-- Location: LCCOMB_X26_Y30_N2
\contador_P1|cnt[6]~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \contador_P1|cnt[6]~17_combout\ = (!\contador_P1|LessThan0~1_combout\ & \dt_CLEAR~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \contador_P1|LessThan0~1_combout\,
	datad => \dt_CLEAR~input_o\,
	combout => \contador_P1|cnt[6]~17_combout\);

-- Location: LCCOMB_X25_Y30_N2
\contador_P1|cnt[0]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \contador_P1|cnt[0]~1_combout\ = (!\contador_P1|cnt[6]~17_combout\ & ((\contador_P1|LessThan0~1_combout\) # (\contador_P1|cnt[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_P1|LessThan0~1_combout\,
	datac => \contador_P1|cnt[6]~17_combout\,
	datad => \contador_P1|cnt[0]~1_combout\,
	combout => \contador_P1|cnt[0]~1_combout\);

-- Location: LCCOMB_X26_Y30_N26
\contador_P1|Add0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \contador_P1|Add0~8_combout\ = (\contador_P1|cnt[5]~6_combout\ & (\contador_P1|Add0~7\ $ (GND))) # (!\contador_P1|cnt[5]~6_combout\ & (!\contador_P1|Add0~7\ & VCC))
-- \contador_P1|Add0~9\ = CARRY((\contador_P1|cnt[5]~6_combout\ & !\contador_P1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador_P1|cnt[5]~6_combout\,
	datad => VCC,
	cin => \contador_P1|Add0~7\,
	combout => \contador_P1|Add0~8_combout\,
	cout => \contador_P1|Add0~9\);

-- Location: LCCOMB_X26_Y30_N10
\contador_P1|cnt[5]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \contador_P1|cnt[5]~7_combout\ = \contador_P1|Add0~8_combout\ $ (\contador_P1|cnt[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \contador_P1|Add0~8_combout\,
	datad => \contador_P1|cnt[0]~1_combout\,
	combout => \contador_P1|cnt[5]~7_combout\);

-- Location: FF_X26_Y30_N11
\contador_P1|cnt[5]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dt_CLOCK~inputclkctrl_outclk\,
	d => \contador_P1|cnt[5]~7_combout\,
	clrn => \contador_P1|ALT_INV_cnt[0]~0_combout\,
	ena => \dt_C1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_P1|cnt[5]~_emulated_q\);

-- Location: LCCOMB_X26_Y30_N0
\contador_P1|cnt[5]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \contador_P1|cnt[5]~6_combout\ = (!\contador_P1|cnt[6]~17_combout\ & ((\contador_P1|LessThan0~1_combout\) # (\contador_P1|cnt[0]~1_combout\ $ (\contador_P1|cnt[5]~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_P1|cnt[0]~1_combout\,
	datab => \contador_P1|LessThan0~1_combout\,
	datac => \contador_P1|cnt[6]~17_combout\,
	datad => \contador_P1|cnt[5]~_emulated_q\,
	combout => \contador_P1|cnt[5]~6_combout\);

-- Location: LCCOMB_X26_Y30_N28
\contador_P1|Add0~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \contador_P1|Add0~10_combout\ = \contador_P1|Add0~9\ $ (\contador_P1|cnt[6]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \contador_P1|cnt[6]~8_combout\,
	cin => \contador_P1|Add0~9\,
	combout => \contador_P1|Add0~10_combout\);

-- Location: LCCOMB_X25_Y30_N0
\contador_P1|cnt[6]~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \contador_P1|cnt[6]~9_combout\ = \contador_P1|cnt[0]~1_combout\ $ (\contador_P1|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \contador_P1|cnt[0]~1_combout\,
	datad => \contador_P1|Add0~10_combout\,
	combout => \contador_P1|cnt[6]~9_combout\);

-- Location: FF_X25_Y30_N1
\contador_P1|cnt[6]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dt_CLOCK~inputclkctrl_outclk\,
	d => \contador_P1|cnt[6]~9_combout\,
	clrn => \contador_P1|ALT_INV_cnt[0]~0_combout\,
	ena => \dt_C1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_P1|cnt[6]~_emulated_q\);

-- Location: LCCOMB_X25_Y30_N10
\contador_P1|cnt[6]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \contador_P1|cnt[6]~8_combout\ = (!\contador_P1|cnt[6]~17_combout\ & ((\contador_P1|LessThan0~1_combout\) # (\contador_P1|cnt[0]~1_combout\ $ (\contador_P1|cnt[6]~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_P1|LessThan0~1_combout\,
	datab => \contador_P1|cnt[6]~17_combout\,
	datac => \contador_P1|cnt[0]~1_combout\,
	datad => \contador_P1|cnt[6]~_emulated_q\,
	combout => \contador_P1|cnt[6]~8_combout\);

-- Location: LCCOMB_X26_Y29_N30
\comp_placar|Equal0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp_placar|Equal0~3_combout\ = \contador_P2|cnt[6]~8_combout\ $ (\contador_P1|cnt[6]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_P2|cnt[6]~8_combout\,
	datac => \contador_P1|cnt[6]~8_combout\,
	combout => \comp_placar|Equal0~3_combout\);

-- Location: LCCOMB_X25_Y29_N28
\contador_P2|cnt[6]~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \contador_P2|cnt[6]~17_combout\ = (!\contador_P2|LessThan0~1_combout\ & \dt_CLEAR~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_P2|LessThan0~1_combout\,
	datad => \dt_CLEAR~input_o\,
	combout => \contador_P2|cnt[6]~17_combout\);

-- Location: LCCOMB_X25_Y29_N14
\contador_P2|Add0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \contador_P2|Add0~4_combout\ = (\contador_P2|cnt\(3) & (\contador_P2|Add0~3\ $ (GND))) # (!\contador_P2|cnt\(3) & (!\contador_P2|Add0~3\ & VCC))
-- \contador_P2|Add0~5\ = CARRY((\contador_P2|cnt\(3) & !\contador_P2|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador_P2|cnt\(3),
	datad => VCC,
	cin => \contador_P2|Add0~3\,
	combout => \contador_P2|Add0~4_combout\,
	cout => \contador_P2|Add0~5\);

-- Location: LCCOMB_X25_Y29_N16
\contador_P2|Add0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \contador_P2|Add0~6_combout\ = (\contador_P2|cnt\(4) & (!\contador_P2|Add0~5\)) # (!\contador_P2|cnt\(4) & ((\contador_P2|Add0~5\) # (GND)))
-- \contador_P2|Add0~7\ = CARRY((!\contador_P2|Add0~5\) # (!\contador_P2|cnt\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador_P2|cnt\(4),
	datad => VCC,
	cin => \contador_P2|Add0~5\,
	combout => \contador_P2|Add0~6_combout\,
	cout => \contador_P2|Add0~7\);

-- Location: LCCOMB_X25_Y29_N0
\contador_P2|cnt[4]~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \contador_P2|cnt[4]~16_combout\ = (\dt_CLEAR~input_o\) # (\contador_P2|LessThan0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dt_CLEAR~input_o\,
	datac => \contador_P2|LessThan0~1_combout\,
	combout => \contador_P2|cnt[4]~16_combout\);

-- Location: IOIBUF_X29_Y31_N1
\dt_C2~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dt_C2,
	o => \dt_C2~input_o\);

-- Location: FF_X25_Y29_N17
\contador_P2|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dt_CLOCK~inputclkctrl_outclk\,
	d => \contador_P2|Add0~6_combout\,
	clrn => \contador_P2|ALT_INV_cnt[4]~16_combout\,
	ena => \dt_C2~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_P2|cnt\(4));

-- Location: LCCOMB_X25_Y29_N18
\contador_P2|Add0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \contador_P2|Add0~8_combout\ = (\contador_P2|cnt[5]~6_combout\ & (\contador_P2|Add0~7\ $ (GND))) # (!\contador_P2|cnt[5]~6_combout\ & (!\contador_P2|Add0~7\ & VCC))
-- \contador_P2|Add0~9\ = CARRY((\contador_P2|cnt[5]~6_combout\ & !\contador_P2|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador_P2|cnt[5]~6_combout\,
	datad => VCC,
	cin => \contador_P2|Add0~7\,
	combout => \contador_P2|Add0~8_combout\,
	cout => \contador_P2|Add0~9\);

-- Location: LCCOMB_X25_Y29_N6
\contador_P2|cnt[5]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \contador_P2|cnt[5]~7_combout\ = \contador_P2|cnt[0]~1_combout\ $ (\contador_P2|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \contador_P2|cnt[0]~1_combout\,
	datad => \contador_P2|Add0~8_combout\,
	combout => \contador_P2|cnt[5]~7_combout\);

-- Location: LCCOMB_X25_Y29_N4
\contador_P2|cnt[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \contador_P2|cnt[0]~0_combout\ = (\contador_P2|LessThan0~1_combout\) # (\contador_P2|cnt[6]~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \contador_P2|LessThan0~1_combout\,
	datad => \contador_P2|cnt[6]~17_combout\,
	combout => \contador_P2|cnt[0]~0_combout\);

-- Location: FF_X25_Y29_N7
\contador_P2|cnt[5]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dt_CLOCK~inputclkctrl_outclk\,
	d => \contador_P2|cnt[5]~7_combout\,
	clrn => \contador_P2|ALT_INV_cnt[0]~0_combout\,
	ena => \dt_C2~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_P2|cnt[5]~_emulated_q\);

-- Location: LCCOMB_X25_Y29_N8
\contador_P2|cnt[5]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \contador_P2|cnt[5]~6_combout\ = (!\contador_P2|cnt[6]~17_combout\ & ((\contador_P2|LessThan0~1_combout\) # (\contador_P2|cnt[0]~1_combout\ $ (\contador_P2|cnt[5]~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_P2|cnt[6]~17_combout\,
	datab => \contador_P2|cnt[0]~1_combout\,
	datac => \contador_P2|LessThan0~1_combout\,
	datad => \contador_P2|cnt[5]~_emulated_q\,
	combout => \contador_P2|cnt[5]~6_combout\);

-- Location: LCCOMB_X25_Y29_N20
\contador_P2|Add0~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \contador_P2|Add0~10_combout\ = \contador_P2|Add0~9\ $ (\contador_P2|cnt[6]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \contador_P2|cnt[6]~8_combout\,
	cin => \contador_P2|Add0~9\,
	combout => \contador_P2|Add0~10_combout\);

-- Location: LCCOMB_X25_Y29_N22
\contador_P2|cnt[6]~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \contador_P2|cnt[6]~9_combout\ = \contador_P2|cnt[0]~1_combout\ $ (\contador_P2|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \contador_P2|cnt[0]~1_combout\,
	datad => \contador_P2|Add0~10_combout\,
	combout => \contador_P2|cnt[6]~9_combout\);

-- Location: FF_X25_Y29_N23
\contador_P2|cnt[6]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dt_CLOCK~inputclkctrl_outclk\,
	d => \contador_P2|cnt[6]~9_combout\,
	clrn => \contador_P2|ALT_INV_cnt[0]~0_combout\,
	ena => \dt_C2~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_P2|cnt[6]~_emulated_q\);

-- Location: LCCOMB_X26_Y29_N26
\contador_P2|cnt[6]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \contador_P2|cnt[6]~8_combout\ = (!\contador_P2|cnt[6]~17_combout\ & ((\contador_P2|LessThan0~1_combout\) # (\contador_P2|cnt[0]~1_combout\ $ (\contador_P2|cnt[6]~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_P2|LessThan0~1_combout\,
	datab => \contador_P2|cnt[6]~17_combout\,
	datac => \contador_P2|cnt[0]~1_combout\,
	datad => \contador_P2|cnt[6]~_emulated_q\,
	combout => \contador_P2|cnt[6]~8_combout\);

-- Location: LCCOMB_X26_Y29_N6
\contador_P2|LessThan0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \contador_P2|LessThan0~0_combout\ = (\contador_P2|cnt[5]~6_combout\ & ((\contador_P2|cnt\(2)) # ((\contador_P2|cnt\(4)) # (\contador_P2|cnt\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_P2|cnt\(2),
	datab => \contador_P2|cnt[5]~6_combout\,
	datac => \contador_P2|cnt\(4),
	datad => \contador_P2|cnt\(3),
	combout => \contador_P2|LessThan0~0_combout\);

-- Location: LCCOMB_X25_Y29_N26
\contador_P2|LessThan0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \contador_P2|LessThan0~1_combout\ = (\contador_P2|cnt[6]~8_combout\ & \contador_P2|LessThan0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \contador_P2|cnt[6]~8_combout\,
	datad => \contador_P2|LessThan0~0_combout\,
	combout => \contador_P2|LessThan0~1_combout\);

-- Location: LCCOMB_X26_Y29_N10
\contador_P2|cnt[0]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \contador_P2|cnt[0]~1_combout\ = (!\contador_P2|cnt[6]~17_combout\ & ((\contador_P2|LessThan0~1_combout\) # (\contador_P2|cnt[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \contador_P2|cnt[6]~17_combout\,
	datac => \contador_P2|LessThan0~1_combout\,
	datad => \contador_P2|cnt[0]~1_combout\,
	combout => \contador_P2|cnt[0]~1_combout\);

-- Location: LCCOMB_X25_Y29_N2
\contador_P2|cnt[0]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \contador_P2|cnt[0]~2_combout\ = (!\contador_P2|cnt[6]~17_combout\ & ((\contador_P2|LessThan0~1_combout\) # (\contador_P2|cnt[0]~_emulated_q\ $ (\contador_P2|cnt[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_P2|cnt[0]~_emulated_q\,
	datab => \contador_P2|cnt[0]~1_combout\,
	datac => \contador_P2|LessThan0~1_combout\,
	datad => \contador_P2|cnt[6]~17_combout\,
	combout => \contador_P2|cnt[0]~2_combout\);

-- Location: LCCOMB_X25_Y29_N12
\contador_P2|Add0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \contador_P2|Add0~2_combout\ = (\contador_P2|cnt\(2) & (!\contador_P2|Add0~1\)) # (!\contador_P2|cnt\(2) & ((\contador_P2|Add0~1\) # (GND)))
-- \contador_P2|Add0~3\ = CARRY((!\contador_P2|Add0~1\) # (!\contador_P2|cnt\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contador_P2|cnt\(2),
	datad => VCC,
	cin => \contador_P2|Add0~1\,
	combout => \contador_P2|Add0~2_combout\,
	cout => \contador_P2|Add0~3\);

-- Location: FF_X25_Y29_N15
\contador_P2|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dt_CLOCK~inputclkctrl_outclk\,
	d => \contador_P2|Add0~4_combout\,
	clrn => \contador_P2|ALT_INV_cnt[4]~16_combout\,
	ena => \dt_C2~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_P2|cnt\(3));

-- Location: LCCOMB_X26_Y29_N2
\comp_placar|Equal0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp_placar|Equal0~1_combout\ = (\contador_P2|cnt\(2) & (\contador_P1|cnt\(2) & (\contador_P1|cnt\(3) $ (!\contador_P2|cnt\(3))))) # (!\contador_P2|cnt\(2) & (!\contador_P1|cnt\(2) & (\contador_P1|cnt\(3) $ (!\contador_P2|cnt\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_P2|cnt\(2),
	datab => \contador_P1|cnt\(2),
	datac => \contador_P1|cnt\(3),
	datad => \contador_P2|cnt\(3),
	combout => \comp_placar|Equal0~1_combout\);

-- Location: LCCOMB_X25_Y29_N30
\contador_P2|cnt[1]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \contador_P2|cnt[1]~4_combout\ = (!\contador_P2|cnt[6]~17_combout\ & ((\contador_P2|LessThan0~1_combout\) # (\contador_P2|cnt[1]~_emulated_q\ $ (\contador_P2|cnt[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_P2|cnt[1]~_emulated_q\,
	datab => \contador_P2|cnt[0]~1_combout\,
	datac => \contador_P2|LessThan0~1_combout\,
	datad => \contador_P2|cnt[6]~17_combout\,
	combout => \contador_P2|cnt[1]~4_combout\);

-- Location: LCCOMB_X25_Y30_N4
\contador_P1|cnt[0]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \contador_P1|cnt[0]~3_combout\ = \contador_P1|cnt[0]~1_combout\ $ (!\contador_P1|cnt[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \contador_P1|cnt[0]~1_combout\,
	datad => \contador_P1|cnt[0]~2_combout\,
	combout => \contador_P1|cnt[0]~3_combout\);

-- Location: FF_X26_Y30_N13
\contador_P1|cnt[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dt_CLOCK~inputclkctrl_outclk\,
	asdata => \contador_P1|cnt[0]~3_combout\,
	clrn => \contador_P1|ALT_INV_cnt[0]~0_combout\,
	sload => VCC,
	ena => \dt_C1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_P1|cnt[0]~_emulated_q\);

-- Location: LCCOMB_X26_Y30_N6
\contador_P1|cnt[0]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \contador_P1|cnt[0]~2_combout\ = (!\contador_P1|cnt[6]~17_combout\ & ((\contador_P1|LessThan0~1_combout\) # (\contador_P1|cnt[0]~1_combout\ $ (\contador_P1|cnt[0]~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_P1|cnt[0]~1_combout\,
	datab => \contador_P1|cnt[0]~_emulated_q\,
	datac => \contador_P1|LessThan0~1_combout\,
	datad => \contador_P1|cnt[6]~17_combout\,
	combout => \contador_P1|cnt[0]~2_combout\);

-- Location: LCCOMB_X26_Y29_N8
\comp_placar|Equal0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp_placar|Equal0~0_combout\ = (\contador_P1|cnt[1]~4_combout\ & (\contador_P2|cnt[1]~4_combout\ & (\contador_P1|cnt[0]~2_combout\ $ (!\contador_P2|cnt[0]~2_combout\)))) # (!\contador_P1|cnt[1]~4_combout\ & (!\contador_P2|cnt[1]~4_combout\ & 
-- (\contador_P1|cnt[0]~2_combout\ $ (!\contador_P2|cnt[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_P1|cnt[1]~4_combout\,
	datab => \contador_P2|cnt[1]~4_combout\,
	datac => \contador_P1|cnt[0]~2_combout\,
	datad => \contador_P2|cnt[0]~2_combout\,
	combout => \comp_placar|Equal0~0_combout\);

-- Location: LCCOMB_X26_Y29_N28
\comp_placar|Equal0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp_placar|Equal0~2_combout\ = (\contador_P1|cnt[5]~6_combout\ & (\contador_P2|cnt[5]~6_combout\ & (\contador_P1|cnt\(4) $ (!\contador_P2|cnt\(4))))) # (!\contador_P1|cnt[5]~6_combout\ & (!\contador_P2|cnt[5]~6_combout\ & (\contador_P1|cnt\(4) $ 
-- (!\contador_P2|cnt\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_P1|cnt[5]~6_combout\,
	datab => \contador_P1|cnt\(4),
	datac => \contador_P2|cnt\(4),
	datad => \contador_P2|cnt[5]~6_combout\,
	combout => \comp_placar|Equal0~2_combout\);

-- Location: LCCOMB_X26_Y29_N4
\comp_placar|Equal0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp_placar|Equal0~4_combout\ = (!\comp_placar|Equal0~3_combout\ & (\comp_placar|Equal0~1_combout\ & (\comp_placar|Equal0~0_combout\ & \comp_placar|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comp_placar|Equal0~3_combout\,
	datab => \comp_placar|Equal0~1_combout\,
	datac => \comp_placar|Equal0~0_combout\,
	datad => \comp_placar|Equal0~2_combout\,
	combout => \comp_placar|Equal0~4_combout\);

-- Location: LCCOMB_X26_Y29_N12
\comp_placar|LessThan0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp_placar|LessThan0~1_cout\ = CARRY((!\contador_P2|cnt[0]~2_combout\ & \contador_P1|cnt[0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contador_P2|cnt[0]~2_combout\,
	datab => \contador_P1|cnt[0]~2_combout\,
	datad => VCC,
	cout => \comp_placar|LessThan0~1_cout\);

-- Location: LCCOMB_X26_Y29_N14
\comp_placar|LessThan0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp_placar|LessThan0~3_cout\ = CARRY((\contador_P1|cnt[1]~4_combout\ & (\contador_P2|cnt[1]~4_combout\ & !\comp_placar|LessThan0~1_cout\)) # (!\contador_P1|cnt[1]~4_combout\ & ((\contador_P2|cnt[1]~4_combout\) # (!\comp_placar|LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contador_P1|cnt[1]~4_combout\,
	datab => \contador_P2|cnt[1]~4_combout\,
	datad => VCC,
	cin => \comp_placar|LessThan0~1_cout\,
	cout => \comp_placar|LessThan0~3_cout\);

-- Location: LCCOMB_X26_Y29_N16
\comp_placar|LessThan0~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp_placar|LessThan0~5_cout\ = CARRY((\contador_P2|cnt\(2) & (\contador_P1|cnt\(2) & !\comp_placar|LessThan0~3_cout\)) # (!\contador_P2|cnt\(2) & ((\contador_P1|cnt\(2)) # (!\comp_placar|LessThan0~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contador_P2|cnt\(2),
	datab => \contador_P1|cnt\(2),
	datad => VCC,
	cin => \comp_placar|LessThan0~3_cout\,
	cout => \comp_placar|LessThan0~5_cout\);

-- Location: LCCOMB_X26_Y29_N18
\comp_placar|LessThan0~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp_placar|LessThan0~7_cout\ = CARRY((\contador_P1|cnt\(3) & (\contador_P2|cnt\(3) & !\comp_placar|LessThan0~5_cout\)) # (!\contador_P1|cnt\(3) & ((\contador_P2|cnt\(3)) # (!\comp_placar|LessThan0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contador_P1|cnt\(3),
	datab => \contador_P2|cnt\(3),
	datad => VCC,
	cin => \comp_placar|LessThan0~5_cout\,
	cout => \comp_placar|LessThan0~7_cout\);

-- Location: LCCOMB_X26_Y29_N20
\comp_placar|LessThan0~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp_placar|LessThan0~9_cout\ = CARRY((\contador_P2|cnt\(4) & (\contador_P1|cnt\(4) & !\comp_placar|LessThan0~7_cout\)) # (!\contador_P2|cnt\(4) & ((\contador_P1|cnt\(4)) # (!\comp_placar|LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contador_P2|cnt\(4),
	datab => \contador_P1|cnt\(4),
	datad => VCC,
	cin => \comp_placar|LessThan0~7_cout\,
	cout => \comp_placar|LessThan0~9_cout\);

-- Location: LCCOMB_X26_Y29_N22
\comp_placar|LessThan0~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp_placar|LessThan0~11_cout\ = CARRY((\contador_P2|cnt[5]~6_combout\ & ((!\comp_placar|LessThan0~9_cout\) # (!\contador_P1|cnt[5]~6_combout\))) # (!\contador_P2|cnt[5]~6_combout\ & (!\contador_P1|cnt[5]~6_combout\ & !\comp_placar|LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contador_P2|cnt[5]~6_combout\,
	datab => \contador_P1|cnt[5]~6_combout\,
	datad => VCC,
	cin => \comp_placar|LessThan0~9_cout\,
	cout => \comp_placar|LessThan0~11_cout\);

-- Location: LCCOMB_X26_Y29_N24
\comp_placar|LessThan0~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp_placar|LessThan0~12_combout\ = (\contador_P2|cnt[6]~8_combout\ & (\contador_P1|cnt[6]~8_combout\ & !\comp_placar|LessThan0~11_cout\)) # (!\contador_P2|cnt[6]~8_combout\ & ((\contador_P1|cnt[6]~8_combout\) # (!\comp_placar|LessThan0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contador_P2|cnt[6]~8_combout\,
	datab => \contador_P1|cnt[6]~8_combout\,
	cin => \comp_placar|LessThan0~11_cout\,
	combout => \comp_placar|LessThan0~12_combout\);

-- Location: FF_X25_Y29_N13
\contador_P2|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dt_CLOCK~inputclkctrl_outclk\,
	d => \contador_P2|Add0~2_combout\,
	clrn => \contador_P2|ALT_INV_cnt[4]~16_combout\,
	ena => \dt_C2~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_P2|cnt\(2));

-- Location: LCCOMB_X25_Y30_N12
\comp_placar|LessThan1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp_placar|LessThan1~1_cout\ = CARRY((!\contador_P1|cnt[0]~2_combout\ & \contador_P2|cnt[0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contador_P1|cnt[0]~2_combout\,
	datab => \contador_P2|cnt[0]~2_combout\,
	datad => VCC,
	cout => \comp_placar|LessThan1~1_cout\);

-- Location: LCCOMB_X25_Y30_N14
\comp_placar|LessThan1~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp_placar|LessThan1~3_cout\ = CARRY((\contador_P2|cnt[1]~4_combout\ & (\contador_P1|cnt[1]~4_combout\ & !\comp_placar|LessThan1~1_cout\)) # (!\contador_P2|cnt[1]~4_combout\ & ((\contador_P1|cnt[1]~4_combout\) # (!\comp_placar|LessThan1~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contador_P2|cnt[1]~4_combout\,
	datab => \contador_P1|cnt[1]~4_combout\,
	datad => VCC,
	cin => \comp_placar|LessThan1~1_cout\,
	cout => \comp_placar|LessThan1~3_cout\);

-- Location: LCCOMB_X25_Y30_N16
\comp_placar|LessThan1~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp_placar|LessThan1~5_cout\ = CARRY((\contador_P1|cnt\(2) & (\contador_P2|cnt\(2) & !\comp_placar|LessThan1~3_cout\)) # (!\contador_P1|cnt\(2) & ((\contador_P2|cnt\(2)) # (!\comp_placar|LessThan1~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contador_P1|cnt\(2),
	datab => \contador_P2|cnt\(2),
	datad => VCC,
	cin => \comp_placar|LessThan1~3_cout\,
	cout => \comp_placar|LessThan1~5_cout\);

-- Location: LCCOMB_X25_Y30_N18
\comp_placar|LessThan1~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp_placar|LessThan1~7_cout\ = CARRY((\contador_P2|cnt\(3) & (\contador_P1|cnt\(3) & !\comp_placar|LessThan1~5_cout\)) # (!\contador_P2|cnt\(3) & ((\contador_P1|cnt\(3)) # (!\comp_placar|LessThan1~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contador_P2|cnt\(3),
	datab => \contador_P1|cnt\(3),
	datad => VCC,
	cin => \comp_placar|LessThan1~5_cout\,
	cout => \comp_placar|LessThan1~7_cout\);

-- Location: LCCOMB_X25_Y30_N20
\comp_placar|LessThan1~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp_placar|LessThan1~9_cout\ = CARRY((\contador_P2|cnt\(4) & ((!\comp_placar|LessThan1~7_cout\) # (!\contador_P1|cnt\(4)))) # (!\contador_P2|cnt\(4) & (!\contador_P1|cnt\(4) & !\comp_placar|LessThan1~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contador_P2|cnt\(4),
	datab => \contador_P1|cnt\(4),
	datad => VCC,
	cin => \comp_placar|LessThan1~7_cout\,
	cout => \comp_placar|LessThan1~9_cout\);

-- Location: LCCOMB_X25_Y30_N22
\comp_placar|LessThan1~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp_placar|LessThan1~11_cout\ = CARRY((\contador_P2|cnt[5]~6_combout\ & (\contador_P1|cnt[5]~6_combout\ & !\comp_placar|LessThan1~9_cout\)) # (!\contador_P2|cnt[5]~6_combout\ & ((\contador_P1|cnt[5]~6_combout\) # (!\comp_placar|LessThan1~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contador_P2|cnt[5]~6_combout\,
	datab => \contador_P1|cnt[5]~6_combout\,
	datad => VCC,
	cin => \comp_placar|LessThan1~9_cout\,
	cout => \comp_placar|LessThan1~11_cout\);

-- Location: LCCOMB_X25_Y30_N24
\comp_placar|LessThan1~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp_placar|LessThan1~12_combout\ = (\contador_P1|cnt[6]~8_combout\ & (!\comp_placar|LessThan1~11_cout\ & \contador_P2|cnt[6]~8_combout\)) # (!\contador_P1|cnt[6]~8_combout\ & ((\contador_P2|cnt[6]~8_combout\) # (!\comp_placar|LessThan1~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contador_P1|cnt[6]~8_combout\,
	datad => \contador_P2|cnt[6]~8_combout\,
	cin => \comp_placar|LessThan1~11_cout\,
	combout => \comp_placar|LessThan1~12_combout\);

-- Location: IOIBUF_X16_Y0_N8
\dt_rmv_moeda~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dt_rmv_moeda,
	o => \dt_rmv_moeda~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\dt_rmv_obst~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dt_rmv_obst,
	o => \dt_rmv_obst~input_o\);

-- Location: IOIBUF_X33_Y27_N1
\dt_clr_start~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dt_clr_start,
	o => \dt_clr_start~input_o\);

-- Location: IOIBUF_X31_Y31_N1
\dt_clr_timer~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dt_clr_timer,
	o => \dt_clr_timer~input_o\);

-- Location: IOIBUF_X33_Y24_N1
\dt_cmd[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dt_cmd(0),
	o => \dt_cmd[0]~input_o\);

-- Location: IOIBUF_X20_Y0_N1
\dt_cmd[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dt_cmd(1),
	o => \dt_cmd[1]~input_o\);

-- Location: IOIBUF_X14_Y0_N8
\dt_cmd[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dt_cmd(2),
	o => \dt_cmd[2]~input_o\);

-- Location: IOIBUF_X33_Y22_N8
\dt_START~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dt_START,
	o => \dt_START~input_o\);

ww_dt_player <= \dt_player~output_o\;

ww_dt_frame_timer <= \dt_frame_timer~output_o\;

ww_dt_collected <= \dt_collected~output_o\;

ww_dt_ended <= \dt_ended~output_o\;

ww_dt_cmp_Q <= \dt_cmp_Q~output_o\;

ww_dt_cnt_Q(0) <= \dt_cnt_Q[0]~output_o\;

ww_dt_cnt_Q(1) <= \dt_cnt_Q[1]~output_o\;

ww_dt_cnt_Q(2) <= \dt_cnt_Q[2]~output_o\;

ww_dt_cnt_Q(3) <= \dt_cnt_Q[3]~output_o\;

ww_dt_cnt_Q(4) <= \dt_cnt_Q[4]~output_o\;

ww_dt_cnt_Q(5) <= \dt_cnt_Q[5]~output_o\;

ww_dt_cnt_Q(6) <= \dt_cnt_Q[6]~output_o\;

ww_dt_reg_Q(0) <= \dt_reg_Q[0]~output_o\;

ww_dt_reg_Q(1) <= \dt_reg_Q[1]~output_o\;

ww_dt_empate <= \dt_empate~output_o\;

ww_dt_1_maior_2 <= \dt_1_maior_2~output_o\;

ww_dt_2_maior_1 <= \dt_2_maior_1~output_o\;
END structure;


