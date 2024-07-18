# Criar um script em Ruby em que o usuário entre com 2
# notas (de 0 a 100) de cada aluno de uma turma de 5 alunos, e imprima:

# A média de cada aluno;
# A média da turma;
# O percentual de alunos com média maior ou igual a 60.



notas_aluno = []
count_60 = 0


5.times do
print "Digite a primeira nota(0-100): "
nota_1 = gets.chomp.to_f

print "Digite a segunda nota(0-100): "
nota_2 = gets.chomp.to_f

media_cada_aluno = (nota_1 + nota_2)/2.0
notas_aluno << media_cada_aluno

  if media_cada_aluno >= 60
  count_60 += 1
  end
end

media_turma = (notas_aluno.sum / 5.0)
porc = (count_60.to_f / notas_aluno.length) * 100

p "A media de cada aluno: #{notas_aluno}"
p "A media da turma: #{media_turma}"
p "O percentual maior que 60: #{porc}%"
