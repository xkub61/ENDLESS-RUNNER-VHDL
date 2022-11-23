library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_Contador_7_bits is
end tb_Contador_7_bits;

architecture arch of tb_Contador_7_bits is
	component Contador_7_bits is
		port(
				cnt_RESET : in std_logic;
				cnt_H : in std_logic;
				cnt_C : in std_logic;
				cnt_CLK : in std_logic;
				cnt_Q : out std_logic_vector(6 downto 0);
				cnt_MAX : out std_logic
				);
	end component;
	signal RESET,H,C,CLK,MAX : std_logic := '0';
	signal Q : std_logic_vector(6 downto 0);
	
begin 
	instancia_cnt_7b : Contador_7_bits port map(
			cnt_RESET => RESET,
			cnt_H => H,
			cnt_C => C,
			cnt_CLK => CLK,
			cnt_Q => Q,
			cnt_MAX => MAX);
			
	CLK <= not CLK after 1 ns;
	
	H <= '1' , '0' after 10 ns, '1' after 20 ns;
	
	C <= '1',  '0' after 16 ns,'1' after 27 ns;
	
	RESET <= '1' after 14 ns, '0' after 16 ns;
end arch;