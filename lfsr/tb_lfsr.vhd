library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_lfsr is
end tb_lfsr;

architecture tb of tb_lfsr is
	component lfsr is 
		port(	
				lfsr_clk : in std_logic;
				lfsr_s : out std_logic_vector(7 downto 0)
		);
	end component;
	
	signal clk : std_logic := '0';
	signal s : std_logic_vector(7 downto 0);
	
	begin
		instancia_lfsr : lfsr port map(lfsr_clk => clk, lfsr_s => s);
		
		clk <= not clk after 1 ns;
	
end tb;