library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Contador_7_bits is
	port(
			cnt_RESET : in std_logic;
			cnt_H : in std_logic;
			cnt_CLK : in std_logic;
			cnt_Q : out std_logic_vector(6 downto 0);
			cnt_MAX : out std_logic
			);
end Contador_7_bits;

architecture arch of Contador_7_bits is	
	begin

	process (cnt_CLK,cnt_RESET,cnt_H) is
		variable cnt : unsigned(6 downto 0) := to_unsigned(0,7);
		begin
			if (cnt_RESET = '1') then
				cnt := to_unsigned(0,7);
			elsif (rising_edge(cnt_CLK) and cnt_H = '1') then
				cnt := cnt + to_unsigned(1,7);
			end if;
			
			cnt_Q <= std_logic_vector(cnt);
			
			if (cnt > 99) then
				cnt_MAX <= '1';
			else
				cnt_MAX <= '0';
			end if;
	end process;
	
end arch;