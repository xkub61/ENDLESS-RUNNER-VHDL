transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/2022-2/Laboratorio SD/Trabalho final/reg18bits/reg18bits.vhd}

vcom -93 -work work {D:/2022-2/Laboratorio SD/Trabalho final/reg18bits/tb_reg18bits.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  tb_reg18bits

add wave *
view structure
view signals
run 40 ns
