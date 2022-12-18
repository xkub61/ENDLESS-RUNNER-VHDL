library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std.all;

entity tb_reg2bits is
end tb_reg2bits;

architecture teste of tb_reg2bits is

component reg2bits is 

	
	port 
	(
		reg_D : in std_logic_vector(1 downto 0);
		reg_E : in std_logic;
		reg_CLK : in std_logic;
		reg_CLEAR : in std_logic;
		reg_Q : out std_logic_vector(1 downto 0)
	
	);

end component;

signal fio_reg_E,  fio_reg_CLEAR: std_logic;
signal fio_reg_CLK: std_logic:='0'; 
signal fio_reg_D, fio_reg_Q: std_logic_vector(1 downto 0);

begin
instancia_registrador: reg2bits port map(reg_D=>fio_reg_D, reg_E=>fio_reg_E, reg_CLK=>fio_reg_CLK, reg_CLEAR=>fio_reg_CLEAR, reg_Q=>fio_reg_Q);
fio_reg_E <= '0', '1' after 20ns; 
fio_reg_D <= "00", "01" after 30 ns, "10" after 60 ns;
fio_reg_CLK <= not fio_reg_CLK after 1 ns; 
fio_reg_CLEAR <= '0', '1' after 90 ns; 

end teste;


