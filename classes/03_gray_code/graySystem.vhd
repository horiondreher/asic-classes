LIBRARY ieee;
USE ieee.numeric_std.ALL;
USE ieee.std_logic_1164.ALL;

ENTITY graySystem IS
	PORT(A : IN unsigned(3 DOWNTO 0); S : OUT unsigned(3 DOWNTO 0));
END ENTITY;

ARCHITECTURE graySystem OF graySystem IS
BEGIN 
	S(0) <= A(0) XOR A(1);
	S(1) <= A(1) XOR A(2);
	S(2) <= A(2) XOR A(3);
	S(3) <= A(3);
END ARCHITECTURE;