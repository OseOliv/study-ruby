# Adicione um método descrever que imprima os detalhes do carro.

class Carro
  attr_reader :marca, :modelo
  def initialize(marca, modelo)
    @marca = marca
    @modelo = modelo
  end

  def descrever
    puts "O carro e da marca #{@marca} e o modelo e #{@modelo}"
  end
end


car = Carro.new("Ford", "Mustang")

car.descrever
