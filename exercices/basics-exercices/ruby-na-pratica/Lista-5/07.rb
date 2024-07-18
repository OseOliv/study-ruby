# Crie um script em Ruby que leia 5 números inteiros para
# o conjunto A, e 5 números inteiros para o conjunto B.
# Depois, o script deve imprimir o conjunto intersecção
# entre A e B, ou seja, imprimir os valores que estão em A e em B.

a = []
b = []

5.times do
  print "Digite um numero para o conjunto A: "
  num_a = gets.chomp.to_i
  print "Digite um numero para o conjunto B: "
  num_b = gets.chomp.to_i

  a << num_a
  b << num_b

end

intersecao = a & b

puts "Conjunto interseção entre A e B: #{intersecao}"
