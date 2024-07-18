# Desenvolva um script em Ruby que leia n
# números (o número n deve informado pelo usuário),
# e diga quantos são pares e quantos são ímpares.
# Imprima também a soma dos números pares,
# e a soma dos números ímpares.

print "Digite um numero: "
numero = gets.chomp.to_i

par_count = 0
impar_count = 0

soma_par = 0
soma_impar = 0

(1..numero).each do |n|
  if n % 2 == 0
    par_count += 1
    soma_par += n
  else
    impar_count += 1
    soma_impar += n
  end
end

puts "Tem #{par_count} pares e soma deles e #{soma_par}"
puts " "
puts "Tem #{impar_count} impares e soma deles e #{soma_impar}"
