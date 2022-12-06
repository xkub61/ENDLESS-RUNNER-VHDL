library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_reg18bits is 
end tb_reg18bits;

architecture tb of tb_reg18bits is
	component reg18bits is 
		port(
				reg18_IN : in std_logic;
				reg18_E : in std_logic;
				reg18_CLK : in std_logic;
				reg18_Q : out std_logic_vector(17 downto 0)
			);
	end component;
	signal input, e : std_logic;
	signal clk : std_logic := '0';
	signal q : std_logic_vector(17 downto 0);
	
	begin 
	instancia_shift18 : reg18bits port map(
		reg18_IN => input,
		reg18_E => e,
		reg18_CLK => clk,
		reg18_Q => q
		);
	clk <= not clk after 1 ns;
	input <= '1' , '0' after 2 ns, '1' after 6 ns, '0' after 8 ns, '1' after 10 ns , '0' after 20 ns;
	e <= '1','0' after 13 ns, '1' after 17 ns;
	
end tb;