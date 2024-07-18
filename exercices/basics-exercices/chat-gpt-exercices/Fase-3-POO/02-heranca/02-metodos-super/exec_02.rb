# Crie um método mover na classe Animal e use super na classe Cavalo.


class Animal

  def falar
    puts "Fala do animal"
  end

  def dormir
    puts "Animal esta dormindo!"
  end

  def mover
    "O animal se move dessa forma!"
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

class Cavalo < Animal

  def falar
    super
    puts "O cavalo fala: iiirrrrí, rilinchin "
  end

  def dormir
    super
    puts "O cavalo esta dormindo"
  end

  def mover
    super
    puts "O cavalo se move: Galopando"
  end
end
