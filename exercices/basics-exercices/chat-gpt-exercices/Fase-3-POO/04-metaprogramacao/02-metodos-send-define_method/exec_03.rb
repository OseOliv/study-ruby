# Implemente uma classe que adicione métodos de leitura dinamicamente.

class Pessoa
  def self.criar_metodo(metodo)
    define_method(metodo) do
      puts "Definindo o metodo '#{metodo}' dinamicamente."
    end
  end
end

Pessoa.criar_metodo(:falar)
Pessoa.criar_metodo(:andar)
Pessoa.criar_metodo(:comer)

pessoa = Pessoa.new
pessoa.falar
pessoa.andar
pessoa.comer
