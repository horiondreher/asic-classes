LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY seconds IS
	PORT (pulseIn: IN BIT;
			secondsNum   : OUT unsigned(5 DOWNTO 0);
			pulseOut: OUT BIT);
END seconds;

ARCHITECTURE seconds OF seconds IS

	SIGNAL counter : unsigned(5 DOWNTO 0) := "000000";
	
BEGIN
	
	countTo10: PROCESS(pulseIn)
	BEGIN 
	
	IF (pulseIn'EVENT and pulseIn = '1') THEN
	
		IF counter = X"3B" THEN
			counter   <= (OTHERS => '0');
			pulseOut <= '1';
		ELSE
			pulseOut <= '0';
			counter <= counter + "1";
		END IF;
		
	END IF;
	
	END PROCESS countTo10;

	secondsNum <= counter;

END seconds;