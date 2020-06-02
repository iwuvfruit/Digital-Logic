library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
entity younggue_kim_full_adder is
Port (a		:in std_logic;
		b 		:in std_logic;
		c_in 		:in std_logic;
		s 		:out std_logic;
		c_out 		:out std_logic);
end younggue_kim_full_adder;

Architecture fulladd of younggue_kim_full_adder is
Begin
		s<= (a xor b xor c_in);
		c_out<= (a and b)or((b and c_in)xor(c_in and a));
end fulladd;