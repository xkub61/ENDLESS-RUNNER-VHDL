library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_Data_path is

end entity tb_Data_path;

architecture tb of tb_Data_path is
    
    component Data_path is
        port(
                --entradas
                dt_clr: in std_logic; -- RESET GERAL
                dt_clk: in std_logic;
                dt_en_cont_1: in std_logic; -- hablita contador 1
                dt_en_cont_2: in std_logic; -- hablita contador 2
                dt_rmv_moeda : in std_logic;
                dt_rmv_obst : in std_logic;
                dt_shift : in std_logic;
                dt_set_player : in std_logic;
                dt_clr_player : in std_logic;
                dt_clr_start : in std_logic; --zera o reg do start
                dt_clr_timer : in std_logic; -- zera o timer
                dt_cmd : in std_logic_vector(2 downto 0);
                dt_a_key : in std_logic;--botao a
                dt_b_key : in std_logic;--botao b
                dt_start_key : in std_logic;--botao start
                dt_render : in std_logic;
                
                --saidas
                dt_player : out std_logic;
                dt_start : out std_logic;
                dt_end_of_frame : out std_logic; -- '1' quando passa 66 ms
                dt_tem_moeda : out std_logic;
                dt_tem_obstaculo : out std_logic;
                dt_collected : out std_logic;
                dt_ended : out std_logic;
                dt_igual : out std_logic;
                dt_maior: out std_logic;
                dt_menor : out std_logic;
                dt_finished : out std_logic;
                dt_data : out std_logic_vector(7 downto 0);
                dt_rs : out std_logic;
                dt_e : out std_logic;
                
                dt_d1_dez : out std_logic_vector(6 downto 0);
                dt_d1_un : out std_logic_vector(6 downto 0);
                dt_d2_dez : out std_logic_vector(6 downto 0);
                dt_d2_un : out std_logic_vector(6 downto 0)
                );
    end component;

    signal clr, clock,en_cont1,en_cont2,rmv_moeda,rmv_obst,shift : std_logic := '0';
    signal set_player,clr_player,clr_start,clr_timer,game_a_button, game_b_button: std_logic := '0';
    signal game_start,render : std_logic := '0';
    signal cmd : std_logic_vector(2 downto 0) := "000";


    signal player, start,end_of_frame, tem_moeda,tem_obst,collected,ended,finished : std_logic;
    signal lcd_rs_pin, lcd_e_pin : std_logic;
    signal result : std_logic_vector(2 downto 0);
    signal d7s_1_dez,d7s_1_un,d7s_2_dez,d7s_2_un : std_logic_vector(6 downto 0);
    signal lcd_data_pins : std_logic_vector(7 downto 0);

begin
    
    dp : Data_path port map (
        --entradas
		dt_clr => clr,
		dt_clk => clock,
		dt_en_cont_1 => en_cont1,
		dt_en_cont_2 => en_cont2,
		dt_rmv_moeda => rmv_moeda,
		dt_rmv_obst => rmv_obst,
		dt_shift => shift,
		dt_set_player => set_player,
		dt_clr_player => clr_player,
		dt_clr_start => clr_start,
		dt_clr_timer => clr_timer,
		dt_cmd => cmd,
		dt_a_key => game_a_button,
		dt_b_key => game_b_button,
		dt_start_key => game_start,
		dt_render => render,
		
		--saidas
		dt_player => player,
		dt_start => start,
		dt_end_of_frame => end_of_frame,
		dt_tem_moeda => tem_moeda,
		dt_tem_obstaculo => tem_obst,
		dt_collected => collected,
		dt_ended => ended,
		dt_igual => result(0),
		dt_maior => result(1),
		dt_menor => result(2),
		dt_finished => finished,
		dt_data => lcd_data_pins,
		dt_rs => lcd_rs_pin,
		dt_e => lcd_e_pin,
		dt_d1_dez => d7s_1_dez,
		dt_d1_un => d7s_1_un,
		dt_d2_dez => d7s_2_dez,
		dt_d2_un => d7s_2_un
	);



    clr <= '1', '0' after 3 ns;
    clock <= not clock after 1 ns;
    shift <= not shift after 1 ns;
    clr_player <= '1', '0' after 3 ns, '1' after 36 ns, '0' after 38 ns;
    set_player <= '1' after 28 ns, '0' after 30 ns;
    clr_start <= '1', '0' after 3 ns, '1' after 62 ns, '0' after 64 ns;
    clr_timer <= '1', '0' after 3 ns;
    en_cont1 <= '1', '0' after 100 ns;
    en_cont2 <= '1' after 47 ns, '0' after 197 ns;
    rmv_moeda <= '1' after 300 ns, '0' after 302 ns, '1' after 404 ns, '0' after 406 ns;
    rmv_obst <= '1' after 360 ns, '0' after 362 ns, '1' after 414 ns, '0' after 416 ns;
    game_a_button <= '1' after 18 ns, '0' after 20 ns;
    game_b_button <= '1' after 22 ns, '0' after 24 ns;
    game_start <= '1' after 42 ns, '0' after 44 ns; 
    
end architecture tb;