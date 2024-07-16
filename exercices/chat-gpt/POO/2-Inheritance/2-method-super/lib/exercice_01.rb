# Adicione um método dormir à classe Animal e use super em uma subclasse Gato.
class Animal
  def falar
    puts "O Animal esta falando..."
  end
  def dormir
    puts "O animal esta dormindo"
  end
end
class Cachorro < Animal
  def falar
    puts "O cachorro esta falando..."
  end
end
class Gato < Animal
  def dormir
    super
    puts "O gato esta dormindo..."
  end
end

