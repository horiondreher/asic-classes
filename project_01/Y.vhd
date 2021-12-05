LIBRARY IEEE;
USE ieee.std_logic_1164.ALL;

ENTITY Y IS

PORT(Bin,Rin,Cin, Qin : IN BIT;
	  CinPOne, Bout, Qout : OUT BIT);
	  
END ENTITY;

ARCHITECTURE Y OF Y IS

	COMPONENT FA IS

		PORT(A,B,Cin : IN BIT;
			  S, Cout : OUT BIT);
		  
	END COMPONENT;
	
	SIGNAL aux: BIT;
	
BEGIN
	
	U1: FA PORT MAP(Rin, Bin, Cin, aux, CinPone);
	Qout <= Qin;
	Bout <= Bin;
	
END ARCHITECTURE;