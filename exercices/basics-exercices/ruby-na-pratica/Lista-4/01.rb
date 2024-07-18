# Crie um script em Ruby que permita que o usuário
# digite vários números e imprima o triplo de cada
# úmero digitado. O script deve acabar quanto o número
# 999 for digitado.


while true
  print "Digite um numero: "
  numero = gets.chomp.to_i

  if numero == 999
    puts "Fim do script."
    break
  end

  puts "o triplo de #{numero} e: #{numero*3}"
end
