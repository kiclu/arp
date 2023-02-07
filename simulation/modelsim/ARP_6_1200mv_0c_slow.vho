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

-- DATE "02/05/2023 17:13:32"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	reg16_ld_clr IS
    PORT (
	\OUT\ : OUT std_logic_vector(15 DOWNTO 0);
	LD : IN std_logic;
	CLK : IN std_logic;
	CLR : IN std_logic;
	\IN\ : IN std_logic_vector(15 DOWNTO 0)
	);
END reg16_ld_clr;

-- Design Ports Information
-- OUT[15]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT[14]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT[13]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT[12]	=>  Location: PIN_R18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT[11]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT[10]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT[9]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT[8]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT[7]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT[6]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT[5]	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT[4]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT[3]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT[2]	=>  Location: PIN_H9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT[1]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT[0]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LD	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLR	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN[15]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN[14]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN[13]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN[12]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN[11]	=>  Location: PIN_K19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN[10]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN[9]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN[8]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN[7]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN[6]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN[5]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN[4]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN[3]	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN[2]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN[1]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN[0]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF reg16_ld_clr IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \ww_OUT\ : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_LD : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_CLR : std_logic;
SIGNAL \ww_IN\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \LD~input_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLR~input_o\ : std_logic;
SIGNAL \IN[15]~input_o\ : std_logic;
SIGNAL \IN[14]~input_o\ : std_logic;
SIGNAL \IN[13]~input_o\ : std_logic;
SIGNAL \IN[12]~input_o\ : std_logic;
SIGNAL \IN[11]~input_o\ : std_logic;
SIGNAL \IN[10]~input_o\ : std_logic;
SIGNAL \IN[9]~input_o\ : std_logic;
SIGNAL \IN[8]~input_o\ : std_logic;
SIGNAL \IN[7]~input_o\ : std_logic;
SIGNAL \IN[6]~input_o\ : std_logic;
SIGNAL \IN[5]~input_o\ : std_logic;
SIGNAL \IN[4]~input_o\ : std_logic;
SIGNAL \IN[3]~input_o\ : std_logic;
SIGNAL \IN[2]~input_o\ : std_logic;
SIGNAL \IN[1]~input_o\ : std_logic;
SIGNAL \IN[0]~input_o\ : std_logic;
SIGNAL \OUT[15]~output_o\ : std_logic;
SIGNAL \OUT[14]~output_o\ : std_logic;
SIGNAL \OUT[13]~output_o\ : std_logic;
SIGNAL \OUT[12]~output_o\ : std_logic;
SIGNAL \OUT[11]~output_o\ : std_logic;
SIGNAL \OUT[10]~output_o\ : std_logic;
SIGNAL \OUT[9]~output_o\ : std_logic;
SIGNAL \OUT[8]~output_o\ : std_logic;
SIGNAL \OUT[7]~output_o\ : std_logic;
SIGNAL \OUT[6]~output_o\ : std_logic;
SIGNAL \OUT[5]~output_o\ : std_logic;
SIGNAL \OUT[4]~output_o\ : std_logic;
SIGNAL \OUT[3]~output_o\ : std_logic;
SIGNAL \OUT[2]~output_o\ : std_logic;
SIGNAL \OUT[1]~output_o\ : std_logic;
SIGNAL \OUT[0]~output_o\ : std_logic;

BEGIN

\OUT\ <= \ww_OUT\;
ww_LD <= LD;
ww_CLK <= CLK;
ww_CLR <= CLR;
\ww_IN\ <= \IN\;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X14_Y0_N9
\OUT[15]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \OUT[15]~output_o\);

-- Location: IOOBUF_X30_Y0_N2
\OUT[14]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \OUT[14]~output_o\);

-- Location: IOOBUF_X23_Y0_N30
\OUT[13]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \OUT[13]~output_o\);

-- Location: IOOBUF_X41_Y9_N23
\OUT[12]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \OUT[12]~output_o\);

-- Location: IOOBUF_X28_Y0_N23
\OUT[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \OUT[11]~output_o\);

-- Location: IOOBUF_X32_Y0_N23
\OUT[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \OUT[10]~output_o\);

-- Location: IOOBUF_X0_Y11_N16
\OUT[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \OUT[9]~output_o\);

-- Location: IOOBUF_X32_Y0_N16
\OUT[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \OUT[8]~output_o\);

