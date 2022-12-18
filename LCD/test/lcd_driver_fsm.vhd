library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity lcd_driver_fsm is
	port(
		fsm_clk : in std_logic;
		fsm_cmd : in std_logic_vector(2 downto 0);
		fsm_q0_pos : in std_logic;
		fsm_q1_pos : in std_logic;
		fsm_player_pos : in std_logic;
		fsm_pos : in std_logic;
		fsm_linha : in std_logic;
		fsm_t2 : in std_logic;
		fsm_t40 : in std_logic;
		fsm_t100 : in std_logic;
		fsm_t1000 : in std_logic;
		fsm_obj : in std_logic_vector(1 downto 0);
		fsm_render : in std_logic;--usado
		fsm_clr_pos : out std_logic;--usado
		fsm_en_pos : out std_logic;--usado
		fsm_clr_linha : out std_logic;--usado
		fsm_set_linha : out std_logic;--usado
		fsm_clr_timer : out std_logic;--usado
		fsm_en_timer : out std_logic;--usado
		fsm_clr_obj : out std_logic;--usado
		fsm_en_obj : out std_logic;--usado
		fsm_en_E : out std_logic;--usado
		fsm_finish : out std_logic;--usado
		fsm_rs : out std_logic;--usado
		fsm_dt : out std_logic_vector(7 downto 0)--usado		
	);
	
end lcd_driver_fsm;

architecture fsm of lcd_driver_fsm is

	type estado is   (s0,s1,s2,s3,s4,s5,s6,s7,s8,s9,
							s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,
							s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,
							s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,
							s40,s41,s42,s43,s44,s45,s46,s47,s48,s49,
							s50,s51,s52);
	signal atual_estado, prox_estado: estado := s0;


