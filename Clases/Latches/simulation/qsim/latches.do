onerror {quit -f}
vlib work
vlog -work work latches.vo
vlog -work work latches.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.latches_vlg_vec_tst
vcd file -direction latches.msim.vcd
vcd add -internal latches_vlg_vec_tst/*
vcd add -internal latches_vlg_vec_tst/i1/*
add wave /*
run -all
