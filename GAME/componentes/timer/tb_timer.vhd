library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_timer is
end entity tb_timer;

architecture tb of tb_timer is
    component timer is
        generic(
                BITS : natural := 23
            );
        port(
                tmr_clk : in std_logic;
                tmr_reset : in std_logic;
                tmr_q : out std_logic
            );
    end component;
    signal clk, reset : std_logic := '0';
    signal q : std_logic;
begin
    
    tmr : timer port map(
        tmr_clk => clk,
        tmr_reset => reset,
        tmr_q => q
    );
    
    clk <= not clk after 1 ns;
    reset <= '1', '0' after 2 ns; 
    
end architecture tb;