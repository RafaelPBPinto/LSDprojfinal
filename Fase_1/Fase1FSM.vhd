library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Fase1FSM is
	port (reset	: in std_logic;
			clk	: in std_logic;
			B1	 	: in std_logic;
			B2	 	: in std_logic;
			B3	 	: in std_logic;
			ledr	: out std_logic;
			ledg 	: out std_logic);

end Fase1FSM;

architecture v1 of FaseFSM is 
	type TState is (E0, E1, E2, E3);
	signal s_currentstate, s_nextstate : TState;

begin

	proc_sinc : process(clk)
	begin
		if (rising_edge(clk)) then
			if (reset = '1') then
				s_currentState <= E0;
			else
				s_currentState <= s_nextState;
			end if;
		end if;
	end process;
	
	proc_comb:process(s_currentState, B1, B2, B3)
	begin 
		case (s_currentState) is
		when E0 =>
			ledr <= '0';
			ledg <= '0';
			if(B1 = '1' or B2 = '1' or B3 = '1') then
				s_nextState <= E1;
			else 
				s_nextState <= E0;
			end if;
				
		when E1 =>
			ledr <= '1';
			ledg <= '0';
			if() then
				s_nextState <= E2;
			else
				s_nextState <= E1;
			end if;
			
		when E2 =>
			ledr <= '0';
			ledg <= '1';
			if(B1 = '0' and B2 = '0' and B3 = '0') then
				s_nextState <= E0;
			else
				s_nextstate <= E3;
			end if;
		
		end case;
	end process;

end v1;