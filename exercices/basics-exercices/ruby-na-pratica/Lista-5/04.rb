# Crie um script em Ruby que leia e armazene 10 números
# inteiros em um array. Para cada valor guardado numa
# posição "p", verificar se o valor contido na posição "p-1"
# é divisor do valor guardado na posição "p";

numeros = []

10.times do
  print "Digite um numero: "
  num = gets.chomp.to_i
  numeros << num
end

numeros.each_with_index do |n, p|
  if p > 0 && numeros[p] % numeros[p-1] == 0
    puts "O numero #{numeros[p]} na posicao #{p} e dividor de #{numeros[p-1]}."
  end
end

# # Array para armazenar os números
# numbers = []

# # Leitura dos 10 números inteiros


# 10.times do |i|
#   print "Digite o número #{i + 1}: "
#   numbers << gets.to_i
# end

# # Verificação dos divisores
# (1...numbers.length).each do |i|
#   if numbers[i - 1] != 0 && numbers[i] % numbers[i - 1] == 0
#     puts "O número #{numbers[i - 1]} é divisor de #{numbers[i]}"
#   else
#     puts "O número #{numbers[i - 1]} não é divisor de #{numbers[i]}"
#   end
# end
