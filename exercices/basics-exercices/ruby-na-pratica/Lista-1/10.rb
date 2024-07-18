# Crie um script em Ruby que leia dois números reais,
# calcule e mostre a soma deles, o produto e o quociente.

print "Digite o primeiro numero real: "
numero_1 = gets.chomp.to_f

print "Digite o segundo numero real: "
numero_2 = gets.chomp.to_f

soma = numero_1 + numero_2
produto = numero_1 * numero_2
quociente = numero_1 / numero_2

puts "A soma entre os numeros #{numero_1} e #{numero_2} e: #{soma}"
puts "O produto entre os numeros #{numero_1} e #{numero_2} e: #{produto}"
puts "O quociente entre os numeros #{numero_1} e #{numero_2} e: #{quociente}"
