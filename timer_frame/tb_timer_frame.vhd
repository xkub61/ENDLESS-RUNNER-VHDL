library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_timer_frame is
end tb_timer_frame;

architecture tb of tb_timer_frame is
	component timer_frame is
		generic(
				MIN_COUNT : natural := 0;
				MAX_COUNT : natural := 2097151
			);
		port(
				tmr_clk : in std_logic;
				tmr_reset : in std_logic;
				tmr_q : out std_logic
			);
	end component;
	signal clk : std_logic := '0';
	signal reset , q : std_logic;
	begin
	
	instancia_timer : timer_frame port map(
		tmr_clk =>  clk,
		tmr_reset => reset,
		tmr_q => q
		);
	clk <= not clk after 10 ns;
	reset <= '0', '1' after 33334 us;
end tb;