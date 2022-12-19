library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_lfsr is
end tb_lfsr;

architecture tb of tb_lfsr is
	component lfsr is 
		port(	
			lfsr_clk : in std_logic;
			lfsr_s0 : out std_logic;
			lfsr_s1 : out std_logic
	);
	end component;
	
	signal clk : std_logic := '0';
	signal s1, s0 : std_logic;
	
	begin
		instancia_lfsr : lfsr port map(lfsr_clk => clk, lfsr_s0 => s0, lfsr_s1 => s1);
		
		clk <= not clk after 1 ns;
	
end tb;