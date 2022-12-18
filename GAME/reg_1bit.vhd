library ieee;
use ieee.std_logic_1164.all;

entity reg_1bit is 
	
	port(
		r1_PRE : in std_logic;
		r1_CLR : in std_logic;
		r1_CLK : in std_logic;
		r1_Q : out std_logic
	);
	
end reg_1bit;
-- adicionar uma entrada d interna
-- adicionar um clock
architecture RTL of reg_1bit is 

signal d,en,qi :std_logic := '0';

begin
 en <= '0';
	process(r1_PRE,r1_CLR,r1_CLK,en) is
	--variable dq : std_logic;
	begin
		
		if(r1_CLR = '1') then 
			qi <= '0';
		elsif (r1_PRE = '1') then 
			qi <= '1';
		elsif (en = '1') then
			if(rising_edge(r1_CLK)) then qi <= d;
			--else  qi <= qi;
		   end if;
		--else qi <= qi;
		end if;
	end process;
	r1_Q <= qi;

end RTL;