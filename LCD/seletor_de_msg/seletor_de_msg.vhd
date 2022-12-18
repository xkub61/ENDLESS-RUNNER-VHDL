library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity seletor_de_msg is
	port(
		msg_num : in std_logic_vector(1 downto 0);
		msg_char_pos : in std_logic_vector(1 downto 0);
		msg_char : out std_logic_vector(7 downto 0)
	);
end seletor_de_msg;

architecture arch of seletor_de_msg is
begin
	msg_char <= "00100000" when( msg_num = "00" and msg_char_pos = "00") else
					"01010000" when( msg_num = "00" and msg_char_pos = "01") else
					"00110001" when( msg_num = "00" and msg_char_pos = "10") else
					"00100000" when( msg_num = "00" and msg_char_pos = "11") else
					--escreve " P1 "
					"00100000" when( msg_num = "01" and msg_char_pos = "00") else
					"01010000" when( msg_num = "01" and msg_char_pos = "01") else
					"00110010" when( msg_num = "01" and msg_char_pos = "10") else
					"00100000" when( msg_num = "01" and msg_char_pos = "11") else
					--escreve " P2 "
					"01010000" when( msg_num = "10" and msg_char_pos = "00") else
					"00110001" when( msg_num = "10" and msg_char_pos = "01") else
					"00100000" when( msg_num = "10" and msg_char_pos = "10") else
					"01010111" when( msg_num = "10" and msg_char_pos = "11") else
					--escreve "P1 W"
					"01010000" when( msg_num = "11" and msg_char_pos = "00") else
					"00110010" when( msg_num = "11" and msg_char_pos = "01") else
					"00100000" when( msg_num = "11" and msg_char_pos = "10") else
					"01010111"; 
					--escreve "P2 W" 
					
					
					
end arch;