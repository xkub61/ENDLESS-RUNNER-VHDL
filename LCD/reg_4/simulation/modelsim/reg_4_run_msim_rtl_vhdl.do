transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/2022-2/Laboratorio SD/Trabalho final/LCD/reg_4/cont_4.vhd}

vcom -93 -work work {D:/2022-2/Laboratorio SD/Trabalho final/LCD/reg_4/tb_reg_4.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  tb_reg_4

add wave *
view structure
view signals
run 60 ns
