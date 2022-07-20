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

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "07/20/2022 20:48:27"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	toplevel IS
    PORT (
	VGA_HS : OUT std_logic;
	CLK : IN std_logic;
	VGA_VS : OUT std_logic;
	VGA_B : OUT std_logic_vector(3 DOWNTO 0);
	VGA_G : OUT std_logic_vector(3 DOWNTO 0);
	VGA_R : OUT std_logic_vector(3 DOWNTO 0)
	);
END toplevel;

-- Design Ports Information
-- VGA_HS	=>  Location: PIN_L21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_VS	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[3]	=>  Location: PIN_K18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[2]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[1]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[0]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[3]	=>  Location: PIN_J21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[2]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[1]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[0]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[3]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[2]	=>  Location: PIN_H20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[1]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[0]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF toplevel IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_VGA_HS : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_VGA_VS : std_logic;
SIGNAL ww_VGA_B : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_VGA_G : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_VGA_R : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \VGA_HS~output_o\ : std_logic;
SIGNAL \VGA_VS~output_o\ : std_logic;
SIGNAL \VGA_B[3]~output_o\ : std_logic;
SIGNAL \VGA_B[2]~output_o\ : std_logic;
SIGNAL \VGA_B[1]~output_o\ : std_logic;
SIGNAL \VGA_B[0]~output_o\ : std_logic;
SIGNAL \VGA_G[3]~output_o\ : std_logic;
SIGNAL \VGA_G[2]~output_o\ : std_logic;
SIGNAL \VGA_G[1]~output_o\ : std_logic;
SIGNAL \VGA_G[0]~output_o\ : std_logic;
SIGNAL \VGA_R[3]~output_o\ : std_logic;
SIGNAL \VGA_R[2]~output_o\ : std_logic;
SIGNAL \VGA_R[1]~output_o\ : std_logic;
SIGNAL \VGA_R[0]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst|inst|inst5|inst10|inst~0_combout\ : std_logic;
SIGNAL \inst|inst|inst5|inst10|inst~q\ : std_logic;
SIGNAL \inst|inst|inst5|inst9|inst~0_combout\ : std_logic;
SIGNAL \inst|inst|inst5|inst9|inst~q\ : std_logic;
SIGNAL \inst|inst|inst5|inst9|inst12~combout\ : std_logic;
SIGNAL \inst|inst|inst5|inst11|inst~0_combout\ : std_logic;
SIGNAL \inst|inst|inst5|inst11|inst~q\ : std_logic;
SIGNAL \inst|inst|inst5|inst12|inst~0_combout\ : std_logic;
SIGNAL \inst|inst|inst5|inst12|inst~q\ : std_logic;
SIGNAL \inst|inst|inst8|inst2|inst22~2_combout\ : std_logic;
SIGNAL \inst|inst|inst8|inst2|inst22~0_combout\ : std_logic;
SIGNAL \inst|inst|inst5|inst13|inst~0_combout\ : std_logic;
SIGNAL \inst|inst|inst5|inst13|inst~q\ : std_logic;
SIGNAL \inst|inst|inst5|inst14|inst~0_combout\ : std_logic;
SIGNAL \inst|inst|inst5|inst14|inst~1_combout\ : std_logic;
SIGNAL \inst|inst|inst5|inst14|inst~q\ : std_logic;
SIGNAL \inst|inst|inst8|inst2|inst22~1_combout\ : std_logic;
SIGNAL \inst|inst|inst8|inst2|inst22~3_combout\ : std_logic;
SIGNAL \inst|inst|inst5|inst|inst~0_combout\ : std_logic;
SIGNAL \inst|inst|inst5|inst|inst~q\ : std_logic;
SIGNAL \inst|inst|inst5|inst5|inst~0_combout\ : std_logic;
SIGNAL \inst|inst|inst5|inst5|inst~q\ : std_logic;
SIGNAL \inst|inst|inst5|inst6|inst~0_combout\ : std_logic;
SIGNAL \inst|inst|inst5|inst6|inst~1_combout\ : std_logic;
SIGNAL \inst|inst|inst5|inst6|inst~q\ : std_logic;
SIGNAL \inst|inst|inst5|inst6|inst12~combout\ : std_logic;
SIGNAL \inst|inst|inst5|inst7|inst~0_combout\ : std_logic;
SIGNAL \inst|inst|inst5|inst7|inst~q\ : std_logic;
SIGNAL \inst|inst|inst5|inst7|inst12~0_combout\ : std_logic;
SIGNAL \inst|inst|inst5|inst7|inst12~combout\ : std_logic;
SIGNAL \inst|inst|inst5|inst8|inst~0_combout\ : std_logic;
SIGNAL \inst|inst|inst5|inst8|inst~q\ : std_logic;
SIGNAL \inst|inst|inst12~0_combout\ : std_logic;
SIGNAL \inst|inst|inst12~1_combout\ : std_logic;
SIGNAL \inst|inst|inst12~2_combout\ : std_logic;
SIGNAL \inst|inst|inst12~q\ : std_logic;
SIGNAL \inst|inst|inst27|inst5|inst~0_combout\ : std_logic;
SIGNAL \inst|inst|inst27|inst5|inst~q\ : std_logic;
SIGNAL \inst|inst|inst27|inst8|inst~0_combout\ : std_logic;
SIGNAL \inst|inst|inst27|inst8|inst~q\ : std_logic;
SIGNAL \inst|inst|inst19|inst2|inst22~1_combout\ : std_logic;
SIGNAL \inst|inst|inst27|inst10|inst~0_combout\ : std_logic;
SIGNAL \inst|inst|inst27|inst10|inst~q\ : std_logic;
SIGNAL \inst|inst|inst27|inst10|inst12~combout\ : std_logic;
SIGNAL \inst|inst|inst27|inst9|inst~0_combout\ : std_logic;
SIGNAL \inst|inst|inst27|inst9|inst~q\ : std_logic;
SIGNAL \inst|inst|inst27|inst11|inst~0_combout\ : std_logic;
SIGNAL \inst|inst|inst27|inst11|inst~q\ : std_logic;
SIGNAL \inst|inst|inst27|inst12|inst~0_combout\ : std_logic;
SIGNAL \inst|inst|inst27|inst12|inst~q\ : std_logic;
SIGNAL \inst|inst|inst27|inst13|inst~0_combout\ : std_logic;
SIGNAL \inst|inst|inst27|inst13|inst~1_combout\ : std_logic;
SIGNAL \inst|inst|inst27|inst13|inst~q\ : std_logic;
SIGNAL \inst|inst|inst19|inst2|inst22~0_combout\ : std_logic;
SIGNAL \inst|inst|inst19|inst2|inst22~combout\ : std_logic;
SIGNAL \inst|inst|inst27|inst|inst~0_combout\ : std_logic;
SIGNAL \inst|inst|inst27|inst|inst~q\ : std_logic;
SIGNAL \inst|inst|inst27|inst6|inst~0_combout\ : std_logic;
SIGNAL \inst|inst|inst27|inst6|inst~q\ : std_logic;
SIGNAL \inst|inst|inst27|inst6|inst12~0_combout\ : std_logic;
SIGNAL \inst|inst|inst27|inst6|inst12~combout\ : std_logic;
SIGNAL \inst|inst|inst27|inst7|inst~0_combout\ : std_logic;
SIGNAL \inst|inst|inst27|inst7|inst~q\ : std_logic;
SIGNAL \inst|inst|inst23~2_combout\ : std_logic;
SIGNAL \inst|inst|inst23~0_combout\ : std_logic;
SIGNAL \inst|inst|inst23~1_combout\ : std_logic;
SIGNAL \inst|inst|inst23~3_combout\ : std_logic;
SIGNAL \inst|inst|inst23~4_combout\ : std_logic;
SIGNAL \inst|inst|inst23~q\ : std_logic;
SIGNAL \inst|inst|ALT_INV_inst23~q\ : std_logic;
SIGNAL \inst|inst|ALT_INV_inst12~q\ : std_logic;

