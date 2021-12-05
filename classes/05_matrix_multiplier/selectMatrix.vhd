LIBRARY ieee;
USE ieee.numeric_std.ALL;
USE ieee.std_logic_1164.ALL;

ENTITY selectMatrix IS
	PORT (saveReset, matrixSel: IN unsigned(1 DOWNTO 0);
			matrixOut1, matrixOut2: OUT unsigned(1 DOWNTO 0));
END ENTITY;

ARCHITECTURE selectMatrix OF selectMatrix IS
BEGIN
		matrixOut1 <= 	saveReset WHEN matrixSel = "00" ELSE "10";
		matrixOut2 <= 	saveReset WHEN matrixSel = "01" ELSE "10";			
END ARCHITECTURE;