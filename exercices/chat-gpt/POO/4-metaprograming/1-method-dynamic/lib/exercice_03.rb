# Crie uma classe que adiciona métodos dinamicamente com define_method.

class AdicionaMetodos
  def criar_metodos(name)
    define_singleton_method(name) do
      puts "Metodo adicionado dinamicamente com define_method dentro de uma classe."
    end
  end
end

obj = AdicionaMetodos.new
obj.criar_metodos(:meu_metodo)
obj.meu_metodo