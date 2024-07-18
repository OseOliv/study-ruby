# Crie um script em Ruby que leia 10 números inteiros e
# armazene-os num array. Depois, o script deve ordenar
# esses números em ordem crescente e imprimi-los.

numeros = Array.new


10.times do
  print "Digite um numero: "
  num = gets.chomp.to_i
  numeros << num


end
numeros.sort!
puts "Números em ordem crescente: #{numeros}"
