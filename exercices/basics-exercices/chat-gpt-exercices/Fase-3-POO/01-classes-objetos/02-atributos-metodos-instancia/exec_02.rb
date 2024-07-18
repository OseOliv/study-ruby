# Crie um método acelerar que imprima uma mensagem de aceleração.
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

  def acelerar(km)
    puts "O carro #{@marca} #{@modelo} esta acelarando a #{km}km/h"
  end
end

car = Carro.new("Ford", "Mustang", 1964)
