onerror {quit -f}
vlib work
vlog -work work cascada_JK.vo
vlog -work work cascada_JK.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.flipflopJK_negedge_vlg_vec_tst
vcd file -direction cascada_JK.msim.vcd
vcd add -internal flipflopJK_negedge_vlg_vec_tst/*
vcd add -internal flipflopJK_negedge_vlg_vec_tst/i1/*
add wave /*
run -all
