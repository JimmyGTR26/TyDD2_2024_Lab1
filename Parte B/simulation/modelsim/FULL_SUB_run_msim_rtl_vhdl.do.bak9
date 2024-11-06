transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/santi/OneDrive/Escritorio/Laboratorio 1/Parte B/D_FF.vhd}
vcom -93 -work work {C:/Users/santi/OneDrive/Escritorio/Laboratorio 1/Parte B/FULL_SUB.vhd}

vcom -93 -work work {C:/Users/santi/OneDrive/Escritorio/Laboratorio 1/Parte B/FULL_SUB_testbench.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneiii -L rtl_work -L work -voptargs="+acc"  FULL_SUB_testbench

add wave *
view structure
view signals
run -all
