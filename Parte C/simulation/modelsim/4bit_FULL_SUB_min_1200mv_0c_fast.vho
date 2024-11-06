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
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "11/03/2024 19:40:40"

-- 
-- Device: Altera EP3C120F780C7 Package FBGA780
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

ENTITY 	\4bit_FULL_SUB\ IS
    PORT (
	in_bin : IN std_logic;
	clk : IN std_logic;
	in_A0 : IN std_logic;
	in_B0 : IN std_logic;
	in_A1 : IN std_logic;
	in_B1 : IN std_logic;
	in_A2 : IN std_logic;
	in_B2 : IN std_logic;
	in_A3 : IN std_logic;
	in_B3 : IN std_logic;
	o_s3 : OUT std_logic;
	o_s2 : OUT std_logic;
	o_s1 : OUT std_logic;
	o_s0 : OUT std_logic;
	o_bout4 : OUT std_logic;
	Z : OUT std_logic
	);
END \4bit_FULL_SUB\;

-- Design Ports Information
-- o_s3	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_s2	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_s1	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_s0	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_bout4	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z	=>  Location: PIN_AF24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_AG14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_B3	=>  Location: PIN_AF25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_A3	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_B2	=>  Location: PIN_AG22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_A2	=>  Location: PIN_AE20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_B1	=>  Location: PIN_AC19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_B0	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_bin	=>  Location: PIN_AH23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_A0	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_A1	=>  Location: PIN_AF20,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF \4bit_FULL_SUB\ IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_in_bin : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_in_A0 : std_logic;
SIGNAL ww_in_B0 : std_logic;
SIGNAL ww_in_A1 : std_logic;
SIGNAL ww_in_B1 : std_logic;
SIGNAL ww_in_A2 : std_logic;
SIGNAL ww_in_B2 : std_logic;
SIGNAL ww_in_A3 : std_logic;
SIGNAL ww_in_B3 : std_logic;
SIGNAL ww_o_s3 : std_logic;
SIGNAL ww_o_s2 : std_logic;
SIGNAL ww_o_s1 : std_logic;
SIGNAL ww_o_s0 : std_logic;
SIGNAL ww_o_bout4 : std_logic;
SIGNAL ww_Z : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst7|Q~q\ : std_logic;
SIGNAL \b2v_inst3|o_s~0_combout\ : std_logic;
SIGNAL \in_A3~input_o\ : std_logic;
SIGNAL \o_s3~output_o\ : std_logic;
SIGNAL \o_s2~output_o\ : std_logic;
SIGNAL \o_s1~output_o\ : std_logic;
SIGNAL \o_s0~output_o\ : std_logic;
SIGNAL \o_bout4~output_o\ : std_logic;
SIGNAL \Z~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \in_B3~input_o\ : std_logic;
SIGNAL \b2v_inst11|Q~q\ : std_logic;
SIGNAL \in_A2~input_o\ : std_logic;
SIGNAL \b2v_inst6|Q~q\ : std_logic;
SIGNAL \in_B2~input_o\ : std_logic;
SIGNAL \b2v_inst10|Q~feeder_combout\ : std_logic;
SIGNAL \b2v_inst10|Q~q\ : std_logic;
SIGNAL \b2v_inst3|o_bout~0_combout\ : std_logic;
SIGNAL \b2v_inst3|o_bout~1_combout\ : std_logic;
SIGNAL \in_A1~input_o\ : std_logic;
SIGNAL \b2v_inst5|Q~q\ : std_logic;
SIGNAL \in_A0~input_o\ : std_logic;
SIGNAL \b2v_inst1|Q~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|Q~q\ : std_logic;
SIGNAL \in_B0~input_o\ : std_logic;
SIGNAL \b2v_inst8|Q~feeder_combout\ : std_logic;
SIGNAL \b2v_inst8|Q~q\ : std_logic;
SIGNAL \b2v_inst|o_bout~0_combout\ : std_logic;
SIGNAL \b2v_inst3|o_bout~2_combout\ : std_logic;
SIGNAL \b2v_inst4|o_s~0_combout\ : std_logic;
SIGNAL \b2v_inst14|Q~q\ : std_logic;
SIGNAL \in_B1~input_o\ : std_logic;
SIGNAL \b2v_inst9|Q~q\ : std_logic;
SIGNAL \b2v_inst3|o_s~1_combout\ : std_logic;
SIGNAL \b2v_inst15|Q~q\ : std_logic;
SIGNAL \b2v_inst2|o_s~0_combout\ : std_logic;
SIGNAL \b2v_inst16|Q~q\ : std_logic;
SIGNAL \in_bin~input_o\ : std_logic;
SIGNAL \b2v_inst12|Q~feeder_combout\ : std_logic;
SIGNAL \b2v_inst12|Q~q\ : std_logic;
SIGNAL \b2v_inst|o_s~0_combout\ : std_logic;
SIGNAL \b2v_inst17|Q~q\ : std_logic;
SIGNAL \b2v_inst4|o_bout~0_combout\ : std_logic;
SIGNAL \b2v_inst13|Q~q\ : std_logic;
SIGNAL \Z~0_combout\ : std_logic;
SIGNAL \ALT_INV_Z~0_combout\ : std_logic;

