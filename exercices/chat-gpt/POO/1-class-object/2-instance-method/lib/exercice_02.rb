# Crie um método acelerar que imprima uma mensagem de aceleração.

class Carro
  attr_accessor :marca, :modelo, :ano
  def idade
    Time.now.year - self.ano
  end

  def acelerar
    puts "O carro esta acelerando..."
  end
end

car = Carro.new
car.acelerar