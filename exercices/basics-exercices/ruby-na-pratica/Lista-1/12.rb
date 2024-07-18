# Crie um script em Ruby que leia dois números, X e Y
# e mostre o resto da divisão entre eles.

print "Digite o primeiro numero: "
x = gets.chomp.to_i

print "Digite o segundo numero: "
y = gets.chomp.to_i

resto_divisao = x % y

puts "O resto da divisao entre #{x} e #{y} e: #{resto_divisao}"
