# Crie um script em Ruby que leia uma distância (em Km)
# entre dois pontos e o preço da gasolina em reais.
# Depois, calcule e mostre quantos litros de gasolina o
# carro irá consumir e quanto será o gasto em reais.
# Considere que o carro consegue percorrer 12 Km com um litro de gasolina.

print "Digite a distancia entre dois pontos KM: "
distancia = gets.chomp.to_f

print "Digite o preco da gasolina em reais: R$ "
preco_gasolina = gets.chomp.to_f


gasolina_consumida = distancia / 12

gasto_gasolina = preco_gasolina * gasolina_consumida


puts "Distancia percorrida: #{distancia}km"
puts "Preco da gasolina: R$#{preco_gasolina}"

puts "Foram consumidos #{gasolina_consumida.round(2)}litros de gasolina."
puts "Foram gastos R$#{gasto_gasolina.round(2)} em gasolina."
