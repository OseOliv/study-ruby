# No dia da estreia do filme “O Senhor dos Anéis”,
# uma grande emissora de TV realizou uma pesquisa
# logo após o encerramento do filme. Cada espectador
# respondeu a um questionário no qual constava
# sua idade e a sua opinião em relação ao
# filme: 3 – excelente; 2 – bom; 1 – regular.
# Criar um script em Ruby que receba a idade
# e a opinião de 20 espectadores, calcule e imprima:

# A média das idades das pessoas que responderam excelente;
# A quantidade de pessoas que responderam regular;
# A percentagem de pessoas que responderam bom entre
# todos os espectadores analisados.

idades = []
opinioes = []
excelente_idades = []
count_bom = 0
count_regular = 0



5.times do
  print "Digite sua idade: "
  idade = gets.chomp.to_i
  print "Opiniao: 3 – excelente; 2 – bom; 1 – regular: "
  opiniao = gets.chomp.to_i

  idades << idade
  opinioes << opiniao

  if opiniao == 3
    excelente_idades << idade
  elsif opiniao == 1
    count_regular += 1
  elsif opiniao == 2
    count_bom += 1
  end
end

if excelente_idades.any?
  media_idade_exe = excelente_idades.sum / excelente_idades.length
else
  media_idade_exe = 0
end


porc = (count_bom.to_f / opinioes.size) * 100

puts "A media de idade: #{media_idade_exe}"
puts "A quantidade de pessoas regular: #{count_regular}"
puts "A % de bom: #{porc}%"
