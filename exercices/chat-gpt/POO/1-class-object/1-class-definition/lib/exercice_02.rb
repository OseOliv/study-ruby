# Crie uma instância da classe Carro e imprima os atributos.

class Carro
  attr_accessor :marca, :modelo
end

car = Carro.new
car.marca = "Martin"
car.modelo = "Martin"

puts "Marca do carro: #{car.marca}"
puts "Modelo do carro: #{car.modelo}"