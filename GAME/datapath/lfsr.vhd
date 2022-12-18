library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity lfsr is 
	port(	
			lfsr_clk : in std_logic;
			lfsr_s0 : out std_logic;
			lfsr_s1 : out std_logic
	);
end lfsr;

architecture arch of lfsr is

	signal intern : std_logic_vector(17 downto 0) := "000110010000000000";
	begin
	
	process(lfsr_clk) is 
	
		variable tmp : std_logic := '0';
		begin
		
		if(rising_edge(lfsr_clk)) then
			tmp := intern(0) xor intern(7);
			intern <= tmp & intern(17 downto 1);
		end if;

	end process;
	
	lfsr_s0 <= intern(4);
	lfsr_s1 <= intern(11);

end arch;