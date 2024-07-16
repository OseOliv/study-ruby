# Estenda o módulo Calculadora em uma classe Matematica.

module Calculadora
  def soma(num1, num2)
    num1 + num2
  end
end

class Matematica
  include Calculadora
end