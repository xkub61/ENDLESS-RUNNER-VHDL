library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_lcd_driver_fsm is
end tb_lcd_driver_fsm;

architecture tb of tb_lcd_driver_fsm is

component lcd_driver_fsm is
	port(
		fsm_clk : in std_logic;
		fsm_cmd : in std_logic_vector(2 downto 0);
		fsm_q0_pos : in std_logic;
		fsm_q1_pos : in std_logic;
		fsm_player_pos : in std_logic;
		fsm_pos : in std_logic;
		fsm_linha : in std_logic;
		--fsm_timer : in std_logic_vector(9 downto 0);
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

	signal clk : std_logic := '1';
	signal cmd : std_logic_vector(2 downto 0) := "000";
	signal q0_pos : std_logic := '1';
	signal q1_pos : std_logic := '1';
	signal player_pos : std_logic := '1';
	signal pos_1 : std_logic := '1';
	signal linha : std_logic := '1';
	signal t2 : std_logic := '1';
	signal t40 : std_logic := '1';
	signal t100 : std_logic := '1';
	signal t1000 : std_logic := '1';
	signal obj : std_logic_vector(1 downto 0) := "11";
	signal render : std_logic := '1';
	
	signal clr_pos : std_logic;--usado
	signal en_pos : std_logic;--usado
	signal clr_linha : std_logic;--usado
	signal set_linha : std_logic;--usado
	signal clr_timer : std_logic;--usado
	signal en_timer : std_logic;--usado
	signal clr_obj : std_logic;--usado
	signal en_obj : std_logic;--usado
	signal en_E : std_logic;--usado
	signal finish : std_logic;--usado
	signal rs : std_logic;--usado
	signal dt : std_logic_vector(7 downto 0);--usado		
	
begin

	LCD_DRV_CTLR : lcd_driver_fsm port map(
		fsm_clk => clk,
		fsm_cmd => cmd,
		fsm_q0_pos => q0_pos,
		fsm_q1_pos => q1_pos,
		fsm_player_pos => player_pos,
		fsm_pos => pos_1,
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
		fsm_finish => finish,
		fsm_rs => rs,
		fsm_dt => dt
	);
	
	clk <= not clk after 1 ns;
	render <= '0' after 32 ns;
end tb;