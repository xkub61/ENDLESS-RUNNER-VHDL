library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_reg_4 is 
end tb_reg_4;

architecture tb of tb_reg_4 is

component cont_4 is
	port(
		cont4_H : in std_logic;
		cont4_CLK : in std_logic;
		cont4_CLR : in std_logic;
		cont4_Q : out std_logic_vector(3 downto 0)
		);
end component;

signal h,clr : std_logic;
signal clk : std_logic := '0';
signal q : std_logic_vector(3 downto 0);

begin	
	instancia_cont_4: cont_4 port map(cont4_H => h, cont4_CLK => clk, cont4_CLR => clr,cont4_Q => q);
	h <= '1';
	clr <= '0';
	clk <= not clk after 1 ns;

end tb;