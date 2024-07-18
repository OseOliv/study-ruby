# Crie um script em Ruby que leia e armazene os nomes e
# os salários de 20 pessoas. Calcular e armazenar o novo salário,
# sabendo-se que houve um reajuste de 8%. Imprimir uma listagem
# com os nomes e o novo salário de cada funcionário.

nomes = []
salarios = []

20.times do
  print "Digite o nome: "
  nome = gets.chomp
  print "Digite o salario: "
  salario = gets.chomp.to_f

  nomes << nome
  salarios << salario + (salario * 0.08)

end

nomes.each_with_index do |nome, index|
  puts "Nome: #{nome}, Salario: #{salarios[index]}"
end
