library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_display_7_seg is

end entity tb_display_7_seg;

architecture tb of tb_display_7_seg is
    
    component display_7_seg is
        port (
            entrada : in std_logic_vector(6 downto 0);
            saida_dez, saida_un : out std_logic_vector(6 downto 0)
        );
    end component;
 signal s_entrada , s_dez , s_un: std_logic_vector(6 downto 0);
 
begin
    
    display : display_7_seg port map (
        entrada => s_entrada,
        saida_dez => s_dez,
        saida_un => s_un
    );
    
    s_entrada <= "1100011", "1010000" after 10 ns, "0100010" after 20 ns;

end tb;