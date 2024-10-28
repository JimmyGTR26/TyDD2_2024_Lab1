transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {Parte_A.vho}

vcom -93 -work work {C:/Users/santi/OneDrive/Escritorio/Laboratorio 1/Parte A/LED_function_testbench.vhd}

vsim -t 1ps -L altera -L cycloneiii -L gate_work -L work -voptargs="+acc"  LED_function_testbench

add wave *
view structure
view signals
run -all
