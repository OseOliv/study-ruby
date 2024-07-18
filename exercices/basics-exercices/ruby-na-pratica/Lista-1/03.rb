# Crie um script em Ruby que leia dois números inteiros e mostre a soma dos dois.

print "Digite o primeiro numero: "
numero_1 = gets.chomp.to_i

print "Digite o segundo numero: "
numero_2 = gets.chomp.to_i

soma = numero_1 + numero_2

puts "O resultado da soma entre #{numero_1} e #{numero_2} e: #{soma}"
