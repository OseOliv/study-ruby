# Implemente uma classe que adicione métodos de leitura dinamicamente.

class AdicionaMetodos
  def cria_metodo(name)
    define_singleton_method(name) do
      puts "O nome do metodo e #{name}"
    end
  end
end

add = AdicionaMetodos.new
add.cria_metodo(:metodo_um)
add.cria_metodo(:metodo_dois)

add.metodo_um
add.metodo_dois