LIBRARY ieee;
USE ieee.numeric_std.ALL;
USE ieee.std_logic_1164.ALL;

ENTITY sistemaCompleto IS
	PORT(	A: IN  unsigned(15 DOWNTO 0);
			ordOut: OUT unsigned(15 DOWNTO 0));
END ENTITY;

ARCHITECTURE sistemaCompleto OF sistemaCompleto IS
	
	COMPONENT Ordenador IS
		PORT(	A: IN  unsigned(15 DOWNTO 0);
				ordOut: OUT unsigned(15 DOWNTO 0));
	END COMPONENT;
	
BEGIN

	uC : Ordenador PORT MAP(A, ordOut);

END ARCHITECTURE;