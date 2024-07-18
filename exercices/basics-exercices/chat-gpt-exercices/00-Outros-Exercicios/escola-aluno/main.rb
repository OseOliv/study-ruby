# Descrição
# Crie um sistema para gerenciar uma escola e seus alunos.

# Lógica
#
# Classe Aluno:

# Atributos: nome e idade.
# Método: mostrar_detalhes que imprime o nome e a idade do aluno.
#
# Classe Escola:

# Atributos: nome e alunos (uma lista de objetos Aluno).
# Método: adicionar_aluno que adiciona um aluno à lista de alunos.
# Método: mostrar_alunos que imprime o nome da escola e, em seguida,
# imprime os detalhes de todos os alunos na lista de alunos chamando
# o método mostrar_detalhes de cada aluno.



require_relative 'escola'
require_relative 'aluno'



a1 = Aluno.new("Fabio", 87)
a2 = Aluno.new("Lucia", 45)
a3 = Aluno.new("Joana", 16)

e1 = Escola.new("Escola ABC")


e1.adicionar_aluno(a1)
e1.adicionar_aluno(a2)
e1.adicionar_aluno(a3)

e1.mostrar_alunos
