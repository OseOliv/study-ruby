# Crie um script em Ruby que leia 10 nomes
# e armazene-os num array. Imprimir os nomes numa lista numerada.

nomes = []

10.times do
  print "Digite um nome:"
  nome = gets.chomp
  nomes << nome
end

nomes.each_with_index {|n, i| puts "#{i+1}: #{n}"}
