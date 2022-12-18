library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mux_2 is
	port(
		mux2_inputs : in std_logic_vector(1 downto 0);
		mux2_control : in std_logic;
		mux2_output : out std_logic
		);
end mux_2;

architecture arch of mux_2 is

begin
		with mux2_control select
		mux2_output <= 
			mux2_inputs(0)	when '0',
			mux2_inputs(1) when others;
end arch;