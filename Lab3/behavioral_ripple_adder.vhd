library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
entity younggue_kim_rca_behavioral is
Port (A 	:in std_logic_vector (3 downto 0) ;
		B 	:in std_logic_vector (3 downto 0) ;
		S 	:out std_logic_vector (4 downto 0) ) ;
end younggue_kim_rca_behavioral;

ARCHITECTURE behavioral_ripple_adder OF younggue_kim_rca_behavioral IS
Signal c: std_logic_vector(3 downto 0);
BEGIN
	S(0) <= A(0) XOR B(0);
	C(0) <= A(0) AND B(0);
	S(1) <= A(1) XOR B(1) XOR C(0);
	C(1) <= (A(1) AND B(1)) OR (A(1) AND C(0)) OR (C(0) AND B(1));
	S(2) <= A(2) XOR B(2) XOR C(1);
	C(2) <= (A(2) AND B(2)) OR (A(2) AND C(1)) OR (C(1) AND B(2));
	S(3) <= A(3) XOR B(3) XOR C(2);
	S(4) <= (A(3) AND B(3)) OR (A(3) AND C(2)) OR (C(2) AND B(3));
END behavioral_ripple_adder; 