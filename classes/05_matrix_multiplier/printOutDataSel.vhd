LIBRARY ieee;
USE ieee.numeric_std.ALL;
USE ieee.std_logic_1164.ALL;

ENTITY printOutDataSel IS
	PORT (dataSel: IN unsigned(3 DOWNTO 0);
			c11, c12, c13, c21, c22, c23, c31, c32, c33: IN unsigned(9 DOWNTO 0);
			printOutData: OUT unsigned(9 DOWNTO 0));
END ENTITY;

ARCHITECTURE printOutDataSel OF printOutDataSel IS
BEGIN
	printOutData <= 	c11 WHEN dataSel = "0000" ELSE
							c12 WHEN dataSel = "0001" ELSE
							c13 WHEN dataSel = "0010" ELSE
							c21 WHEN dataSel = "0011" ELSE
							c22 WHEN dataSel = "0100" ELSE
							c23 WHEN dataSel = "0101" ELSE
							c31 WHEN dataSel = "0110" ELSE
							c32 WHEN dataSel = "0111" ELSE
							c33 WHEN dataSel = "1000" ELSE
							"XXXXXXXXXX";
END ARCHITECTURE;