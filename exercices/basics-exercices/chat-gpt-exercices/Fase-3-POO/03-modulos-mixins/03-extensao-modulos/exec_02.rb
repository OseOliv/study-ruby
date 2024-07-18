# Estenda o módulo Calculadora em uma classe Matematica.

module Calculadora
  def soma(n1, n2)
    n1 + n2
  end
end

class Matematica
  include Calculadora
end
