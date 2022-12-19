library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;



entity tb_lcd_driver is
end tb_lcd_driver;

architecture tb of tb_lcd_driver is
	
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
signal sclk, srender, splayer_pos, sfinished, se, srs : std_logic := '0';
signal sq0_moeda, sq1_moeda, sq0_obstaculo, sq1_obstaculo : std_logic_vector(15 downto 0);
signal sdata : std_logic_vector(7 downto 0);
signal scmd : std_logic_vector(2 downto 0);
begin

instance_lcd_driver : lcd_driver port map(
	clk => sclk,
	cmd => scmd,
	render => srender,
	q0_moeda => sq0_moeda,
	q1_moeda => sq1_moeda,
	q0_obstaculo => sq0_obstaculo,
	q1_obstaculo => sq1_obstaculo,
	player_pos => splayer_pos,
	finished => sfinished,
	DATA => sdata,
	E => se,
	RS => srs
);

sclk <= not sclk after 50 us; 

scmd <= "000";

srender <= '1';

sq0_moeda <= "0100100000000001";

sq1_moeda <= "0000100000000000";

sq0_obstaculo <= "1001000000000000";

sq1_obstaculo <= "1000000000000000";

splayer_pos <= '1';

end tb;