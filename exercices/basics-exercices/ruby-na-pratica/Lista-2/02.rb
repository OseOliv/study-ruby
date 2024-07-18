# Modifique a questão anterior para contemplar o seguinte: quando
# os lados do triângulo forem válidos, o algoritmo deve informar
# qual é o tipo de triângulo formado pelos lados. O triângulo
# equilátero é formado quando os três lados são iguais.
# O triângulo isósceles é formado quando dois lados quaisquer
# são iguais, e o triângulo escaleno é formado quando os
# três lados são diferentes entre si.

puts "-"*20
puts "SCRIPT PARA VER O"
puts "TIPO DP TRIANGULO"
puts "-"*20
puts ""

print "Digite o o valor do primeiro lado: "
lado_a = gets.chomp.to_i

print "Digite o o valor do segundo lado: "
lado_b = gets.chomp.to_i

print "Digite o o valor do terceiro lado: "
lado_c = gets.chomp.to_i

triangulo_valido = lado_a + lado_b > lado_c && lado_a + lado_c > lado_b && lado_b + lado_c > lado_a

if triangulo_valido
  if lado_a == lado_b && lado_b == lado_c
    puts ""
    puts "-"*20
    puts "O TIPO DO TRIANGULO E: EQUILATERO"
    puts "-"*20
  elsif lado_a == lado_b || lado_a == lado_c || lado_b == lado_c
    puts ""
    puts "-"*20
    puts "O TIPO DO TRIANGULO E: ISÓSCELES"
    puts "-"*20
  else #lado_a != lado_b && lado_b != lado_c
    puts ""
    puts "-"*20
    puts "O TIPO DO TRIANGULO E: ESCALENO"
    puts "-"*20
  end
else
  puts ""
  puts "-"*20
  puts "O TRIANGULO NAO PODE SER FORMADO!!"
  puts "-"*20
end
