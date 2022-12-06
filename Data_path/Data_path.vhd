library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Data_path is
	port(
			dt_CLEAR: in std_logic; -- RESET
			dt_CLOCK: in std_logic;
			dt_C1: in std_logic; -- hablita contador 1
			dt_C2: in std_logic; -- hablita contador 2
			dt_A: in std_logic; -- Saldo de pontos de P1
			dt_B: in std_logic; -- Saldo de pontos de P2
			dt_PLAYER_NUM: in std_logic_vector(1 downto 0); -- Indicador de Player
			dt_PLAYER_ENABLE: in std_logic; -- habilita registrador_2_bits
			dt_cmp_Q : out std_logic; -- sai­da comparador
			dt_cnt_Q : out std_logic_vector(6 downto 0); -- saida contador
			dt_reg_Q : out std_logic_vector(1 downto 0) -- Saida registrador
			
			);
end Data_path;

architecture estrutural of Data_path is

		component reg2bits is 
			port(
			reg_D : in std_logic_vector(1 downto 0);
			reg_E : in std_logic;
			reg_CLK : in std_logic;
			reg_CLEAR : in std_logic;
			reg_Q : out std_logic_vector(1 downto 0)
			);
		end component;
		
		component Contador_7_bits is 
			port(
			cnt_RESET : in std_logic;
			cnt_H : in std_logic; -- Habilita
			cnt_C : in std_logic; -- Habilita
			cnt_CLK : in std_logic;
			cnt_Q : out std_logic_vector(6 downto 0)
			);
		end component;
		
		component Comparador is 
			port(
			cmp_M : in std_logic; -- Moeda/obstáculo
			cmp_P : in std_logic; -- Player
			cmp_Q : out std_logic
			);
		end component;
		
		signal clear, clk, H_C1: std_logic;
		signal q: std_logic_vector(6 downto 0);
		
		begin
		
		instancia_contador_P1: Contador_7_bits port map(cnt_C);
		
		
end estrutural;

