onerror {quit -f}
vlib work
vlog -work work practicas.vo
vlog -work work practicas.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.rx_vlg_vec_tst
vcd file -direction practicas.msim.vcd
vcd add -internal rx_vlg_vec_tst/*
vcd add -internal rx_vlg_vec_tst/i1/*
add wave /*
run -all
