LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY hours IS
	PORT (pulseIn: IN BIT;
			countUp: IN BIT;
			hoursNum: OUT  unsigned(5 DOWNTO 0));
END hours;

ARCHITECTURE hours OF hours IS

	SIGNAL counter : unsigned(5 DOWNTO 0) := "000000";
	SIGNAL pulse: BIT;
	
BEGIN
	
	pulse <= pulseIn WHEN countUp = '1' ELSE
				 '1' WHEN countUp = '0';
				 
	countTo10: PROCESS(pulseIn)
	BEGIN 
		
		IF (pulse'EVENT and pulse = '1') THEN
		
			IF counter = X"17" THEN
				counter   <= (OTHERS => '0');
			ELSE
				counter <= counter + "1";
			END IF;
			
		END IF;
		
	END PROCESS countTo10;
	

	hoursNum <= counter;

END hours;