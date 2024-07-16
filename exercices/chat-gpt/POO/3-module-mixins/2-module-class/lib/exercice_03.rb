# Crie uma instância de Animal e chame o método caminhar.

module Caminhavel
  def caminhar
    puts "Caminhando..."
  end
end

class Animal
  include Caminhavel
end

a1 = Animal.new
a1.caminhar