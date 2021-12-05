	LIBRARY ieee;
USE ieee.numeric_std.ALL;
USE ieee.std_logic_1164.ALL;

ENTITY selectData IS
	PORT (dataSel: IN unsigned(3 DOWNTO 0);
			saveReset: IN unsigned(1 DOWNTO 0);
			dataOut1, dataOut2, dataOut3, dataOut4, dataOut5,
			dataOut6, dataOut7, dataOut8, dataOut9: OUT unsigned(1 DOWNTO 0));
END ENTITY;

ARCHITECTURE selectData OF selectData IS
BEGIN
	dataOut1 <= saveReset WHEN dataSel = "0000" ELSE "10";
	dataOut2	<= saveReset WHEN dataSel = "0001" ELSE "10";
	dataOut3	<= saveReset WHEN dataSel = "0010" ELSE "10"; 
	dataOut4	<= saveReset WHEN dataSel = "0011" ELSE "10";
	dataOut5	<= saveReset WHEN dataSel = "0100" ELSE "10";
	dataOut6	<= saveReset WHEN dataSel = "0101" ELSE "10";
	dataOut7	<= saveReset WHEN dataSel = "0110" ELSE "10";
	dataOut8	<= saveReset WHEN dataSel = "0111" ELSE "10";
	dataOut9	<= saveReset WHEN dataSel = "1000" ELSE "10";
END ARCHITECTURE;