# Modifique o método falar na classe Cachorro para incluir a chamada ao método super.
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
    super
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

animal = Animal.new
animal.falar   # Saída: O Animal está falando...
animal.dormir  # Saída: O animal está dormindo.
animal.mover   # Saída: O animal está se movendo..

puts "\n"

cachorro = Cachorro.new
cachorro.falar  # Saída: O Animal está falando...
#        O cachorro está latindo...

puts "\n"

gato = Gato.new
gato.dormir  # Saída: O animal está dormindo.
#        O gato está ronronando enquanto dorme...

puts "\n"

cavalon = Cavalon.new
cavalon.mover  # Saída: O animal está se movendo..
#        O cavalo está trotando...