-- Location: IOOBUF_X5_Y29_N30
\OUT[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \OUT[7]~output_o\);

-- Location: IOOBUF_X41_Y6_N2
\OUT[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \OUT[6]~output_o\);

-- Location: IOOBUF_X23_Y0_N2
\OUT[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \OUT[5]~output_o\);

-- Location: IOOBUF_X3_Y0_N16
\OUT[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \OUT[4]~output_o\);

-- Location: IOOBUF_X0_Y13_N16
\OUT[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \OUT[3]~output_o\);

-- Location: IOOBUF_X7_Y29_N2
\OUT[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \OUT[2]~output_o\);

-- Location: IOOBUF_X26_Y0_N23
\OUT[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \OUT[1]~output_o\);

-- Location: IOOBUF_X9_Y29_N9
\OUT[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \OUT[0]~output_o\);

-- Location: IOIBUF_X0_Y24_N22
\LD~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LD,
	o => \LD~input_o\);

-- Location: IOIBUF_X41_Y25_N1
\CLK~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: IOIBUF_X28_Y0_N29
\CLR~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLR,
	o => \CLR~input_o\);

-- Location: IOIBUF_X0_Y27_N22
\IN[15]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_IN\(15),
	o => \IN[15]~input_o\);

-- Location: IOIBUF_X0_Y13_N22
\IN[14]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_IN\(14),
	o => \IN[14]~input_o\);

-- Location: IOIBUF_X0_Y26_N8
\IN[13]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_IN\(13),
	o => \IN[13]~input_o\);

-- Location: IOIBUF_X0_Y2_N15
\IN[12]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_IN\(12),
	o => \IN[12]~input_o\);

-- Location: IOIBUF_X41_Y18_N1
\IN[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_IN\(11),
	o => \IN[11]~input_o\);

-- Location: IOIBUF_X0_Y25_N1
\IN[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_IN\(10),
	o => \IN[10]~input_o\);

-- Location: IOIBUF_X3_Y0_N1
\IN[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_IN\(9),
	o => \IN[9]~input_o\);

-- Location: IOIBUF_X30_Y29_N1
\IN[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_IN\(8),
	o => \IN[8]~input_o\);

-- Location: IOIBUF_X14_Y29_N8
\IN[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_IN\(7),
	o => \IN[7]~input_o\);

-- Location: IOIBUF_X37_Y0_N22
\IN[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_IN\(6),
	o => \IN[6]~input_o\);

-- Location: IOIBUF_X0_Y23_N1
\IN[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_IN\(5),
	o => \IN[5]~input_o\);

-- Location: IOIBUF_X0_Y23_N8
\IN[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_IN\(4),
	o => \IN[4]~input_o\);

-- Location: IOIBUF_X0_Y2_N22
\IN[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_IN\(3),
	o => \IN[3]~input_o\);

-- Location: IOIBUF_X0_Y22_N1
\IN[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_IN\(2),
	o => \IN[2]~input_o\);

-- Location: IOIBUF_X0_Y21_N15
\IN[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_IN\(1),
	o => \IN[1]~input_o\);

-- Location: IOIBUF_X41_Y3_N8
\IN[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_IN\(0),
	o => \IN[0]~input_o\);

\ww_OUT\(15) <= \OUT[15]~output_o\;

\ww_OUT\(14) <= \OUT[14]~output_o\;

\ww_OUT\(13) <= \OUT[13]~output_o\;

\ww_OUT\(12) <= \OUT[12]~output_o\;

\ww_OUT\(11) <= \OUT[11]~output_o\;

\ww_OUT\(10) <= \OUT[10]~output_o\;

\ww_OUT\(9) <= \OUT[9]~output_o\;

\ww_OUT\(8) <= \OUT[8]~output_o\;

\ww_OUT\(7) <= \OUT[7]~output_o\;

\ww_OUT\(6) <= \OUT[6]~output_o\;

\ww_OUT\(5) <= \OUT[5]~output_o\;

\ww_OUT\(4) <= \OUT[4]~output_o\;

\ww_OUT\(3) <= \OUT[3]~output_o\;

\ww_OUT\(2) <= \OUT[2]~output_o\;

\ww_OUT\(1) <= \OUT[1]~output_o\;

\ww_OUT\(0) <= \OUT[0]~output_o\;
END structure;


