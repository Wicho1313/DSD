library ieee;
use ieee.std_logic_1164.all;
entity clock is
port (T, CLK, CLR,PRE: in std_logic;
	  Q,Qn: inout std_logic
);
end clock;
architecture arq_clock of clock is
begin
process(CLK,CLR, PRE, D)
begin
if(CLR='0')then
Q<='0';
Qn<='1';
ELSIF(CLK'EVENT AND CLK='1')THEN
IF(PRE='1')THEN
Q<='1';
Qn<='0';
else 
Q<=(Q XOR T);
Qn<= (Q XNOR T)
end IF;
END IF;
END PROCESS;
END arq_clock;