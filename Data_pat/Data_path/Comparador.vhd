library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Comparador is
	port(
			cmp_M : in std_logic;
			cmp_P : in std_logic;
			cmp_Q : out std_logic
			);
end Comparador;

architecture arch of Comparador is	
begin

	cmp_Q <= '1' When cmp_M = cmp_P else'0';
			

	
end arch; 



