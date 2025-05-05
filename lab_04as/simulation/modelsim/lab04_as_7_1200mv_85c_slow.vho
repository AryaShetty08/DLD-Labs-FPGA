-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 15.0.2 Build 153 07/15/2015 SJ Web Edition"

-- DATE "10/02/2024 12:36:03"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Game IS
    PORT (
	v : OUT std_logic;
	clk : IN std_logic;
	n : IN std_logic;
	s : IN std_logic;
	e : IN std_logic;
	w : IN std_logic;
	reset : IN std_logic;
	sw : OUT std_logic;
	s6 : OUT std_logic;
	s5 : OUT std_logic;
	s4 : OUT std_logic;
	s3 : OUT std_logic;
	s2 : OUT std_logic;
	s1 : OUT std_logic;
	win : OUT std_logic;
	s0 : OUT std_logic;
	d : OUT std_logic
	);
END Game;

-- Design Ports Information
-- v	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s6	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s5	=>  Location: PIN_AC2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s4	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s3	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s2	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s1	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- win	=>  Location: PIN_AD1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s0	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_AD3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w	=>  Location: PIN_AD2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e	=>  Location: PIN_AC3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n	=>  Location: PIN_AC1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s	=>  Location: PIN_U5,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Game IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_v : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_n : std_logic;
SIGNAL ww_s : std_logic;
SIGNAL ww_e : std_logic;
SIGNAL ww_w : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_sw : std_logic;
SIGNAL ww_s6 : std_logic;
SIGNAL ww_s5 : std_logic;
SIGNAL ww_s4 : std_logic;
SIGNAL ww_s3 : std_logic;
SIGNAL ww_s2 : std_logic;
SIGNAL ww_s1 : std_logic;
SIGNAL ww_win : std_logic;
SIGNAL ww_s0 : std_logic;
SIGNAL ww_d : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \v~output_o\ : std_logic;
SIGNAL \sw~output_o\ : std_logic;
SIGNAL \s6~output_o\ : std_logic;
SIGNAL \s5~output_o\ : std_logic;
SIGNAL \s4~output_o\ : std_logic;
SIGNAL \s3~output_o\ : std_logic;
SIGNAL \s2~output_o\ : std_logic;
SIGNAL \s1~output_o\ : std_logic;
SIGNAL \win~output_o\ : std_logic;
SIGNAL \s0~output_o\ : std_logic;
SIGNAL \d~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \w~input_o\ : std_logic;
SIGNAL \e~input_o\ : std_logic;
SIGNAL \s~input_o\ : std_logic;
SIGNAL \inst|inst2~combout\ : std_logic;
SIGNAL \inst|s_6~q\ : std_logic;
SIGNAL \n~input_o\ : std_logic;
SIGNAL \inst|inst1~0_combout\ : std_logic;
SIGNAL \inst|inst1~1_combout\ : std_logic;
SIGNAL \inst|s_5~q\ : std_logic;
SIGNAL \inst|inst10~0_combout\ : std_logic;
SIGNAL \inst|inst10~1_combout\ : std_logic;
SIGNAL \inst|s_4~q\ : std_logic;
SIGNAL \inst|inst11~combout\ : std_logic;
SIGNAL \inst|s_3~q\ : std_logic;
SIGNAL \inst2|inst10~0_combout\ : std_logic;
SIGNAL \inst2|S1~q\ : std_logic;
SIGNAL \inst|inst13~combout\ : std_logic;
SIGNAL \inst|s_2~q\ : std_logic;
SIGNAL \inst|inst15~combout\ : std_logic;
SIGNAL \inst|s_1~q\ : std_logic;
SIGNAL \inst|inst17~combout\ : std_logic;
SIGNAL \inst|s_0~q\ : std_logic;

BEGIN

v <= ww_v;
ww_clk <= clk;
ww_n <= n;
ww_s <= s;
ww_e <= e;
ww_w <= w;
ww_reset <= reset;
sw <= ww_sw;
s6 <= ww_s6;
s5 <= ww_s5;
s4 <= ww_s4;
s3 <= ww_s3;
s2 <= ww_s2;
s1 <= ww_s1;
win <= ww_win;
s0 <= ww_s0;
d <= ww_d;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

-- Location: IOOBUF_X0_Y27_N16
\v~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|S1~q\,
	devoe => ww_devoe,
	o => \v~output_o\);

-- Location: IOOBUF_X0_Y19_N9
\sw~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|s_3~q\,
	devoe => ww_devoe,
	o => \sw~output_o\);

-- Location: IOOBUF_X0_Y24_N16
\s6~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|s_6~q\,
	devoe => ww_devoe,
	o => \s6~output_o\);

-- Location: IOOBUF_X0_Y24_N23
\s5~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|s_5~q\,
	devoe => ww_devoe,
	o => \s5~output_o\);

-- Location: IOOBUF_X0_Y24_N9
\s4~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|s_4~q\,
	devoe => ww_devoe,
	o => \s4~output_o\);

-- Location: IOOBUF_X0_Y19_N2
\s3~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|s_3~q\,
	devoe => ww_devoe,
	o => \s3~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\s2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|s_2~q\,
	devoe => ww_devoe,
	o => \s2~output_o\);

-- Location: IOOBUF_X0_Y21_N23
\s1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|s_1~q\,
	devoe => ww_devoe,
	o => \s1~output_o\);

