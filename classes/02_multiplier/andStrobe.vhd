LIBRARY ieee;

USE ieee.std_logic_1164.ALL;

ENTITY andStrobe IS
	PORT(A, B, C, D, E, F, G, H, St : IN std_logic; S0, S1, S2, S3, S4, S5, S6, S7 : OUT std_logic);
END ENTITY;

ARCHITECTURE andStrobe OF andStrobe IS
	BEGIN
		S0 <= A and not St;
		S1 <= B and not St;
		S2 <= C and not St;
		S3 <= D and not St;
		S4 <= E and not St;
		S5 <= F and not St;
		S6 <= G and not St;
		S7 <= H and not St;
END ARCHITECTURE;