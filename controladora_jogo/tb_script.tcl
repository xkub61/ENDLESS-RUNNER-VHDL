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
vcom -explicit  -93 "controladora_jogo.vhd"
vcom -explicit  -93 "tb_controladora_jogo.vhd"
vsim -t 1ns   -lib work tb_controladora_jogo
add wave sim:/tb_controladora_jogo/*
add wave -position end  sim:/tb_controladora_jogo/controladora/estado_atual
add wave -position end  sim:/tb_controladora_jogo/controladora/prox_estado
#do {wave.do}
view wave
view structure
view signals
run 1 us
#quit -force

