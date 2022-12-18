library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity controladora_jogo is
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
end controladora_jogo;

architecture arch of controladora_jogo is
	type estado is (s0,s1,s2,s3,s4,s5,s6,s7,s8,s9,
						 s10,s11,s12,s13,s14,s15,s16,s17,s18,s19);
	signal estado_atual,prox_estado : estado := s0;
begin
	sequencial:
	process(ctrl_CLK) is
	begin
		if rising_edge(ctrl_CLK) then
			estado_atual <= prox_estado;
		end if;
	end process;
	
	logico:
	process(ctrl_CLK,ctrl_FINISH,ctrl_START,estado_atual) is
	begin
		case estado_atual is
		
			when s0 => -- ESPERA O LCD INICIALIZAR
				ctrl_LFSR_SHFT <= '0';
				ctrl_CNT_MOEDA1 <= '0';
				ctrl_CNT_MOEDA2 <= '0';
				ctrl_RMV_MOEDA <= '0';
				ctrl_RMV_OBST <= '0';
				ctrl_SET_PLAYER <= '0';
				ctrl_CLR_MOEDA <= '0';
				ctrl_CLR_PLAYER <= '0';
				ctrl_CLR_TIMER <= '0';
				ctrl_CLR_START <= '0';
				ctrl_RENDER <= '0';
				ctrl_CMD <= "000";
				
				if ctrl_FINISH = '1' then
					prox_estado <= s1;
				else 
					prox_estado <= s0;
				end if;
			
			when s1 => --ESPERA APERTAR START
				ctrl_LFSR_SHFT <= '0';
				ctrl_CNT_MOEDA1 <= '0';
				ctrl_CNT_MOEDA2 <= '0';
				ctrl_RMV_MOEDA <= '0';
				ctrl_RMV_OBST <= '0';
				ctrl_SET_PLAYER <= '0';
				ctrl_CLR_MOEDA <= '0';
				ctrl_CLR_PLAYER <= '0';
				ctrl_CLR_TIMER <= '0';
				ctrl_CLR_START <= '0';
				ctrl_RENDER <= '1';
				ctrl_CMD <= "100";
				
				if ctrl_START = '1' then
					prox_estado <= s2;
				else 
					prox_estado <= s1;
				end if;
			
			when s2 => --CLEAR EM TODOS OS REGISTRADORES
				ctrl_LFSR_SHFT <= '0';
				ctrl_CNT_MOEDA1 <= '0';
				ctrl_CNT_MOEDA2 <= '0';
				ctrl_RMV_MOEDA <= '0';
				ctrl_RMV_OBST <= '0';
				ctrl_SET_PLAYER <= '0';
				ctrl_CLR_MOEDA <= '1';
				ctrl_CLR_PLAYER <= '1';
				ctrl_CLR_TIMER <= '1';
				ctrl_CLR_START <= '1';
				ctrl_RENDER <= '0';
				ctrl_CMD <= "000";
			
				prox_estado <= s3;
				
			when s3 => --TESTA SE HA UMA MOEDA NA POSICAO DO PLAYER
				ctrl_LFSR_SHFT <= '0';
				ctrl_CNT_MOEDA1 <= '0';
				ctrl_CNT_MOEDA2 <= '0';
				ctrl_RMV_MOEDA <= '0';
				ctrl_RMV_OBST <= '0';
				ctrl_SET_PLAYER <= '0';
				ctrl_CLR_MOEDA <= '0';
				ctrl_CLR_PLAYER <= '0';
				ctrl_CLR_TIMER <= '0';
				ctrl_CLR_START <= '0';
				ctrl_RENDER <= '0';
				ctrl_CMD <= "000";
				
				if ctrl_Q0_MOEDA = '1' then
					prox_estado <= s4;
				else 
					prox_estado <= s8;
				end if;
			
			when s4 => --TESTA SE O PLAYER COLIDIU COM UMA MOEDA
				ctrl_LFSR_SHFT <= '0';
				ctrl_CNT_MOEDA1 <= '0';
				ctrl_CNT_MOEDA2 <= '0';
				ctrl_RMV_MOEDA <= '0';
				ctrl_RMV_OBST <= '0';
				ctrl_SET_PLAYER <= '0';
				ctrl_CLR_MOEDA <= '0';
				ctrl_CLR_PLAYER <= '0';
				ctrl_CLR_TIMER <= '0';
				ctrl_CLR_START <= '0';
				ctrl_RENDER <= '0';
				ctrl_CMD <= "000";
				
				if ctrl_COLLECTED = '1' then
					prox_estado <= s5;
				else 
					prox_estado <= s8;
				end if;
			
			when s5 => --TESTA QUAL PLAYER ESTA JOGANDO ATUALMENTE
				ctrl_LFSR_SHFT <= '0';
				ctrl_CNT_MOEDA1 <= '0';
				ctrl_CNT_MOEDA2 <= '0';
				ctrl_RMV_MOEDA <= '0';
				ctrl_RMV_OBST <= '0';
				ctrl_SET_PLAYER <= '0';
				ctrl_CLR_MOEDA <= '0';
				ctrl_CLR_PLAYER <= '0';
				ctrl_CLR_TIMER <= '0';
				ctrl_CLR_START <= '0';
				ctrl_RENDER <= '0';
				ctrl_CMD <= "000";
				
				if ctrl_PLAYER = '1' then
					prox_estado <= s7;
				else 
					prox_estado <= s6;
				end if;
			
			when s6 => --ADICIONA UMA MOEDA AO PLACAR DO PLAYER 1
				ctrl_LFSR_SHFT <= '0';
				ctrl_CNT_MOEDA1 <= '1';
				ctrl_CNT_MOEDA2 <= '0';
				ctrl_RMV_MOEDA <= '0';
				ctrl_RMV_OBST <= '0';
				ctrl_SET_PLAYER <= '0';
				ctrl_CLR_MOEDA <= '0';
				ctrl_CLR_PLAYER <= '0';
				ctrl_CLR_TIMER <= '0';
				ctrl_CLR_START <= '0';
				ctrl_RENDER <= '0';
				ctrl_CMD <= "000";
			
				prox_estado <= s8;
			
			when s7 => --ADICIONA UMA MOEDA AO PLACAR DO PLAYER 2
				ctrl_LFSR_SHFT <= '0';
				ctrl_CNT_MOEDA1 <= '0';
				ctrl_CNT_MOEDA2 <= '1';
				ctrl_RMV_MOEDA <= '0';
				ctrl_RMV_OBST <= '0';
				ctrl_SET_PLAYER <= '0';
				ctrl_CLR_MOEDA <= '0';
				ctrl_CLR_PLAYER <= '0';
				ctrl_CLR_TIMER <= '0';
				ctrl_CLR_START <= '0';
				ctrl_RENDER <= '0';
				ctrl_CMD <= "000";
			
				prox_estado <= s8;
			
			when s8 => --EXCLUI A MOEDA DO REGISTRADOR 
				ctrl_LFSR_SHFT <= '0';
				ctrl_CNT_MOEDA1 <= '0';
				ctrl_CNT_MOEDA2 <= '0';
				ctrl_RMV_MOEDA <= '1';
				ctrl_RMV_OBST <= '0';
				ctrl_SET_PLAYER <= '0';
				ctrl_CLR_MOEDA <= '0';
				ctrl_CLR_PLAYER <= '0';
				ctrl_CLR_TIMER <= '0';
				ctrl_CLR_START <= '0';
				ctrl_RENDER <= '0';
				ctrl_CMD <= "000";
				
				if ctrl_Q0_OBST = '1' then
					prox_estado <= s9;
				else 
					prox_estado <= s19;
				end if;
			
			when s9 => -- TESTA SE O PLAYER COLIDIU COM UM OBSTACULO
				ctrl_LFSR_SHFT <= '0';
				ctrl_CNT_MOEDA1 <= '0';
				ctrl_CNT_MOEDA2 <= '0';
				ctrl_RMV_MOEDA <= '0';
				ctrl_RMV_OBST <= '0';
				ctrl_SET_PLAYER <= '0';
				ctrl_CLR_MOEDA <= '0';
				ctrl_CLR_PLAYER <= '0';
				ctrl_CLR_TIMER <= '0';
				ctrl_CLR_START <= '0';
				ctrl_RENDER <= '0';
				ctrl_CMD <= "000";
				
				if ctrl_ENDED = '1' then
					prox_estado <= s14;
				else 
					prox_estado <= s10;
				end if;
			
			when s10 => -- TESTA SE O RENDER JA FOI CONCLUIDO
				ctrl_LFSR_SHFT <= '0';
				ctrl_CNT_MOEDA1 <= '0';
				ctrl_CNT_MOEDA2 <= '0';
				ctrl_RMV_MOEDA <= '0';
				ctrl_RMV_OBST <= '0';
				ctrl_SET_PLAYER <= '0';
				ctrl_CLR_MOEDA <= '0';
				ctrl_CLR_PLAYER <= '0';
				ctrl_CLR_TIMER <= '0';
				ctrl_CLR_START <= '0';
				ctrl_RENDER <= '0';
				ctrl_CMD <= "000";
				
				if ctrl_FINISH = '1' then
					prox_estado <= s11;
				else 
					prox_estado <= s10;
				end if;
			
			when s11 => --TIMER ++
				ctrl_LFSR_SHFT <= '0';
				ctrl_CNT_MOEDA1 <= '0';
				ctrl_CNT_MOEDA2 <= '0';
				ctrl_RMV_MOEDA <= '0';
				ctrl_RMV_OBST <= '0';
				ctrl_SET_PLAYER <= '0';
				ctrl_CLR_MOEDA <= '0';
				ctrl_CLR_PLAYER <= '0';
				ctrl_CLR_TIMER <= '0';
				ctrl_CLR_START <= '0';
				ctrl_RENDER <= '0';
				ctrl_CMD <= "000";
				
				if ctrl_FRAME_TIMER = '1' then
					prox_estado <= s12;
				else 
					prox_estado <= s11;
				end if;
			
			when s12 => --LFSR SHIFT / CLEAR TIMER
				ctrl_LFSR_SHFT <= '1';
				ctrl_CNT_MOEDA1 <= '0';
				ctrl_CNT_MOEDA2 <= '0';
				ctrl_RMV_MOEDA <= '0';
				ctrl_RMV_OBST <= '0';
				ctrl_SET_PLAYER <= '0';
				ctrl_CLR_MOEDA <= '0';
				ctrl_CLR_PLAYER <= '0';
				ctrl_CLR_TIMER <= '1';
				ctrl_CLR_START <= '0';
				ctrl_RENDER <= '0';
				ctrl_CMD <= "000";
		
				prox_estado <= s3;
			
			when s13 => --EXCLUI O OBSTACULO DO REGISTRADOR/ TESTA SE O PLAYER 1 OU 2 ESTA JOGANDO
				ctrl_LFSR_SHFT <= '0';
				ctrl_CNT_MOEDA1 <= '0';
				ctrl_CNT_MOEDA2 <= '0';
				ctrl_RMV_MOEDA <= '0';
				ctrl_RMV_OBST <= '1';
				ctrl_SET_PLAYER <= '0';
				ctrl_CLR_MOEDA <= '0';
				ctrl_CLR_PLAYER <= '0';
				ctrl_CLR_TIMER <= '0';
				ctrl_CLR_START <= '0';
				ctrl_RENDER <= '0';
				ctrl_CMD <= "000";
				
				if ctrl_PLAYER = '1' then
					prox_estado <= s16;
				else 
					prox_estado <= s14;
				end if;
			
			when s14 => --TROCA O PLAYER 1 PARA PLAYER 2 / CLEAR NO REGISTRADOR DE START
				ctrl_LFSR_SHFT <= '0';
				ctrl_CNT_MOEDA1 <= '0';
				ctrl_CNT_MOEDA2 <= '0';
				ctrl_RMV_MOEDA <= '0';
				ctrl_RMV_OBST <= '0';
				ctrl_SET_PLAYER <= '1';
				ctrl_CLR_MOEDA <= '0';
				ctrl_CLR_PLAYER <= '0';
				ctrl_CLR_TIMER <= '0';
				ctrl_CLR_START <= '1';
				ctrl_RENDER <= '0';
				ctrl_CMD <= "000";
		
				prox_estado <= s15;
				
			when s15 => --ESCREVE NO LCD " P2 " ATE APERTAR START
				ctrl_LFSR_SHFT <= '0';
				ctrl_CNT_MOEDA1 <= '0';
				ctrl_CNT_MOEDA2 <= '0';
				ctrl_RMV_MOEDA <= '0';
				ctrl_RMV_OBST <= '0';
				ctrl_SET_PLAYER <= '0';
				ctrl_CLR_MOEDA <= '0';
				ctrl_CLR_PLAYER <= '0';
				ctrl_CLR_TIMER <= '0';
				ctrl_CLR_START <= '0';
				ctrl_RENDER <= '1';
				ctrl_CMD <= "101";
				
				if ctrl_START = '1' then
					prox_estado <= s4;
				else 
					prox_estado <= s15;
				end if;
			
			when s16 => --DECIDE QUAL O RESULTADO DA PARTIDA
				ctrl_LFSR_SHFT <= '0';
				ctrl_CNT_MOEDA1 <= '0';
				ctrl_CNT_MOEDA2 <= '0';
				ctrl_RMV_MOEDA <= '0';
				ctrl_RMV_OBST <= '0';
				ctrl_SET_PLAYER <= '0';
				ctrl_CLR_MOEDA <= '0';
				ctrl_CLR_PLAYER <= '0';
				ctrl_CLR_TIMER <= '0';
				ctrl_CLR_START <= '0';
				ctrl_RENDER <= '0';
				ctrl_CMD <= "000";
				
				if ctrl_RESULT = "010" then
					prox_estado <= s18;
				elsif ctrl_RESULT = "001"  then
					prox_estado <= s19;
				else 
					prox_estado <= s17;
				end if;
			
			when s17 => --EMPATE
				ctrl_LFSR_SHFT <= '0';
				ctrl_CNT_MOEDA1 <= '0';
				ctrl_CNT_MOEDA2 <= '0';
				ctrl_RMV_MOEDA <= '0';
				ctrl_RMV_OBST <= '0';
				ctrl_SET_PLAYER <= '0';
				ctrl_CLR_MOEDA <= '0';
				ctrl_CLR_PLAYER <= '0';
				ctrl_CLR_TIMER <= '0';
				ctrl_CLR_START <= '0';
				ctrl_RENDER <= '1';
				ctrl_CMD <= "011";
				
				if ctrl_START = '1' then
					prox_estado <= s2;
				else 
					prox_estado <= s17;
				end if;
					
			when s18 => --PLAYER 1 GANHOU
				ctrl_LFSR_SHFT <= '0';
				ctrl_CNT_MOEDA1 <= '0';
				ctrl_CNT_MOEDA2 <= '0';
				ctrl_RMV_MOEDA <= '0';
				ctrl_RMV_OBST <= '0';
				ctrl_SET_PLAYER <= '0';
				ctrl_CLR_MOEDA <= '0';
				ctrl_CLR_PLAYER <= '0';
				ctrl_CLR_TIMER <= '0';
				ctrl_CLR_START <= '0';
				ctrl_RENDER <= '1';
				ctrl_CMD <= "110";
				
				if ctrl_START = '1' then
					prox_estado <= s2;
				else 
					prox_estado <= s18;
				end if;
					
			when s19 => --PLAYER 2 GANHOU
				ctrl_LFSR_SHFT <= '0';
				ctrl_CNT_MOEDA1 <= '0';
				ctrl_CNT_MOEDA2 <= '0';
				ctrl_RMV_MOEDA <= '0';
				ctrl_RMV_OBST <= '0';
				ctrl_SET_PLAYER <= '0';
				ctrl_CLR_MOEDA <= '0';
				ctrl_CLR_PLAYER <= '0';
				ctrl_CLR_TIMER <= '0';
				ctrl_CLR_START <= '0';
				ctrl_RENDER <= '1';
				ctrl_CMD <= "111";
				
				if ctrl_START = '1' then
					prox_estado <= s2;
				else 
					prox_estado <= s19;
				end if;
			
			when others => 
				ctrl_LFSR_SHFT <= '0';
				ctrl_CNT_MOEDA1 <= '0';
				ctrl_CNT_MOEDA2 <= '0';
				ctrl_RMV_MOEDA <= '0';
				ctrl_RMV_OBST <= '0';
				ctrl_SET_PLAYER <= '0';
				ctrl_CLR_MOEDA <= '0';
				ctrl_CLR_PLAYER <= '0';
				ctrl_CLR_TIMER <= '0';
				ctrl_CLR_START <= '0';
				ctrl_RENDER <= '0';
				ctrl_CMD <= "000";
				
				prox_estado <= s0;
			
		end case;
	end process;
	
end arch;