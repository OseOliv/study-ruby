# Faça um script em Ruby que mostre o somatório dos
# números pares entre 1 e N, onde N é um valor definido pelo usuário.

print "Digite um numero: "
numero = gets.chomp.to_i

num = 1..numero
soma = 0
num.each do |n|
  if n % 2 == 0
    soma +=n
  end
end

puts "A soma dos numeros pares entre 1 e #{numero} e: #{soma}"
