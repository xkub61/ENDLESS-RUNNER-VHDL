library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_cont_10 is
end tb_cont_10;

architecture arch of tb_cont_10 is
    component cont_10 is
        port(
                cnt10_clk : in std_logic;
                cnt10_reset : in std_logic;
                cnt10_h : in std_logic;
                cnt10_q : out std_logic_vector(9 downto 0)
            );
    end component;

    component comp_10 is
        port(
                comp_A : in std_logic_vector(9 downto 0);
                comp_B : in std_logic_vector(9 downto 0);
                comp_S : out std_logic
            );
    end component;

    signal clk,reset,h : std_logic := '0';
    signal S : std_logic;
    signal q, A, B: std_logic_vector(9 downto 0) ;

begin

    tb : cont_10 port map(
        cnt10_clk => clk,
        cnt10_reset => reset,
        cnt10_h => h,
        cnt10_q => q
    );

    cmp : comp_10 port map(
        comp_A => A,
        comp_B => B,
        comp_S => S
    );

    clk <= not clk after 1 ns;
    h <= '1';
    reset <= '0';

    A <= q;

    B <= "1111101000";
end arch ; -- arch