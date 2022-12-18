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
				reg18_Q : out std_logic_vector(17 downto 0);
				reg18_RMV : in std_logic
			);
	end component;
	signal input, e , rmv: std_logic;
	signal clk : std_logic := '0';
	signal q : std_logic_vector(17 downto 0);
	
	begin 
	instancia_shift18 : reg18bits port map(
		reg18_IN => input,
		reg18_E => e,
		reg18_CLK => clk,
		reg18_Q => q,
		reg18_RMV => rmv
		);
	clk <= not clk after 1 ns;
	input <= '1' , '0' after 12 ns, '1' after 14 ns , '0' after 20 ns;
	e <= '1';
	rmv <= '0', '1'  after 34 ns, '0' after 35 ns, '1'  after 38ns, '0' after 39 ns;
end tb;