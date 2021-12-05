LIBRARY ieee;
USE ieee.numeric_std.ALL;
USE ieee.std_logic_1164.ALL;

ENTITY hold_Data IS
	PORT (D0, D1, dec, cent: IN unsigned(3 DOWNTO 0);
			input1, input2: IN std_logic;
			D01, D11, dec1, cent1: OUT unsigned(3 DOWNTO 0);
			D02, D12, dec2, cent2: OUT unsigned(3 DOWNTO 0));
END ENTITY;

ARCHITECTURE hold_Data OF hold_Data IS
BEGIN

	D01 <= 	D0 WHEN input1 = '0' AND D0 <= "1001";	
	D11 <= 	D1 WHEN input1 = '0' AND D1 <= "1001";	
	dec1 <= 	dec WHEN input1 = '0' AND Dec <= "1001";	
	cent1 <= cent WHEN input1 = '0' AND cent <= "1001";	
	
	D02 <= 	D0 WHEN input2 = '0' AND D0 <= "1001";		
	D12 <= 	D1 WHEN input2 = '0' AND D1 <= "1001";	
	dec2 <= 	dec WHEN input2 = '0' AND Dec <= "1001";	
	cent2 <= cent WHEN input2 = '0' AND cent <= "1001";
			  
END ARCHITECTURE;