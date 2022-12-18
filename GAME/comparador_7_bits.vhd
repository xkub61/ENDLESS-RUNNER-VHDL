library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity comparador_7_bits is
	port(
			cmp_A : in std_logic_vector(6 downto 0);
			cmp_B : in std_logic_vector(6 downto 0);
			cmp_IGUAL : out std_logic;
			cmp_MAIOR : out std_logic;
			cmp_MENOR : out std_logic
			);
end comparador_7_bits;

architecture arch of comparador_7_bits is	
begin

	cmp_IGUAL <= '1' When cmp_A = cmp_B else'0';
	cmp_MAIOR <= '1' When cmp_A > cmp_B else'0';
	cmp_MENOR <= '1' When cmp_A < cmp_B else'0';
	
	
end arch; 
