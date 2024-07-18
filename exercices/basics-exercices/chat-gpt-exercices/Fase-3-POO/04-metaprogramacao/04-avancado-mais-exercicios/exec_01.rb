# Implemente uma classe Calculadora que tenha
# um método de classe definir_operacao que recebe
# o nome de uma operação matemática
# (como soma, subtracao, multiplicacao, etc.)
# e define dinamicamente um método de instância
# para realizar essa operação.

class Calculadora
  def self.definir_operacao(operacao)
    define_method(operacao) do |a, b|
      case operacao
      when :soma
        a + b
      when :subtracao
        a - b
      when :multiplicacao
        a * b
      when :divisao
        a / b
      else
        raise ArgumentError, "Operacao nao suportada: #{operacao}"
      end
    end
  end
end

Calculadora.definir_operacao(:soma)
Calculadora.definir_operacao(:subtracao)
Calculadora.definir_operacao(:multiplicacao)
Calculadora.definir_operacao(:divisao)

calc = Calculadora.new

puts "Soma: #{calc.soma(10,5)}"
puts "Subtracao: #{calc.subtracao(10,5)}"
puts "Multiplicacao: #{calc.multiplicacao(10,5)}"
puts "Divisao: #{calc.divisao(10,5)}"
