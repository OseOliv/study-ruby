# Defina um método initialize para a classe Carro que recebe marca, modelo e ano.

class Carro
  attr_accessor :marca, :modelo, :ano

  def initialize(marca, modelo, ano)
    @marca = marca
    @modelo = modelo
    @ano = ano
  end
end
