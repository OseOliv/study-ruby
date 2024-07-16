# Crie um método envia_mensagem que usa send para chamar
# um método com um nome fornecido.

def envia_mensagem(name)
  define_method(name) do
    puts "The method name is #{name}"
  end
end

envia_mensagem(:metodo)
send(:metodo)