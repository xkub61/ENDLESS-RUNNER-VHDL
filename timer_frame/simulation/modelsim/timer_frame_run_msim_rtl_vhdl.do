transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/2022-2/Laboratorio SD/Trabalho final/timer_frame/timer_frame.vhd}

vcom -93 -work work {D:/2022-2/Laboratorio SD/Trabalho final/timer_frame/tb_timer_frame.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  tb_timer_frame

add wave *
view structure
view signals
run 33335 us
