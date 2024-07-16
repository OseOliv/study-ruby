# Crie instâncias de Animal e Cachorro e chame seus métodos.
class Animal
  def falar
    puts "O Animal esta falando..."
  end
end

class Cachorro < Animal
  def falar
    puts "O cachorro esta falando..."
  end
end

animal = Animal.new
cachorro = Cachorro.new
animal.falar
cachorro.falar