# Crie um script em Ruby que receba três notas, calcule
# e mostre a média aritmética e, além disso, mostre a
# situação do aluno (aprovado, recuperação ou reprovado).
# Se a média for maior ou igual a 7, o aluno está aprovado;
# se for menor que 7 e maior ou igual a 5, o aluno está de
# recuperação; se for menor que 5, o aluno está reprovado.

print "Digite a primeira nota: "
nota_1 = gets.chomp.to_f

print "Digite a segunda nota: "
nota_2 = gets.chomp.to_f

print "Digite a terceira nota: "
nota_3 = gets.chomp.to_f


media = (nota_1 + nota_2 + nota_3 )/ 3

puts "A media do aluno e: #{media}"

case media
when 7..10
  puts "O aluno esta APROVADO!"
when 5...7
  puts "O aluno esta em RECUPERACAO!"
else
  puts "O aluno foi REPROVADO!"
end
