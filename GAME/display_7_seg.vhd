library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity display_7_seg is
    port (
        entrada : in std_logic_vector(6 downto 0);
        saida_dez, saida_un : out std_logic_vector(6 downto 0)
    );
end entity display_7_seg;

architecture rtl of display_7_seg is
    
    component Bcd_7seg is
        port (
            entrada: in std_logic_vector (3 downto 0);
            saida:	out std_logic_vector (6 downto 0)
               );
     end component;

    component sep_dez_un is
        port (
            numero : in std_logic_vector(6 downto 0);
            dezena : out std_logic_vector(3 downto 0);
            unidade : out std_logic_vector(3 downto 0)
        );
    end component;

    signal s_dez, s_un : std_logic_vector(3 downto 0);
    
begin
    separador : sep_dez_un port map (
        numero => entrada,
        dezena => s_dez,
        unidade => s_un
    );
    
    dez : Bcd_7seg port map (
        entrada => s_dez,
        saida => saida_dez
    );
    
    un : Bcd_7seg port map (
        entrada => s_un,
        saida => saida_un
    );
    
end rtl;