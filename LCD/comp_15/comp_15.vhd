library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity comp_15 is
	port(
		cmp_a : in std_logic_vector(3 downto 0);
		cmp_s : out std_logic
		);
end comp_15;

architecture arch of comp_15 is
	begin
		cmp_s <= '1' when cmp_a > x"15" else '0';
end arch;