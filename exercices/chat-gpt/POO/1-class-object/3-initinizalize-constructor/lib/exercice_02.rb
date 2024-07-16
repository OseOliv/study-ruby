# Crie uma instância de Carro usando o novo construtor.
class Carro
  def initialize(marca, modelo, ano)
    @marca = marca
    @modelo = modelo
    @ano = ano
  end
end

car = Carro.new("Ford", "Mustang",1961)