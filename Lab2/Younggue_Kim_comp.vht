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
-- Generated on "01/25/2020 15:27:14"
                                                            
-- Vhdl Test Bench template for design  :  Younggue_Kim_comp
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                
USE ieee.numeric_std.all;

ENTITY Younggue_Kim_comp_vhd_tst IS
END Younggue_Kim_comp_vhd_tst;
ARCHITECTURE Younggue_Kim_comp_arch OF Younggue_Kim_comp_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL AeqB : STD_LOGIC;
SIGNAL B : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT Younggue_Kim_comp
	PORT (
	A : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	AeqB : OUT STD_LOGIC;
	B : IN STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Younggue_Kim_comp
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	AeqB => AeqB,
	B => B
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once                      
WAIT;                                                       
END PROCESS init;                                           
generate_test:PROCESS
BEGIN
    FOR i IN 0 to 16 LOOP 
	 A <= std_logic_vector(to_unsigned(i,4));
	 FOR j IN 0 to 16 LOOP 
	     B <= std_logic_vector(to_unsigned(j,4));
		  WAIT FOR 10ns;
	 END LOOP;
	 END LOOP;
	 WAIT;
END PROCESS generate_test;                                           
END Younggue_Kim_comp_arch;
