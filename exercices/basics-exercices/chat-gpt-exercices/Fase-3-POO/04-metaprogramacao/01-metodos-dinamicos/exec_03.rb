# Crie uma classe que adiciona métodos dinamicamente com define_method.

class Carro
  def self.criar_carro(marca, modelo)
      define_method(:velocidade) do |velocidade|
        puts "Criando Carro: #{marca} #{modelo} , Velocidade: #{velocidade}km/h"
      end
  end
end


Carro.criar_carro("Ford", "Mustang")

car = Carro.new
car.velocidade(189)
