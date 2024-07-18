# Modifique o método falar na classe Cachorro
# para incluir a chamada ao método super.

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

class Cachorro < Animal
  def falar
    super
    puts "Fala do Cachorro: Au au au au"
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


cac = Cachorro.new
cac.falar
