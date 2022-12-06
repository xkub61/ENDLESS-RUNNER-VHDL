library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std.all;

entity tb_gerar_obst_aleatorio is
end tb_gerar_obst_aleatorio;

architecture teste of tb_gerar_obst_aleatorio is

component gerar_obst_aleatorio is 

	port 
	(
		goa_CLK : in std_logic;
		goa_Q0 : out std_logic_vector(17 downto 0);
		goa_Q1 : out std_logic_vector(17 downto 0)
		
	
	);

end component;

signal fio_goa_CLK: std_logic:='0'; 
signal fio_goa_Q0, fio_goa_Q1: std_logic_vector(17 downto 0);

begin
instancia_gerador: gerar_obst_aleatorio port map(goa_CLK=>fio_goa_CLK, goa_Q0=>fio_goa_Q0, goa_Q1=>fio_goa_Q1);

fio_goa_CLK <= not fio_goa_CLK after 1 ns; 

end teste;