BEGIN

ww_in_bin <= in_bin;
ww_clk <= clk;
ww_in_A0 <= in_A0;
ww_in_B0 <= in_B0;
ww_in_A1 <= in_A1;
ww_in_B1 <= in_B1;
ww_in_A2 <= in_A2;
ww_in_B2 <= in_B2;
ww_in_A3 <= in_A3;
ww_in_B3 <= in_B3;
o_s3 <= ww_o_s3;
o_s2 <= ww_o_s2;
o_s1 <= ww_o_s1;
o_s0 <= ww_o_s0;
o_bout4 <= ww_o_bout4;
Z <= ww_Z;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_Z~0_combout\ <= NOT \Z~0_combout\;

-- Location: FF_X82_Y1_N19
\b2v_inst7|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_A3~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst7|Q~q\);

-- Location: LCCOMB_X82_Y1_N30
\b2v_inst3|o_s~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst3|o_s~0_combout\ = \b2v_inst6|Q~q\ $ (\b2v_inst10|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst6|Q~q\,
	datad => \b2v_inst10|Q~q\,
	combout => \b2v_inst3|o_s~0_combout\);

-- Location: IOIBUF_X67_Y0_N15
\in_A3~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_A3,
	o => \in_A3~input_o\);

-- Location: IOOBUF_X83_Y0_N16
\o_s3~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst14|Q~q\,
	devoe => ww_devoe,
	o => \o_s3~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\o_s2~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst15|Q~q\,
	devoe => ww_devoe,
	o => \o_s2~output_o\);

-- Location: IOOBUF_X74_Y0_N23
\o_s1~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst16|Q~q\,
	devoe => ww_devoe,
	o => \o_s1~output_o\);

-- Location: IOOBUF_X60_Y0_N9
\o_s0~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst17|Q~q\,
	devoe => ww_devoe,
	o => \o_s0~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\o_bout4~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst13|Q~q\,
	devoe => ww_devoe,
	o => \o_bout4~output_o\);

-- Location: IOOBUF_X83_Y0_N9
\Z~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Z~0_combout\,
	devoe => ww_devoe,
	o => \Z~output_o\);

-- Location: IOIBUF_X58_Y0_N22
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G18
\clk~inputclkctrl\ : cycloneiii_clkctrl
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

-- Location: IOIBUF_X83_Y0_N1
\in_B3~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_B3,
	o => \in_B3~input_o\);

-- Location: FF_X82_Y1_N21
\b2v_inst11|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_B3~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst11|Q~q\);

-- Location: IOIBUF_X85_Y0_N22
\in_A2~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_A2,
	o => \in_A2~input_o\);

-- Location: FF_X82_Y1_N3
\b2v_inst6|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_A2~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst6|Q~q\);

-- Location: IOIBUF_X79_Y0_N8
\in_B2~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_B2,
	o => \in_B2~input_o\);

-- Location: LCCOMB_X82_Y1_N8
\b2v_inst10|Q~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst10|Q~feeder_combout\ = \in_B2~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_B2~input_o\,
	combout => \b2v_inst10|Q~feeder_combout\);

