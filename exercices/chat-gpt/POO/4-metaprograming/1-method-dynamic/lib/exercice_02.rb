# Use send para chamar um método dinamicamente.
def criar_metodo(name)
  define_method(name) do
    puts "The method name is #{name}, called by 'send'"
  end
end

criar_metodo(:meu_metodo)

send(:meu_metodo)