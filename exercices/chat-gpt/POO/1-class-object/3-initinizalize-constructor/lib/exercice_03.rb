# Adicione um método parar que imprima uma mensagem de parada.
class Carro
  def initialize(marca, modelo, ano)
    @marca = marca
    @modelo = modelo
    @ano = ano
  end
    def parar
      puts "O Carro #{@marca} #{@modelo} #{@ano} esta parando..."
    end
end

car = Carro.new("Ford", "Mustang",1961)
car.parar