-- Location: FF_X82_Y1_N9
\b2v_inst10|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b2v_inst10|Q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst10|Q~q\);

-- Location: LCCOMB_X82_Y1_N4
\b2v_inst3|o_bout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst3|o_bout~0_combout\ = (!\b2v_inst6|Q~q\ & \b2v_inst10|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst6|Q~q\,
	datad => \b2v_inst10|Q~q\,
	combout => \b2v_inst3|o_bout~0_combout\);

-- Location: LCCOMB_X82_Y1_N18
\b2v_inst3|o_bout~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst3|o_bout~1_combout\ = (\b2v_inst10|Q~q\) # (!\b2v_inst6|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst10|Q~q\,
	datad => \b2v_inst6|Q~q\,
	combout => \b2v_inst3|o_bout~1_combout\);

-- Location: IOIBUF_X85_Y0_N15
\in_A1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_A1,
	o => \in_A1~input_o\);

-- Location: FF_X82_Y1_N11
\b2v_inst5|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_A1~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst5|Q~q\);

-- Location: IOIBUF_X79_Y0_N15
\in_A0~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_A0,
	o => \in_A0~input_o\);

-- Location: LCCOMB_X82_Y1_N16
\b2v_inst1|Q~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst1|Q~feeder_combout\ = \in_A0~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_A0~input_o\,
	combout => \b2v_inst1|Q~feeder_combout\);

-- Location: FF_X82_Y1_N17
\b2v_inst1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b2v_inst1|Q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|Q~q\);

-- Location: IOIBUF_X85_Y0_N8
\in_B0~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_B0,
	o => \in_B0~input_o\);

-- Location: LCCOMB_X82_Y1_N12
\b2v_inst8|Q~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst8|Q~feeder_combout\ = \in_B0~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_B0~input_o\,
	combout => \b2v_inst8|Q~feeder_combout\);

-- Location: FF_X82_Y1_N13
\b2v_inst8|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b2v_inst8|Q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|Q~q\);

-- Location: LCCOMB_X82_Y1_N20
\b2v_inst|o_bout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|o_bout~0_combout\ = (\b2v_inst12|Q~q\ & ((\b2v_inst8|Q~q\) # (!\b2v_inst1|Q~q\))) # (!\b2v_inst12|Q~q\ & (!\b2v_inst1|Q~q\ & \b2v_inst8|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst12|Q~q\,
	datab => \b2v_inst1|Q~q\,
	datad => \b2v_inst8|Q~q\,
	combout => \b2v_inst|o_bout~0_combout\);

-- Location: LCCOMB_X82_Y1_N10
\b2v_inst3|o_bout~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst3|o_bout~2_combout\ = (\b2v_inst3|o_bout~1_combout\ & ((\b2v_inst9|Q~q\ & ((\b2v_inst|o_bout~0_combout\) # (!\b2v_inst5|Q~q\))) # (!\b2v_inst9|Q~q\ & (!\b2v_inst5|Q~q\ & \b2v_inst|o_bout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst9|Q~q\,
	datab => \b2v_inst3|o_bout~1_combout\,
	datac => \b2v_inst5|Q~q\,
	datad => \b2v_inst|o_bout~0_combout\,
	combout => \b2v_inst3|o_bout~2_combout\);

-- Location: LCCOMB_X82_Y1_N0
\b2v_inst4|o_s~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst4|o_s~0_combout\ = \b2v_inst7|Q~q\ $ (\b2v_inst11|Q~q\ $ (((\b2v_inst3|o_bout~0_combout\) # (\b2v_inst3|o_bout~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst7|Q~q\,
	datab => \b2v_inst11|Q~q\,
	datac => \b2v_inst3|o_bout~0_combout\,
	datad => \b2v_inst3|o_bout~2_combout\,
	combout => \b2v_inst4|o_s~0_combout\);

-- Location: FF_X82_Y1_N1
\b2v_inst14|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b2v_inst4|o_s~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst14|Q~q\);

-- Location: IOIBUF_X94_Y0_N8
\in_B1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_B1,
	o => \in_B1~input_o\);

-- Location: FF_X82_Y1_N31
\b2v_inst9|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_B1~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst9|Q~q\);

-- Location: LCCOMB_X82_Y1_N22
\b2v_inst3|o_s~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst3|o_s~1_combout\ = \b2v_inst3|o_s~0_combout\ $ (((\b2v_inst5|Q~q\ & (\b2v_inst9|Q~q\ & \b2v_inst|o_bout~0_combout\)) # (!\b2v_inst5|Q~q\ & ((\b2v_inst9|Q~q\) # (\b2v_inst|o_bout~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100110011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst3|o_s~0_combout\,
	datab => \b2v_inst5|Q~q\,
	datac => \b2v_inst9|Q~q\,
	datad => \b2v_inst|o_bout~0_combout\,
	combout => \b2v_inst3|o_s~1_combout\);

-- Location: FF_X82_Y1_N23
\b2v_inst15|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b2v_inst3|o_s~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst15|Q~q\);

-- Location: LCCOMB_X82_Y1_N24
\b2v_inst2|o_s~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst2|o_s~0_combout\ = \b2v_inst5|Q~q\ $ (\b2v_inst9|Q~q\ $ (\b2v_inst|o_bout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst5|Q~q\,
	datac => \b2v_inst9|Q~q\,
	datad => \b2v_inst|o_bout~0_combout\,
	combout => \b2v_inst2|o_s~0_combout\);

-- Location: FF_X82_Y1_N25
\b2v_inst16|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b2v_inst2|o_s~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst16|Q~q\);

-- Location: IOIBUF_X81_Y0_N15
\in_bin~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_bin,
	o => \in_bin~input_o\);

-- Location: LCCOMB_X82_Y1_N26
\b2v_inst12|Q~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst12|Q~feeder_combout\ = \in_bin~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_bin~input_o\,
	combout => \b2v_inst12|Q~feeder_combout\);

-- Location: FF_X82_Y1_N27
\b2v_inst12|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b2v_inst12|Q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst12|Q~q\);

