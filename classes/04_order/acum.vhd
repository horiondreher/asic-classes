LIBRARY ieee;
USE ieee.numeric_std.ALL;
USE ieee.std_logic_1164.ALL;

ENTITY acum IS
	PORT(bitIn: IN unsigned(0 to 0);
	     acumIn: IN  unsigned (4 DOWNTO 0);
		  acumOut: OUT unsigned (4 DOWNTO 0));
END ENTITY;

ARCHITECTURE acum OF acum IS
BEGIN
	acumOut <= (acumIn + "0001") WHEN bitIn = "1" ELSE
				  acumIn;
END ARCHITECTURE;

