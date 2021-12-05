LIBRARY ieee;
USE ieee.numeric_std.ALL;
USE ieee.std_logic_1164.ALL;

ENTITY checkBit IS
	PORT(A: IN  unsigned(15 DOWNTO 0);
		  S1: OUT unsigned (4 DOWNTO 0));
END ENTITY;

ARCHITECTURE checkBit OF checkBit IS
	
	COMPONENT acum IS
		PORT(bitIn: IN unsigned(0 to 0);
			  acumIn: IN  unsigned (4 DOWNTO 0);
			  acumOut: OUT unsigned (4 DOWNTO 0));
	END COMPONENT;
	
	
	TYPE auxArray IS ARRAY (0 TO 16) OF unsigned (4 DOWNTO 0);
	SIGNAL aux: auxArray;

BEGIN
	aux(0) <= "00000";
	acumComp : FOR i IN 0 TO 15 GENERATE
		acumx : acum PORT MAP(bitIn(0) => A(i), acumIn => aux(i), acumOut => aux(i+1));
	END GENERATE;
	S1 <= aux(16);
END ARCHITECTURE;