-- Location: LCCOMB_X82_Y1_N14
\b2v_inst|o_s~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|o_s~0_combout\ = \b2v_inst1|Q~q\ $ (\b2v_inst8|Q~q\ $ (\b2v_inst12|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|Q~q\,
	datac => \b2v_inst8|Q~q\,
	datad => \b2v_inst12|Q~q\,
	combout => \b2v_inst|o_s~0_combout\);

-- Location: FF_X82_Y1_N15
\b2v_inst17|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b2v_inst|o_s~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst17|Q~q\);

-- Location: LCCOMB_X82_Y1_N28
\b2v_inst4|o_bout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst4|o_bout~0_combout\ = (\b2v_inst7|Q~q\ & (\b2v_inst11|Q~q\ & ((\b2v_inst3|o_bout~0_combout\) # (\b2v_inst3|o_bout~2_combout\)))) # (!\b2v_inst7|Q~q\ & ((\b2v_inst11|Q~q\) # ((\b2v_inst3|o_bout~0_combout\) # (\b2v_inst3|o_bout~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst7|Q~q\,
	datab => \b2v_inst11|Q~q\,
	datac => \b2v_inst3|o_bout~0_combout\,
	datad => \b2v_inst3|o_bout~2_combout\,
	combout => \b2v_inst4|o_bout~0_combout\);

-- Location: FF_X82_Y1_N29
\b2v_inst13|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b2v_inst4|o_bout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst13|Q~q\);

-- Location: LCCOMB_X82_Y1_N6
\Z~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Z~0_combout\ = (\b2v_inst16|Q~q\) # ((\b2v_inst17|Q~q\) # ((\b2v_inst15|Q~q\) # (\b2v_inst14|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst16|Q~q\,
	datab => \b2v_inst17|Q~q\,
	datac => \b2v_inst15|Q~q\,
	datad => \b2v_inst14|Q~q\,
	combout => \Z~0_combout\);

ww_o_s3 <= \o_s3~output_o\;

ww_o_s2 <= \o_s2~output_o\;

ww_o_s1 <= \o_s1~output_o\;

ww_o_s0 <= \o_s0~output_o\;

ww_o_bout4 <= \o_bout4~output_o\;

ww_Z <= \Z~output_o\;
END structure;


