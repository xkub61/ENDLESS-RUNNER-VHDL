library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity lfsr is 
	port(	
			lfsr_clk : in std_logic;
			lfsr_s : out std_logic_vector(7 downto 0)
	);
end lfsr;

architecture arch of lfsr is

	signal intern : std_logic_vector(7 downto 0) := "00011001";
	begin
	
	process(lfsr_clk) is 
	
		variable tmp : std_logic := '0';
		begin
		
		if(rising_edge(lfsr_clk)) then
			tmp := intern(4) xor intern(3) xor intern(2) xor intern(0);
			intern <= tmp & intern(7 downto 1);
		end if;

	end process;
	
	lfsr_s <= intern;

end arch;