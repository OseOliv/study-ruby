# Crie um script em Ruby que leia 10 números inteiros
# e armazene-os num array.
#
# Depois, o script deve calcular
#  o fatorial de cada um desses 10 números, e armazenar
#  os resultados num outro array. Depois, imprimir
#  os valores contidos nesse segundo array.

numeros = Array.new
array_factorial = Array.new


4.times do
  print "Digite um numero: "
  num = gets.chomp.to_i
  numeros << num
end

numeros.each do |n|
  factoral = 1
    (1..n).each do |i|
      factoral *= i
    end
    array_factorial << factoral
end

puts "Os numeros factoial sao: #{array_factorial}"
