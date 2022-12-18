library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity comp_10 is
	port(
			comp_A : in std_logic_vector(9 downto 0);
			comp_B : in std_logic_vector(9 downto 0);
			comp_S : out std_logic
		);
end comp_10;

architecture arch of comp_10 is
begin
	comp_S <= '0' when comp_A < comp_B else '1'; 
end arch;
