# Desenvolva um script em Ruby que, dados 2 números
# inteiros X e Y, calcule o valor de X elevado a Y.
# Faça isso sem usar o operador de potenciação (**).

print "Digite um numero: "
x = gets.chomp.to_i

print "Digite o numero da potencia: "
y = gets.chomp.to_i

resultado = 1

y.times do
resultado *= x
end

puts "#{resultado}"
