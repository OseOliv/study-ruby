# Crie uma instância de Animal e chame o método caminhar.
#
module Caminhavel
  def caminhar
    puts "Estou caminhando..."
  end
end

class Animal
  include Caminhavel
end


animal = Animal.new
animal.caminhar
