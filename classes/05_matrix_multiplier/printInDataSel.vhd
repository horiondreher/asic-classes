LIBRARY ieee;
USE ieee.numeric_std.ALL;
USE ieee.std_logic_1164.ALL;

ENTITY printInDataSel IS
	PORT (dataIn, dataSel: IN unsigned(3 DOWNTO 0);
			matrixSel: IN unsigned(1 DOWNTO 0);
			printMatrix: OUT unsigned(3 DOWNTO 0);
			printPosition: OUT unsigned(9 DOWNTO 0);
			printData: OUT unsigned(3 DOWNTO 0));
END ENTITY;

ARCHITECTURE printInDataSel OF printInDataSel IS
BEGIN
	printMatrix <= matrixSel + "0001";
	printPosition <= 	"0000001011" WHEN dataSel = "0000" ELSE
							"0000001100" WHEN dataSel = "0001" ELSE
							"0000001101" WHEN dataSel = "0010" ELSE
							"0000010101" WHEN dataSel = "0011" ELSE
							"0000010110" WHEN dataSel = "0100" ELSE
							"0000010111" WHEN dataSel = "0101" ELSE
							"0000011111" WHEN dataSel = "0110" ELSE
							"0000100000" WHEN dataSel = "0111" ELSE
							"0000100001" WHEN dataSel = "1000" ELSE
							"XXXXXXXXXX";
	printdata <= dataIn;
END ARCHITECTURE;