library ieee;
use ieee.std_logic_1164.all;

entity OlaIntermit is
	port (pisca			: in std_logic;
			enable		: in std_logic;
			visor_uni	: out std_logic_vector(6 downto 0);
			visor_dez	: out std_logic_vector(6 downto 0);
			visor_cen	: out std_logic_vector(6 downto 0));
end OlaIntermit;

architecture v1 of OlaIntermit is
-- letras da palavra "OLA"
constant letraO	: std_logic_vector(6 downto 0) := "0111111";
constant	letraL	: std_logic_vector(6 downto 0) := "0111000";
constant letraA	: std_logic_vector(6 downto 0) := "1110111";

signal mask 	: std_logic_vector(6 downto 0);
signal s_enola	: std_logic;

begin

mask <= (others => pisca); --7 bits intermitentes
visor_uni <=	(letraA or mask) when enable='1';
visor_dez <=	(letraL or mask) when enable='1';
visor_cen <=	(letraO or mask) when enable='1';

end v1;