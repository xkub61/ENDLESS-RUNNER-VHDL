transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/2022-2/Laboratorio SD/Trabalho final/gerar_obst_aleatorio/reg18bits.vhd}
vcom -93 -work work {D:/2022-2/Laboratorio SD/Trabalho final/gerar_obst_aleatorio/Contador_2_bits.vhd}
vcom -93 -work work {D:/2022-2/Laboratorio SD/Trabalho final/gerar_obst_aleatorio/sr18bits_dual.vhd}
vcom -93 -work work {D:/2022-2/Laboratorio SD/Trabalho final/gerar_obst_aleatorio/lfsr.vhd}
vcom -93 -work work {D:/2022-2/Laboratorio SD/Trabalho final/gerar_obst_aleatorio/gerar_obst_aleatorio.vhd}

vcom -93 -work work {D:/2022-2/Laboratorio SD/Trabalho final/gerar_obst_aleatorio/tb_gerar_obst_aleatorio.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  tb_gerar_obst_aleatorio

add wave *
view structure
view signals
run 20 ns
