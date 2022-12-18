#vsim -do tb_script.do
#puts {
#  Arquivo Exemplo de um FFD para Guia de aula_10
#  Laboratoria de Sistemas Digitais 
#  Autores: Professores da Area de Eletronica UFMG
#}

# Exemplo simples de como usar um script em TCL 
# para automatizar as simulacoes com ModelSim
# Para cada novo projeto devem ser modificados 
# os nomes relativos aos arquivos dentro do projeto. 

if {[file exists work]} {
vdel -lib work -all
}
vlib work
vcom -explicit  -93 "lcd_driver_fsm.vhd"
vcom -explicit  -93 "tb_lcd_driver_fsm.vhd"
vsim -t 1ns   -lib work tb_lcd_driver_fsm
add wave sim:/tb_lcd_driver_fsm/*
add wave -position end  sim:/tb_lcd_driver_fsm/LCD_DRV_CTLR/atual_estado
add wave -position end  sim:/tb_lcd_driver_fsm/LCD_DRV_CTLR/prox_estado
#do {wave.do}
view wave
view structure
view signals
run 60 ns
#quit -force

