library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Data_path is
	port(
			--entradas
			dt_CLEAR: in std_logic; -- RESET GERAL
			dt_CLOCK: in std_logic;
			dt_C1: in std_logic; -- hablita contador 1
			dt_C2: in std_logic; -- hablita contador 2
			dt_rmv_moeda : in std_logic;
			dt_rmv_obst : in std_logic;
			dt_lfsr_shft : in std_logic;
			dt_set_player : in std_logic;
			dt_clr_player : in std_logic;
			dt_clr_start : in std_logic; --zera o reg do start
			dt_clr_timer : in std_logic; -- zera o timer
			dt_cmd : in std_logic_vector(2 downto 0);
			dt_A : in std_logic;
			dt_B : in std_logic;
			dt_START : in std_logic;
			
			--saidas
			dt_player : out std_logic;
			dt_frame_timer : out std_logic; -- '1' quando passa 33 ms
			dt_collected : out std_logic;
			dt_ended : out std_logic;
			dt_cmp_Q : out std_logic; -- saiÂ­da comparador
			dt_cnt_Q : out std_logic_vector(6 downto 0); -- saida contador
			dt_reg_Q : out std_logic_vector(1 downto 0);-- Saida registrador
			dt_empate : out std_logic;
			dt_1_maior_2 : out std_logic;
			dt_2_maior_1 : out std_logic
			
			);
end Data_path;

architecture estrutural of Data_path is

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
				sr_Q0 : out std_logic_vector(16 downto 0);
				sr_Q1 : out std_logic_vector(16 downto 0);
				sr_RMV : in std_logic
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

		component lfsr is 
			port(	
					lfsr_clk : in std_logic;
					lfsr_s : out std_logic_vector(7 downto 0)
			);
		end component;
		
		
		signal cnt1_q,cnt2_q: std_logic_vector(6 downto 0);
		signal cnt_q_fio_2: std_logic_vector(6 downto 0);
		signal cmp_M_fio, cmp_P_fio: std_logic_vector(6 downto 0);
		signal sq0_moedas,sq1_moedas,sq0_obstaculos,sq1_obstaculos:  std_logic_vector(16 downto 0);
		signal s_lfsr : std_logic_vector(7 downto 0);
		signal s_player_pos, r2_en ,sr_m_in0,sr_m_in1,sr_o_in0,sr_o_in1: std_logic;
		signal r2_q : std_logic_vector(1 downto 0);
		
		begin
		
		contador_P1: Contador_7_bits port map(	cnt_H => dt_C1 ,
															cnt_RESET => dt_CLEAR,
															cnt_CLK => dt_CLOCK, 
															cnt_Q => cnt1_q);
		
		contador_P2: Contador_7_bits port map(	cnt_H => dt_C2 ,
															cnt_RESET => dt_CLEAR,
															cnt_CLK => dt_CLOCK,
															cnt_Q => cnt2_q);
		
		comp_placar : comparador_7_bits port map(	cmp_A => cnt1_q,
																cmp_B => cnt2_q,
																cmp_IGUAL => dt_empate,
																cmp_MAIOR => dt_1_maior_2,
																cmp_MENOR => dt_2_maior_1);
		
		player : reg_1bit port map( 	r1_PRE => dt_set_player,
											 	r1_CLR => dt_clr_player,
												r1_CLK => dt_CLOCK ,
												r1_Q => dt_player);
		
		sr_moedas : sr18bits_dual port map(	sr_IN0 => sr_m_in0 ,
														sr_IN1 => sr_m_in1, 
														sr_RMV => dt_rmv_moeda, 
														sr_CLK => dt_lfsr_shft, 
														sr_Q0 => sq0_moedas,
														sr_Q1 => sq1_moedas);
		
		sr_obstaculos : sr18bits_dual port map(sr_IN0 => sr_o_in0,
															sr_IN1 => sr_o_in1,
															sr_RMV => dt_rmv_obst,
															sr_CLK => dt_lfsr_shft,
															sr_Q0 => sq0_obstaculos,
															sr_Q1 => sq1_obstaculos);
		
		comp_pm : Comparador port map(	cmp_M =>sq1_moedas(16),
													cmp_P => s_player_pos ,
													cmp_Q => dt_collected); 
		
		comp_po : Comparador port map(	cmp_M =>sq1_obstaculos(16),
													cmp_P => s_player_pos ,
													cmp_Q => dt_ended);
		
		lfsr_instance : lfsr port map(	lfsr_clk => dt_lfsr_shft,
													lfsr_s => s_lfsr);
		
		cnt_2bits : Contador_2_bits port map(	cnt_EN => r2_en,
															cnt_CLK => dt_CLOCK ,
															cnt_RESET => dt_CLEAR ,
															cnt_Q => r2_q);
		
		r2_en <= '1';
		
		sr_m_in0 <= (r2_q(1) or r2_q(0)) and s_lfsr(0);
		
		sr_m_in1 <= s_lfsr(4);
		
		sr_o_in0 <= r2_q(1) nand r2_q(0);
		
		sr_o_in1 <= s_lfsr(5);
		
		player_pos : reg_1bit port map( 	r1_PRE => dt_A,
													r1_CLR => dt_B,
													r1_CLK => dt_CLOCK ,
													r1_Q => s_player_pos);
		
		--instancia_:  port map();
		--instancia_:  port map();
		--instancia_:  port map();
		
end estrutural;

