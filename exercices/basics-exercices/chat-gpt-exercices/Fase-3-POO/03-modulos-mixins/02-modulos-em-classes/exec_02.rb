# Inclua o módulo Caminhavel em uma classe Animal.
module Caminhavel
  def caminhar
    puts "Estou caminhando..."
  end
end

class Animal
  include Caminhavel
end
