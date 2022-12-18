library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity lcd_driver is
	port(	clk : in std_logic;
			cmd : in std_logic_vector(2 downto 0);
			render : in std_logic;
			q0_moeda : in std_logic_vector(15 downto 0);
			q1_moeda : in std_logic_vector(15 downto 0);
			q0_obstaculo : in std_logic_vector(15 downto 0);
			q1_obstaculo : in std_logic_vector(15 downto 0);
			player_pos : in std_logic;
			finished : out std_logic;
			DATA : out std_logic_vector (7 downto 0);
			E : out std_logic;
			RS : out std_logic
			);
end lcd_driver;

architecture arch of lcd_driver is
	
	component lcd_driver_dp is
		port(
			dp_clk : in std_logic;
			dp_q0obst : in std_logic_vector(15 downto 0);
			dp_q0moeda : in std_logic_vector(15 downto 0);
			dp_q1obst : in std_logic_vector(15 downto 0);
			dp_q1moeda : in std_logic_vector(15 downto 0);
			dp_cnt_pos : in std_logic;
			dp_clr_pos : in std_logic;
			dp_cnt_obj : in std_logic;
			dp_clr_obj : in std_logic;
			dp_set_linha : in std_logic;
			dp_clr_linha : in std_logic;
			dp_en_timer : in std_logic;
			dp_clr_timer : in std_logic;
			dp_en_E : in std_logic;
			
			dp_q0_pos : out std_logic;
			dp_q1_pos : out std_logic;
			dp_pos_15 : out std_logic;
			dp_obj : out std_logic_vector(1 downto 0);
			dp_linha : out std_logic;
			dp_t2 : out std_logic;
			dp_t40 : out std_logic;
			dp_t100 : out std_logic;
			dp_t1000 : out std_logic;
			dp_E : out std_logic
		);
	end component;

	component lcd_driver_fsm is
		port(
		fsm_clk : in std_logic;
		fsm_cmd : in std_logic_vector(2 downto 0);
		fsm_q0_pos : in std_logic;
		fsm_q1_pos : in std_logic;
		fsm_player_pos : in std_logic;
		fsm_pos : in std_logic;
		fsm_linha : in std_logic;
		fsm_t2 : in std_logic;
		fsm_t40 : in std_logic;
		fsm_t100 : in std_logic;
		fsm_t1000 : in std_logic;
		fsm_obj : in std_logic_vector(1 downto 0);
		fsm_render : in std_logic;--usado
		fsm_clr_pos : out std_logic;--usado
		fsm_en_pos : out std_logic;--usado
		fsm_clr_linha : out std_logic;--usado
		fsm_set_linha : out std_logic;--usado
		fsm_clr_timer : out std_logic;--usado
		fsm_en_timer : out std_logic;--usado
		fsm_clr_obj : out std_logic;--usado
		fsm_en_obj : out std_logic;--usado
		fsm_en_E : out std_logic;--usado
		fsm_finish : out std_logic;--usado
		fsm_rs : out std_logic;--usado
		fsm_dt : out std_logic_vector(7 downto 0)--usado		
	);
		
	end component;
	
	
	
	
	signal q0_pos, q1_pos, pos_15, linha, t2, t40, t100, t1000, en_E: std_logic;
	signal clr_pos, en_pos, clr_linha, set_linha, en_obj, clr_obj : std_logic;
	signal clr_timer , en_timer:  std_logic;
	signal obj : std_logic_vector(1 downto 0);

	
begin

	controladora : lcd_driver_fsm port map(
		fsm_clk => clk,
		fsm_cmd => cmd,
		fsm_q0_pos => q0_pos,
		fsm_q1_pos =>q1_pos,
		fsm_player_pos => player_pos,
		fsm_pos => pos_15,
		fsm_linha => linha,
		fsm_t2 => t2,
		fsm_t40 => t40,
		fsm_t100 => t100,
		fsm_t1000 => t1000,
		fsm_obj => obj,
		fsm_render => render,
		fsm_clr_pos => clr_pos,
		fsm_en_pos => en_pos,
		fsm_clr_linha => clr_linha,
		fsm_set_linha => set_linha,
		fsm_clr_timer => clr_timer,
		fsm_en_timer => en_timer,
		fsm_clr_obj => clr_obj,
		fsm_en_obj => en_obj,
		fsm_en_E => en_E,
		fsm_finish => finished,
		fsm_rs => RS,
		fsm_dt => DATA
		);
	datapath : lcd_driver_dp port map(
		dp_clk => clk,
		dp_q0obst => q0_obstaculo,
		dp_q0moeda => q0_moeda,
		dp_q1obst => q1_obstaculo,
		dp_q1moeda => q1_moeda,
		dp_cnt_pos => en_pos,
		dp_clr_pos => clr_pos,
		dp_cnt_obj => en_obj,
		dp_clr_obj => clr_obj,
		dp_set_linha => set_linha,
		dp_clr_linha => clr_linha,
		dp_en_timer => en_timer,
		dp_clr_timer => clr_timer ,
		dp_en_E => en_E,
		
		dp_q0_pos => q0_pos,
		dp_q1_pos => q1_pos,
		dp_pos_15 => pos_15,
		dp_obj => obj,
		dp_linha => linha ,
		dp_t2 => t2,
		dp_t40 => t40,
		dp_t100 => t100,
		dp_t1000 => t1000,
		dp_E => E
		);
end arch;