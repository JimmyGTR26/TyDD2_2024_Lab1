-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- PROGRAM		"Quartus II 64-Bit"
-- VERSION		"Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"
-- CREATED		"Sun Nov 03 19:35:54 2024"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY \4bit_FULL_SUB\ IS 
	PORT
	(
		in_bin :  IN  STD_LOGIC;
		clk :  IN  STD_LOGIC;
		in_A0 :  IN  STD_LOGIC;
		in_B0 :  IN  STD_LOGIC;
		in_A1 :  IN  STD_LOGIC;
		in_B1 :  IN  STD_LOGIC;
		in_A2 :  IN  STD_LOGIC;
		in_B2 :  IN  STD_LOGIC;
		in_A3 :  IN  STD_LOGIC;
		in_B3 :  IN  STD_LOGIC;
		o_s3 :  OUT  STD_LOGIC;
		o_s2 :  OUT  STD_LOGIC;
		o_s1 :  OUT  STD_LOGIC;
		o_s0 :  OUT  STD_LOGIC;
		o_bout4 :  OUT  STD_LOGIC;
		Z :  OUT  STD_LOGIC
	);
END \4bit_FULL_SUB\;

ARCHITECTURE bdf_type OF \4bit_FULL_SUB\ IS 

COMPONENT full_sub
	PORT(in_A : IN STD_LOGIC;
		 in_B : IN STD_LOGIC;
		 in_bin : IN STD_LOGIC;
		 clk : IN STD_LOGIC;
		 o_s : OUT STD_LOGIC;
		 o_bout : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT d_ff
	PORT(D : IN STD_LOGIC;
		 clk : IN STD_LOGIC;
		 Q : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_7 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_8 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_9 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_10 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_11 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_12 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_13 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_14 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_15 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_16 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_17 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_18 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_19 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_20 :  STD_LOGIC;


BEGIN 
o_s3 <= SYNTHESIZED_WIRE_8;
o_s2 <= SYNTHESIZED_WIRE_10;
o_s1 <= SYNTHESIZED_WIRE_9;
o_s0 <= SYNTHESIZED_WIRE_11;



b2v_inst : full_sub
PORT MAP(in_A => SYNTHESIZED_WIRE_0,
		 in_B => SYNTHESIZED_WIRE_1,
		 in_bin => SYNTHESIZED_WIRE_2,
		 clk => clk,
		 o_s => SYNTHESIZED_WIRE_7,
		 o_bout => SYNTHESIZED_WIRE_14);


b2v_inst1 : d_ff
PORT MAP(D => in_A0,
		 clk => clk,
		 Q => SYNTHESIZED_WIRE_0);


b2v_inst10 : d_ff
PORT MAP(D => in_B2,
		 clk => clk,
		 Q => SYNTHESIZED_WIRE_16);


b2v_inst11 : d_ff
PORT MAP(D => in_B3,
		 clk => clk,
		 Q => SYNTHESIZED_WIRE_19);


b2v_inst12 : d_ff
PORT MAP(D => in_bin,
		 clk => clk,
		 Q => SYNTHESIZED_WIRE_2);


b2v_inst13 : d_ff
PORT MAP(D => SYNTHESIZED_WIRE_3,
		 clk => clk,
		 Q => o_bout4);


b2v_inst14 : d_ff
PORT MAP(D => SYNTHESIZED_WIRE_4,
		 clk => clk,
		 Q => SYNTHESIZED_WIRE_8);


b2v_inst15 : d_ff
PORT MAP(D => SYNTHESIZED_WIRE_5,
		 clk => clk,
		 Q => SYNTHESIZED_WIRE_10);


b2v_inst16 : d_ff
PORT MAP(D => SYNTHESIZED_WIRE_6,
		 clk => clk,
		 Q => SYNTHESIZED_WIRE_9);


b2v_inst17 : d_ff
PORT MAP(D => SYNTHESIZED_WIRE_7,
		 clk => clk,
		 Q => SYNTHESIZED_WIRE_11);


Z <= NOT(SYNTHESIZED_WIRE_8 OR SYNTHESIZED_WIRE_9 OR SYNTHESIZED_WIRE_10 OR SYNTHESIZED_WIRE_11);


b2v_inst2 : full_sub
PORT MAP(in_A => SYNTHESIZED_WIRE_12,
		 in_B => SYNTHESIZED_WIRE_13,
		 in_bin => SYNTHESIZED_WIRE_14,
		 clk => clk,
		 o_s => SYNTHESIZED_WIRE_6,
		 o_bout => SYNTHESIZED_WIRE_17);


b2v_inst3 : full_sub
PORT MAP(in_A => SYNTHESIZED_WIRE_15,
		 in_B => SYNTHESIZED_WIRE_16,
		 in_bin => SYNTHESIZED_WIRE_17,
		 clk => clk,
		 o_s => SYNTHESIZED_WIRE_5,
		 o_bout => SYNTHESIZED_WIRE_20);


b2v_inst4 : full_sub
PORT MAP(in_A => SYNTHESIZED_WIRE_18,
		 in_B => SYNTHESIZED_WIRE_19,
		 in_bin => SYNTHESIZED_WIRE_20,
		 clk => clk,
		 o_s => SYNTHESIZED_WIRE_4,
		 o_bout => SYNTHESIZED_WIRE_3);


b2v_inst5 : d_ff
PORT MAP(D => in_A1,
		 clk => clk,
		 Q => SYNTHESIZED_WIRE_12);


b2v_inst6 : d_ff
PORT MAP(D => in_A2,
		 clk => clk,
		 Q => SYNTHESIZED_WIRE_15);


b2v_inst7 : d_ff
PORT MAP(D => in_A3,
		 clk => clk,
		 Q => SYNTHESIZED_WIRE_18);


b2v_inst8 : d_ff
PORT MAP(D => in_B0,
		 clk => clk,
		 Q => SYNTHESIZED_WIRE_1);


b2v_inst9 : d_ff
PORT MAP(D => in_B1,
		 clk => clk,
		 Q => SYNTHESIZED_WIRE_13);


END bdf_type;