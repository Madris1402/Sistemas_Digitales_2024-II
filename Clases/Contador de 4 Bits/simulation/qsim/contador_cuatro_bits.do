onerror {quit -f}
vlib work
vlog -work work contador_cuatro_bits.vo
vlog -work work contador_cuatro_bits.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.contador_cuatro_bits_vlg_vec_tst
vcd file -direction contador_cuatro_bits.msim.vcd
vcd add -internal contador_cuatro_bits_vlg_vec_tst/*
vcd add -internal contador_cuatro_bits_vlg_vec_tst/i1/*
add wave /*
run -all
