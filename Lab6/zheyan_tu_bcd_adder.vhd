library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity zheyan_tu_bcd_adder is
Port (A 		: in std_logic_vector (3 downto 0);
		B 		: in std_logic_vector (3 downto 0);
		S 		: out std_logic_vector (3 downto 0);
		C_out : out std_logic);
	end zheyan_tu_bcd_adder;

	
ARCHITECTURE bcd_adder_behavioral OF zheyan_tu_bcd_adder IS

SIGNAL TempSum: std_logic_vector (4 downto 0);
SIGNAL Cx : std_logic;

BEGIN
	TempSum<=('0'& A)+B;
	Cx<='1' WHEN TempSum>9 ELSE '0';
	C_out<= '1' WHEN TempSum>9 ELSE '0';
	S<= A + B WHEN (Cx = '0') ELSE A + B -10;
END bcd_adder_behavioral;
