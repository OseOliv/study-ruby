# Defina um método cria_metodos que usa define_method para criar vários métodos.

def self.cria_metodos(metodo)
  define_method(metodo) do
    puts "Metodo #{metodo} foi criado com sucesso!"
  end
end

cria_metodos(:teste)
cria_metodos(:ola)
