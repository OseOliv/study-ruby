# Defina um método cria_metodos que usa define_method
# para criar vários métodos.

def cria_metodos(name)
  define_method(name) do
    puts "The method name is #{name}"
  end
end

cria_metodos(:metodo_um)
cria_metodos(:metodo_dois)
cria_metodos(:metodo_tres)
cria_metodos(:metodo_quatro)

send(:metodo_um)
send(:metodo_dois)
send(:metodo_tres)
send(:metodo_quatro)