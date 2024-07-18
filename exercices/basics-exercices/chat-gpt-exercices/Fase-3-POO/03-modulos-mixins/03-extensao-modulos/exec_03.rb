# Use a classe Matematica para chamar o método soma.

module Calculadora
  def soma(n1, n2)
    puts n1 + n2
  end
end

class Matematica
  include Calculadora
end

sum = Matematica.new
sum.soma(8,3)
