# Use a classe Matematica para chamar o método soma.

module Calculadora
  def soma(num1, num2)
    puts "O resultado da soma entre #{num1} + #{num2} e: #{num1 + num2}"
  end
end

class Matematica
  include Calculadora
end

sum = Matematica.new
sum.soma(10,5)