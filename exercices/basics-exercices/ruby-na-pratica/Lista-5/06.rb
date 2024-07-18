# Crie um script em Ruby que leia e armazene os nomes e
# as idades de 10 pessoas.
#
# Depois, o script deve imprimir
# o nome e a idade da pessoa mais nova, e o nome
# e a idade da pessoa mais velha.

nomes = []
idades = []

4.times do
  print "Digite o nome: "
  nome = gets.chomp
  print "Digite a idade: "
  idade = gets.chomp.to_i

  nomes << nome
  idades << idade
end

mais_nova = idades.index(idades.min)
mais_velha = idades.index(idades.max)

puts "Pessoa mais nova"
puts "Nome: #{nomes[mais_nova]}, Idade: #{idades.min}"

puts "Pessoa mais velha"
puts "Nome: #{nomes[mais_velha]}, Idade: #{idades.max}"
