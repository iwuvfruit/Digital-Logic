library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
entity younggue_kim_bcd_adder is
Port (A	 :in std_logic_vector (3 downto 0) ;
		B	 :in std_logic_vector (3 downto 0) ;
		S	 :out std_logic_vector (3 downto 0) ;
		C_out 	:out std_logic);
end younggue_kim_bcd_adder;

ARCHITECTURE bcd_adder OF younggue_kim_bcd_adder IS

Signal c: std_logic_vector(3 downto 0);
Signal x: std_logic_vector(3 downto 0);
Signal y:std_logic;
Signal z:std_logic;
BEGIN
		x(0) <= A(0) XOR B(0);
		C(0) <= A(0) AND B(0);
		x(1) <= A(1) XOR B(1) XOR C(0);
		C(1) <= (A(1) AND B(1)) OR (A(1) AND C(0)) OR (C(0) AND B(1));
		x(2) <= A(2) XOR B(2) XOR C(1);
		C(2) <= (A(2) AND B(2)) OR (A(2) AND C(1)) OR (C(1) AND B(2));
		x(3) <= A(3) XOR B(3) XOR C(2);
		c(3) <= (A(3) AND B(3)) OR (A(3) AND C(2)) OR (C(2) AND B(3));
		z <= c(3) OR (x(3) AND (x(1) OR x(2)));
		S(0) <= x(0);		
		S(1) <= x(1) XOR z;
		y <= x(1) AND z;
		S(2) <= x(2) XOR z XOR y;
		S(3) <= x(3) XOR (x(1) OR x(2));
		c_out <= z;
END bcd_adder;