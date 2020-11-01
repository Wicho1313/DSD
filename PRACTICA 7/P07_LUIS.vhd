library IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY CONREG IS

PORT(
	CLR,CLK: IN STD_LOGIC;
	
	E: IN STD_LOGIC_VECTOR (3 DOWNTO 0);
	C: IN STD_LOGIC_VECTOR (2 DOWNTO 0);
	Q: INOUT STD_LOGIC_VECTOR (3 DOWNTO 0)
	);

   END ENTITY;

   ARCHITECTURE A_CONREG OF CONREG IS

   BEGIN 
   PROCESS (CLR,CLK,C)
   

   	BEGIN 

	IF (CLR='1') THEN 
		Q<="0000";
	ELSIF(CLK'EVENT AND CLK='1') THEN 
		CASE C IS 

			WHEN "000" => Q <= E;--Ingresa dato
			WHEN "001" => Q <= Q;--retiene
			WHEN "010" =>
						Q <= Q + 1;--binaro ascendente
			WHEN "011"=>
						Q<= Q-1;-- binario descendente
			WHEN "100"=>--grey ascendente
						CASE Q IS
						WHEN "0000" => Q <= "0001";
						WHEN "0001" => Q <= "0011";
						WHEN "0011" => Q <= "0010";
						WHEN "0010" => Q <= "0110";
						WHEN "0110" => Q <= "0111";
						WHEN "0111" => Q <= "0101";
						WHEN "0101" => Q <= "0100";
						WHEN "0100" => Q <= "1100";
						WHEN "1100" => Q <= "1101";
						WHEN "1101" => Q <= "1111";
						WHEN "1111" => Q <= "1110";
						WHEN "1110" => Q <= "1010";
						WHEN "1010" => Q <= "1011";
						WHEN "1011" => Q <= "1001";
						WHEN "1001" => Q <= "1000";
						WHEN OTHERS => Q <= "0000";
						END CASE;
			
			WHEN "101"=>--grey descendente
						CASE Q IS
						WHEN "0000" => Q <= "1000";
						WHEN "1000" => Q <= "1001";
						WHEN "1001" => Q <= "1011";
						WHEN "1011" => Q <= "1010";
						WHEN "1010" => Q <= "1110";
						WHEN "1110" => Q <= "1111";
						WHEN "1111" => Q <= "1101";
						WHEN "1101" => Q <= "1100";
						WHEN "1100" => Q <= "0100";
						WHEN "0100" => Q <= "0101";
						WHEN "0101" => Q <= "0111";
						WHEN "0111" => Q <= "0110";
						WHEN "0110" => Q <= "0010";
						WHEN "0010" => Q <= "0011";
						WHEN "0011" => Q <= "0001";
						WHEN OTHERS => Q <= "0000";
						END CASE;


			WHEN "110"=>--anillo derecha
						Q<="1101";			
						Q<=TO_STDLOGICVECTOR(TO_BITVECTOR(Q) ROR 1);

			WHEN OTHERS=> --anillo iquierda
						Q<="1101";
						Q<=TO_STDLOGICVECTOR(TO_BITVECTOR(Q) ROL 1);
			END CASE;
		END IF;
	END PROCESS;
END A_CONREG;



