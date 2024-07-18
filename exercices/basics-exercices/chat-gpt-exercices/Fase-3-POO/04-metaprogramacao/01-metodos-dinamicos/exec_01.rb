# Defina um método cria_metodo que define um método dinamicamente.

class Pessoa
  def self.cria_metodo(nome)
    define_method(nome) do
      puts "Método #{nome} chamado"
    end
  end
end

Pessoa.cria_metodo(:andar)

pessoa = Pessoa.new
pessoa.andar
