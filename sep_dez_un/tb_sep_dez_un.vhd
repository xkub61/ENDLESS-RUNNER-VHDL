library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_sep_dez_un is
end entity tb_sep_dez_un;

architecture tb of tb_sep_dez_un is
    
    component sep_dez_un is
        port (
            numero : in std_logic_vector(6 downto 0);
            dezena : out std_logic_vector(3 downto 0);
            unidade : out std_logic_vector(3 downto 0)
        );
    end component;

    signal s_num : std_logic_vector(6 downto 0);
    signal s_dez, s_uni : std_logic_vector(3 downto 0);

begin
    
    instancia_sep : sep_dez_un port map(numero => s_num, dezena => s_dez, unidade => s_uni);

    s_num <= "0101101", "1100000" after 10 ns, "1010000" after 15 ns, "0010000" after 20 ns;
    
    
end  tb;