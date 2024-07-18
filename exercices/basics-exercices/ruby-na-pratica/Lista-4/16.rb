# Crie um script em Ruby que permita ao usuário digitar
# vários números. O script acaba quando se digita -9999.
# Por fim, o script deve apresentar o maior número digitado pelo usuário.

numeros = []

loop do
  print "Digite um numero: "
  numero = gets.chomp.to_i
  break if numero == -9999
  numeros << numero
end



if numeros.empty?
   puts "Nenhum número foi digitado."
else
  maior_numero = numeros.max
  p numeros
  puts "O maior numero digitado foi: #{maior_numero}"
end
