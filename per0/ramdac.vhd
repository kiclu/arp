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
-- VERSION		"Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"
-- CREATED		"Wed Jul 20 22:06:40 2022"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY ramdac IS 
	PORT
	(
		CLK :  IN  STD_LOGIC;
		VGA_VS :  OUT  STD_LOGIC;
		VGA_HS :  OUT  STD_LOGIC;
		VGA_B :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		VGA_G :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		VGA_R :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END ramdac;

ARCHITECTURE bdf_type OF ramdac IS 

COMPONENT cmp16
	PORT(A : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 B : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 G : OUT STD_LOGIC;
		 L : OUT STD_LOGIC;
		 E : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT v_bp_end
	PORT(		 result : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;

COMPONENT reg10_inc_ld_clr
	PORT(LD : IN STD_LOGIC;
		 INC : IN STD_LOGIC;
		 CLK : IN STD_LOGIC;
		 CLR : IN STD_LOGIC;
		 I : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
		 Cout : OUT STD_LOGIC;
		 A : OUT STD_LOGIC_VECTOR(9 DOWNTO 0)
	);
END COMPONENT;

COMPONENT h_out_end
	PORT(		 result : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;

COMPONENT h_fp_end
	PORT(		 result : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;

COMPONENT h_sp_end
	PORT(		 result : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;

COMPONENT h_bp_end
	PORT(		 result : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;

COMPONENT v_out_end
	PORT(		 result : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;

COMPONENT v_fp_end
	PORT(		 result : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;

COMPONENT v_sp_end
	PORT(		 result : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;

COMPONENT reg11_inc_ld_clr
	PORT(LD : IN STD_LOGIC;
		 INC : IN STD_LOGIC;
		 CLK : IN STD_LOGIC;
		 CLR : IN STD_LOGIC;
		 I : IN STD_LOGIC_VECTOR(10 DOWNTO 0);
		 Cout : OUT STD_LOGIC;
		 A : OUT STD_LOGIC_VECTOR(10 DOWNTO 0)
	);
END COMPONENT;

SIGNAL	H :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	V :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_31 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_32 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_33 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_34 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_10 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_11 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_12 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_13 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_14 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_15 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_35 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_36 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_37 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_38 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_24 :  STD_LOGIC;
SIGNAL	SRFF_inst12 :  STD_LOGIC;
SIGNAL	SRFF_inst23 :  STD_LOGIC;
SIGNAL	SRFF_inst10 :  STD_LOGIC;
SIGNAL	SRFF_inst21 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_28 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_29 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_30 :  STD_LOGIC_VECTOR(15 DOWNTO 0);


BEGIN 



b2v_inst : cmp16
PORT MAP(A => H,
		 B => SYNTHESIZED_WIRE_0,
		 E => SYNTHESIZED_WIRE_31);


b2v_inst1 : v_bp_end
PORT MAP(		 result => SYNTHESIZED_WIRE_14);




PROCESS(CLK)
VARIABLE synthesized_var_for_SRFF_inst12 : STD_LOGIC;
BEGIN
IF (RISING_EDGE(CLK)) THEN
	synthesized_var_for_SRFF_inst12 := (NOT(synthesized_var_for_SRFF_inst12) AND SYNTHESIZED_WIRE_32) OR (synthesized_var_for_SRFF_inst12 AND (NOT(SYNTHESIZED_WIRE_33)));
END IF;
	SRFF_inst12 <= synthesized_var_for_SRFF_inst12;
END PROCESS;



SYNTHESIZED_WIRE_1 <= SYNTHESIZED_WIRE_34 OR SYNTHESIZED_WIRE_10;


b2v_inst16 : cmp16
PORT MAP(A => V,
		 B => SYNTHESIZED_WIRE_11,
		 E => SYNTHESIZED_WIRE_35);


b2v_inst17 : cmp16
PORT MAP(A => V,
		 B => SYNTHESIZED_WIRE_12,
		 E => SYNTHESIZED_WIRE_36);


b2v_inst18 : cmp16
PORT MAP(A => V,
		 B => SYNTHESIZED_WIRE_13,
		 E => SYNTHESIZED_WIRE_37);


b2v_inst19 : cmp16
PORT MAP(A => V,
		 B => SYNTHESIZED_WIRE_14,
		 E => SYNTHESIZED_WIRE_38);


b2v_inst20 : cmp16
PORT MAP(A => V,
		 E => SYNTHESIZED_WIRE_24);




PROCESS(CLK)
VARIABLE synthesized_var_for_SRFF_inst23 : STD_LOGIC;
BEGIN
IF (RISING_EDGE(CLK)) THEN
	synthesized_var_for_SRFF_inst23 := (NOT(synthesized_var_for_SRFF_inst23) AND SYNTHESIZED_WIRE_36) OR (synthesized_var_for_SRFF_inst23 AND (NOT(SYNTHESIZED_WIRE_37)));
END IF;
	SRFF_inst23 <= synthesized_var_for_SRFF_inst23;
END PROCESS;



SYNTHESIZED_WIRE_15 <= SYNTHESIZED_WIRE_38 OR SYNTHESIZED_WIRE_24;


b2v_inst27 : reg10_inc_ld_clr
PORT MAP(INC => SYNTHESIZED_WIRE_34,
		 CLK => CLK,
		 CLR => SYNTHESIZED_WIRE_38,
		 A => V(9 DOWNTO 0));


VGA_HS <= NOT(SRFF_inst12);



VGA_VS <= NOT(SRFF_inst23);




b2v_inst34 : h_out_end
PORT MAP(		 result => SYNTHESIZED_WIRE_0);


b2v_inst35 : h_fp_end
PORT MAP(		 result => SYNTHESIZED_WIRE_28);


b2v_inst36 : h_sp_end
PORT MAP(		 result => SYNTHESIZED_WIRE_29);


b2v_inst37 : h_bp_end
PORT MAP(		 result => SYNTHESIZED_WIRE_30);


b2v_inst38 : v_out_end
PORT MAP(		 result => SYNTHESIZED_WIRE_11);


b2v_inst39 : v_fp_end
PORT MAP(		 result => SYNTHESIZED_WIRE_12);


b2v_inst40 : v_sp_end
PORT MAP(		 result => SYNTHESIZED_WIRE_13);


b2v_inst5 : reg11_inc_ld_clr
PORT MAP(INC => CLK,
		 CLK => CLK,
		 CLR => SYNTHESIZED_WIRE_34,
		 A => H(10 DOWNTO 0));


b2v_inst6 : cmp16
PORT MAP(A => H,
		 B => SYNTHESIZED_WIRE_28,
		 E => SYNTHESIZED_WIRE_32);


b2v_inst7 : cmp16
PORT MAP(A => H,
		 B => SYNTHESIZED_WIRE_29,
		 E => SYNTHESIZED_WIRE_33);


b2v_inst8 : cmp16
PORT MAP(A => H,
		 B => SYNTHESIZED_WIRE_30,
		 E => SYNTHESIZED_WIRE_34);


b2v_inst9 : cmp16
PORT MAP(A => H,
		 E => SYNTHESIZED_WIRE_10);


END bdf_type;