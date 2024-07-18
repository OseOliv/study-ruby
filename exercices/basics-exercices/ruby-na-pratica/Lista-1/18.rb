# Crie um script em Ruby que leia a distância a ser percorrida
# e a velocidade média de um veículo. O script deve calcular
# e mostrar o tempo em que o veículo chegará ao seu destino.


print "Digite a distancia a ser percorrida em KM: "
distancia = gets.chomp.to_f

print "Digite a velociade media do veiculo em km/h: "
velocidade = gets.chomp.to_f

tempo_horas = distancia / velocidade
horas = tempo_horas.to_i
minutos = ((tempo_horas - horas)*60).round

puts "O tempo em que o veiculo chegara ao destino sera
de #{horas} horas e #{minutos} minutos "
