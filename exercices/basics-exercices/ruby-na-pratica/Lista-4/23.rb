# Criar um script em Ruby que leia vários números inteiros
# positivos e imprima o produto dos números ímpares
# e a soma dos pares. O script deve terminar quando o número 0
# (zero) for digitado.

impar = []
par = []

loop do
  print "Digite um numero positivo: "
  num = gets.chomp.to_i
  break if num == 0

  if num % 2 == 0
    par << num
  else
    impar << num
  end
end

soma_impar = 1

impar.each do |n|
  soma_impar *= n
end

soma_par = par.sum

p impar
p par


puts "O produto dos numeros impares: #{soma_impar}"
puts "A soma dos numero pares: #{soma_par}"
