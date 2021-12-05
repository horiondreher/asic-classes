LIBRARY ieee;
USE ieee.numeric_std.ALL;
USE ieee.std_logic_1164.ALL;

ENTITY select_Data IS
	PORT (saveReset: IN std_logic;
			inputSel: IN std_logic;
			input1, input2: OUT std_logic);
END ENTITY;

ARCHITECTURE select_Data OF select_Data IS
BEGIN
		input1 <= 	saveReset WHEN inputSel = '0' ELSE '1';
		input2 <= 	saveReset WHEN inputSel = '1' ELSE '1';			
END ARCHITECTURE;