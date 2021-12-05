LIBRARY ieee;
USE ieee.numeric_std.ALL;
USE ieee.std_logic_1164.ALL;

ENTITY holdData IS
	PORT (dataIn: IN unsigned(3 DOWNTO 0);
			saveA11,	saveA12, saveA13, saveA21, saveA22, saveA23, saveA31, saveA32, saveA33, 
			saveB11, saveB12, saveB13, saveB21, saveB22, saveB23, saveB31, saveB32, saveB33: IN unsigned(1 DOWNTO 0);
			outA11, outA12, outA13, outA21, outA22, outA23, outA31, outA32, outA33,
			outB11, outB12, outB13, outB21, outB22, outB23, outB31, outB32, outB33: OUT unsigned(3 DOWNTO 0));
END ENTITY;

ARCHITECTURE holdData OF holdData IS
BEGIN
	
	outA11 <= dataIn WHEN saveA11 = "00" ELSE
				  "ZZZZ" WHEN saveA11 = "01";
				  
	outA12 <= dataIn WHEN saveA12 = "00" ELSE
				  "ZZZZ" WHEN saveA12 = "01";
				  
	outA13 <= dataIn WHEN saveA13 = "00" ELSE
				  "ZZZZ" WHEN saveA13 = "01";
				  
	outA21 <= dataIn WHEN saveA21 = "00" ELSE
				  "ZZZZ" WHEN saveA21 = "01";	
				  
	outA22 <= dataIn WHEN saveA22 = "00" ELSE
				  "ZZZZ" WHEN saveA22 = "01";
				  
	outA23 <= dataIn WHEN saveA23 = "00" ELSE
				  "ZZZZ" WHEN saveA23 = "01";
				  
	outA31 <= dataIn WHEN saveA31 = "00" ELSE
				  "ZZZZ" WHEN saveA31 = "01";
				  
	outA32 <= dataIn WHEN saveA32 = "00" ELSE
				  "ZZZZ" WHEN saveA32 = "01";
				  
	outA33 <= dataIn WHEN saveA33 = "00" ELSE
				  "ZZZZ" WHEN saveA33 = "01";
				  
	outB11 <= dataIn WHEN saveB11 = "00" ELSE
				  "ZZZZ" WHEN saveB11 = "01";
				  
	outB12 <= dataIn WHEN saveB12 = "00" ELSE
				  "ZZZZ" WHEN saveB12 = "01";
				  
	outB13 <= dataIn WHEN saveB13 = "00" ELSE
				  "ZZZZ" WHEN saveB13 = "01";
				  
	outB21 <= dataIn WHEN saveB21 = "00" ELSE
				  "ZZZZ" WHEN saveB21 = "01";
				  
	outB22 <= dataIn WHEN saveB22 = "00" ELSE
				  "ZZZZ" WHEN saveB22 = "01";
				  
	outB23 <= dataIn WHEN saveB23 = "00" ELSE
				  "ZZZZ" WHEN saveB23 = "01";
				  
	outB31 <= dataIn WHEN saveB31 = "00" ELSE
				  "ZZZZ" WHEN saveB31 = "01";
				  
	outB32 <= dataIn WHEN saveB32 = "00" ELSE
				  "ZZZZ" WHEN saveB32 = "01";
				  
	outB33 <= dataIn WHEN saveB33 = "00" ELSE
				  "ZZZZ" WHEN saveB33 = "01";		  
			  
END ARCHITECTURE;