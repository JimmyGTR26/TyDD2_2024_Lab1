vlog -work work C:/Users/santi/OneDrive/Escritorio/Laboratorio 1/Parte B/simulation/modelsim/FULL_SUB.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.FULL_SUB_vlg_vec_tst
onerror {resume}
add wave {FULL_SUB_vlg_vec_tst/i1/clk}
add wave {FULL_SUB_vlg_vec_tst/i1/in_A}
add wave {FULL_SUB_vlg_vec_tst/i1/in_B}
add wave {FULL_SUB_vlg_vec_tst/i1/in_bin}
add wave {FULL_SUB_vlg_vec_tst/i1/o_bout}
add wave {FULL_SUB_vlg_vec_tst/i1/o_s}
run -all
