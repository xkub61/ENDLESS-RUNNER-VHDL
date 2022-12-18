library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mux_15 is
	port(
		mux_inputs : in std_logic_vector(15 downto 0);
		mux_control : in std_logic_vector(3 downto 0);
		mux_output : out std_logic
		);
end mux_15;

architecture arch of mux_15 is

begin
		with mux_control select
		mux_output <= 
			mux_inputs(0) 	when "0000",
			mux_inputs(1) 	when "0001",
			mux_inputs(2) 	when "0010",
			mux_inputs(3) 	when "0011",
			mux_inputs(4) 	when "0100",
			mux_inputs(5) 	when "0101",
			mux_inputs(6) 	when "0110",
			mux_inputs(7) 	when "0111",
			mux_inputs(8) 	when "1000",
			mux_inputs(9) 	when "1001",
			mux_inputs(10) when "1010",
			mux_inputs(11) when "1011",
			mux_inputs(12) when "1100",
			mux_inputs(13) when "1101",
			mux_inputs(14) when "1110",
			mux_inputs(15) when others;
end arch;