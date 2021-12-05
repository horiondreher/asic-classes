LIBRARY ieee;
USE ieee.numeric_std.ALL;
USE ieee.std_logic_1164.ALL;

ENTITY addThree IS
	PORT(A, B, C, D : IN unsigned(0 DOWNTO 0); Out1, Out2, Out3, Out4: OUT unsigned(0 DOWNTO 0));
END ENTITY;

ARCHITECTURE addThree OF addThree IS
	SIGNAL auxIn: unsigned(3 DOWNTO 0);
	SIGNAL auxOut: unsigned(3 DOWNTO 0);
BEGIN 
	auxIn(3) <= D(0);
	auxIn(2) <= C(0);
	auxIn(1) <= B(0);
	auxIn(0) <= A(0);
	
	auxOut <=   "0000" WHEN auxIn = "0000" ELSE
					"0001" WHEN auxIn = "0001" ELSE
					"0010" WHEN auxIn = "0010" ELSE
					"0011" WHEN auxIn = "0011" ELSE
					"0100" WHEN auxIn = "0100" ELSE
					"1000" WHEN auxIn = "0101" ELSE
					"1001" WHEN auxIn = "0110" ELSE
					"1010" WHEN auxIn = "0111" ELSE
					"1011" WHEN auxIn = "1000" ELSE
					"1100" WHEN auxIn = "1001" ELSE
					"XXXX";
					
	Out4(0) <= auxOut(3);
	Out3(0) <= auxOut(2);
	Out2(0) <= auxOut(1);
	Out1(0) <= auxOut(0);
END ARCHITECTURE;