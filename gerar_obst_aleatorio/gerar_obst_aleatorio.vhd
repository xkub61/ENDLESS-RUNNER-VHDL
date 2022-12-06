library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity gerar_obst_aleatorio is
	port(
		goa_CLK : in std_logic;
		goa_Q0 : out std_logic_vector(17 downto 0);
		goa_Q1 : out std_logic_vector(17 downto 0)
		);
end gerar_obst_aleatorio;

architecture arch of gerar_obst_aleatorio is
component lfsr is 
	port(	
		lfsr_clk : in std_logic;
		lfsr_s : out std_logic_vector(7 downto 0)
	);
end component;

component sr18bits_dual is
	port(
		sr_IN0 : in std_logic;
		sr_IN1 : in std_logic;
		sr_CLK : in std_logic;
		sr_Q0 : out std_logic_vector(17 downto 0);
		sr_Q1 : out std_logic_vector(17 downto 0)
		);	
end component;

component Contador_2_bits is
	port(
		cnt_CLK : in std_logic;
		cnt_RESET : in std_logic;
		cnt_Q : out std_logic_vector(1 downto 0)
			);
end component;

signal CLK,RESET,IN0,IN1 : std_logic ;
signal Q0,Q1 : std_logic_vector(17 downto 0);
signal Q_cnt : std_logic_vector(1 downto 0);
signal s_lfsr : std_logic_vector(7 downto 0);

begin

instancia_cnt2 : Contador_2_bits port map(
	cnt_CLK => CLK,
	cnt_RESET => RESET,
	cnt_Q => Q_cnt
	);
instancia_sr18d : sr18bits_dual port map(
	sr_IN0 => IN0,
	sr_IN1 => IN1,
	sr_CLK => CLK,
	sr_Q0 => Q0,
	sr_Q1 =>	Q1
	);

instancia_lfsr : lfsr port map(
	lfsr_clk => CLK,
	lfsr_s => s_lfsr
	);

	CLK <= goa_CLK;
	IN0 <= Q_cnt(0) and Q_cnt(1);
	IN1 <= IN0 and s_lfsr(7);
	goa_Q0 <= Q0;
	goa_Q1 <= Q1;
	

end arch;