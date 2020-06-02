-- Copyright (C) 2016  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Intel and sold by Intel or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "02/23/2020 14:03:09"
                                                            
-- Vhdl Test Bench template for design  :  younggue_kim_bcd_adder
-- 
-- Simulation tool : ModelSim (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;    
USE IEEE.NUMERIC_STD.ALL;                            

ENTITY younggue_kim_bcd_adder_vhd_tst IS
END younggue_kim_bcd_adder_vhd_tst;
ARCHITECTURE younggue_kim_bcd_adder_arch OF younggue_kim_bcd_adder_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL B : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL C_out : STD_LOGIC;
SIGNAL S : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT younggue_kim_bcd_adder
	PORT (
	A : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	B : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	C_out : OUT STD_LOGIC;
	S : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : younggue_kim_bcd_adder
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	B => B,
	C_out => C_out,
	S => S
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once                      
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN 
	for n in 0 to 9 loop
		B <= STD_LOGIC_VECTOR(to_unsigned(n,4));
		for i in 0 to 9 loop
			A<= STD_LOGIC_VECTOR(to_unsigned(i,4));
			wait for 10 ns;
		END Loop;
	END LOOP;                                                        
        -- code executes for every event on sensitivity list  
WAIT;                                                        
END PROCESS always;                                          
END younggue_kim_bcd_adder_arch;