BEGIN

VGA_HS <= ww_VGA_HS;
ww_CLK <= CLK;
VGA_VS <= ww_VGA_VS;
VGA_B <= ww_VGA_B;
VGA_G <= ww_VGA_G;
VGA_R <= ww_VGA_R;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\inst|inst|ALT_INV_inst23~q\ <= NOT \inst|inst|inst23~q\;
\inst|inst|ALT_INV_inst12~q\ <= NOT \inst|inst|inst12~q\;

-- Location: IOOBUF_X41_Y18_N16
\VGA_HS~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst|ALT_INV_inst12~q\,
	devoe => ww_devoe,
	o => \VGA_HS~output_o\);

-- Location: IOOBUF_X41_Y18_N23
\VGA_VS~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst|ALT_INV_inst23~q\,
	devoe => ww_devoe,
	o => \VGA_VS~output_o\);

-- Location: IOOBUF_X41_Y21_N9
\VGA_B[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \VGA_B[3]~output_o\);

-- Location: IOOBUF_X41_Y19_N2
\VGA_B[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \VGA_B[2]~output_o\);

-- Location: IOOBUF_X41_Y19_N9
\VGA_B[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \VGA_B[1]~output_o\);

-- Location: IOOBUF_X41_Y19_N16
\VGA_B[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \VGA_B[0]~output_o\);

-- Location: IOOBUF_X41_Y20_N23
\VGA_G[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \VGA_G[3]~output_o\);

-- Location: IOOBUF_X41_Y21_N16
\VGA_G[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \VGA_G[2]~output_o\);

-- Location: IOOBUF_X41_Y24_N23
\VGA_G[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \VGA_G[1]~output_o\);

-- Location: IOOBUF_X41_Y20_N2
\VGA_G[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \VGA_G[0]~output_o\);

-- Location: IOOBUF_X41_Y21_N23
\VGA_R[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \VGA_R[3]~output_o\);

-- Location: IOOBUF_X41_Y22_N2
\VGA_R[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \VGA_R[2]~output_o\);

-- Location: IOOBUF_X41_Y25_N2
\VGA_R[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \VGA_R[1]~output_o\);

-- Location: IOOBUF_X41_Y23_N23
\VGA_R[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \VGA_R[0]~output_o\);

