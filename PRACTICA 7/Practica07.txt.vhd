library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
entity Prac7 is 
	port( clk,clr: in std_logic;
		c: in std_logic_vector (2 downto 0);--CONTROL
		e: in std_logic_vector(3 downto 0);--DATO A CARGAR
		q: out std_logic_vector(3 downto 0)--SALIDA
		);
end entity;
architecture A_Pract7 of Prac7 is 
signal gray: std_logic_vector (3 downto 0);--CODIGO GRAY
signal contador: std_logic_vector(3 downto 0);--CONTADOR
begin 
	process(contador,gray)
	begin
		case contador is
			when "0000" => gray <= "0000"; 
			when "0001" => gray <= "0001";
			when "0010" => gray <= "0011";
			when "0011" => gray <= "0010";
			when "0100" => gray <= "0110";
			when "0101" => gray <= "0111";
			when "0110" => gray <= "0101";
			when "0111" => gray <= "0100";
			when "1000" => gray <= "1100";
			when "1001" => gray <= "1101";
			when "1010" => gray <= "1111";
			when "1011" => gray <= "1110";
			when "1100" => gray <= "1010";
			when "1101" => gray <= "1011";
			when "1110" => gray <= "1001";
			when others => gray <= "1000";
			end case;
	end process;
	process(clk,clr,c,gray,contador)
		begin
		if(clr='1') then
			contador <= (others=>'0');
		elsif(clk'event and clk='1') then 
			case c is 
				when "000" =>
					contador <= contador + 1;
				when "001" =>
					contador <=contador-1; 
				when "010" =>
					contador <= e;
				when "011" => 
					contador <= contador;
				when "100" =>
					contador  <= To_stdlogicvector(to_bitvector(contador)ror 1); 
				when "101" =>
					contador <= To_stdlogicvector(to_bitvector(contador)rol 1); 					
				when "110" =>
					contador <= contador + 1;
				when others =>
					contador <=contador-1; 
					
			end case;
		end if;
		if(c= "110" or c= "111") then 
			q <= gray;
		else 
			q<= contador;
		 end if;
	end process;
end A_Pract7;