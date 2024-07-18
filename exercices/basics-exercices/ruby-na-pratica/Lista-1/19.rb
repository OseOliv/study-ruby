# Crie um script em Ruby que leia as variáveis inteiras n1 e n2
# e troque o valor dessas variáveis. Isto é, n1 deve ficar
# com o valor de n2 e n2 deve ficar com o valor de n1.
# Em seguida mostre os valores depois da troca.

print "Digite o primeiro numero: "
n1 = gets.chomp.to_i

print "Digite o segundo numero: "
n2 = gets.chomp.to_i

n1_temp = n1

n1 = n2
n2 = n1_temp

puts "O valor de n1 e: #{n1}"
puts "O valor de n2 e: #{n2}"
