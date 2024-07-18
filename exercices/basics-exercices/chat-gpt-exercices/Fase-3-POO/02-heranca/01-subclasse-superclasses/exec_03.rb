# Crie instâncias de Animal e Cachorro e chame seus métodos.
class Animal

  def falar
    puts "Fala do animal"
  end
end

class Cachorro < Animal
  def falar
    puts "Fala do Cachorro: Au au au au"
  end
end

animal = Animal.new
animal.falar

cachorro = Cachorro.new
cachorro.falar
