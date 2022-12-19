library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Data_path is
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
end Data_path;

architecture estrutural of Data_path is
		
		component lcd_driver is
			port(	clk : in std_logic;
					cmd : in std_logic_vector(2 downto 0);
					render : in std_logic;
					q0_moeda : in std_logic_vector(15 downto 0);
					q1_moeda : in std_logic_vector(15 downto 0);
					q0_obstaculo : in std_logic_vector(15 downto 0);
					q1_obstaculo : in std_logic_vector(15 downto 0);
					player_pos : in std_logic;
					finished : out std_logic;
					DATA : out std_logic_vector (7 downto 0);
					E : out std_logic;
					RS : out std_logic
					);
		end component;
		
		component reg2bits is 
			port(
			cnt_RESET : in std_logic;
			cnt_H : in std_logic;
			cnt_CLK : in std_logic;
			cnt_Q : out std_logic_vector(6 downto 0)
			);
		end component;
		
		component Contador_7_bits is 
			port(
			cnt_RESET : in std_logic;
			cnt_H : in std_logic; -- Habilita
			cnt_CLK : in std_logic;
			cnt_Q : out std_logic_vector(6 downto 0)
			);
		end component;
		
		component Comparador is 
			port(
			cmp_M : in std_logic;
			cmp_P : in std_logic;
			cmp_Q : out std_logic
			);
		end component;
		
		component comparador_7_bits is
		port(
			cmp_A : in std_logic_vector(6 downto 0);
			cmp_B : in std_logic_vector(6 downto 0);
			cmp_IGUAL : out std_logic;
			cmp_MAIOR : out std_logic;
			cmp_MENOR : out std_logic
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
		
		component sr18bits_dual is
			port(
				sr_IN0 : in std_logic;
				sr_IN1 : in std_logic;
				sr_CLK : in std_logic;
				sr_CLR : in std_logic;
				sr_RMV : in std_logic;
				sr_Q0 : out std_logic_vector(16 downto 0);
				sr_Q1 : out std_logic_vector(16 downto 0)
				);	
		end component;
		
		component contador_2_bits_no_en is
			port(
					cnt_CLK : in std_logic;
					cnt_RESET : in std_logic;
					cnt_Q : out std_logic_vector(1 downto 0)
					);
		end component ;
		
		component div_freq is
			port(
					div_CLK : in std_logic;
					div_RESET : in std_logic;
					div_Q : out std_logic
					);
		end component;
		
		component lfsr is 
			port(	
					lfsr_clk : in std_logic;
					lfsr_s0 : out std_logic;
					lfsr_s1 : out std_logic
			);
		end component;
		
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
		
		component div_freq_5000 is
			port(
					div_CLK : in std_logic;
					div_RESET : in std_logic;
					div_Q : out std_logic
					);
		end component;
		
    component display_7_seg is
        port (
            entrada : in std_logic_vector(6 downto 0);
            saida_dez, saida_un : out std_logic_vector(6 downto 0)
        );
    end component;		
		
	signal s1, s2, s15, s16, s17, s18 : std_logic_vector(6 downto 0);
	signal s3, s4, s5, s7 , s12, s13, s14: std_logic;
	signal s6 : std_logic_vector(1 downto 0);
	signal s8, s9, s10, s11 : std_logic_vector(16 downto 0);
	
		begin
		
		contador_moedas_1: Contador_7_bits port map(	cnt_H => dt_en_cont_1 ,
																	cnt_RESET => dt_clr,
																	cnt_CLK => dt_clk, 
																	cnt_Q => s1);
		
		contador_moedas_2: Contador_7_bits port map(	cnt_H => dt_en_cont_2 ,
																	cnt_RESET => dt_clr,
																	cnt_CLK => dt_clk,
																	cnt_Q => s2);
		
		comparador_moedas : comparador_7_bits port map(	cmp_A => s1,
																		cmp_B => s2,
																		cmp_IGUAL => dt_igual,
																		cmp_MAIOR => dt_maior,
																		cmp_MENOR => dt_menor);
		
		player_reg : reg_1bit port map( 	r1_PRE => dt_set_player,
													r1_CLR => dt_clr_player,
													r1_CLK => dt_clk ,
													r1_Q => dt_player);
		
		start_reg : reg_1bit port map( 	r1_PRE => dt_start_key,
													r1_CLR => dt_clr_start,
													r1_CLK => dt_clk ,
													r1_Q => dt_start);		
		
		frame_timer : timer port map(	tmr_clk => dt_clk,
												tmr_reset => dt_clr_timer,
												tmr_q => dt_end_of_frame);	
		
		player_position : reg_1bit port map( 	r1_PRE => dt_a_key,
															r1_CLR => dt_b_key,
															r1_CLK => dt_clk ,
															r1_Q => s13);
															
		divisor_freq : div_freq port map(	div_CLK => dt_shift,
														div_RESET => dt_clr,
														div_Q => s3);
		
		lfsr_instance : lfsr port map(lfsr_clk => s3,
												lfsr_s0 => s4,
												lfsr_s1 => s5);
		
		cont_2b : contador_2_bits_no_en port map(	cnt_CLK => s3,
														cnt_RESET => dt_clr,
														cnt_Q => s6);
		s7 <= (s6(0) or s6(1)) and s5;
		
		sr_moeda : sr18bits_dual port map(	sr_CLK => s3,
														sr_IN0 => s7,
														sr_IN1 => s4,
														sr_RMV => dt_rmv_moeda,
														sr_CLR => dt_clr,
														sr_Q0 => s10,
														sr_Q1 => s11);
		s12 <=(s6(0) and s6(1)); 
		
		sr_obstaculo : sr18bits_dual port map(	sr_CLK => s3,
																sr_IN0 => s12,
																sr_IN1 => s4,
																sr_RMV => dt_rmv_obst,
																sr_CLR => dt_clr,
																sr_Q0 => s8,
																sr_Q1 => s9);
																
		comp1 : comparador port map(	cmp_M => s11(16),
												cmp_P => s13,
												cmp_Q => dt_collected);
		
		comp2 : comparador port map(	cmp_M => s9(16),
												cmp_P => s13,
												cmp_Q => dt_ended);
												
		div_freq_10kHz : div_freq_5000 port map(	div_CLK => dt_clk,
																div_RESET => dt_clr,
																div_Q => s14);
		lcd : lcd_driver  port map(
						clk => s14,
						cmd => dt_cmd,
						render => dt_render,
						q0_moeda => s10(16 downto 1),
						q1_moeda => s11(16 downto 1),
						q0_obstaculo => s8(16 downto 1),
						q1_obstaculo => s9(16 downto 1),
						player_pos => s13,
						finished => dt_finished,
						DATA => dt_data,
						E => dt_e,
						RS => dt_rs
						);

		displa1 : display_7_seg port map (
			  entrada => s1,
			  saida_dez => dt_d1_dez,
			  saida_un => dt_d1_un
		 );
		 
		displa2 : display_7_seg port map (
			  entrada => s2,
			  saida_dez => dt_d2_dez,
			  saida_un => dt_d2_un
		 );
		
		
		dt_tem_moeda <= s10(16);
		
		dt_tem_obstaculo <= s8(16);
		
end estrutural;

