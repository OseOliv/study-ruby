# Adicione um método parar que imprima uma mensagem de parada.
class Carro
  attr_accessor :marca, :modelo, :ano

  def initialize(marca, modelo, ano)
    @marca = marca
    @modelo = modelo
    @ano = ano
  end

  def parar
    puts "O carro #{@marca} #{@modelo} #{@ano} parou agora."
  end
end

car = Carro.new("Volkswagen", "Fusca", 1938)

car.parar
