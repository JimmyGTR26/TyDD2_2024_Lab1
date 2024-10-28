onerror {quit -f}
vlib work
vlog -work work Parte_A.vo
vlog -work work Parte_A.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.LED_function_vlg_vec_tst
vcd file -direction Parte_A.msim.vcd
vcd add -internal LED_function_vlg_vec_tst/*
vcd add -internal LED_function_vlg_vec_tst/i1/*
add wave /*
run -all
