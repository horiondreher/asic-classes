LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY decimal IS
	PORT (pulseIn: IN BIT;
			decimalNum   : OUT unsigned(3 DOWNTO 0);
			pulseOut: OUT BIT);
END decimal;

ARCHITECTURE decimal OF decimal IS

	SIGNAL counter : unsigned(3 DOWNTO 0) := "0000";
	
BEGIN
	
	countTo10: PROCESS(pulseIn)
	BEGIN 
	
	IF (pulseIn'EVENT and pulseIn = '1') THEN
	
		IF counter = X"9" THEN
			counter   <= (OTHERS => '0');
			pulseOut <= '1';
		ELSE
			pulseOut <= '0';
			counter <= counter + "1";
		END IF;
	
	END IF;
	
	END PROCESS countTo10;

	decimalNum <= counter;

END decimal;