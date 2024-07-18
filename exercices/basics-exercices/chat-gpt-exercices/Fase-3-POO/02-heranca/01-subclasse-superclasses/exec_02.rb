# Defina uma classe Cachorro que herde de Animal e sobrescreva o método falar.

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
