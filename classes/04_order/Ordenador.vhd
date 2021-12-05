LIBRARY ieee;
USE ieee.numeric_std.ALL;
USE ieee.std_logic_1164.ALL;

ENTITY Ordenador IS
	PORT(A: IN  unsigned(15 DOWNTO 0);
		  ordOut: OUT unsigned(15 DOWNTO 0));
END ENTITY;

ARCHITECTURE Ordenador OF Ordenador IS
	
	COMPONENT checkBit IS
		PORT(A: IN  unsigned(15 DOWNTO 0);
			  S1: OUT unsigned (4 DOWNTO 0));
	END COMPONENT;
	
	COMPONENT ordBits IS
		PORT(ordIn: IN unsigned (4 DOWNTO 0);
			  ordOut: OUT unsigned(15 DOWNTO 0));
	END COMPONENT;

	SIGNAL aux: unsigned (4 DOWNTO 0);
	
BEGIN

	u1: checkBit PORT MAP(A, aux);
	u2: ordBits PORT MAP(aux, ordOut);
	
END ARCHITECTURE;