-- Location: IOOBUF_X0_Y21_N16
\win~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|s_1~q\,
	devoe => ww_devoe,
	o => \win~output_o\);

-- Location: IOOBUF_X0_Y25_N23
\s0~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|s_0~q\,
	devoe => ww_devoe,
	o => \s0~output_o\);

-- Location: IOOBUF_X0_Y25_N16
\d~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|s_0~q\,
	devoe => ww_devoe,
	o => \d~output_o\);

-- Location: IOIBUF_X0_Y36_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y22_N15
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: IOIBUF_X0_Y22_N22
\w~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w,
	o => \w~input_o\);

-- Location: IOIBUF_X0_Y23_N22
\e~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_e,
	o => \e~input_o\);

-- Location: IOIBUF_X0_Y24_N1
\s~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s,
	o => \s~input_o\);

-- Location: LCCOMB_X1_Y24_N8
\inst|inst2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2~combout\ = (\reset~input_o\) # ((\w~input_o\ & \inst|s_5~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w~input_o\,
	datac => \reset~input_o\,
	datad => \inst|s_5~q\,
	combout => \inst|inst2~combout\);

-- Location: FF_X1_Y24_N9
\inst|s_6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|inst2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_6~q\);

-- Location: IOIBUF_X0_Y23_N15
\n~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n,
	o => \n~input_o\);

-- Location: LCCOMB_X1_Y24_N28
\inst|inst1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1~0_combout\ = (\n~input_o\ & \inst|s_4~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \n~input_o\,
	datad => \inst|s_4~q\,
	combout => \inst|inst1~0_combout\);

-- Location: LCCOMB_X1_Y24_N10
\inst|inst1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1~1_combout\ = (!\reset~input_o\ & ((\inst|inst1~0_combout\) # ((\e~input_o\ & \inst|s_6~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \e~input_o\,
	datab => \inst|s_6~q\,
	datac => \reset~input_o\,
	datad => \inst|inst1~0_combout\,
	combout => \inst|inst1~1_combout\);

-- Location: FF_X1_Y24_N11
\inst|s_5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|inst1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_5~q\);

-- Location: LCCOMB_X1_Y24_N6
\inst|inst10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst10~0_combout\ = (\e~input_o\ & ((\inst|s_3~q\) # ((\s~input_o\ & \inst|s_5~q\)))) # (!\e~input_o\ & (\s~input_o\ & ((\inst|s_5~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \e~input_o\,
	datab => \s~input_o\,
	datac => \inst|s_3~q\,
	datad => \inst|s_5~q\,
	combout => \inst|inst10~0_combout\);

-- Location: LCCOMB_X1_Y24_N0
\inst|inst10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst10~1_combout\ = (!\reset~input_o\ & \inst|inst10~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \inst|inst10~0_combout\,
	combout => \inst|inst10~1_combout\);

-- Location: FF_X1_Y24_N1
\inst|s_4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|inst10~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_4~q\);

-- Location: LCCOMB_X1_Y24_N26
\inst|inst11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst11~combout\ = (\w~input_o\ & (!\reset~input_o\ & \inst|s_4~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w~input_o\,
	datac => \reset~input_o\,
	datad => \inst|s_4~q\,
	combout => \inst|inst11~combout\);

-- Location: FF_X1_Y24_N27
\inst|s_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|inst11~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_3~q\);

-- Location: LCCOMB_X1_Y24_N24
\inst2|inst10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst10~0_combout\ = (!\reset~input_o\ & ((\inst2|S1~q\) # (\inst|s_3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \inst2|S1~q\,
	datad => \inst|s_3~q\,
	combout => \inst2|inst10~0_combout\);

-- Location: FF_X1_Y24_N25
\inst2|S1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|inst10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|S1~q\);

-- Location: LCCOMB_X1_Y24_N30
\inst|inst13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst13~combout\ = (\e~input_o\ & (!\reset~input_o\ & \inst|s_4~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \e~input_o\,
	datac => \reset~input_o\,
	datad => \inst|s_4~q\,
	combout => \inst|inst13~combout\);

-- Location: FF_X1_Y24_N31
\inst|s_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|inst13~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_2~q\);

-- Location: LCCOMB_X1_Y24_N20
\inst|inst15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst15~combout\ = (!\reset~input_o\ & (\inst|s_2~q\ & \inst2|S1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \inst|s_2~q\,
	datad => \inst2|S1~q\,
	combout => \inst|inst15~combout\);

-- Location: FF_X1_Y24_N21
\inst|s_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|inst15~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_1~q\);

-- Location: LCCOMB_X1_Y24_N22
\inst|inst17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst17~combout\ = (!\reset~input_o\ & (\inst|s_2~q\ & !\inst2|S1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \inst|s_2~q\,
	datad => \inst2|S1~q\,
	combout => \inst|inst17~combout\);

-- Location: FF_X1_Y24_N23
\inst|s_0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|inst17~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_0~q\);

ww_v <= \v~output_o\;

ww_sw <= \sw~output_o\;

ww_s6 <= \s6~output_o\;

ww_s5 <= \s5~output_o\;

ww_s4 <= \s4~output_o\;

ww_s3 <= \s3~output_o\;

ww_s2 <= \s2~output_o\;

ww_s1 <= \s1~output_o\;

ww_win <= \win~output_o\;

ww_s0 <= \s0~output_o\;

ww_d <= \d~output_o\;
END structure;


