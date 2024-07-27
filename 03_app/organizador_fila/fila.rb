# fila.rb
class Cliente
  attr_accessor :nome, :numero_chegada, :chegada, :atendimento_inicio, :atendimento_fim

  def initialize(nome, numero_chegada)
    @nome = nome
    @numero_chegada = numero_chegada
    @chegada = Time.now
  end

  def tempo_espera
    @atendimento_inicio - @chegada
  end

  def tempo_no_sistema
    @atendimento_fim - @chegada
  end
end

class Fila
  def initialize
    @clientes = []
  end

  def adicionar_cliente(cliente)
    @clientes << cliente
  end

  def atender_cliente
    @clientes.shift
  end

  def fila_atual
    @clientes
  end
end
