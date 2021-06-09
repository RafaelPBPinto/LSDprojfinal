library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Fase1 is
	port (CLOCK_50 : in std_logic;
			SW			: in std_logic_vector(17 downto 0);
			KEY		: in std_logic_vector(3 downto 0);
			LEDR		: out std_logic_vector(17 downto 0);
			LEDG		: out std_logic_vector(7 downto 0);
			HEX0		: out std_logic_vector(6 downto 0);
			HEX1		: out std_logic_vector(6 downto 0);
			HEX2		: out std_logic_vector(6 downto 0);
			HEX3		: out std_logic_vector(6 downto 0));

end Fase1;

architecture shell of Fase1 is
	signal s_clk10hz  : std_logic;
	signal s_enable	: std_logic;
	signal s_timeExp	: std_logic;
	signal s_timeVal	: std_logic_vector(7 downto 0);
	signal s_ola		: std_logic;
	--signal s_epro		: std_logic;
	
begin

u0:	entity work.FreqDivider(v1)
			port map(clkIn		=> CLOCK_50,
						k			=>	X"004C4B40",
						clkOut	=> s_clk10hz);	

u1:	entity work.OlaIntermit(v1)
			port map(pisca			=> s_clk10hz,
						enable		=> s_ola,
						visor_uni	=>	HEX0,
						visor_dez	=> HEX1,
						visor_cen	=> HEX2);
						
u2:	entity work.TimerFSM(Behavioral)
			port map(reset		=> not KEY(0),
						clk		=> CLOCK_50,
						enable	=> s_enable,
						timeVal	=> s_timeVal,
						timeExp	=> s_timeExp);
			
u3:	entity work.Fase1FSM(v1)
			port map(reset				=> not KEY(0),
						clk				=> CLOCK_50,
						enable_timer 	=>	s_enable,
						timeVal			=>	s_timeVal,
						timeExp			=>	s_timeExp,
						ola				=> s_ola,
						--epro				=> s_epro,
						B1					=> SW(17),
						B2					=> SW(16),
						B3					=> SW(15),
						ledr				=> LEDR(0),
						ledg				=>	LEDG(7));						
						
end shell;

