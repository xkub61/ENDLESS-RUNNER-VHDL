library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity sep_dez_un is
    port (
        numero : in std_logic_vector(6 downto 0);
        dezena : out std_logic_vector(3 downto 0);
        unidade : out std_logic_vector(3 downto 0)
    );
    end sep_dez_un;

architecture rtl of sep_dez_un is

    subtype digit_type is integer range 0 to 9;
    type digits_type is array (1 downto 0) of digit_type;
    signal digit1, digit2 : digit_type;
    signal digits : digits_type; 


begin

    digits(1) <= to_integer(unsigned(numero)) / 10;
    digits(0) <= to_integer(unsigned(numero)) - ((to_integer(unsigned(numero)) / 10) * 10);

   digit2 <= digits(1);
   digit1 <= digits(0);

   dezena <= std_logic_vector(to_unsigned(digit2,4));
   unidade <= std_logic_vector(to_unsigned(digit1,4));

end architecture rtl;