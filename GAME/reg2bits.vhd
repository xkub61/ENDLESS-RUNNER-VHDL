library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity reg2bits is 
	port(
			reg_D : in std_logic_vector(1 downto 0);
			reg_E : in std_logic;
			reg_CLK : in std_logic;
			reg_CLEAR : in std_logic;
			reg_Q : out std_logic_vector(1 downto 0)
		);
end reg2bits;

architecture arch of reg2bits is

begin
	process(reg_CLEAR,reg_CLK) is
		begin
		
		if reg_CLEAR = '1' then
			reg_Q <= "00";
		else
			if (rising_edge(reg_CLK) and REG_E = '1') then
				reg_Q <= reg_D;
			end if;
		end if;
		end process;
end arch;


