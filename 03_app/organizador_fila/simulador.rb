# simulador.rb
require 'time'
require_relative 'fila'
require_relative 'utils'

class Simulador
  def initialize(duracao_simulacao, intervalo_chegada, intervalo_atendimento)
    @duracao_simulacao = duracao_simulacao
    @intervalo_chegada = intervalo_chegada
    @intervalo_atendimento = intervalo_atendimento
    @fila = Fila.new
    @tempo_inicio = Time.now
    @tempo_atual = @tempo_inicio
    @tempo_ocupado = 0
    @numero_chegada = 0
    @proximo_atendimento = @tempo_inicio
  end

  def iniciar
    while @tempo_atual - @tempo_inicio < @duracao_simulacao
      if rand < 0.1
        @numero_chegada += 1
        cliente = gerar_cliente(@numero_chegada)
        @fila.adicionar_cliente(cliente)
        puts "Novo cliente #{cliente.nome} (##{cliente.numero_chegada}) chegou às #{@tempo_atual.strftime("%H:%M:%S")}"
      end

      if Time.now >= @proximo_atendimento && @fila.fila_atual.any?
        cliente = @fila.atender_cliente
        cliente.atendimento_inicio = Time.now
        tempo_atendimento = tempo_aleatorio(1, @intervalo_atendimento)
        sleep(tempo_atendimento)
        cliente.atendimento_fim = Time.now
        @tempo_ocupado += tempo_atendimento
        puts "Cliente #{cliente.nome} (##{cliente.numero_chegada}) atendido às #{cliente.atendimento_fim.strftime("%H:%M:%S")}"
        @proximo_atendimento += 5
      end

      @tempo_atual = Time.now
      sleep(tempo_aleatorio(1, @intervalo_chegada))
    end

    relatar_estatisticas
  end

  def relatar_estatisticas
    clientes = @fila.fila_atual
    tempos_espera = clientes.map(&:tempo_espera)
    tempos_no_sistema = clientes.map(&:tempo_no_sistema)

    tempo_medio_espera = tempos_espera.sum / tempos_espera.size unless tempos_espera.empty?
    tempo_medio_sistema = tempos_no_sistema.sum / tempos_no_sistema.size unless tempos_no_sistema.empty?
    taxa_ocupacao = @tempo_ocupado / @duracao_simulacao

    puts "Tempo médio de espera: #{tempo_medio_espera.round(2)} segundos" unless tempos_espera.empty?
    puts "Tempo médio no sistema: #{tempo_medio_sistema.round(2)} segundos" unless tempos_no_sistema.empty?
    puts "Taxa de ocupação do servidor: #{(taxa_ocupacao * 100).round(2)}%"
  end
end
