library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_controladora_jogo is
end entity tb_controladora_jogo;

architecture tb of tb_controladora_jogo is
    
    component controladora_jogo is
        port(
            --entradas
            ctrl_CLK : in std_logic;
            ctrl_FINISH : in std_logic;
            ctrl_START : in std_logic;
            ctrl_Q0_MOEDA : in std_logic;
            ctrl_COLLECTED : in std_logic;
            ctrl_Q0_OBST : in std_logic;
            ctrl_ENDED : in std_logic;
            ctrl_PLAYER : in std_logic;
            ctrl_FRAME_TIMER : in std_logic;
            ctrl_RESULT : in std_logic_vector(2 downto 0);
            
            --saidas
            ctrl_LFSR_SHFT : out std_logic;
            ctrl_CNT_MOEDA1: out std_logic;
            ctrl_CNT_MOEDA2 : out std_logic;
            ctrl_RMV_MOEDA : out std_logic;
            ctrl_RMV_OBST : out std_logic;
            ctrl_SET_PLAYER : out std_logic;
            ctrl_CLR_MOEDA : out std_logic;
            ctrl_CLR_PLAYER : out std_logic;
            ctrl_CLR_TIMER : out std_logic;
            ctrl_CLR_START : out std_logic;
            ctrl_RENDER : out std_logic;
            ctrl_CMD : out std_logic_vector(2 downto 0)
            );
    end component;

    signal s_clk, s_finish, s_start, s_q0_moeda, s_collected, s_q0_obst, s_ended, s_player, s_frame_timer : std_logic := '0';
    signal s_lfsr_shift, s_cnt_moeda1, s_cnt_moeda2, s_rmv_moeda, s_rmv_obst,s_set_player, s_clr_moeda,s_clr_player, s_clr_timer, s_clr_start, s_render : std_logic;
    signal s_result, s_cmd : std_logic_vector(2 downto 0);


begin
    
    controladora : controladora_jogo port map(
        --entradas
        ctrl_CLK => s_clk,
        ctrl_FINISH => s_finish,
        ctrl_START => s_start,
        ctrl_Q0_MOEDA => s_q0_moeda,
        ctrl_COLLECTED => s_collected,
        ctrl_Q0_OBST => s_q0_obst,
        ctrl_ENDED => s_ended,
        ctrl_PLAYER => s_player,
        ctrl_FRAME_TIMER => s_frame_timer,
        ctrl_RESULT => s_result,
        
        --saidas
        ctrl_LFSR_SHFT => s_lfsr_shift,
        ctrl_CNT_MOEDA1 => s_cnt_moeda1,
        ctrl_CNT_MOEDA2 => s_cnt_moeda2,
        ctrl_RMV_MOEDA => s_rmv_moeda,
        ctrl_RMV_OBST => s_rmv_obst,
        ctrl_SET_PLAYER => s_set_player,
        ctrl_CLR_MOEDA => s_clr_moeda,
        ctrl_CLR_PLAYER => s_clr_player,
        ctrl_CLR_TIMER => s_clr_timer,
        ctrl_CLR_START => s_clr_start,
        ctrl_RENDER => s_render,
        ctrl_CMD => s_cmd
        );

    s_clk <= not s_clk after 10 ns;
    
    s_finish <= '1';

    s_start <= '1';

    s_q0_moeda <= '0';

    s_collected <= '1';

    s_q0_obst <= '1';

    s_ended <= '1';

    s_player <= '0', '1' after 143 ns;

    s_frame_timer <= '0';

    s_result <= "100";

    
end architecture tb;