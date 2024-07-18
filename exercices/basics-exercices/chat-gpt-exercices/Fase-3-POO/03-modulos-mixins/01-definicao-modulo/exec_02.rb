# Inclua o módulo Falante em uma classe Pessoa.

module Falante
  def falar
    puts "Estou falando."
  end
end

class Pessoa
  include Falante
end
