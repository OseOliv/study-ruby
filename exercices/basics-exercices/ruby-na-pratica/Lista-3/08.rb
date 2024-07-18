# Um número é primo se os únicos divisores dele são 1
# e o próprio número. Faça um script em Ruby para ler
# um número inteiro positivo e determinar se ele é
# ou não um número primo.


print "Digite um numero inteiro: "
numero = gets.chomp.to_i

if numero <= 1
  puts "O numero #{numero} nao e primo."
elsif numero == 2
  puts "O numero #{numero} e primo."
elsif numero % 2 == 0
  puts "O numero #{numero} nao e primo."
else
  primo = true
  (3..Math.sqrt(numero).to_i).step(2) do |i|
    if numero % i == 0
      primo = false
      break
    end
  end
  if primo
    puts "O numero #{numero} e primo."
  else
    puts "O numero #{numero} nao e primo."
  end
end
