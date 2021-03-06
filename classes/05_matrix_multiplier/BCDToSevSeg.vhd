LIBRARY ieee;
USE ieee.numeric_std.ALL;
USE ieee.std_logic_1164.ALL;

ENTITY BCDToSevSeg IS
	PORT(A : IN unsigned(3 DOWNTO 0); S_SEG: OUT unsigned(6 DOWNTO 0));
END ENTITY;

ARCHITECTURE BCDToSevSeg OF BCDToSevSeg IS
BEGIN 
	WITH A SELECT
		S_SEG <=	"1000000" WHEN "0000",
					"1111001" WHEN "0001",
					"0100100" WHEN "0010",
					"0110000" WHEN "0011",
					"0011001" WHEN "0100",
					"0010010" WHEN "0101",
					"0000010" WHEN "0110",
					"1111000" WHEN "0111",
					"0000000" WHEN "1000",
					"0011000" WHEN "1001",
					"XXXXXXX" WHEN OTHERS;
END ARCHITECTURE;