# Atributos Dinâmicos

# Crie uma classe Registro que permita adicionar
# atributos dinamicamente aos objetos instanciados.
# Implemente métodos para definir e acessar esses atributos.

class Registro
  def definir_atributos(nome, idade)

  instance_variable_set("@#{nome}", nil)
  instance_variable_set("@#{idade}", nil)

  end

  def acessar_atributos(nome, idade)
    puts "#{nome}: #{instance_variable_get("@#{nome}")}"
    puts "#{idade}: #{instance_variable_get("@#{idade}")}"
  end
end

pessoa = Registro.new

pessoa.definir_atributos("nome", "idade")

pessoa.instance_variable_set("@nome", "Oseas")
pessoa.instance_variable_set("@idade", 32)


pessoa.acessar_atributos("nome","idade" )
