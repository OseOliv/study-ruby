# Adicione um método descrever que imprima os detalhes do carro.

class Carro
  attr_accessor :marca, :modelo

  def descrever
    puts "Marca: #{marca}, Modelo: #{modelo}"
  end
end

car = Carro.new
car.marca = "Ford"
car.modelo = "Mustang"

car.descrever
