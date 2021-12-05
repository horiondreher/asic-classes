LIBRARY ieee;
USE ieee.numeric_std.ALL;
USE ieee.std_logic_1164.ALL;

ENTITY matrixMultiplier IS
	PORT (a11, a12, a13, a21, a22, a23, a31, a32, a33,
			b11, b12, b13, b21, b22, b23, b31, b32, b33: IN unsigned(3 DOWNTO 0);
			c11, c12, c13, c21, c22, c23, c31, c32, c33: OUT unsigned(9 DOWNTO 0));
END ENTITY;

ARCHITECTURE matrixMultiplier OF matrixMultiplier IS
BEGIN
	c11 	<= (a11*b11) + (a12*b21) + (a13*b31) + "0000000000";
	c12	<= (a11*b12) + (a12*b22) + (a13*b32) + "0000000000";
	c13	<= (a11*b31) + (a12*b23) + (a13*b33) + "0000000000";
	c21	<= (a21*b11) + (a22*b21) + (a23*b31) + "0000000000";
	c22	<= (a21*b12) + (a22*b22) + (a23*b32) + "0000000000";
	c23	<= (a21*b31) + (a22*b23) + (a23*b33) + "0000000000";
	c31	<= (a31*b11) + (a32*b21) + (a33*b31) + "0000000000";
	c32	<= (a31*b12) + (a32*b22) + (a33*b32) + "0000000000";
	c33	<= (a31*b31) + (a32*b23) + (a33*b33) + "0000000000";
END ARCHITECTURE;