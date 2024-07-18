# Crie um script em Ruby que permita que o usuário
# digite a idade de várias pessoas. O script deve
# parar quando uma idade negativa for digitada.
# O script deve mostrar:

# A média das idades;
# Total de pessoas com menos de 21 anos;
# Total de pessoas com mais de 50 anos;


idades = []

menor_21 = 0
maior_50 = 0


loop do
  print "Digite a idade: "
  idade = gets.chomp.to_i
  break if idade < 0
  idades << idade

  if idade < 21
    menor_21 += 1
  elsif idade > 50
    maior_50 += 1
  end
end

if idades.size > 0
  media = idades.sum / idades.size
  puts "A media de idade das pessoas: #{media}"
else
  puts "Nenhuma idade válida foi inserida."
end



puts "Total de pessoas com menos de 21 anos: #{menor_21}"
puts "Total de pessoas com maior que 50 anos: #{maior_50}"
