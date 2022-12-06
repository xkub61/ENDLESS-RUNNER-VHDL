library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity timer_frame is
	generic(
			MIN_COUNT : natural := 0;
			MAX_COUNT : natural := 2097151
		);
	port(
			tmr_clk : in std_logic;
			tmr_reset : in std_logic;
			tmr_q : out std_logic
		);
end timer_frame;

architecture arch of timer_frame is
	begin
		process(tmr_clk,tmr_reset) is
			variable count : integer range MIN_COUNT to MAX_COUNT;
			begin
			if tmr_reset = '1' then
				count := MIN_COUNT;
			else
				if rising_edge(tmr_clk) then
					count := count + 1;
				end if;
			end if;
			if count > 1666667 then
				tmr_q <= '1';
			else 
				tmr_q <= '0';
			end if;
		end process;
end arch;