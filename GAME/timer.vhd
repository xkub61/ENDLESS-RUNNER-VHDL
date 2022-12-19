library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity timer is
	generic(
			BITS : natural := 23
		);
	port(
			tmr_clk : in std_logic;
			tmr_reset : in std_logic;
			tmr_q : out std_logic
		);
end timer;

architecture arch of timer is
	begin
		process(tmr_clk,tmr_reset) is
			variable temp : unsigned (BITS - 1 downto 0) := to_unsigned(0,BITS);
			begin
			if tmr_reset = '1' then
				temp := to_unsigned(0, BITS);
			else
				if rising_edge(tmr_clk) then
					temp := temp + to_unsigned(1, BITS) ;
				end if;
			end if;
			
			if temp > to_unsigned(4166666, BITS) then
				tmr_q <= '1';
			else 
				tmr_q <= '0';
			end if;
		end process;
end arch;