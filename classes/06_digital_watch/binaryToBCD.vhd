LIBRARY ieee;
USE ieee.numeric_std.ALL;
USE ieee.std_logic_1164.ALL;

ENTITY binaryToBCD IS
	PORT(resultIn : IN unsigned(9 DOWNTO 0); resultOut: OUT unsigned(13 DOWNTO 0));
END ENTITY;

ARCHITECTURE binaryToBCD OF binaryToBCD IS

	COMPONENT addThree IS
		PORT(A : IN unsigned(3 DOWNTO 0); addOut: OUT unsigned(3 DOWNTO 0));
	END COMPONENT;
	
	TYPE auxArray IS ARRAY (0 TO 13) OF unsigned (3 DOWNTO 0);
	SIGNAL aux: auxArray;

BEGIN
	resultOut(0) <= resultIn(0);
	u1: addThree PORT MAP(A(3) => '0', A(2) => resultIn(9), A(1) => resultIn(8), A(0) => resultIn(7), addOut => aux(0));
	u2: addThree PORT MAP(A(3) => aux(0)(2), A(2) => aux(0)(1), A(1) => aux(0)(0), A(0) => resultIn(6), addOut => aux(1));
	u3: addThree PORT MAP(A(3) => '0', A(2) => '0', A(1) => aux(0)(3), A(0) => aux(1)(3), addOut => aux(2));
	u4: addThree PORT MAP(A(3) => aux(1)(2), A(2) => aux(1)(1), A(1) => aux(1)(0), A(0) => resultIn(5), addOut => aux(3));
	u5: addThree PORT MAP(A(3) => aux(2)(2), A(2) => aux(2)(1), A(1) => aux(2)(0), A(0) => aux(3)(3), addOut => aux(4));
	u6: addThree PORT MAP(A(3) => aux(3)(2), A(2) => aux(3)(1), A(1) => aux(3)(0), A(0) => resultIn(4), addOut => aux(5));
	u7: addThree PORT MAP(A(3) => aux(4)(2), A(2) => aux(4)(1), A(1) => aux(4)(0), A(0) => aux(5)(3), addOut => aux(6));
	u8: addThree PORT MAP(A(3) => aux(5)(2), A(2) => aux(5)(1), A(1) => aux(5)(0), A(0) => resultIn(3), addOut => aux(7));
	u9: addThree PORT MAP(A(3) => '0', A(2) => aux(2)(3), A(1) => aux(4)(3), A(0) => aux(6)(3), addOut => aux(8));
	u10: addThree PORT MAP(A(3) => aux(6)(2), A(2) => aux(6)(1), A(1) => aux(6)(0), A(0) => aux(7)(3), addOut => aux(9));
	u11: addThree PORT MAP(A(3) => aux(7)(2), A(2) => aux(7)(1), A(1) => aux(7)(0), A(0) => resultIn(2), addOut => aux(10));
	u12: addThree PORT MAP(A(3) => aux(8)(2), A(2) => aux(8)(1), A(1) => aux(8)(0), A(0) => aux(9)(3), addOut => aux(11));
	u13: addThree PORT MAP(A(3) => aux(9)(2), A(2) => aux(9)(1), A(1) => aux(9)(0), A(0) => aux(10)(3), addOut => aux(12));
	u14: addThree PORT MAP(A(3) => aux(10)(2), A(2) => aux(10)(1), A(1) => aux(10)(0), A(0) => resultIn(1), addOut => aux(13));
	
	resultOut(13) <= aux(8)(3);
	resultOut(12 DOWNTO 9) <= aux(11);
	resultOut(8 DOWNTO 5) <= aux(12);
	resultOut(4 DOWNTO 1) <= aux(13);


END ARCHITECTURE;