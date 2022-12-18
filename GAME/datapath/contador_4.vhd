library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity contador_2_bits_no_en is
	port(
			cnt_CLK : in std_logic;
			cnt_RESET : in std_logic;
			cnt_Q : out std_logic_vector(1 downto 0)
			);
end contador_2_bits_no_en;

architecture arch of contador_2_bits_no_en is	
	begin

	process (cnt_CLK, cnt_RESET) is
		variable   cnt  : unsigned(1 downto 0);
		begin
			if (cnt_RESET = '1') then
				cnt := to_unsigned(0,2);
			elsif (rising_edge(cnt_CLK)) then
				cnt := cnt + to_unsigned(1,2);
			end if;
			
			cnt_Q <= std_logic_vector(cnt);
			
			
	end process;
	
end arch;