-- Location: IOIBUF_X41_Y15_N1
\CLK~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G9
\CLK~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: LCCOMB_X40_Y16_N22
\inst|inst|inst5|inst10|inst~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst|inst5|inst10|inst~0_combout\ = \inst|inst|inst5|inst10|inst~q\ $ (((\inst|inst|inst5|inst8|inst~q\ & (\inst|inst|inst5|inst6|inst12~combout\ & \inst|inst|inst5|inst7|inst~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|inst5|inst8|inst~q\,
	datab => \inst|inst|inst5|inst6|inst12~combout\,
	datac => \inst|inst|inst5|inst10|inst~q\,
	datad => \inst|inst|inst5|inst7|inst~q\,
	combout => \inst|inst|inst5|inst10|inst~0_combout\);

-- Location: FF_X40_Y16_N23
\inst|inst|inst5|inst10|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst|inst5|inst10|inst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|inst5|inst10|inst~q\);

-- Location: LCCOMB_X39_Y16_N8
\inst|inst|inst5|inst9|inst~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst|inst5|inst9|inst~0_combout\ = \inst|inst|inst5|inst9|inst~q\ $ (((\inst|inst|inst5|inst7|inst12~combout\ & (\inst|inst|inst5|inst8|inst~q\ & \inst|inst|inst5|inst10|inst~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|inst5|inst7|inst12~combout\,
	datab => \inst|inst|inst5|inst8|inst~q\,
	datac => \inst|inst|inst5|inst9|inst~q\,
	datad => \inst|inst|inst5|inst10|inst~q\,
	combout => \inst|inst|inst5|inst9|inst~0_combout\);

-- Location: FF_X39_Y16_N9
\inst|inst|inst5|inst9|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst|inst5|inst9|inst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|inst5|inst9|inst~q\);

-- Location: LCCOMB_X39_Y16_N14
\inst|inst|inst5|inst9|inst12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst|inst5|inst9|inst12~combout\ = (\inst|inst|inst5|inst8|inst~q\ & (\inst|inst|inst5|inst10|inst~q\ & (\inst|inst|inst5|inst9|inst~q\ & \inst|inst|inst5|inst7|inst12~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|inst5|inst8|inst~q\,
	datab => \inst|inst|inst5|inst10|inst~q\,
	datac => \inst|inst|inst5|inst9|inst~q\,
	datad => \inst|inst|inst5|inst7|inst12~combout\,
	combout => \inst|inst|inst5|inst9|inst12~combout\);

-- Location: LCCOMB_X39_Y16_N18
\inst|inst|inst5|inst11|inst~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst|inst5|inst11|inst~0_combout\ = \inst|inst|inst5|inst11|inst~q\ $ (\inst|inst|inst5|inst9|inst12~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst|inst5|inst11|inst~q\,
	datad => \inst|inst|inst5|inst9|inst12~combout\,
	combout => \inst|inst|inst5|inst11|inst~0_combout\);

-- Location: FF_X39_Y16_N19
\inst|inst|inst5|inst11|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst|inst5|inst11|inst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|inst5|inst11|inst~q\);

-- Location: LCCOMB_X39_Y16_N2
\inst|inst|inst5|inst12|inst~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst|inst5|inst12|inst~0_combout\ = \inst|inst|inst5|inst12|inst~q\ $ (((\inst|inst|inst5|inst11|inst~q\ & \inst|inst|inst5|inst9|inst12~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|inst5|inst11|inst~q\,
	datac => \inst|inst|inst5|inst12|inst~q\,
	datad => \inst|inst|inst5|inst9|inst12~combout\,
	combout => \inst|inst|inst5|inst12|inst~0_combout\);

-- Location: FF_X39_Y16_N3
\inst|inst|inst5|inst12|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst|inst5|inst12|inst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|inst5|inst12|inst~q\);

-- Location: LCCOMB_X39_Y16_N10
\inst|inst|inst8|inst2|inst22~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst|inst8|inst2|inst22~2_combout\ = (!\inst|inst|inst5|inst11|inst~q\ & (!\inst|inst|inst5|inst9|inst~q\ & !\inst|inst|inst5|inst12|inst~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|inst5|inst11|inst~q\,
	datac => \inst|inst|inst5|inst9|inst~q\,
	datad => \inst|inst|inst5|inst12|inst~q\,
	combout => \inst|inst|inst8|inst2|inst22~2_combout\);

-- Location: LCCOMB_X39_Y16_N16
\inst|inst|inst8|inst2|inst22~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst|inst8|inst2|inst22~0_combout\ = (\inst|inst|inst5|inst|inst~q\ & (\inst|inst|inst5|inst5|inst~q\ & (\inst|inst|inst5|inst6|inst~q\ & !\inst|inst|inst5|inst10|inst~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|inst5|inst|inst~q\,
	datab => \inst|inst|inst5|inst5|inst~q\,
	datac => \inst|inst|inst5|inst6|inst~q\,
	datad => \inst|inst|inst5|inst10|inst~q\,
	combout => \inst|inst|inst8|inst2|inst22~0_combout\);

-- Location: LCCOMB_X40_Y16_N4
\inst|inst|inst5|inst13|inst~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst|inst5|inst13|inst~0_combout\ = \inst|inst|inst5|inst13|inst~q\ $ (((\inst|inst|inst5|inst12|inst~q\ & (\inst|inst|inst5|inst11|inst~q\ & \inst|inst|inst5|inst9|inst12~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|inst5|inst12|inst~q\,
	datab => \inst|inst|inst5|inst11|inst~q\,
	datac => \inst|inst|inst5|inst13|inst~q\,
	datad => \inst|inst|inst5|inst9|inst12~combout\,
	combout => \inst|inst|inst5|inst13|inst~0_combout\);

-- Location: FF_X40_Y16_N5
\inst|inst|inst5|inst13|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst|inst5|inst13|inst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|inst5|inst13|inst~q\);

-- Location: LCCOMB_X39_Y16_N0
\inst|inst|inst5|inst14|inst~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst|inst5|inst14|inst~0_combout\ = (\inst|inst|inst5|inst12|inst~q\ & (\inst|inst|inst5|inst11|inst~q\ & (\inst|inst|inst5|inst9|inst12~combout\ & \inst|inst|inst5|inst13|inst~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|inst5|inst12|inst~q\,
	datab => \inst|inst|inst5|inst11|inst~q\,
	datac => \inst|inst|inst5|inst9|inst12~combout\,
	datad => \inst|inst|inst5|inst13|inst~q\,
	combout => \inst|inst|inst5|inst14|inst~0_combout\);

-- Location: LCCOMB_X39_Y16_N12
\inst|inst|inst5|inst14|inst~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst|inst5|inst14|inst~1_combout\ = (!\inst|inst|inst8|inst2|inst22~3_combout\ & (\inst|inst|inst5|inst14|inst~q\ $ (\inst|inst|inst5|inst14|inst~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|inst8|inst2|inst22~3_combout\,
	datac => \inst|inst|inst5|inst14|inst~q\,
	datad => \inst|inst|inst5|inst14|inst~0_combout\,
	combout => \inst|inst|inst5|inst14|inst~1_combout\);

-- Location: FF_X39_Y16_N13
\inst|inst|inst5|inst14|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst|inst5|inst14|inst~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|inst5|inst14|inst~q\);

-- Location: LCCOMB_X40_Y16_N2
\inst|inst|inst8|inst2|inst22~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst|inst8|inst2|inst22~1_combout\ = (!\inst|inst|inst5|inst13|inst~q\ & (!\inst|inst|inst5|inst8|inst~q\ & (\inst|inst|inst5|inst7|inst~q\ & \inst|inst|inst5|inst14|inst~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|inst5|inst13|inst~q\,
	datab => \inst|inst|inst5|inst8|inst~q\,
	datac => \inst|inst|inst5|inst7|inst~q\,
	datad => \inst|inst|inst5|inst14|inst~q\,
	combout => \inst|inst|inst8|inst2|inst22~1_combout\);

-- Location: LCCOMB_X39_Y16_N4
\inst|inst|inst8|inst2|inst22~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst|inst8|inst2|inst22~3_combout\ = (\inst|inst|inst8|inst2|inst22~0_combout\ & (\inst|inst|inst8|inst2|inst22~2_combout\ & \inst|inst|inst8|inst2|inst22~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|inst8|inst2|inst22~0_combout\,
	datac => \inst|inst|inst8|inst2|inst22~2_combout\,
	datad => \inst|inst|inst8|inst2|inst22~1_combout\,
	combout => \inst|inst|inst8|inst2|inst22~3_combout\);

-- Location: LCCOMB_X39_Y16_N6
\inst|inst|inst5|inst|inst~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst|inst5|inst|inst~0_combout\ = (\inst|inst|inst5|inst|inst~q\ & (!\inst|inst|inst8|inst2|inst22~3_combout\ & !\CLK~input_o\)) # (!\inst|inst|inst5|inst|inst~q\ & ((\CLK~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|inst8|inst2|inst22~3_combout\,
	datac => \inst|inst|inst5|inst|inst~q\,
	datad => \CLK~input_o\,
	combout => \inst|inst|inst5|inst|inst~0_combout\);

-- Location: FF_X39_Y16_N7
\inst|inst|inst5|inst|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst|inst5|inst|inst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|inst5|inst|inst~q\);

-- Location: LCCOMB_X39_Y16_N28
\inst|inst|inst5|inst5|inst~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst|inst5|inst5|inst~0_combout\ = (\inst|inst|inst5|inst5|inst~q\ & (!\inst|inst|inst8|inst2|inst22~3_combout\ & ((!\CLK~input_o\) # (!\inst|inst|inst5|inst|inst~q\)))) # (!\inst|inst|inst5|inst5|inst~q\ & (\inst|inst|inst5|inst|inst~q\ & 
-- ((\CLK~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|inst5|inst|inst~q\,
	datab => \inst|inst|inst8|inst2|inst22~3_combout\,
	datac => \inst|inst|inst5|inst5|inst~q\,
	datad => \CLK~input_o\,
	combout => \inst|inst|inst5|inst5|inst~0_combout\);

-- Location: FF_X39_Y16_N29
\inst|inst|inst5|inst5|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst|inst5|inst5|inst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|inst5|inst5|inst~q\);

-- Location: LCCOMB_X40_Y16_N28
\inst|inst|inst5|inst6|inst~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst|inst5|inst6|inst~0_combout\ = \inst|inst|inst5|inst6|inst~q\ $ (((\inst|inst|inst5|inst5|inst~q\ & (\inst|inst|inst5|inst|inst~q\ & \CLK~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|inst5|inst6|inst~q\,
	datab => \inst|inst|inst5|inst5|inst~q\,
	datac => \inst|inst|inst5|inst|inst~q\,
	datad => \CLK~input_o\,
	combout => \inst|inst|inst5|inst6|inst~0_combout\);

-- Location: LCCOMB_X40_Y16_N12
\inst|inst|inst5|inst6|inst~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst|inst5|inst6|inst~1_combout\ = (\inst|inst|inst5|inst6|inst~0_combout\ & (((!\inst|inst|inst8|inst2|inst22~1_combout\) # (!\inst|inst|inst8|inst2|inst22~0_combout\)) # (!\inst|inst|inst8|inst2|inst22~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|inst8|inst2|inst22~2_combout\,
	datab => \inst|inst|inst5|inst6|inst~0_combout\,
	datac => \inst|inst|inst8|inst2|inst22~0_combout\,
	datad => \inst|inst|inst8|inst2|inst22~1_combout\,
	combout => \inst|inst|inst5|inst6|inst~1_combout\);

-- Location: FF_X40_Y16_N13
\inst|inst|inst5|inst6|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst|inst5|inst6|inst~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|inst5|inst6|inst~q\);

-- Location: LCCOMB_X40_Y16_N26
\inst|inst|inst5|inst6|inst12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst|inst5|inst6|inst12~combout\ = (\inst|inst|inst5|inst6|inst~q\ & (\inst|inst|inst5|inst5|inst~q\ & (\inst|inst|inst5|inst|inst~q\ & \CLK~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|inst5|inst6|inst~q\,
	datab => \inst|inst|inst5|inst5|inst~q\,
	datac => \inst|inst|inst5|inst|inst~q\,
	datad => \CLK~input_o\,
	combout => \inst|inst|inst5|inst6|inst12~combout\);

-- Location: LCCOMB_X40_Y16_N30
\inst|inst|inst5|inst7|inst~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst|inst5|inst7|inst~0_combout\ = (!\inst|inst|inst8|inst2|inst22~3_combout\ & (\inst|inst|inst5|inst6|inst12~combout\ $ (\inst|inst|inst5|inst7|inst~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|inst5|inst6|inst12~combout\,
	datac => \inst|inst|inst5|inst7|inst~q\,
	datad => \inst|inst|inst8|inst2|inst22~3_combout\,
	combout => \inst|inst|inst5|inst7|inst~0_combout\);

-- Location: FF_X40_Y16_N31
\inst|inst|inst5|inst7|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst|inst5|inst7|inst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|inst5|inst7|inst~q\);

-- Location: LCCOMB_X40_Y16_N20
\inst|inst|inst5|inst7|inst12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst|inst5|inst7|inst12~0_combout\ = (\inst|inst|inst5|inst|inst~q\ & \inst|inst|inst5|inst5|inst~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst|inst5|inst|inst~q\,
	datad => \inst|inst|inst5|inst5|inst~q\,
	combout => \inst|inst|inst5|inst7|inst12~0_combout\);

-- Location: LCCOMB_X39_Y16_N20
\inst|inst|inst5|inst7|inst12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst|inst5|inst7|inst12~combout\ = (\inst|inst|inst5|inst7|inst~q\ & (\inst|inst|inst5|inst6|inst~q\ & (\inst|inst|inst5|inst7|inst12~0_combout\ & \CLK~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|inst5|inst7|inst~q\,
	datab => \inst|inst|inst5|inst6|inst~q\,
	datac => \inst|inst|inst5|inst7|inst12~0_combout\,
	datad => \CLK~input_o\,
	combout => \inst|inst|inst5|inst7|inst12~combout\);

-- Location: LCCOMB_X40_Y16_N14
\inst|inst|inst5|inst8|inst~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst|inst5|inst8|inst~0_combout\ = \inst|inst|inst5|inst7|inst12~combout\ $ (((\inst|inst|inst5|inst8|inst~q\ & !\inst|inst|inst8|inst2|inst22~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|inst5|inst7|inst12~combout\,
	datac => \inst|inst|inst5|inst8|inst~q\,
	datad => \inst|inst|inst8|inst2|inst22~3_combout\,
	combout => \inst|inst|inst5|inst8|inst~0_combout\);

-- Location: FF_X40_Y16_N15
\inst|inst|inst5|inst8|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst|inst5|inst8|inst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|inst5|inst8|inst~q\);

-- Location: LCCOMB_X40_Y16_N18
\inst|inst|inst12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst|inst12~0_combout\ = (!\inst|inst|inst5|inst14|inst~q\ & (\inst|inst|inst5|inst13|inst~q\ & (\inst|inst|inst12~q\ $ (!\inst|inst|inst5|inst11|inst~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|inst12~q\,
	datab => \inst|inst|inst5|inst14|inst~q\,
	datac => \inst|inst|inst5|inst13|inst~q\,
	datad => \inst|inst|inst5|inst11|inst~q\,
	combout => \inst|inst|inst12~0_combout\);

-- Location: LCCOMB_X40_Y16_N16
\inst|inst|inst12~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst|inst12~1_combout\ = (\inst|inst|inst8|inst2|inst22~0_combout\ & (\inst|inst|inst12~0_combout\ & (\inst|inst|inst5|inst12|inst~q\ & \inst|inst|inst5|inst9|inst~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|inst8|inst2|inst22~0_combout\,
	datab => \inst|inst|inst12~0_combout\,
	datac => \inst|inst|inst5|inst12|inst~q\,
	datad => \inst|inst|inst5|inst9|inst~q\,
	combout => \inst|inst|inst12~1_combout\);

-- Location: LCCOMB_X40_Y16_N24
\inst|inst|inst12~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst|inst12~2_combout\ = (\inst|inst|inst5|inst8|inst~q\ & ((\inst|inst|inst12~q\) # ((\inst|inst|inst12~1_combout\ & !\inst|inst|inst5|inst7|inst~q\)))) # (!\inst|inst|inst5|inst8|inst~q\ & (\inst|inst|inst12~q\ & ((!\inst|inst|inst5|inst7|inst~q\) 
-- # (!\inst|inst|inst12~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|inst5|inst8|inst~q\,
	datab => \inst|inst|inst12~1_combout\,
	datac => \inst|inst|inst12~q\,
	datad => \inst|inst|inst5|inst7|inst~q\,
	combout => \inst|inst|inst12~2_combout\);

-- Location: FF_X40_Y16_N25
\inst|inst|inst12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst|inst12~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|inst12~q\);

-- Location: LCCOMB_X38_Y16_N20
\inst|inst|inst27|inst5|inst~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst|inst27|inst5|inst~0_combout\ = (\inst|inst|inst27|inst|inst~q\ & (\inst|inst|inst8|inst2|inst22~3_combout\ $ (((!\inst|inst|inst19|inst2|inst22~combout\ & \inst|inst|inst27|inst5|inst~q\))))) # (!\inst|inst|inst27|inst|inst~q\ & 
-- (!\inst|inst|inst19|inst2|inst22~combout\ & (\inst|inst|inst27|inst5|inst~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|inst27|inst|inst~q\,
	datab => \inst|inst|inst19|inst2|inst22~combout\,
	datac => \inst|inst|inst27|inst5|inst~q\,
	datad => \inst|inst|inst8|inst2|inst22~3_combout\,
	combout => \inst|inst|inst27|inst5|inst~0_combout\);

-- Location: FF_X38_Y16_N21
\inst|inst|inst27|inst5|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst|inst27|inst5|inst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|inst27|inst5|inst~q\);

-- Location: LCCOMB_X38_Y16_N2
\inst|inst|inst27|inst8|inst~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst|inst27|inst8|inst~0_combout\ = (!\inst|inst|inst19|inst2|inst22~combout\ & (\inst|inst|inst27|inst8|inst~q\ $ (((\inst|inst|inst27|inst7|inst~q\ & \inst|inst|inst27|inst6|inst12~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|inst27|inst7|inst~q\,
	datab => \inst|inst|inst27|inst6|inst12~combout\,
	datac => \inst|inst|inst27|inst8|inst~q\,
	datad => \inst|inst|inst19|inst2|inst22~combout\,
	combout => \inst|inst|inst27|inst8|inst~0_combout\);

-- Location: FF_X38_Y16_N3
\inst|inst|inst27|inst8|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst|inst27|inst8|inst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|inst27|inst8|inst~q\);

-- Location: LCCOMB_X37_Y16_N0
\inst|inst|inst19|inst2|inst22~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst|inst19|inst2|inst22~1_combout\ = (!\inst|inst|inst27|inst5|inst~q\ & (\inst|inst|inst27|inst7|inst~q\ & (\inst|inst|inst27|inst|inst~q\ & \inst|inst|inst27|inst8|inst~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|inst27|inst5|inst~q\,
	datab => \inst|inst|inst27|inst7|inst~q\,
	datac => \inst|inst|inst27|inst|inst~q\,
	datad => \inst|inst|inst27|inst8|inst~q\,
	combout => \inst|inst|inst19|inst2|inst22~1_combout\);

-- Location: LCCOMB_X38_Y16_N26
\inst|inst|inst27|inst10|inst~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst|inst27|inst10|inst~0_combout\ = \inst|inst|inst27|inst10|inst~q\ $ (((\inst|inst|inst27|inst8|inst~q\ & (\inst|inst|inst27|inst7|inst~q\ & \inst|inst|inst27|inst6|inst12~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|inst27|inst8|inst~q\,
	datab => \inst|inst|inst27|inst7|inst~q\,
	datac => \inst|inst|inst27|inst10|inst~q\,
	datad => \inst|inst|inst27|inst6|inst12~combout\,
	combout => \inst|inst|inst27|inst10|inst~0_combout\);

-- Location: FF_X38_Y16_N27
\inst|inst|inst27|inst10|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst|inst27|inst10|inst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|inst27|inst10|inst~q\);

-- Location: LCCOMB_X39_Y16_N22
\inst|inst|inst27|inst10|inst12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst|inst27|inst10|inst12~combout\ = (\inst|inst|inst27|inst8|inst~q\ & (\inst|inst|inst27|inst7|inst~q\ & (\inst|inst|inst27|inst10|inst~q\ & \inst|inst|inst27|inst6|inst12~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|inst27|inst8|inst~q\,
	datab => \inst|inst|inst27|inst7|inst~q\,
	datac => \inst|inst|inst27|inst10|inst~q\,
	datad => \inst|inst|inst27|inst6|inst12~combout\,
	combout => \inst|inst|inst27|inst10|inst12~combout\);

-- Location: LCCOMB_X38_Y16_N8
\inst|inst|inst27|inst9|inst~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst|inst27|inst9|inst~0_combout\ = \inst|inst|inst27|inst9|inst~q\ $ (\inst|inst|inst27|inst10|inst12~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst|inst27|inst9|inst~q\,
	datad => \inst|inst|inst27|inst10|inst12~combout\,
	combout => \inst|inst|inst27|inst9|inst~0_combout\);

-- Location: FF_X38_Y16_N9
\inst|inst|inst27|inst9|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst|inst27|inst9|inst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|inst27|inst9|inst~q\);

-- Location: LCCOMB_X38_Y16_N12
\inst|inst|inst27|inst11|inst~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst|inst27|inst11|inst~0_combout\ = (!\inst|inst|inst19|inst2|inst22~combout\ & (\inst|inst|inst27|inst11|inst~q\ $ (((\inst|inst|inst27|inst9|inst~q\ & \inst|inst|inst27|inst10|inst12~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|inst27|inst9|inst~q\,
	datab => \inst|inst|inst19|inst2|inst22~combout\,
	datac => \inst|inst|inst27|inst11|inst~q\,
	datad => \inst|inst|inst27|inst10|inst12~combout\,
	combout => \inst|inst|inst27|inst11|inst~0_combout\);

-- Location: FF_X38_Y16_N13
\inst|inst|inst27|inst11|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst|inst27|inst11|inst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|inst27|inst11|inst~q\);

-- Location: LCCOMB_X38_Y16_N14
\inst|inst|inst27|inst12|inst~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst|inst27|inst12|inst~0_combout\ = \inst|inst|inst27|inst12|inst~q\ $ (((\inst|inst|inst27|inst11|inst~q\ & (\inst|inst|inst27|inst9|inst~q\ & \inst|inst|inst27|inst10|inst12~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|inst27|inst11|inst~q\,
	datab => \inst|inst|inst27|inst9|inst~q\,
	datac => \inst|inst|inst27|inst12|inst~q\,
	datad => \inst|inst|inst27|inst10|inst12~combout\,
	combout => \inst|inst|inst27|inst12|inst~0_combout\);

-- Location: FF_X38_Y16_N15
\inst|inst|inst27|inst12|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst|inst27|inst12|inst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|inst27|inst12|inst~q\);

-- Location: LCCOMB_X38_Y16_N10
\inst|inst|inst27|inst13|inst~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst|inst27|inst13|inst~0_combout\ = (\inst|inst|inst27|inst11|inst~q\ & (\inst|inst|inst27|inst12|inst~q\ & (\inst|inst|inst27|inst9|inst~q\ & \inst|inst|inst27|inst10|inst12~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|inst27|inst11|inst~q\,
	datab => \inst|inst|inst27|inst12|inst~q\,
	datac => \inst|inst|inst27|inst9|inst~q\,
	datad => \inst|inst|inst27|inst10|inst12~combout\,
	combout => \inst|inst|inst27|inst13|inst~0_combout\);

-- Location: LCCOMB_X38_Y16_N22
\inst|inst|inst27|inst13|inst~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst|inst27|inst13|inst~1_combout\ = (!\inst|inst|inst19|inst2|inst22~combout\ & (\inst|inst|inst27|inst13|inst~q\ $ (\inst|inst|inst27|inst13|inst~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|inst19|inst2|inst22~combout\,
	datac => \inst|inst|inst27|inst13|inst~q\,
	datad => \inst|inst|inst27|inst13|inst~0_combout\,
	combout => \inst|inst|inst27|inst13|inst~1_combout\);

-- Location: FF_X38_Y16_N23
\inst|inst|inst27|inst13|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst|inst27|inst13|inst~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|inst27|inst13|inst~q\);

-- Location: LCCOMB_X38_Y16_N18
\inst|inst|inst19|inst2|inst22~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst|inst19|inst2|inst22~0_combout\ = (\inst|inst|inst27|inst13|inst~q\ & (!\inst|inst|inst27|inst12|inst~q\ & (!\inst|inst|inst27|inst9|inst~q\ & \inst|inst|inst27|inst11|inst~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|inst27|inst13|inst~q\,
	datab => \inst|inst|inst27|inst12|inst~q\,
	datac => \inst|inst|inst27|inst9|inst~q\,
	datad => \inst|inst|inst27|inst11|inst~q\,
	combout => \inst|inst|inst19|inst2|inst22~0_combout\);

-- Location: LCCOMB_X37_Y16_N6
\inst|inst|inst19|inst2|inst22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst|inst19|inst2|inst22~combout\ = (!\inst|inst|inst27|inst6|inst~q\ & (\inst|inst|inst19|inst2|inst22~1_combout\ & (!\inst|inst|inst27|inst10|inst~q\ & \inst|inst|inst19|inst2|inst22~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|inst27|inst6|inst~q\,
	datab => \inst|inst|inst19|inst2|inst22~1_combout\,
	datac => \inst|inst|inst27|inst10|inst~q\,
	datad => \inst|inst|inst19|inst2|inst22~0_combout\,
	combout => \inst|inst|inst19|inst2|inst22~combout\);

-- Location: LCCOMB_X38_Y16_N6
\inst|inst|inst27|inst|inst~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst|inst27|inst|inst~0_combout\ = (!\inst|inst|inst19|inst2|inst22~combout\ & (\inst|inst|inst27|inst|inst~q\ $ (\inst|inst|inst8|inst2|inst22~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|inst19|inst2|inst22~combout\,
	datac => \inst|inst|inst27|inst|inst~q\,
	datad => \inst|inst|inst8|inst2|inst22~3_combout\,
	combout => \inst|inst|inst27|inst|inst~0_combout\);

-- Location: FF_X38_Y16_N7
\inst|inst|inst27|inst|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst|inst27|inst|inst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|inst27|inst|inst~q\);

-- Location: LCCOMB_X39_Y16_N26
\inst|inst|inst27|inst6|inst~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst|inst27|inst6|inst~0_combout\ = \inst|inst|inst27|inst6|inst~q\ $ (((\inst|inst|inst27|inst|inst~q\ & (\inst|inst|inst8|inst2|inst22~3_combout\ & \inst|inst|inst27|inst5|inst~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|inst27|inst|inst~q\,
	datab => \inst|inst|inst8|inst2|inst22~3_combout\,
	datac => \inst|inst|inst27|inst6|inst~q\,
	datad => \inst|inst|inst27|inst5|inst~q\,
	combout => \inst|inst|inst27|inst6|inst~0_combout\);

-- Location: FF_X39_Y16_N27
\inst|inst|inst27|inst6|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst|inst27|inst6|inst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|inst27|inst6|inst~q\);

-- Location: LCCOMB_X39_Y16_N30
\inst|inst|inst27|inst6|inst12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst|inst27|inst6|inst12~0_combout\ = (\inst|inst|inst27|inst6|inst~q\ & (\inst|inst|inst27|inst|inst~q\ & \inst|inst|inst27|inst5|inst~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|inst27|inst6|inst~q\,
	datac => \inst|inst|inst27|inst|inst~q\,
	datad => \inst|inst|inst27|inst5|inst~q\,
	combout => \inst|inst|inst27|inst6|inst12~0_combout\);

-- Location: LCCOMB_X39_Y16_N24
\inst|inst|inst27|inst6|inst12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst|inst27|inst6|inst12~combout\ = (\inst|inst|inst8|inst2|inst22~2_combout\ & (\inst|inst|inst8|inst2|inst22~0_combout\ & (\inst|inst|inst27|inst6|inst12~0_combout\ & \inst|inst|inst8|inst2|inst22~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|inst8|inst2|inst22~2_combout\,
	datab => \inst|inst|inst8|inst2|inst22~0_combout\,
	datac => \inst|inst|inst27|inst6|inst12~0_combout\,
	datad => \inst|inst|inst8|inst2|inst22~1_combout\,
	combout => \inst|inst|inst27|inst6|inst12~combout\);

-- Location: LCCOMB_X38_Y16_N24
\inst|inst|inst27|inst7|inst~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst|inst27|inst7|inst~0_combout\ = (!\inst|inst|inst19|inst2|inst22~combout\ & (\inst|inst|inst27|inst6|inst12~combout\ $ (\inst|inst|inst27|inst7|inst~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|inst27|inst6|inst12~combout\,
	datac => \inst|inst|inst27|inst7|inst~q\,
	datad => \inst|inst|inst19|inst2|inst22~combout\,
	combout => \inst|inst|inst27|inst7|inst~0_combout\);

-- Location: FF_X38_Y16_N25
\inst|inst|inst27|inst7|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst|inst27|inst7|inst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|inst27|inst7|inst~q\);

-- Location: LCCOMB_X38_Y16_N30
\inst|inst|inst23~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst|inst23~2_combout\ = (\inst|inst|inst27|inst5|inst~q\ & (!\inst|inst|inst27|inst10|inst~q\ & (!\inst|inst|inst27|inst8|inst~q\ & \inst|inst|inst23~q\))) # (!\inst|inst|inst27|inst5|inst~q\ & (((\inst|inst|inst27|inst8|inst~q\ & 
-- !\inst|inst|inst23~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|inst27|inst10|inst~q\,
	datab => \inst|inst|inst27|inst5|inst~q\,
	datac => \inst|inst|inst27|inst8|inst~q\,
	datad => \inst|inst|inst23~q\,
	combout => \inst|inst|inst23~2_combout\);

-- Location: LCCOMB_X38_Y16_N4
\inst|inst|inst23~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst|inst23~0_combout\ = (\inst|inst|inst27|inst13|inst~q\ & (\inst|inst|inst27|inst9|inst~q\ & (!\inst|inst|inst27|inst12|inst~q\ & \inst|inst|inst27|inst10|inst~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|inst27|inst13|inst~q\,
	datab => \inst|inst|inst27|inst9|inst~q\,
	datac => \inst|inst|inst27|inst12|inst~q\,
	datad => \inst|inst|inst27|inst10|inst~q\,
	combout => \inst|inst|inst23~0_combout\);

-- Location: LCCOMB_X38_Y16_N28
\inst|inst|inst23~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst|inst23~1_combout\ = (\inst|inst|inst27|inst|inst~q\ & (((!\inst|inst|inst27|inst7|inst~q\)))) # (!\inst|inst|inst27|inst|inst~q\ & (\inst|inst|inst27|inst6|inst~q\ & ((!\inst|inst|inst27|inst7|inst~q\) # (!\inst|inst|inst27|inst11|inst~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|inst27|inst11|inst~q\,
	datab => \inst|inst|inst27|inst7|inst~q\,
	datac => \inst|inst|inst27|inst6|inst~q\,
	datad => \inst|inst|inst27|inst|inst~q\,
	combout => \inst|inst|inst23~1_combout\);

-- Location: LCCOMB_X38_Y16_N16
\inst|inst|inst23~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst|inst23~3_combout\ = (\inst|inst|inst23~2_combout\ & ((\inst|inst|inst23~q\ & ((!\inst|inst|inst23~1_combout\))) # (!\inst|inst|inst23~q\ & (\inst|inst|inst23~0_combout\ & \inst|inst|inst23~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|inst23~2_combout\,
	datab => \inst|inst|inst23~q\,
	datac => \inst|inst|inst23~0_combout\,
	datad => \inst|inst|inst23~1_combout\,
	combout => \inst|inst|inst23~3_combout\);

-- Location: LCCOMB_X38_Y16_N0
\inst|inst|inst23~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst|inst23~4_combout\ = (\inst|inst|inst23~3_combout\ & ((\inst|inst|inst27|inst7|inst~q\) # ((!\inst|inst|inst19|inst2|inst22~0_combout\ & \inst|inst|inst23~q\)))) # (!\inst|inst|inst23~3_combout\ & (((\inst|inst|inst23~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|inst27|inst7|inst~q\,
	datab => \inst|inst|inst19|inst2|inst22~0_combout\,
	datac => \inst|inst|inst23~q\,
	datad => \inst|inst|inst23~3_combout\,
	combout => \inst|inst|inst23~4_combout\);

-- Location: FF_X38_Y16_N1
\inst|inst|inst23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst|inst23~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|inst23~q\);

ww_VGA_HS <= \VGA_HS~output_o\;

ww_VGA_VS <= \VGA_VS~output_o\;

ww_VGA_B(3) <= \VGA_B[3]~output_o\;

ww_VGA_B(2) <= \VGA_B[2]~output_o\;

ww_VGA_B(1) <= \VGA_B[1]~output_o\;

ww_VGA_B(0) <= \VGA_B[0]~output_o\;

ww_VGA_G(3) <= \VGA_G[3]~output_o\;

ww_VGA_G(2) <= \VGA_G[2]~output_o\;

ww_VGA_G(1) <= \VGA_G[1]~output_o\;

ww_VGA_G(0) <= \VGA_G[0]~output_o\;

ww_VGA_R(3) <= \VGA_R[3]~output_o\;

ww_VGA_R(2) <= \VGA_R[2]~output_o\;

ww_VGA_R(1) <= \VGA_R[1]~output_o\;

ww_VGA_R(0) <= \VGA_R[0]~output_o\;
END structure;


