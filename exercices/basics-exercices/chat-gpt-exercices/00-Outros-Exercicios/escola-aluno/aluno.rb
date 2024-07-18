# Descrição
# Crie um sistema para gerenciar uma escola e seus alunos.

# Lógica
#
# Classe Aluno:

# Atributos: nome e idade.
# Método: mostrar_detalhes que imprime o nome e a idade do aluno.
#



class Aluno
  attr_reader :nome , :idade

 def initialize(nome, idade)
  @nome = nome
  @idade = idade
 end

 def mostrar_detalhes
   puts "Nome: #{@nome}, Idade: #{@idade}"
 end
end



# a1 = Aluno.new("Oseas", 35)
# puts a1.nome
# puts a1.idade
# a1.mostrar_detalhes
