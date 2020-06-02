library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
entity younggue_kim_rca_structural is
Port (A 	:in std_logic_vector (3 downto 0) ;
		B 	:in std_logic_vector (3 downto 0) ;
		S 	:out std_logic_vector (4 downto 0) ) ;
end younggue_kim_rca_structural ;

ARCHITECTURE structral_ripple_adder OF younggue_kim_rca_structural IS
COMPONENT younggue_kim_half_adder 
PORT (a, b: IN STD_LOGIC;
		s, c: OUT STD_LOGIC);
END COMPONENT;
COMPONENT younggue_kim_full_adder
PORT (a, b, c_in: IN STD_LOGIC;
		s, c_out: OUT STD_LOGIC);
END COMPONENT;
Signal c1: std_logic_vector(2 downto 0);

BEGIN
		L1: younggue_kim_half_adder PORT MAP(A(0), B(0),S(0),C1(0));
		L2: younggue_kim_full_adder PORT MAP(A(1), B(1),C1(0), S(1),C1(1));
		L3: younggue_kim_full_adder PORT MAP(A(2), B(2),C1(1), S(2),C1(2));
		L4: younggue_kim_full_adder PORT MAP(A(3), B(3),C1(2), S(3),S(4));
END structral_ripple_adder;