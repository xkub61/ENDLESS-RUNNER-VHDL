library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb is
end tb;



architecture tb_arch of tb is

component div_freq is
	port(
			div_CLK : in std_logic;
			div_RESET : in std_logic;
			div_Q : out std_logic
			
			);
end component;

signal clk : std_logic := '1';
signal clr, q : std_logic;

begin
	
	instance_div_frq : div_freq port map( div_CLK => clk, div_RESET => clr, div_Q => q);
	
	clk <= not clk after 1 ns;
	clr <= '0', '1' after  3 ns, '0' after 4 ns;

end tb_arch;