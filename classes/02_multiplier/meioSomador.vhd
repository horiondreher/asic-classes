LIBRARY ieee;

USE ieee.std_logic_1164.ALL;

ENTITY meioSomador IS
	PORT(A,B : IN std_logic; S,Ts : OUT std_logic);
END ENTITY;

ARCHITECTURE meioSomador OF meioSomador IS
	BEGIN
		S <= A xor B;
		Ts <= A and B;
END ARCHITECTURE;

