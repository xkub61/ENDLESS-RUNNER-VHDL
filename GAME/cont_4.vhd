library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity cont_4 is
	port(
		cont4_H : in std_logic;
		cont4_CLK : in std_logic;
		cont4_CLR : in std_logic;
		cont4_Q : out std_logic_vector(3 downto 0)
		);
end cont_4;

architecture arch of cont_4 is
	begin
		process(cont4_CLK,cont4_CLR)
			variable i : unsigned(3 downto 0):= "0000";
			begin
				if cont4_CLR = '1' then
					i := "0000";
				else
					if rising_edge(cont4_CLK) and cont4_H = '1' then
						i := i + "0001";
					end if;
				end if;
				cont4_Q <= std_logic_vector(i);
		end process;
end arch;