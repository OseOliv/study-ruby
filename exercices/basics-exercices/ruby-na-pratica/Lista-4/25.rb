# Criar um script que leia a idade e sexo (0 para masculino e 1 para feminino)
# de várias pessoas.
#
# Calcule e imprima a idade média,
#
# o total de pessoas do sexo feminino com idade entre 30-45 (inclusive),
#
#  e o número total de pessoas do sexo masculino.
#
#  O script termina
#  quando se digita 0 (zero) para a idade.


idades = []
sexo_m = 0
sexo_f_30_45 = 0

loop do
  print "Digito a idade: "
  idade = gets.chomp.to_i
  break if idade == 0
  print "Digite o sexo (0 = m / 1 = f): "
  sexo = gets.chomp.to_i

  idades << idade

  if sexo == 0
    sexo_m += 1
  elsif sexo == 1 && idade.between?(30,45)
    sexo_f_30_45 += 1
  end


end

media_idade = (idades.sum / idades.size.to_f)

puts "A media de idade e: #{media_idade}"
puts "Sexo feminino com idade entre 30-45: #{sexo_f_30_45} "
puts "Total de pessoas do sexo masculino: #{sexo_m}"
