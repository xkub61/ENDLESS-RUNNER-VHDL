library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Contador_2_bits is
	port(
			cnt_CLK : in std_logic;
			cnt_RESET : in std_logic;
			cnt_Q : out integer range 0 to 3
			
			);
end Contador_2_bits;

architecture arch of Contador_2_bits is	
	begin

	process (cnt_CLK, cnt_RESET) is
		variable   cnt		   : integer range 0 to 3;
		begin
			if (cnt_RESET = '1') then
				cnt := 0;
			elsif (rising_edge(cnt_CLK)) then
				cnt := cnt + 1;
			end if;
			
			cnt_Q <= cnt;
			
			
	end process;
	
end arch;

