# Adicione um atributo ano à classe Carro e um
# método idade que calcule a idade do carro.

class Carro
  attr_accessor :marca, :modelo, :ano
  def idade
    Time.now.year - self.ano
  end
end

car = Carro.new
car.marca = "Ford"
car.modelo = "Mustang"
car.ano = 1963

puts "A idade do carro: #{car.idade} anos."