LIBRARY ieee;
USE ieee.numeric_std.ALL;
USE ieee.std_logic_1164.ALL;

ENTITY selectPrint IS
	PORT (dataIn: IN unsigned(3 DOWNTO 0);
			matrixSel: IN unsigned(1 DOWNTO 0);
			resultOut: IN unsigned(9 DOWNTO 0);
			printOut: OUT unsigned(9 DOWNTO 0));
END ENTITY;

ARCHITECTURE selectPrint OF selectPrint IS
BEGIN
	printOut <= (dataIn + "0000000000") WHEN matrixSel = "00" or matrixSel = "01"  ELSE
					resultOut WHEN matrixSel = "10" ELSE
					"XXXXXXXXXX";
END ARCHITECTURE;