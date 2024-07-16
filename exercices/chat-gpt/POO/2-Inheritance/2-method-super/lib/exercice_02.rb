# Crie um método mover na classe Animal e use super na classe Cavalo.
class Animal
  def falar
    puts "O Animal esta falando..."
  end
  def dormir
    puts "O animal esta dormindo"
  end
  def mover
    puts "O animal esta se movendo.."
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
class Cavalon < Animal
  def mover
    super
    puts "O cavalo esta se movendo..."
  end
end