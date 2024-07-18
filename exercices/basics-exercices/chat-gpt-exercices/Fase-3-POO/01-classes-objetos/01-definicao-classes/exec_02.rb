# Crie uma instância da classe Carro e imprima os atributos.

class Carro
  attr_reader :marca, :modelo
  def initialize(marca, modelo)
    @marca = marca
    @modelo = modelo
  end
end


car = Carro.new("Ford", "Mustang")

puts car.marca
puts car.modelo
