# Crie um script em Ruby que permita ao usuário digitar
# vários números positivos. Quando um número negativo for
# digitado, o script deve imprimir a média dos números positivos digitados.

arr_numeros = []

while true
print "Digite um numero positivo: "
numero = gets.chomp.to_i

  if numero > 0
    arr_numeros << numero
  elsif numero < 0
    if arr_numeros.empty?
      puts "Nenhum numero positivo foi digitado."
  else
      media = arr_numeros.sum/arr_numeros.size.to_f
      puts "A media dos numeros positivos e: #{media}"
    end
    break
  end
end
