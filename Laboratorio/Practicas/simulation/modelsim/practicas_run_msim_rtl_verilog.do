transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+D:/Escritorio/Sistemas_Digitales_2024-II/Laboratorio/Practicas {D:/Escritorio/Sistemas_Digitales_2024-II/Laboratorio/Practicas/contador.v}

