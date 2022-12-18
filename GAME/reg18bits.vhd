library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity reg18bits is 
	port(
			reg18_IN : in std_logic;
			reg18_E : in std_logic;
			reg18_CLK : in std_logic;
			reg18_CLR : in std_logic;
			reg18_Q : out std_logic_vector(16 downto 0);
			reg18_RMV : in std_logic
		);
end reg18bits;

architecture arch of reg18bits is
begin
	process(reg18_CLK,reg18_RMV) is
		variable tmp : std_logic_vector(16 downto 0) := "00000000000000000";
		begin
			
			if (reg18_CLR = '1') then
				tmp := "00000000000000000";
			else
				if (rising_edge(reg18_CLK) and reg18_E = '1') then
					tmp(16 downto 1) := tmp(15 downto 0);
					tmp(0) := reg18_IN;
				elsif (rising_edge(reg18_CLK) and reg18_RMV = '1') then
					tmp(16) := '0';
				end if;
			end if;
			reg18_Q <= tmp;
		end process;
		
end arch;