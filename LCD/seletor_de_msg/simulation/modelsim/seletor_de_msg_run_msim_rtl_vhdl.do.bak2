transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/2022-2/Laboratorio SD/Trabalho final/LCD/seletor_de_msg/seletor_de_msg.vhd}

vcom -93 -work work {D:/2022-2/Laboratorio SD/Trabalho final/LCD/seletor_de_msg/tb_seletor_de_msg.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  tb_seletor_de_msg

add wave *
view structure
view signals
run 80 ns
