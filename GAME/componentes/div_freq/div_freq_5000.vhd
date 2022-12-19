library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity div_freq_5000 is
	port(
			div_CLK : in std_logic;
			div_RESET : in std_logic;
			div_Q : out std_logic
			
			);
end div_freq_5000;

architecture arch of div_freq_5000 is
		
	signal tmp : std_logic := '0';
		
	begin

	process (div_CLK) is
		variable   cnt  : unsigned(12 downto 0) := to_unsigned(0,13);
		variable const : unsigned(12 downto 0) := to_unsigned(5000,13);
		begin
			if (div_RESET = '1') then
				cnt := to_unsigned(0,13);
				tmp <= '0';
			elsif (rising_edge(div_CLK)) then
				cnt := cnt + to_unsigned(1,13);
			end if;
			
			if cnt >= const then
					cnt := to_unsigned(0,13);
					tmp <= not tmp;
			else 
			end if;
			
	end process;
	
	div_Q <= tmp;
	
end arch;

