LIBRARY ieee;
USE ieee.numeric_std.ALL;
USE ieee.std_logic_1164.ALL;

ENTITY res_Calc IS
	PORT (Exp: IN unsigned(10 DOWNTO 0);
			ResBin: IN unsigned(51 DOWNTO 0);
			WholeOut: OUT unsigned(13 DOWNTO 0);
			FracOut: OUT unsigned(3 DOWNTO 0));
END ENTITY;

ARCHITECTURE res_Calc OF res_Calc IS
	SIGNAL auxOut: unsigned(13 DOWNTO 0) := "10000000000000";
	SIGNAL auxFrac: unsigned(17 DOWNTO 0);
	SIGNAL Frac: unsigned(17 DOWNTO 0);
BEGIN
	auxOut(12 DOWNTO 0) <= ResBin(51 DOWNTO 39);
	auxFrac <= ResBin(51 DOWNTO 34);
	Frac <= shift_left(auxFrac, to_integer(Exp - "01111111111"));
	
	WholeOut <= shift_right(auxOut, 13-to_integer(Exp - "01111111111"));
	FracOut <= Frac(17 DOWNTO 14);
END ARCHITECTURE;