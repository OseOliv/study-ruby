# Crie um script em Ruby que permita ao usuário digitar
# vários números. Quando o número 0 (zero) for digitado,
# o script deve informar quantos números entre 100 e 200
# foram digitados pelo usuário.
#
#
count = 0
while true
  print "Digite um numero: "
  numero = gets.chomp.to_i

  if numero == 0
    break
  elsif numero.between?(100,200)
    count += 1
  end
end

puts "Entre 100 e 200 foram digitados #{count} numeros."
