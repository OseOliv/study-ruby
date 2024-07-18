# Adicione um método dormir à classe Animal e use super em uma subclasse Gato.

class Animal

  def falar
    puts "Fala do animal"
  end

  def dormir
    puts "Animal esta dormindo!"
  end
end

class Gato < Animal
  def falar
    super
    puts "O gato fala: Miau, Miau!"
  end

  def dormir
    super
    puts "O Gato ja esta dormindo!"
  end
end

# cat = Gato.new
# cat.falar
# cat.dormir
