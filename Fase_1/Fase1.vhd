library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Fase1 is
	port (CLOCK_50 : in std_logic;
			SW			: in std_logic_vector(17 downto 0);
			KEY		: in std_logic_vector(3 downto 0);
			Ledr		: out std_logic;
			Ledg		: out std_logic;
			HEX0		: out std_logic_vector(6 downto 0);
			HEX1		: out std_logic_vector(6 downto 0);
			HEX2		: out std_logic_vector(6 downto 0);
			HEX3		: out std_logic_vector(6 downto 0));

end Fase1;

architecture shell of Fase1 is
	signal s_clk10hz : std_logic;
begin

u0:	entity work.FreqDivider(v1)
			port map(clkIn		=> CLOCK_50,
						k			=>	X"004C4B40",
						clkOut	=> s_clk10hz);	

u1:	entity work.Display(v1)
			port map(clk 				=> s_clk10hz,
						visorunidades	=> HEX0,
						visordezenas	=> HEX1,
						visorcentenas	=> HEX2);

end shell;

