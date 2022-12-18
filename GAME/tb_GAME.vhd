library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_GAME is
end tb_GAME;

architecture tb of tb_GAME is
    component GAME is
        port(	game_clock : in std_logic;
                game_start : in std_logic;
                game_a_button : in std_logic;
                game_b_button : in std_logic;
                lcd_data_pins : out std_logic_vector(7 downto 0);
                lcd_rs_pin : out std_logic;
                lcd_e_pin : out std_logic;
                lcd_on_pin : out std_logic;
                lcd_blon_pin : out std_logic;
                lcd_rw_pin : out std_logic
                );
    end component;

    signal clk, start, a, b, lcd_rs, lcd_e, lcd_on, lcd_blon, lcd_rw : std_logic := '0';
    signal lcd_data : std_logic_vector(7 downto 0);

begin
    
    GAME_instance : GAME port map(
        game_clock => clk,
        game_start => start,
        game_a_button => a,
        game_b_button => b,
        lcd_data_pins => lcd_data,
        lcd_rs_pin => lcd_rs,
        lcd_e_pin => lcd_e,
        lcd_on_pin => lcd_on,
        lcd_blon_pin => lcd_blon,
        lcd_rw_pin => lcd_rw
    );

    clk <= not clk after 10 ns;
    start <= '0', '1' after 1000 ms;
    a <= '0';
    b <= '0';
    
    
end architecture tb;