begin
	sequencial : 
	process(fsm_clk) is
	begin
		if rising_edge(fsm_clk) then
			atual_estado <= prox_estado;
		end if;
	end process;
	
	logico :
		process( fsm_q0_pos,fsm_q1_pos, atual_estado) is
		begin
			case atual_estado is
				when s0 => --CLEAR
					fsm_clr_pos <= '1';
					fsm_en_pos <= '0';
					fsm_clr_linha <= '1';
					fsm_set_linha <= '0';
					fsm_clr_timer <= '1';
					fsm_en_timer <= '0';
					fsm_clr_obj <= '1';
					fsm_en_obj <= '0';
					fsm_en_E <= '0';
					fsm_finish <= '0';
					fsm_rs <= '0';
					fsm_dt <= "00000000";
					
					prox_estado <= s1;
					
				when s1 => --TIMER++
					fsm_clr_pos <= '0';
					fsm_en_pos <= '0';
					fsm_clr_linha <= '0';
					fsm_set_linha <= '0';
					fsm_clr_timer <= '0';
					fsm_en_timer <= '1';
					fsm_clr_obj <= '0';
					fsm_en_obj <= '0';
					fsm_en_E <= '0';
					fsm_finish <= '0';
					fsm_rs <= '0';
					fsm_dt <= "00000000";
					
					if fsm_t1000 = '1' then --100 ms
						prox_estado <= s2;
					else
						prox_estado <= s1;
					end if;
					
				when s2 => --DISPLAY INIT 1
					fsm_clr_pos <= '0';
					fsm_en_pos <= '0';
					fsm_clr_linha <= '0';
					fsm_set_linha <= '0';
					fsm_clr_timer <= '0';
					fsm_en_timer <= '0';
					fsm_clr_obj <= '0';
					fsm_en_obj <= '0';
					fsm_en_E <= '1';
					fsm_finish <= '0';
					fsm_rs <= '0';
					fsm_dt <= "00110000";
					
					prox_estado <= s3;
				
				when s3 => --TIMER ++
					fsm_clr_pos <= '0';
					fsm_en_pos <= '0';
					fsm_clr_linha <= '0';
					fsm_set_linha <= '0';
					fsm_clr_timer <= '0';
					fsm_en_timer <= '1';
					fsm_clr_obj <= '0';
					fsm_en_obj <= '0';
					fsm_en_E <= '0';
					fsm_finish <= '0';
					fsm_rs <= '0';
					fsm_dt <= "00000000";
					
					if fsm_t100 = '1' then --10 ms
						prox_estado <= s4;
					else
						prox_estado <= s3;
					end if;
				
				when s4 => --DISPLAY INIT 2
					fsm_clr_pos <= '0';
					fsm_en_pos <= '0';
					fsm_clr_linha <= '0';
					fsm_set_linha <= '0';
					fsm_clr_timer <= '0';
					fsm_en_timer <= '0';
					fsm_clr_obj <= '0';
					fsm_en_obj <= '0';
					fsm_en_E <= '1';
					fsm_finish <= '0';
					fsm_rs <= '0';
					fsm_dt <= "00110000";
					
					prox_estado <= s5;
				
				when s5 => --TIMER ++
					fsm_clr_pos <= '0';
					fsm_en_pos <= '0';
					fsm_clr_linha <= '0';
					fsm_set_linha <= '0';
					fsm_clr_timer <= '0';
					fsm_en_timer <= '1';
					fsm_clr_obj <= '0';
					fsm_en_obj <= '0';
					fsm_en_E <= '0';
					fsm_finish <= '0';
					fsm_rs <= '0';
					fsm_dt <= "00000000";
					
					if fsm_t2 = '1' then --200 us
						prox_estado <= s6;
					else
						prox_estado <= s5;
					end if;
					
				when s6 => --DISPLAY INIT 3
					
					fsm_clr_pos <= '0';
					fsm_en_pos <= '0';
					fsm_clr_linha <= '0';
					fsm_set_linha <= '0';
					fsm_clr_timer <= '0';
					fsm_en_timer <= '0';
					fsm_clr_obj <= '0';
					fsm_en_obj <= '0';
					fsm_en_E <= '1';
					fsm_finish <= '0';
					fsm_rs <= '0';
					fsm_dt <= "00110000";
					
					prox_estado <= s7;
				
				when s7 => --TIMER ++
					fsm_clr_pos <= '0';
					fsm_en_pos <= '0';
					fsm_clr_linha <= '0';
					fsm_set_linha <= '0';
					fsm_clr_timer <= '0';
					fsm_en_timer <= '1';
					fsm_clr_obj <= '0';
					fsm_en_obj <= '0';
					fsm_en_E <= '0';
					fsm_finish <= '0';
					fsm_rs <= '0';
					fsm_dt <= "00000000";
					
					if fsm_t2 = '1' then --200 us
						prox_estado <= s8;
					else
						prox_estado <= s7;
					end if;
				
				when s8 => --FUNCTION SET
					
					fsm_clr_pos <= '0';
					fsm_en_pos <= '0';
					fsm_clr_linha <= '0';
					fsm_set_linha <= '0';
					fsm_clr_timer <= '0';
					fsm_en_timer <= '0';
					fsm_clr_obj <= '0';
					fsm_en_obj <= '0';
					fsm_en_E <= '1';
					fsm_finish <= '0';
					fsm_rs <= '0';
					fsm_dt <= "00111000";
					
					prox_estado <= s9;
				
				when s9 => --DISPLAY off
					
					fsm_clr_pos <= '0';
					fsm_en_pos <= '0';
					fsm_clr_linha <= '0';
					fsm_set_linha <= '0';
					fsm_clr_timer <= '0';
					fsm_en_timer <= '0';
					fsm_clr_obj <= '0';
					fsm_en_obj <= '0';
					fsm_en_E <= '1';
					fsm_finish <= '0';
					fsm_rs <= '0';
					fsm_dt <= "00001000";
					
					prox_estado <= s10;
				
				when s10 => --CLEAR DISPLAY, ZERA TIMER
				
					fsm_clr_pos <= '0';
					fsm_en_pos <= '0';
					fsm_clr_linha <= '0';
					fsm_set_linha <= '0';
					fsm_clr_timer <= '1';
					fsm_en_timer <= '0';
					fsm_clr_obj <= '0';
					fsm_en_obj <= '0';
					fsm_en_E <= '1';
					fsm_finish <= '0';
					fsm_rs <= '0';
					fsm_dt <= "00000001";
					
					prox_estado <= s11;
				
				when s11 => --TIMER ++
					fsm_clr_pos <= '0';
					fsm_en_pos <= '0';
					fsm_clr_linha <= '0';
					fsm_set_linha <= '0';
					fsm_clr_timer <= '0';
					fsm_en_timer <= '1';
					fsm_clr_obj <= '0';
					fsm_en_obj <= '0';
					fsm_en_E <= '0';
					fsm_finish <= '0';
					fsm_rs <= '0';
					fsm_dt <= "00000000";
					
					if fsm_t40 = '1' then
						prox_estado <= s12;
					else
						prox_estado <= s11;
					end if;
					
				when s12 => --ENTRY MODE SET
				
					fsm_clr_pos <= '0';
					fsm_en_pos <= '0';
					fsm_clr_linha <= '0';
					fsm_set_linha <= '0';
					fsm_clr_timer <= '0';
					fsm_en_timer <= '0';
					fsm_clr_obj <= '0';
					fsm_en_obj <= '0';
					fsm_en_E <= '1';
					fsm_finish <= '0';
					fsm_rs <= '0';
					fsm_dt <= "00000110";
					
					prox_estado <= s13;
					
				when s13 => --DISPLAY on
					
					fsm_clr_pos <= '0';
					fsm_en_pos <= '0';
					fsm_clr_linha <= '0';
					fsm_set_linha <= '0';
					fsm_clr_timer <= '0';
					fsm_en_timer <= '0';
					fsm_clr_obj <= '0';
					fsm_en_obj <= '0';
					fsm_en_E <= '1';
					fsm_finish <= '0';
					fsm_rs <= '0';
					fsm_dt <= "00001000";
					
					prox_estado <= s14;
					
				when s14 => --FIM DA INICIALIZACAO/FIM DO RENDER
				
					fsm_clr_pos <= '1';
					fsm_en_pos <= '0';
					fsm_clr_linha <= '1';
					fsm_set_linha <= '0';
					fsm_clr_timer <= '1';
					fsm_en_timer <= '0';
					fsm_clr_obj <= '1';
					fsm_en_obj <= '0';
					fsm_en_E <= '0';
					fsm_finish <= '1';
					fsm_rs <= '0';
					fsm_dt <= "00000000";
					
					if fsm_render = '1' then
						prox_estado <= s15;
					else
						prox_estado <= s14;
					end if;
				
				when s15 => --CLEAR DISPLAY
				
					fsm_clr_pos <= '0';
					fsm_en_pos <= '0';
					fsm_clr_linha <= '0';
					fsm_set_linha <= '0';
					fsm_clr_timer <= '0';
					fsm_en_timer <= '0';
					fsm_clr_obj <= '0';
					fsm_en_obj <= '0';
					fsm_en_E <= '1';
					fsm_finish <= '0';
					fsm_rs <= '0';
					fsm_dt <= "00000001";
					
					prox_estado <= s16;
				
				when s16 => --TIMER ++
					fsm_clr_pos <= '0';
					fsm_en_pos <= '0';
					fsm_clr_linha <= '0';
					fsm_set_linha <= '0';
					fsm_clr_timer <= '0';
					fsm_en_timer <= '1';
					fsm_clr_obj <= '0';
					fsm_en_obj <= '0';
					fsm_en_E <= '0';
					fsm_finish <= '0';
					fsm_rs <= '0';
					fsm_dt <= "00000000";
					--TESTA SE JA SE PASSARAM 4 ms
					if fsm_t40 = '1' then
						prox_estado <= s17;
					else
						prox_estado <= s16;
					end if;
								
				when s17 => --ESCOLHE SE VAI RENDERIZAR JOGO OU MENSAGEM
					fsm_clr_pos <= '0';
					fsm_en_pos <= '0';
					fsm_clr_linha <= '0';
					fsm_set_linha <= '0';
					fsm_clr_timer <= '0';
					fsm_en_timer <= '0';
					fsm_clr_obj <= '0';
					fsm_en_obj <= '0';
					fsm_en_E <= '0';
					fsm_finish <= '0';
					fsm_rs <= '0';
					fsm_dt <= "00000000";
					
					if fsm_cmd = "000" then
						prox_estado <= s18;
					else
						prox_estado <= s37;
					end if;
					
				when s18 => --SETA CURSOR PARA 00
				
					fsm_clr_pos <= '0';
					fsm_en_pos <= '0';
					fsm_clr_linha <= '0';
					fsm_set_linha <= '0';
					fsm_clr_timer <= '0';
					fsm_en_timer <= '0';
					fsm_clr_obj <= '0';
					fsm_en_obj <= '0';
					fsm_en_E <= '1';
					fsm_finish <= '0';
					fsm_rs <= '1';
					fsm_dt <= "00000000";
					
					prox_estado <= s19;
				
				when s19 => --ESCOLHE SE VAI RENDERIZAR MOEDAS E OBSTACULOS OU PLAYER
					fsm_clr_pos <= '0';
					fsm_en_pos <= '0';
					fsm_clr_linha <= '0';
					fsm_set_linha <= '0';
					fsm_clr_timer <= '0';
					fsm_en_timer <= '0';
					fsm_clr_obj <= '0';
					fsm_en_obj <= '0';
					fsm_en_E <= '0';
					fsm_finish <= '0';
					fsm_rs <= '0';
					fsm_dt <= "00000000";
					
					if fsm_obj(1) = '1'   then
						prox_estado <= s33;
					else
						prox_estado <= s20;
					end if;
				
				when s20 => --TESTA SE HA UM OBJETO EM QO(POS)
					fsm_clr_pos <= '0';
					fsm_en_pos <= '0';
					fsm_clr_linha <= '0';
					fsm_set_linha <= '0';
					fsm_clr_timer <= '0';
					fsm_en_timer <= '0';
					fsm_clr_obj <= '0';
					fsm_en_obj <= '0';
					fsm_en_E <= '0';
					fsm_finish <= '0';
					fsm_rs <= '0';
					fsm_dt <= "00000000";
					
					if fsm_q0_pos = '1' then
						prox_estado <= s21;
					else
						prox_estado <= s26 ;
					end if;
				
				when s21 => --TESTA SE O OBJETO EM Q1(POS) esta em cima ou em baixo
					fsm_clr_pos <= '0';
					fsm_en_pos <= '0';
					fsm_clr_linha <= '0';
					fsm_set_linha <= '0';
					fsm_clr_timer <= '0';
					fsm_en_timer <= '0';
					fsm_clr_obj <= '0';
					fsm_en_obj <= '0';
					fsm_en_E <= '0';
					fsm_finish <= '0';
					fsm_rs <= '0';
					fsm_dt <= "00000000";
					
					if fsm_q1_pos = '1' then
						prox_estado <= s22;
					else
						prox_estado <= s25 ;
					end if;
					
				when s22 => --TESTA SE O OBJETO EH MOEDA OU OBSTACULO
					fsm_clr_pos <= '0';
					fsm_en_pos <= '0';
					fsm_clr_linha <= '0';
					fsm_set_linha <= '0';
					fsm_clr_timer <= '0';
					fsm_en_timer <= '0';
					fsm_clr_obj <= '0';
					fsm_en_obj <= '0';
					fsm_en_E <= '0';
					fsm_finish <= '0';
					fsm_rs <= '0';
					fsm_dt <= "00000000";
					
					if fsm_obj(0) = '0' then
						prox_estado <= s23;--OBSTACULO
					else
						prox_estado <= s24;--MOEDA
					end if;
				
				when s23 => --ESCREVE OBSTACULO
					fsm_clr_pos <= '0';
					fsm_en_pos <= '0';
					fsm_clr_linha <= '0';
					fsm_set_linha <= '0';
					fsm_clr_timer <= '0';
					fsm_en_timer <= '0';
					fsm_clr_obj <= '0';
					fsm_en_obj <= '0';
					fsm_en_E <= '1';
					fsm_finish <= '0';
					fsm_rs <= '0';
					fsm_dt <= "00100011";
					
					prox_estado <= s27;
					
				when s24 => --ESCREVE MOEDA
					fsm_clr_pos <= '0';
					fsm_en_pos <= '0';
					fsm_clr_linha <= '0';
					fsm_set_linha <= '0';
					fsm_clr_timer <= '0';
					fsm_en_timer <= '0';
					fsm_clr_obj <= '0';
					fsm_en_obj <= '0';
					fsm_en_E <= '1';
					fsm_finish <= '0';
					fsm_rs <= '0';
					fsm_dt <= "10100101";
					
					prox_estado <= s27;
				
				when s25 => --TESTA SE ESTA NA LINHA DE CIMA OU DE BAIXO DO DISPLAY
					fsm_clr_pos <= '0';
					fsm_en_pos <= '0';
					fsm_clr_linha <= '0';
					fsm_set_linha <= '0';
					fsm_clr_timer <= '0';
					fsm_en_timer <= '0';
					fsm_clr_obj <= '0';
					fsm_en_obj <= '0';
					fsm_en_E <= '0';
					fsm_finish <= '0';
					fsm_rs <= '0';
					fsm_dt <= "00000000";
					
					if fsm_linha = '1' then
						prox_estado <= s22;
					else
						prox_estado <= s26 ;
					end if;
				
				when s26 => --ESCREVE ESPACO
					fsm_clr_pos <= '0';
					fsm_en_pos <= '0';
					fsm_clr_linha <= '0';
					fsm_set_linha <= '0';
					fsm_clr_timer <= '0';
					fsm_en_timer <= '0';
					fsm_clr_obj <= '0';
					fsm_en_obj <= '0';
					fsm_en_E <= '1';
					fsm_finish <= '0';
					fsm_rs <= '0';
					fsm_dt <= "00100000";
					
					prox_estado <= s27;
				
				when s27 => --TESTA SE ESTA NA ULTIMA POSICAO DA LINHA DO DISPLAY
					fsm_clr_pos <= '0';
					fsm_en_pos <= '0';
					fsm_clr_linha <= '0';
					fsm_set_linha <= '0';
					fsm_clr_timer <= '0';
					fsm_en_timer <= '0';
					fsm_clr_obj <= '0';
					fsm_en_obj <= '0';
					fsm_en_E <= '0';
					fsm_finish <= '0';
					fsm_rs <= '0';
					fsm_dt <= "00000000";
					
					if fsm_pos = '1' then
						prox_estado <= s29;
					else
						prox_estado <= s28 ;
					end if;
				
				when s28 => --POS ++
					fsm_clr_pos <= '0';
					fsm_en_pos <= '1';
					fsm_clr_linha <= '0';
					fsm_set_linha <= '0';
					fsm_clr_timer <= '0';
					fsm_en_timer <= '0';
					fsm_clr_obj <= '0';
					fsm_en_obj <= '0';
					fsm_en_E <= '0';
					fsm_finish <= '0';
					fsm_rs <= '0';
					fsm_dt <= "00100000";
					
					prox_estado <= s20;
				
				when s29 => --TESTA SE ESTA NA LINHA DE CIMA OU DE BAIXO DO DISPLAY
					fsm_clr_pos <= '0';
					fsm_en_pos <= '0';
					fsm_clr_linha <= '0';
					fsm_set_linha <= '0';
					fsm_clr_timer <= '0';
					fsm_en_timer <= '0';
					fsm_clr_obj <= '0';
					fsm_en_obj <= '0';
					fsm_en_E <= '0';
					fsm_finish <= '0';
					fsm_rs <= '0';
					fsm_dt <= "00000000";
					
					if fsm_linha = '1' then
						prox_estado <= s32;
					else
						prox_estado <= s30 ;
					end if;
				
				when s30 => --POS = 0, LINHA ++
					fsm_clr_pos <= '1';
					fsm_en_pos <= '0';
					fsm_clr_linha <= '0';
					fsm_set_linha <= '1';
					fsm_clr_timer <= '0';
					fsm_en_timer <= '0';
					fsm_clr_obj <= '0';
					fsm_en_obj <= '0';
					fsm_en_E <= '0';
					fsm_finish <= '0';
					fsm_rs <= '0';
					fsm_dt <= "00000000";
					
					prox_estado <= s31;
				
				when s31 => --SETA CURSOR PARA LINHA DE BAIXO
					fsm_clr_pos <= '0';
					fsm_en_pos <= '0';
					fsm_clr_linha <= '0';
					fsm_set_linha <= '0';
					fsm_clr_timer <= '0';
					fsm_en_timer <= '0';
					fsm_clr_obj <= '0';
					fsm_en_obj <= '0';
					fsm_en_E <= '1';
					fsm_finish <= '0';
					fsm_rs <= '1';
					fsm_dt <= "01000000";
					
					prox_estado <= s20;
				
				when s32 => --OBJ ++, LINHA = 0, POS = 0
					fsm_clr_pos <= '1';
					fsm_en_pos <= '0';
					fsm_clr_linha <= '1';
					fsm_set_linha <= '0';
					fsm_clr_timer <= '0';
					fsm_en_timer <= '0';
					fsm_clr_obj <= '0';
					fsm_en_obj <= '1';
					fsm_en_E <= '0';
					fsm_finish <= '0';
					fsm_rs <= '0';
					fsm_dt <= "00000000";
					
					prox_estado <= s18;
					
				when s33 => --TESTA SE O PLAYER ESTA EM CIMA EM OU EM BAIXO
					fsm_clr_pos <= '0';
					fsm_en_pos <= '0';
					fsm_clr_linha <= '0';
					fsm_set_linha <= '0';
					fsm_clr_timer <= '0';
					fsm_en_timer <= '0';
					fsm_clr_obj <= '0';
					fsm_en_obj <= '0';
					fsm_en_E <= '0';
					fsm_finish <= '0';
					fsm_rs <= '0';
					fsm_dt <= "00000000";
					
					if fsm_player_pos = '1' then
						prox_estado <= s34;--ESTA EM CIMA
					else
						prox_estado <= s35;--ESTA EM BAIXO
					end if;
				
				when s34 => --ESCREVE O PLAYER 
					fsm_clr_pos <= '0';
					fsm_en_pos <= '0';
					fsm_clr_linha <= '0';
					fsm_set_linha <= '0';
					fsm_clr_timer <= '0';
					fsm_en_timer <= '0';
					fsm_clr_obj <= '0';
					fsm_en_obj <= '0';
					fsm_en_E <= '1';
					fsm_finish <= '0';
					fsm_rs <= '0';
					fsm_dt <= "11111011";
					
					prox_estado <= s52;
				
				when s35 => --SETA CURSOR PARA LINHA DE BAIXO
					fsm_clr_pos <= '0';
					fsm_en_pos <= '0';
					fsm_clr_linha <= '0';
					fsm_set_linha <= '0';
					fsm_clr_timer <= '0';
					fsm_en_timer <= '0';
					fsm_clr_obj <= '0';
					fsm_en_obj <= '0';
					fsm_en_E <= '1';
					fsm_finish <= '0';
					fsm_rs <= '1';
					fsm_dt <= "01000000";
					
					prox_estado <= s34;
				
				when s36 => --SETA CURSOR PARA A POSICAO 5
					fsm_clr_pos <= '0';
					fsm_en_pos <= '0';
					fsm_clr_linha <= '0';
					fsm_set_linha <= '0';
					fsm_clr_timer <= '0';
					fsm_en_timer <= '0';
					fsm_clr_obj <= '0';
					fsm_en_obj <= '0';
					fsm_en_E <= '1';
					fsm_finish <= '0';
					fsm_rs <= '1';
					fsm_dt <= "00000101";
					
					prox_estado <= s37;
				
				when s37 => --TESTA QUAL MENSAGEM DEVE APARECER
					fsm_clr_pos <= '0';
					fsm_en_pos <= '0';
					fsm_clr_linha <= '0';
					fsm_set_linha <= '0';
					fsm_clr_timer <= '0';
					fsm_en_timer <= '0';
					fsm_clr_obj <= '0';
					fsm_en_obj <= '0';
					fsm_en_E <= '0';
					fsm_finish <= '0';
					fsm_rs <= '0';
					fsm_dt <= "00000000";
					
					if fsm_cmd(2 downto 1) = "10" then
						prox_estado <= s38;--MENSAGEM PARA INICIAR O JOGO
					elsif fsm_cmd(2 downto 1) = "11" then
						prox_estado <= s43;--MENSAGEM INDICANDO VENCEDOR
					else
						prox_estado <= s48;--MENSAGEM INDICANDO EMPATE
					end if;
				
				when s38 => --ESCREVE ESPACO
					fsm_clr_pos <= '0';
					fsm_en_pos <= '0';
					fsm_clr_linha <= '0';
					fsm_set_linha <= '0';
					fsm_clr_timer <= '0';
					fsm_en_timer <= '0';
					fsm_clr_obj <= '0';
					fsm_en_obj <= '0';
					fsm_en_E <= '1';
					fsm_finish <= '0';
					fsm_rs <= '0';
					fsm_dt <= "00100000";
					
					prox_estado <= s39;
				
				when s39 => --ESCREVE "P"
					fsm_clr_pos <= '0';
					fsm_en_pos <= '0';
					fsm_clr_linha <= '0';
					fsm_set_linha <= '0';
					fsm_clr_timer <= '0';
					fsm_en_timer <= '0';
					fsm_clr_obj <= '0';
					fsm_en_obj <= '0';
					fsm_en_E <= '1';
					fsm_finish <= '0';
					fsm_rs <= '0';
					fsm_dt <= "01010000";
					
					if fsm_cmd(0) = '0' then
						prox_estado <= s40;--MENSAGEM PARA O PLAYER 1
					else
						prox_estado <= s41;--mENSAGEM PARA O PLAYER 2
					end if;
					
				when s40 => --ESCREVE "1"
					fsm_clr_pos <= '0';
					fsm_en_pos <= '0';
					fsm_clr_linha <= '0';
					fsm_set_linha <= '0';
					fsm_clr_timer <= '0';
					fsm_en_timer <= '0';
					fsm_clr_obj <= '0';
					fsm_en_obj <= '0';
					fsm_en_E <= '1';
					fsm_finish <= '0';
					fsm_rs <= '0';
					fsm_dt <= "00110001";
					
					prox_estado <= s42;
					
				when s41 => --ESCREVE "2"
					fsm_clr_pos <= '0';
					fsm_en_pos <= '0';
					fsm_clr_linha <= '0';
					fsm_set_linha <= '0';
					fsm_clr_timer <= '0';
					fsm_en_timer <= '0';
					fsm_clr_obj <= '0';
					fsm_en_obj <= '0';
					fsm_en_E <= '1';
					fsm_finish <= '0';
					fsm_rs <= '0';
					fsm_dt <= "00110010";
					
					prox_estado <= s42;
				
				when s42 => --ESCREVE ESPACO
					fsm_clr_pos <= '0';
					fsm_en_pos <= '0';
					fsm_clr_linha <= '0';
					fsm_set_linha <= '0';
					fsm_clr_timer <= '0';
					fsm_en_timer <= '0';
					fsm_clr_obj <= '0';
					fsm_en_obj <= '0';
					fsm_en_E <= '1';
					fsm_finish <= '0';
					fsm_rs <= '0';
					fsm_dt <= "00100000";
					
					prox_estado <= s52;
				
				when s43 => --ESCREVE "P"
					fsm_clr_pos <= '0';
					fsm_en_pos <= '0';
					fsm_clr_linha <= '0';
					fsm_set_linha <= '0';
					fsm_clr_timer <= '0';
					fsm_en_timer <= '0';
					fsm_clr_obj <= '0';
					fsm_en_obj <= '0';
					fsm_en_E <= '1';
					fsm_finish <= '0';
					fsm_rs <= '0';
					fsm_dt <= "01010000";
					
					if fsm_cmd(0) = '0' then
						prox_estado <= s44;--MENSAGEM PARA O PLAYER 1
					else
						prox_estado <= s45;--mENSAGEM PARA O PLAYER 2
					end if;
				
				when s44 => --ESCREVE "1"
					fsm_clr_pos <= '0';
					fsm_en_pos <= '0';
					fsm_clr_linha <= '0';
					fsm_set_linha <= '0';
					fsm_clr_timer <= '0';
					fsm_en_timer <= '0';
					fsm_clr_obj <= '0';
					fsm_en_obj <= '0';
					fsm_en_E <= '1';
					fsm_finish <= '0';
					fsm_rs <= '0';
					fsm_dt <= "00110001";
					
					prox_estado <= s46;
				
				when s45 => --ESCREVE "2"
					fsm_clr_pos <= '0';
					fsm_en_pos <= '0';
					fsm_clr_linha <= '0';
					fsm_set_linha <= '0';
					fsm_clr_timer <= '0';
					fsm_en_timer <= '0';
					fsm_clr_obj <= '0';
					fsm_en_obj <= '0';
					fsm_en_E <= '1';
					fsm_finish <= '0';
					fsm_rs <= '0';
					fsm_dt <= "00110010";
					
					prox_estado <= s46;
				
				when s46 => --ESCREVE ESPACO
					fsm_clr_pos <= '0';
					fsm_en_pos <= '0';
					fsm_clr_linha <= '0';
					fsm_set_linha <= '0';
					fsm_clr_timer <= '0';
					fsm_en_timer <= '0';
					fsm_clr_obj <= '0';
					fsm_en_obj <= '0';
					fsm_en_E <= '1';
					fsm_finish <= '0';
					fsm_rs <= '0';
					fsm_dt <= "00100000";
					
					prox_estado <= s47;
				
				when s47 => --ESCREVE "W"
					fsm_clr_pos <= '0';
					fsm_en_pos <= '0';
					fsm_clr_linha <= '0';
					fsm_set_linha <= '0';
					fsm_clr_timer <= '0';
					fsm_en_timer <= '0';
					fsm_clr_obj <= '0';
					fsm_en_obj <= '0';
					fsm_en_E <= '1';
					fsm_finish <= '0';
					fsm_rs <= '0';
					fsm_dt <= "01010111";
					
					prox_estado <= s52;
				
				when s48 => --ESCREVE "T"
					fsm_clr_pos <= '0';
					fsm_en_pos <= '0';
					fsm_clr_linha <= '0';
					fsm_set_linha <= '0';
					fsm_clr_timer <= '0';
					fsm_en_timer <= '0';
					fsm_clr_obj <= '0';
					fsm_en_obj <= '0';
					fsm_en_E <= '1';
					fsm_finish <= '0';
					fsm_rs <= '0';
					fsm_dt <= "01010100";
					
					prox_estado <= s49;
					
				when s49 => --ESCREVE "I"
					fsm_clr_pos <= '0';
					fsm_en_pos <= '0';
					fsm_clr_linha <= '0';
					fsm_set_linha <= '0';
					fsm_clr_timer <= '0';
					fsm_en_timer <= '0';
					fsm_clr_obj <= '0';
					fsm_en_obj <= '0';
					fsm_en_E <= '1';
					fsm_finish <= '0';
					fsm_rs <= '0';
					fsm_dt <= "01001001";
					
					prox_estado <= s50;
					
				when s50 => --ESCREVE "E"
					fsm_clr_pos <= '0';
					fsm_en_pos <= '0';
					fsm_clr_linha <= '0';
					fsm_set_linha <= '0';
					fsm_clr_timer <= '0';
					fsm_en_timer <= '0';
					fsm_clr_obj <= '0';
					fsm_en_obj <= '0';
					fsm_en_E <= '1';
					fsm_finish <= '0';
					fsm_rs <= '0';
					fsm_dt <= "01000101";
					
					prox_estado <= s51;
					
				when s51 => --ESCREVE "D"
					fsm_clr_pos <= '0';
					fsm_en_pos <= '0';
					fsm_clr_linha <= '0';
					fsm_set_linha <= '0';
					fsm_clr_timer <= '0';
					fsm_en_timer <= '0';
					fsm_clr_obj <= '0';
					fsm_en_obj <= '0';
					fsm_en_E <= '1';
					fsm_finish <= '0';
					fsm_rs <= '0';
					fsm_dt <= "01000100";
					
					prox_estado <= s52;
				
				when s52 => --FINISHED
					fsm_clr_pos <= '0';
					fsm_en_pos <= '0';
					fsm_clr_linha <= '0';
					fsm_set_linha <= '0';
					fsm_clr_timer <= '0';
					fsm_en_timer <= '0';
					fsm_clr_obj <= '0';
					fsm_en_obj <= '0';
					fsm_en_E <= '0';
					fsm_finish <= '1';
					fsm_rs <= '0';
					fsm_dt <= "00000000";
					
					prox_estado <= s14;
				
				when others => 
					fsm_clr_pos <= '0';
					fsm_en_pos <= '0';
					fsm_clr_linha <= '0';
					fsm_set_linha <= '0';
					fsm_clr_timer <= '0';
					fsm_en_timer <= '0';
					fsm_clr_obj <= '0';
					fsm_en_obj <= '0';
					fsm_en_E <= '0';
					fsm_finish <= '0';
					fsm_rs <= '0';
					fsm_dt <= "00000000";
					
					prox_estado <= s0;
					
				end case;
			end process;
			
end fsm;