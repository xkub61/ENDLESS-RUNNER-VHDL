library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity GAME is
	port(	game_clock : in std_logic;
			game_start : in std_logic;
			game_a_button : in std_logic;
			game_b_button : in std_logic;
			--lcd
			lcd_data_pins : out std_logic_vector(7 downto 0);
			lcd_rs_pin : out std_logic;
			lcd_e_pin : out std_logic;
			lcd_on_pin : out std_logic;
			lcd_blon_pin : out std_logic;
			lcd_rw_pin : out std_logic;
			--7 segmentos
			d7s_1_dez : out std_logic_vector(6 downto 0);
			d7s_1_un : out std_logic_vector(6 downto 0);
			d7s_2_dez : out std_logic_vector(6 downto 0);
			d7s_2_un : out std_logic_vector(6 downto 0)
			
			);
end GAME;

architecture arch of GAME is

component controladora_jogo is
	port(
		--entradas
		ctrl_CLK : in std_logic;
		ctrl_FINISH : in std_logic;
		ctrl_START : in std_logic;
		ctrl_Q0_MOEDA : in std_logic;
		ctrl_COLLECTED : in std_logic;
		ctrl_Q0_OBST : in std_logic;
		ctrl_ENDED : in std_logic;
		ctrl_PLAYER : in std_logic;
		ctrl_FRAME_TIMER : in std_logic;
		ctrl_RESULT : in std_logic_vector(2 downto 0);
		
		--saidas
		ctrl_LFSR_SHFT : out std_logic;
		ctrl_CNT_MOEDA1: out std_logic;
		ctrl_CNT_MOEDA2 : out std_logic;
		ctrl_RMV_MOEDA : out std_logic;
		ctrl_RMV_OBST : out std_logic;
		ctrl_SET_PLAYER : out std_logic;
		ctrl_CLR_MOEDA : out std_logic;
		ctrl_CLR_PLAYER : out std_logic;
		ctrl_CLR_TIMER : out std_logic;
		ctrl_CLR_START : out std_logic;
		ctrl_RENDER : out std_logic;
		ctrl_CMD : out std_logic_vector(2 downto 0)
		);
end component;

component Data_path is
	port(
			--entradas
			dt_clr: in std_logic; -- RESET GERAL
			dt_clk: in std_logic;
			dt_en_cont_1: in std_logic; -- hablita contador 1
			dt_en_cont_2: in std_logic; -- hablita contador 2
			dt_rmv_moeda : in std_logic;
			dt_rmv_obst : in std_logic;
			dt_shift : in std_logic;
			dt_set_player : in std_logic;
			dt_clr_player : in std_logic;
			dt_clr_start : in std_logic; --zera o reg do start
			dt_clr_timer : in std_logic; -- zera o timer
			dt_cmd : in std_logic_vector(2 downto 0);
			dt_a_key : in std_logic;--botao a
			dt_b_key : in std_logic;--botao b
			dt_start_key : in std_logic;--botao start
			dt_render : in std_logic;
			
			--saidas
			dt_player : out std_logic;
			dt_start : out std_logic;
			dt_end_of_frame : out std_logic; -- '1' quando passa 66 ms
			dt_tem_moeda : out std_logic;
			dt_tem_obstaculo : out std_logic;
			dt_collected : out std_logic;
			dt_ended : out std_logic;
			dt_igual : out std_logic;
			dt_maior: out std_logic;
			dt_menor : out std_logic;
			dt_finished : out std_logic;
			dt_data : out std_logic_vector(7 downto 0);
			dt_rs : out std_logic;
			dt_e : out std_logic;
			
			dt_d1_dez : out std_logic_vector(6 downto 0);
			dt_d1_un : out std_logic_vector(6 downto 0);
			dt_d2_dez : out std_logic_vector(6 downto 0);
			dt_d2_un : out std_logic_vector(6 downto 0)
			);
end component;

	signal finished, start, tem_moeda, tem_obst,collected, ended ,player, end_of_frame : std_logic;
	signal result , cmd: std_logic_vector(2 downto 0);
	
	signal shift, en_cont1, en_cont2, clr_player, set_player , clr_timer, clr_start, render : std_logic;
	signal clr , rmv_moeda, rmv_obst: std_logic;
begin 

	controladora : controladora_jogo port map(
				--entradas
				ctrl_CLK => game_clock,
				ctrl_FINISH => finished,
				ctrl_START => start,
				ctrl_Q0_MOEDA => tem_moeda,
				ctrl_COLLECTED => collected,
				ctrl_Q0_OBST => tem_obst,
				ctrl_ENDED => ended,
				ctrl_PLAYER => player,
				ctrl_FRAME_TIMER => end_of_frame,
				ctrl_RESULT => result,
				
				--saidas
				ctrl_LFSR_SHFT => shift,
				ctrl_CNT_MOEDA1 =>  en_cont1,
				ctrl_CNT_MOEDA2 => en_cont2,
				ctrl_RMV_MOEDA => rmv_moeda,
				ctrl_RMV_OBST => rmv_obst,
				ctrl_SET_PLAYER => set_player,
				ctrl_CLR_MOEDA => clr, 
				ctrl_CLR_PLAYER => clr_player,
				ctrl_CLR_TIMER => clr_timer,
				ctrl_CLR_START => clr_start,
				ctrl_RENDER => render,
				ctrl_CMD => cmd
				);
	
	caminho_de_dados : data_path port map (
		--entradas
		dt_clr => clr,
		dt_clk => game_clock,
		dt_en_cont_1 => en_cont1,
		dt_en_cont_2 => en_cont2,
		dt_rmv_moeda => rmv_moeda,
		dt_rmv_obst => rmv_obst,
		dt_shift => shift,
		dt_set_player => set_player,
		dt_clr_player => clr_player,
		dt_clr_start => clr_start,
		dt_clr_timer => clr_timer,
		dt_cmd => cmd,
		dt_a_key => game_a_button,
		dt_b_key => game_b_button,
		dt_start_key => game_start,
		dt_render => render,
		
		--saidas
		dt_player => player,
		dt_start => start,
		dt_end_of_frame => end_of_frame,
		dt_tem_moeda => tem_moeda,
		dt_tem_obstaculo => tem_obst,
		dt_collected => collected,
		dt_ended => ended,
		dt_igual => result(0),
		dt_maior => result(1),
		dt_menor => result(2),
		dt_finished => finished,
		dt_data => lcd_data_pins,
		dt_rs => lcd_rs_pin,
		dt_e => lcd_e_pin,
		dt_d1_dez => d7s_1_dez,
		dt_d1_un => d7s_1_un,
		dt_d2_dez => d7s_2_dez,
		dt_d2_un => d7s_2_un
		);
		
		lcd_on_pin <= '1'; --liga o lcd
		lcd_blon_pin <= '0'; -- liga o led no fundo
		lcd_rw_pin <= '0'; --So escreve no lcd
 
end arch;