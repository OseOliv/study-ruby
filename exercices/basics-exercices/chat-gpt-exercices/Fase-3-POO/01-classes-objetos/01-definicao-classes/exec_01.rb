# Defina uma classe Carro com atributos marca e modelo.

class Carro
  attr_reader :marca, :modelo
  def initialize(marca, modelo)
    @marca = marca
    @modelo = modelo
  end
end
