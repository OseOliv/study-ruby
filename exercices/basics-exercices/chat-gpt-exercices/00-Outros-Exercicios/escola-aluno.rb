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

class Aluno
  attr_reader :nome, :idade

  def initialize(nome, idade)
    @nome = nome
    @idade = idade
  end

  def mostrar_detalhes
    puts "Nome: #{@nome}, Idade: #{@idade}"
  end
end

class Escola
  attr_reader :alunos, :nome_escola

  def initialize(nome_escola)
    @nome_escola = nome_escola
    @alunos = []
  end

  def adicionar_aluno(aluno)
    @alunos.push(aluno)
  end

  def mostrar_alunos
    puts "Nome da Escola: #{nome_escola}"
    @alunos.each { |aluno| aluno.mostrar_detalhes }
  end
end

aluno1 = Aluno.new('Oseas', 33)
aluno2 = Aluno.new('Maria', 23)
aluno3 = Aluno.new('Joao', 43)

escola = Escola.new('Escola ABC')

escola.adicionar_aluno(aluno1)
escola.adicionar_aluno(aluno2)
escola.adicionar_aluno(aluno3)

escola.mostrar_alunos
