LIBRARY ieee;
USE ieee.numeric_std.ALL;
USE ieee.std_logic_1164.ALL;

ENTITY led_out IS
	PORT(A : IN unsigned(3 DOWNTO 0); S_LED : OUT unsigned(3 DOWNTO 0));
END ENTITY;

ARCHITECTURE led_out OF led_out IS
BEGIN 
		S_LED <= A;
END ARCHITECTURE;