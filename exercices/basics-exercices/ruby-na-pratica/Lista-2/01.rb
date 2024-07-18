# Crie um script em Ruby que leia três valores, 'a', 'b' e 'c'
# e diga se estes valores podem ser os lados de um triângulo.
# Para um triângulo ser formado, a soma de dois lados deve ser
# maior do que o terceiro lado: a + b > c e a + c > b e b + c > a.

puts "-"*20
puts "SCRIPT PARA VER SE"
puts "UM TRIANGULO PODE"
puts "SER FORMADO"
puts "-"*20
puts ""


print "Digite o o valor do primeiro lado: "
lado_a = gets.chomp.to_i

print "Digite o o valor do segundo lado: "
lado_b = gets.chomp.to_i

print "Digite o o valor do terceiro lado: "
lado_c = gets.chomp.to_i


if lado_a + lado_b > lado_c && lado_a + lado_c > lado_b && lado_b + lado_c > lado_a
  puts "-"*20
  puts "O TRIANGULO COM LADOS:"
  puts lado_a
  puts lado_b
  puts lado_c
  puts "-"*20
  puts "O TRIANGULO PODE SER FORMADO!!"

else
  puts "-"*20
  puts "O TRIANGULO NAO PODE SER FORMADO!!"
end
