LIBRARY ieee;
USE ieee.numeric_std.ALL;
USE ieee.std_logic_1164.ALL;

ENTITY addThree IS
	PORT(A : IN unsigned(3 DOWNTO 0); addOut: OUT unsigned(3 DOWNTO 0));
END ENTITY;

ARCHITECTURE addThree OF addThree IS
BEGIN 
	WITH A SELECT
		addOut <=   "0000" WHEN "0000",
						"0001" WHEN "0001",
						"0010" WHEN "0010",
						"0011" WHEN "0011",
						"0100" WHEN "0100",
						"1000" WHEN "0101",
						"1001" WHEN "0110",
						"1010" WHEN "0111",
						"1011" WHEN "1000",
						"1100" WHEN "1001",
						"0000" WHEN OTHERS;
END ARCHITECTURE;