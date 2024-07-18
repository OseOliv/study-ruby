# Crie instâncias de Pessoa e chame o método falar.

module Falante
  def falar
    puts "Estou falando."
  end
end

class Pessoa
  include Falante
end

p1 = Pessoa.new
p1.falar

p2 = Pessoa.new
p2.falar

p3 = Pessoa.new
p3.falar
