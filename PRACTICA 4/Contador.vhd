library ieee;
use ieee.std_logic_1164.all;

entity Contador is 
port(CLK, CLR, C: in std_logic; 
    Q: inout std_logic_vector(7 downto 0));
end Contador;

Architecture ArcContador of Contador is
Signal J: std_logic_vector(7 downto 0);
begin
	Valor:process(C,Q)
	begin 
		J(0)<='1';
        J(1)<=((NOT C) AND Q(0)) OR (C AND (NOT Q(0)));
        J(2)<=((NOT C) AND Q(1) AND Q(0)) OR (C AND (NOT Q(1)) AND (NOT Q(0)));
        J(3)<=((NOT C) AND Q(2) AND Q(1) AND Q(0)) OR (C AND (NOT Q(2)) AND (NOT Q(1)) AND (NOT Q(0)));
        J(4)<=((NOT C) AND Q(3) AND Q(2) AND Q(1) AND Q(0)) OR (C AND (NOT Q(3))AND (NOT Q(2)) AND (NOT Q(1)) AND (NOT Q(0)));
        J(5)<=((NOT C) AND Q(4) AND Q(3) AND Q(2) AND Q(1) AND Q(0)) OR (C AND (NOT Q(4)) AND (NOT Q(3))AND (NOT Q(2)) AND (NOT Q(1)) AND (NOT Q(0)));
        J(6)<=((NOT C) AND Q(5) AND Q(4) AND Q(3) AND Q(2) AND Q(1) AND Q(0)) OR (C AND (NOT Q(5)) AND (NOT Q(4)) AND (NOT Q(3))AND (NOT Q(2)) AND (NOT Q(1)) AND (NOT Q(0)));
        J(7)<=((NOT C) AND Q(6) AND Q(5) AND Q(4) AND Q(3) AND Q(2) AND Q(1) AND Q(0)) OR (C AND (NOT Q(6)) AND (NOT Q(5)) AND (NOT Q(4)) AND (NOT Q(3))AND (NOT Q(2)) AND (NOT Q(1)) AND (NOT Q(0)));
	end process Valor;
	
    Cont:process(CLK, CLR, C,Q)
    begin   
        if(CLR='0') then 
            Q<="00000000";
        elsif(CLK'event AND CLK='1') then
		for I in 7 downto 0 loop
                if(J(I)='0') then
					Q(I)<=Q(I);
				elsif(J(I)='1') then 
					Q(I)<=Not Q(I);
				end if;
		end loop;
	   end if;
    end process Cont;
end ArcContador;