# Modifique os atributos de uma instância de Carro e chame seus métodos.
class Carro
  attr_accessor :marca, :modelo, :ano
  def descrever
    puts "Marca: #{marca}, Modelo: #{modelo}"
  end
  def idade
    puts "A idade do carro: #{Time.now.year - self.ano} anos"
  end
  def acelerar
    puts "O carro esta acelerando..."
  end
end

car = Carro.new
car.marca = "Ford"
car.modelo = "Mustang"
car.ano = 1963

car.descrever
car.idade
car.acelerar
