library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity lcd_driver_dp is
	port(
			dp_clk : in std_logic;
			dp_q0obst : in std_logic_vector(15 downto 0);
			dp_q0moeda : in std_logic_vector(15 downto 0);
			dp_q1obst : in std_logic_vector(15 downto 0);
			dp_q1moeda : in std_logic_vector(15 downto 0);
			dp_cnt_pos : in std_logic;
			dp_clr_pos : in std_logic;
			dp_cnt_obj : in std_logic;
			dp_clr_obj : in std_logic;
			dp_set_linha : in std_logic;
			dp_clr_linha : in std_logic;
			dp_en_timer : in std_logic;
			dp_clr_timer : in std_logic;
			dp_en_E : in std_logic;
			
			dp_q0_pos : out std_logic;
			dp_q1_pos : out std_logic;
			dp_pos_15 : out std_logic;
			dp_obj : out std_logic_vector(1 downto 0);
			dp_linha : out std_logic;
			dp_t2 : out std_logic;
			dp_t40 : out std_logic;
			dp_t100 : out std_logic;
			dp_t1000 : out std_logic;
			dp_E : out std_logic;
		);
end lcd_driver_dp;

architecture estrutural of lcd_driver_dp is

	component mux_15 is
		port(
			mux_inputs : in std_logic_vector(15 downto 0);
			mux_control : in std_logic_vector(3 downto 0);
			mux_output : out std_logic
			);
	end component;
	
	component mux_2 is
		port(
			mux2_inputs : in std_logic_vector(1 downto 0);
			mux2_control : in std_logic;
			mux2_output : out std_logic
			);
	end component;
	
	component cont_10 is
		port(
				cnt10_clk : in std_logic;
				cnt10_reset : in std_logic;
				cnt10_h : in std_logic;
				cnt10_q : out std_logic_vector(9 downto 0)
			);
	end component;
	
	component cont_4 is
		port(
				cont4_H : in std_logic;
				cont4_CLK : in std_logic;
				cont4_CLR : in std_logic;
				cont4_Q : out std_logic_vector(3 downto 0)
			);
	end component;
	
	component Contador_2_bits is
		port(
				cnt_EN : in std_logic;
				cnt_CLK : in std_logic;
				cnt_RESET : in std_logic;
				cnt_Q : out std_logic_vector(1 downto 0)
				
				);
	end component;
	
	component reg_1bit is 
		port(
			r1_PRE : in std_logic;
			r1_CLR : in std_logic;
			r1_CLK : in std_logic;
			r1_Q : out std_logic
		);
	end component;
	
	component comp_10 is
		port(
				comp_A : in std_logic_vector(9 downto 0);
				comp_B : in std_logic_vector(9 downto 0);
				comp_S : out std_logic
			);
	end component;
	
	signal s_m_oq0, s_m_oq1, s_m_mq0, s_m_mq1: std_logic;
	signal s_obj : std_logic_vector(1 downto 0);
	signal s_pos : std_logic_vector(3 downto 0);
	signal s_timer: std_logic_vector(9 downto 0);
	signal s_2: std_logic_vector(9 downto 0) := "0000000010";
	signal s_40: std_logic_vector(9 downto 0) := "0000101000";
	signal s_100: std_logic_vector(9 downto 0) := "0001100100";
	signal s_1000: std_logic_vector(9 downto 0) := "1111101000";
	
begin
	
	mux15_obstaculo_q0 : mux_15 port map(mux_inputs => dp_q0obst,mux_control => s_pos ,mux_output => s_m_oq0);
	mux15_obstaculo_q1 : mux_15 port map(mux_inputs => dp_q1obst,mux_control => s_pos ,mux_output => s_m_oq1);
	mux15_moeda_q0 : mux_15 port map(mux_inputs => dp_q0moeda,mux_control => s_pos ,mux_output => s_m_mq0);
	mux15_moeda_q1 : mux_15 port map(mux_inputs => dp_q1moeda,mux_control => s_pos ,mux_output => s_m_mq1);
	
	mux2_q0 : mux_2 port map(	mux2_inputs(1) => s_m_oq0 ,
										mux2_inputs(0) => s_m_mq0 ,
										mux2_control => s_obj(0) ,
										mux2_output => dp_q0_pos);
										
	mux2_q1 : mux_2 port map(	mux2_inputs(1) => s_m_oq1 ,
										mux2_inputs(0) => s_m_mq1 ,
										mux2_control => s_obj(0) ,
										mux2_output => dp_q1_pos);
										
	cont_pos : cont_4 port map(cont4_CLK => dp_clk,
										cont4_H => dp_cnt_pos,
										cont4_CLR=> dp_clr_pos,
										cont4_Q => s_pos);
										
	dp_pos_15 <= s_pos(3) and s_pos(2) and s_pos(1) and s_pos(0);
	
	cont_obj : Contador_2_bits port map(cnt_EN => dp_cnt_obj,
													cnt_CLK => dp_clk,
													cnt_RESET => dp_clr_obj,
													cnt_Q => s_obj);
	dp_obj <= s_obj;
													
	reg_linha : reg_1bit port map(r1_PRE => dp_set_linha,
											r1_CLR => dp_clr_linha,
											r1_CLK => dp_clk,
											r1_Q => dp_linha);
	
	timer : cont_10 port map(	cnt10_clk => dp_clk,
										cnt10_h => dp_en_timer,
										cnt10_reset => dp_clr_timer,
										cnt10_q => s_timer);
	
	comp_t2 : comp_10 port map(comp_A => s_timer,
										comp_B => s_2,
										comp_S => dp_t2);
										
	comp_t40 : comp_10 port map(	comp_A => s_timer,
											comp_B =>  s_40,
											comp_S => dp_t40);
										
	comp_t100 : comp_10 port map(	comp_A => s_timer,
											comp_B => s_100,
											comp_S => dp_t100);
										
	comp_t1000 :  comp_10 port map(	comp_A => s_timer,
												comp_B => s_1000,
												comp_S => dp_t1000);
	
	dp_E <= dp_en_E and dp_clk;
	
end estrutural;
	