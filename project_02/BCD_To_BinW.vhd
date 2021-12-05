LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY BCD_To_BinW IS
	PORT(	D0, D1: IN unsigned(3 DOWNTO 0);
			BinOutW: OUT unsigned(7 DOWNTO 0));
END ENTITY;

ARCHITECTURE BCD_To_BinW OF BCD_To_BinW IS

BEGIN
	BinOutW <= D0 + (D1 * "1010");
END ARCHITECTURE;