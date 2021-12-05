LIBRARY IEEE;
USE ieee.std_logic_1164.ALL;

ENTITY X IS

PORT(Bin,Rin,Cin, Qin : IN BIT;
	  CinPOne, RinPOne, Bout, Qout : OUT BIT);
	  
END ENTITY;

ARCHITECTURE X OF X IS

	COMPONENT FA IS

		PORT(A,B,Cin : IN BIT;
			  S, Cout : OUT BIT);
		  
	END COMPONENT;
	
	COMPONENT Mux IS

	PORT(Bit0,Bit1, Qin : IN BIT;
		  S: OUT BIT);
	  
	END COMPONENT;
		
	SIGNAL aux: BIT;

BEGIN
	
	U1: FA PORT MAP(Rin, Bin, Cin, aux, CinPone);
	u2: Mux PORT MAP(Rin, aux, Qin, RinPOne);
	Qout <= Qin;
	Bout <= Bin;
	
END ARCHITECTURE;