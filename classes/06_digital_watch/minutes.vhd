LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY minutes IS
	PORT (pulseIn: IN BIT;
			countUp: IN BIT;
			minutesNum: OUT  unsigned(5 DOWNTO 0);
			pulseOut: OUT BIT);
END minutes;

ARCHITECTURE minutes OF minutes IS

	SIGNAL counter : unsigned(5 DOWNTO 0) := "000000";
	SIGNAL pulse: BIT;
	
BEGIN

	pulse <= pulseIn WHEN countUp = '1' ELSE
				 '1' WHEN countUp = '0';
				 
	countTo10: PROCESS(pulse)
	BEGIN 
		
		IF (pulse'EVENT and pulse = '1') THEN
		
			IF counter = X"3B" THEN
				counter   <= (OTHERS => '0');
				pulseOut <= '1';
			ELSE
				counter <= counter + "1";
				pulseOut <= '0';
			END IF;
			
		END IF;
		
	END PROCESS countTo10;
	
	minutesNum <= 	counter;
END minutes;