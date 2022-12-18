library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity comp_2 is
	port(
		cmp2_A : in std_logic_vector(1 downto 0);
		cmp2_B : in std_logic_vector(1 downto 0);
		cmp2_OUT : out std_logic
		);
end comp_2;

architecture arch of comp_2 is

begin
	
	cmp2_OUT <= '1' when cmp2_A >= cmp2_B else '0';

end arch;	