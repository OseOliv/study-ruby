# Adicione um atributo ano à classe Carro
# e um método idade que calcule a idade do carro.

class Carro
  attr_reader :marca , :modelo, :ano
  @@ano_atual = Time.now.year

  def initialize(marca, modelo, ano)
    @marca = marca
    @modelo = modelo
    @ano = ano
  end

  def descrever
     puts "O carro e da marca #{@marca} e o modelo e #{@modelo}"
  end

  def idade
    puts "A idade do carro #{@marca} #{@modelo} e #{@@ano_atual - @ano}"
  end
end

car = Carro.new("Ford", "Mustang", 1964)
car.idade
