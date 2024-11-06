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

-- DATE "11/06/2024 19:11:40"

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

ENTITY 	I2C_Controller IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	SDA : IN std_logic;
	fin_dato : IN std_logic;
	fin_dir : IN std_logic;
	soy : IN std_logic;
	enable_dir : OUT std_logic;
	enable_data : OUT std_logic;
	ack : OUT std_logic
	);
END I2C_Controller;

-- Design Ports Information
-- enable_dir	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enable_data	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ack	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fin_dir	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fin_dato	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SDA	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- soy	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF I2C_Controller IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_SDA : std_logic;
SIGNAL ww_fin_dato : std_logic;
SIGNAL ww_fin_dir : std_logic;
SIGNAL ww_soy : std_logic;
SIGNAL ww_enable_dir : std_logic;
SIGNAL ww_enable_data : std_logic;
SIGNAL ww_ack : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \fin_dir~input_o\ : std_logic;
SIGNAL \enable_dir~output_o\ : std_logic;
SIGNAL \enable_data~output_o\ : std_logic;
SIGNAL \ack~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \fin_dato~input_o\ : std_logic;
SIGNAL \soy~input_o\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \SDA~input_o\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \Selector0~2_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \state.IDLE~q\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \state.START~q\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \state.SAVE_DIR~q\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \state.R_W~q\ : std_logic;
SIGNAL \state.ACK_STATE~feeder_combout\ : std_logic;
SIGNAL \state.ACK_STATE~q\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \state.SAVE_DATA~q\ : std_logic;
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_SDA <= SDA;
ww_fin_dato <= fin_dato;
ww_fin_dir <= fin_dir;
ww_soy <= soy;
enable_dir <= ww_enable_dir;
enable_data <= ww_enable_data;
ack <= ww_ack;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;

-- Location: IOIBUF_X0_Y69_N1
\fin_dir~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fin_dir,
	o => \fin_dir~input_o\);

-- Location: IOOBUF_X0_Y68_N2
\enable_dir~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \state.SAVE_DIR~q\,
	devoe => ww_devoe,
	o => \enable_dir~output_o\);

-- Location: IOOBUF_X0_Y66_N23
\enable_data~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \state.SAVE_DATA~q\,
	devoe => ww_devoe,
	o => \enable_data~output_o\);

-- Location: IOOBUF_X0_Y67_N16
\ack~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \state.ACK_STATE~q\,
	devoe => ww_devoe,
	o => \ack~output_o\);

-- Location: IOIBUF_X0_Y36_N1
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G4
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

-- Location: IOIBUF_X0_Y67_N22
\fin_dato~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fin_dato,
	o => \fin_dato~input_o\);

-- Location: IOIBUF_X0_Y68_N15
\soy~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_soy,
	o => \soy~input_o\);

-- Location: LCCOMB_X1_Y68_N26
\Selector0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector0~1_combout\ = (\fin_dir~input_o\ & (\state.SAVE_DIR~q\ & !\soy~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fin_dir~input_o\,
	datac => \state.SAVE_DIR~q\,
	datad => \soy~input_o\,
	combout => \Selector0~1_combout\);

-- Location: IOIBUF_X0_Y68_N8
\SDA~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SDA,
	o => \SDA~input_o\);

-- Location: LCCOMB_X1_Y68_N20
\Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\SDA~input_o\ & (!\state.IDLE~q\ & ((!\state.SAVE_DIR~q\) # (!\fin_dir~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fin_dir~input_o\,
	datab => \SDA~input_o\,
	datac => \state.SAVE_DIR~q\,
	datad => \state.IDLE~q\,
	combout => \Selector0~0_combout\);

-- Location: LCCOMB_X1_Y68_N18
\Selector0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector0~2_combout\ = (!\Selector0~1_combout\ & (!\Selector0~0_combout\ & ((!\fin_dato~input_o\) # (!\state.SAVE_DATA~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.SAVE_DATA~q\,
	datab => \fin_dato~input_o\,
	datac => \Selector0~1_combout\,
	datad => \Selector0~0_combout\,
	combout => \Selector0~2_combout\);

-- Location: IOIBUF_X0_Y36_N8
\reset~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: CLKCTRL_G2
\reset~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~inputclkctrl_outclk\);

-- Location: FF_X1_Y68_N19
\state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector0~2_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.IDLE~q\);

-- Location: LCCOMB_X1_Y68_N14
\Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (!\SDA~input_o\ & !\state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SDA~input_o\,
	datac => \state.IDLE~q\,
	combout => \Selector1~0_combout\);

-- Location: FF_X1_Y68_N15
\state.START\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector1~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.START~q\);

-- Location: LCCOMB_X1_Y68_N8
\Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\state.START~q\) # ((!\fin_dir~input_o\ & \state.SAVE_DIR~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fin_dir~input_o\,
	datab => \state.START~q\,
	datac => \state.SAVE_DIR~q\,
	combout => \Selector2~0_combout\);

-- Location: FF_X1_Y68_N9
\state.SAVE_DIR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector2~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.SAVE_DIR~q\);

-- Location: LCCOMB_X1_Y68_N28
\Selector3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\fin_dir~input_o\ & (\soy~input_o\ & \state.SAVE_DIR~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fin_dir~input_o\,
	datac => \soy~input_o\,
	datad => \state.SAVE_DIR~q\,
	combout => \Selector3~0_combout\);

-- Location: FF_X1_Y68_N29
\state.R_W\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector3~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.R_W~q\);

-- Location: LCCOMB_X1_Y68_N24
\state.ACK_STATE~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \state.ACK_STATE~feeder_combout\ = \state.R_W~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state.R_W~q\,
	combout => \state.ACK_STATE~feeder_combout\);

-- Location: FF_X1_Y68_N25
\state.ACK_STATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state.ACK_STATE~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.ACK_STATE~q\);

-- Location: LCCOMB_X1_Y68_N22
\Selector5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (\state.ACK_STATE~q\) # ((!\fin_dato~input_o\ & \state.SAVE_DATA~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fin_dato~input_o\,
	datac => \state.SAVE_DATA~q\,
	datad => \state.ACK_STATE~q\,
	combout => \Selector5~0_combout\);

-- Location: FF_X1_Y68_N23
\state.SAVE_DATA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector5~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.SAVE_DATA~q\);

ww_enable_dir <= \enable_dir~output_o\;

ww_enable_data <= \enable_data~output_o\;

ww_ack <= \ack~output_o\;
END structure;


