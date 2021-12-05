LIBRARY ieee;

USE ieee.std_logic_1164.ALL;

ENTITY somadorCompleto IS
	PORT(A,B,Te : IN std_logic; S,Ts : OUT std_logic);
END ENTITY;

ARCHITECTURE somadorCompleto OF somadorCompleto IS
	BEGIN
		S <= A xor B xor Te;
		Ts <= (A and B) or (A and Te) or (B and Te);
END ARCHITECTURE;

