# Defina um método cria_metodo que define um método dinamicamente.
def criar_metodo(name)
  define_method(name) do
    puts "The method name is #{name}"
  end
end

criar_metodo(:meu_metodo)
meu_metodo

