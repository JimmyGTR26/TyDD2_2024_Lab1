transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/santi/OneDrive/Escritorio/Laboratorio 1/Parte D/four_state_mealy_state_machine.vhd}
