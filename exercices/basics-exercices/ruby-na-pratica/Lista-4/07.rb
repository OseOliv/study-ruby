# Crie um script em Ruby que permita ao usuário digitar
# vários números. Após ler cada número, o script deve
# mostrar o quadrado desse número. O script deverá
# encerrar quando o usuário digitar um número múltiplo de 6.

while true
  print "Digite um numero: "
  numero = gets.chomp.to_i

  if numero % 6 == 0
    puts "O numero #{numero} e múltiplo de 6"
    puts "Script encerrado."
    break
  else
    puts "O quadrado de #{numero} e: #{numero**2}"

  end
end
