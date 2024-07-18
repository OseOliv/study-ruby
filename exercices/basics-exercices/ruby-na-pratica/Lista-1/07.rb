# Crie um script em Ruby que leia dois números inteiros, X e Y,
# e mostre o quociente e o resto da divisão de X por Y.

print "Digite o primeiro numero inteiro: "
x = gets.chomp.to_i

print "Digite o segundo numero inteiro: "
y = gets.chomp.to_i


if y != 0
quociente = x / y
resto_da_divisao = x % y

puts "O quociente da divisao entre #{x} e #{y} e: #{quociente}"
puts "O resto da divisao entre #{x} e #{y} e: #{resto_da_divisao}"

else
  puts "Erro: divisão por zero não é permitida."
end
