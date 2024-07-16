# Crie instâncias de Pessoa e chame o método falar.

module Falante
  def falar
    puts "Falando..."
  end
end

class Pessoa
  include Falante
end

p1 = Pessoa.new
p1.falar