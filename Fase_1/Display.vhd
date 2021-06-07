library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity display is
	port (clk 			 	: in std_logic;
			visorunidades	: out std_logic_vector(6 downto 0);
			visordezenas	: out std_logic_vector(6 downto 0);
			visorcentenas	: out std_logic_vector(6 downto 0));
			
end display;

architecture v1 of display is
--Letras da palavra "OLA"
constant LetraO	: std_logic_vector(6 downto 0) := "0111111";
constant LetraL	: std_logic_vector(6 downto 0) := "0111000";
constant LetraA	: std_logic_vector(6 downto 0) := "1110111";

--Letras da palavra "EPRO"
constant LetraE 	: std_logic_vector(6 downto 0) := "1111001";
constant LetraP	: std_logic_vector(6 downto 0) := "1110001";
constant LetraR	: std_logic_vector(6 downto 0) := "1110111";

begin 
	process(clk)
	begin
		if(rising_edge(clk)) then 
			visorunidades	<= LetraA;
			visordezenas	<= LetraL;
			visorcentenas	<= LetraO;
		end if;
	end process;
	
end v1;