# Desenvolva um script em Ruby que leia a velocidade
# máxima permitida em uma avenida e a velocidade
# com que o motorista estava dirigindo nela.
#
# Calcule e mostre a multa que uma pessoa vai receber,
# sabendo que são pagos: R$ 50 reais se o motorista
# ultrapassar em até 10km/h a velocidade permitida;
# R$ 100 reais, se o motorista ultrapassar de 11 a 30 km/h
# a velocidade permitida; e R$ 200 reais, se estiver
# acima de 31km/h da velocidade permitida.


print "Digite a velocidade maxima permitida: "
velocidade_permitida = gets.chomp.to_f

print "Digite a velocidade do veiculo: "
velocidade_veiculo = gets.chomp.to_f

valor_multa_10 = 50

valor_multa_11_30 = 100

valor_multa_31 = 200


velocidade_ultrapassada = velocidade_veiculo - velocidade_permitida


if velocidade_ultrapassada <= 0
  puts "Veiculo esta dentro do limite de velocidade!"
elsif velocidade_ultrapassada <= 10
  puts "O veiculo passou da velocidade permitida: 10km/h"
  puts "Valor da multa: #{valor_multa_10}"
elsif velocidade_ultrapassada <= 30
  puts "O veiculo passou da velocidade permitida: 11km/h e 30km/h"
  puts "Valor da multa: #{valor_multa_11_30}"
elsif velocidade_ultrapassada > 31
  puts "O veiculo passou da velocidade permitida acima: 31km/h"
  puts "Valor da multa: #{valor_multa_31}"
end
