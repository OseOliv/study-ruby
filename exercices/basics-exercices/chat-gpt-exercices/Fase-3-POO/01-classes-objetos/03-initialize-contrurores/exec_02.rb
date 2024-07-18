# Crie uma instância de Carro usando o novo construtor.

class Carro
  attr_accessor :marca, :modelo, :ano

  def initialize(marca, modelo, ano)
    @marca = marca
    @modelo = modelo
    @ano = ano
  end
end

car = Carro.new("Volkswagen", "Fusca", 1938)
