transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/2022-2/Laboratorio SD/Trabalho final/GAME/display_7_seg.vhd}
vcom -93 -work work {D:/2022-2/Laboratorio SD/Trabalho final/GAME/Bcd_7seg.vhd}
vcom -93 -work work {D:/2022-2/Laboratorio SD/Trabalho final/GAME/sep_dez_un.vhd}
vcom -93 -work work {D:/2022-2/Laboratorio SD/Trabalho final/GAME/controladora_jogo.vhd}
vcom -93 -work work {D:/2022-2/Laboratorio SD/Trabalho final/GAME/cont_4.vhd}
vcom -93 -work work {D:/2022-2/Laboratorio SD/Trabalho final/GAME/cont_10.vhd}
vcom -93 -work work {D:/2022-2/Laboratorio SD/Trabalho final/GAME/mux_15.vhd}
vcom -93 -work work {D:/2022-2/Laboratorio SD/Trabalho final/GAME/mux_2.vhd}
vcom -93 -work work {D:/2022-2/Laboratorio SD/Trabalho final/GAME/reg_1bit.vhd}
vcom -93 -work work {D:/2022-2/Laboratorio SD/Trabalho final/GAME/Contador_2_bits.vhd}
vcom -93 -work work {D:/2022-2/Laboratorio SD/Trabalho final/GAME/comp_10.vhd}
vcom -93 -work work {D:/2022-2/Laboratorio SD/Trabalho final/GAME/contador_7_bits.vhd}
vcom -93 -work work {D:/2022-2/Laboratorio SD/Trabalho final/GAME/Comparador.vhd}
vcom -93 -work work {D:/2022-2/Laboratorio SD/Trabalho final/GAME/comparador_7_bits.vhd}
vcom -93 -work work {D:/2022-2/Laboratorio SD/Trabalho final/GAME/reg18bits.vhd}
vcom -93 -work work {D:/2022-2/Laboratorio SD/Trabalho final/GAME/timer.vhd}
vcom -93 -work work {D:/2022-2/Laboratorio SD/Trabalho final/GAME/div_freq.vhd}
vcom -93 -work work {D:/2022-2/Laboratorio SD/Trabalho final/GAME/lfsr.vhd}
vcom -93 -work work {D:/2022-2/Laboratorio SD/Trabalho final/GAME/sr18bits_dual.vhd}
vcom -93 -work work {D:/2022-2/Laboratorio SD/Trabalho final/GAME/lcd_driver_dp.vhd}
vcom -93 -work work {D:/2022-2/Laboratorio SD/Trabalho final/GAME/div_freq_5000.vhd}
vcom -93 -work work {D:/2022-2/Laboratorio SD/Trabalho final/GAME/contador_4.vhd}
vcom -93 -work work {D:/2022-2/Laboratorio SD/Trabalho final/GAME/Data_path.vhd}
vcom -93 -work work {D:/2022-2/Laboratorio SD/Trabalho final/GAME/lcd_driver_fsm.vhd}
vcom -93 -work work {D:/2022-2/Laboratorio SD/Trabalho final/GAME/lcd_driver.vhd}
vcom -93 -work work {D:/2022-2/Laboratorio SD/Trabalho final/GAME/GAME.vhd}

vcom -93 -work work {D:/2022-2/Laboratorio SD/Trabalho final/GAME/tb_GAME.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  tb_GAME

add wave *
view structure
view signals
run 1 sec
