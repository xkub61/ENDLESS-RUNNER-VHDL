transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/2022-2/Laboratorio SD/Trabalho final/LCD/lcd_driver_fsm/lcd_driver_fsm.vhd}

vcom -93 -work work {D:/2022-2/Laboratorio SD/Trabalho final/LCD/lcd_driver_fsm/tb_lcd_driver_fsm.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  tb_lcd_driver_fsm

add wave *
view structure
view signals
run 50 ns
