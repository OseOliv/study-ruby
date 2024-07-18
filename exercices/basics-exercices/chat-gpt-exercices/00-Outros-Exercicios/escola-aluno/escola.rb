# Descrição
# Crie um sistema para gerenciar uma escola e seus alunos.

# Lógica

# Classe Escola:

# Atributos: nome e alunos (uma lista de objetos Aluno).
# Método: adicionar_aluno que adiciona um aluno à lista de alunos.
# Método: mostrar_alunos que imprime o nome da escola e, em seguida,
# imprime os detalhes de todos os alunos na lista de alunos chamando
# o método mostrar_detalhes de cada aluno.

require_relative 'aluno'

class Escola
  attr_reader :nome , :alunos

  def initialize(nome)
    @nome = nome
    @alunos = []
  end

  def adicionar_aluno(aluno)
    @alunos.push(aluno)
  end

  def mostrar_alunos
    puts "Nome da Escola: #{@nome}"
    @alunos.each {|aluno| aluno.mostrar_detalhes}
  end
end
