# Crie um script em Ruby que leia e armazene 8 números inteiros
# em um array e imprima todos os números. Ao final,
# imprimir o total de números múltiplos de 6.

numeros = []
total_6 = 0
8.times do
  print "Digite um numero: "
  num = gets.chomp.to_i
  numeros << num
end

p numeros

numeros.each do |n|
  if n % 6 == 0
    total_6 += 1
  end
end

puts "O total de números múltiplos de 6: #{total_6}"
