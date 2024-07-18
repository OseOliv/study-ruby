# Use send para chamar um método dinamicamente.

class Pessoa
  def self.cria_metodo(nome)
    define_method(nome) do
      puts "O metodo: '#{nome}', esta sendo chamado"
    end
  end
end

Pessoa.cria_metodo(:andar)

p1 = Pessoa.new
p1.andar

p1.send(:andar)
