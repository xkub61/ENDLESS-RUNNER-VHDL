library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std.all;

entity tb_Comparador_moeda is
end tb_Comparador_moeda;

architecture teste of tb_Comparador_moeda is

component Comparador_moeda is 

	
	port 
	(
		cmp_M	   : in std_logic; -- Moeda/obstaculo
		cmp_P	   : in std_logic;  -- Jogador
		cmp_Q : out std_logic
		
	);

end component;

signal fio_cmp_M, fio_cmp_P: std_logic;
signal fio_Q: std_logic;

begin
instancia_comparador: Comparador_moeda port map(cmp_M=>fio_cmp_M,cmp_P=>fio_cmp_P,cmp_Q=>fio_Q);
fio_cmp_M <= '1', '0' after 20 ns, '0' after 40 ns, '1' after 60 ns;
fio_cmp_P <= '0', '0' after 10 ns, '1' after 30 ns, '1' after 50 ns;
end teste;
