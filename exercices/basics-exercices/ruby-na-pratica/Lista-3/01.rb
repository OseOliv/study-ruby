# Faça um script em Ruby que leia um número n
# e mostre a tabuada de multiplicação de 1 a 10 deste número.

print "Digite um numero: "
numero = gets.chomp.to_i

for n in 1..10
  puts "#{n} * #{numero} = #{n*numero}"
end
