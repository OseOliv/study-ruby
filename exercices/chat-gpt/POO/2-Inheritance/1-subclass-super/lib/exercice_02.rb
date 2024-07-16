# Defina uma classe Cachorro que herde de Animal e sobrescreva o método falar.
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

