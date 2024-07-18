# Validador Dinâmico

# Crie uma classe Validador que permita definir
# validações dinamicamente para atributos de objeto.
# Implemente métodos para adicionar validações e verificar
# se um objeto atende a essas validações.


class Validador
  def self.validar(atributo, &condicao)
    define_method("validar_#{atributo}") do |valor|
      condicao.call(valor)
    end
  end
end

class Pessoa
  def initialize(nome, idade)
    @nome = nome
    @idade = idade
  end

  Validador.validar(:nome) { |valor| valor.is_a?(String) && !valor.empty? }
  Validador.validar(:idade) { |valor| valor.is_a?(Integer) && valor >= 18 }

  def valido?
    self.class.instance_methods.grep(/^validar_/).all? do |metodo|
      send(metodo, instance_variable_get("@#{metodo.to_s.sub(/^validar_/, '')}"))
    end
  end
end

pessoa = Pessoa.new("Maria", 25)
puts pessoa.valido?  # Deve imprimir true

pessoa2 = Pessoa.new("", 16)
puts pessoa2.valido?  # Deve imprimir false
