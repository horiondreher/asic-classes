LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY Frac_Sum IS
	PORT(	DecIn: IN unsigned(3 DOWNTO 0);
			CentIn: IN unsigned(3 DOWNTO 0);
			FracOut: OUT unsigned(51 DOWNTO 0));
END ENTITY;

ARCHITECTURE Frac_Sum OF Frac_Sum IS

COMPONENT Dec_To_Frac IS
	PORT(	DecIn: IN unsigned(3 DOWNTO 0);
			DecOut: OUT unsigned(51 DOWNTO 0));
END COMPONENT;

COMPONENT Cent_To_Frac IS
	PORT(	CentIn: IN unsigned(3 DOWNTO 0);
			CentOut: OUT unsigned(51 DOWNTO 0));
END COMPONENT;

SIGNAL auxOut1: unsigned(51 DOWNTO 0);
SIGNAL auxOut2: unsigned(51 DOWNTO 0);

BEGIN
	u1 : Dec_To_Frac PORT MAP(DecIn, auxOut1);
	u2 : Cent_To_Frac PORT MAP(CentIn, auxOut2);
	FracOut <= auxOut1 + auxOut2;
END ARCHITECTURE;