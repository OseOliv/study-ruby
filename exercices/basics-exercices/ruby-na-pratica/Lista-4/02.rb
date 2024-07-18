# Crie um script em Ruby que permita que o usuário
# digite vários números positivos. Quando um
# número negativo for digitado, o script deve
# apresentar quantos números positivos foram digitados.

count = 0
while true
  print "Digite um numero positivo: "
  numero = gets.chomp.to_i

  break if numero < 0

  if numero > 0
    count += 1
  end

end

puts "Foram digitados #{count} positivos."
