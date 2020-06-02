library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity younggue_kim_wrapper is 
	Port	(	A,	B		:	in	std_logic_vector (3 downto 0);
				decoded_A:  out std_logic_vector (6 downto 0);
				decoded_B:   out std_logic_vector (6 downto 0);
				decoded_AplusB : out std_logic_vector (13 downto 0));
end younggue_kim_wrapper;

architecture LogicFunc of younggue_kim_wrapper is

component zheyan_tu_bcd_adder  
Port (A : in std_logic_vector (3 DOWNTo 0);
		B : in std_logic_vector (3 DOWNTo 0);
		S : out std_logic_vector (3 DOWNTo 0);
		C_out : out std_logic );
end component;

component seven_segment_decoder 
port ( 	code : in std_logic_vector (3 downto 0) ;
			segments_out : out std_logic_vector (6 downto 0) );
end component;

signal A1 : STD_LOGIC;
signal B1 : std_logic_vector (3 downto 0);
signal B2 : std_logic_vector (3 downto 0);
signal B3 : std_logic_vector (6 downto 0);
signal B4 : std_logic_vector (6 downto 0);

begin
led1: seven_segment_decoder port map(A,decoded_A); 
led2:	seven_segment_decoder port map(B,decoded_B); 
bcd: zheyan_tu_bcd_adder port map(A,B,B1,A1); 
led3: seven_segment_decoder port map(B1,B3);
led4: seven_segment_decoder port map(B2,B4);

decoded_AplusB <= B4&B3;
end LogicFunc;
