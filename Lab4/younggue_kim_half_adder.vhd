library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
entity younggue_kim_half_adder is
Port (a		:in std_logic;
		b 		:in std_logic;
		s 		:out std_logic;
		c 		:out std_logic);
end younggue_kim_half_adder;

Architecture halfadd of younggue_kim_half_adder is
Begin
		c<= (a AND b);
		s<= (a xor b);
end halfadd;