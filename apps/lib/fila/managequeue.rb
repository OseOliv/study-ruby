require_relative 'client'
class ManageQueue
  def initialize
    @queue = []
  end
  def new_client(client)
    @queue << client
  end

  def add_random_client
    name = ['João', 'Maria', 'Pedro', 'Ana', 'Carlos', 'Fernanda', 'Roberto', 'Lucia', 'Gabriel', 'Juliana'].sample
    id_arrival = rand(1..100)
    time_arrival = random_time
    time_service = rand(5..60)

    client = Client.new(name, id_arrival, time_arrival, time_service)
    new_client(client)
  end

  def random_time
    hours = rand(0..23).to_s.rjust(2, '0')
    minutes = rand(0..59).to_s.rjust(2, '0')
    "#{hours}:#{minutes}"
  end

  def queue_list
    if @queue.empty?
      "The queue is empty"
    else
      @queue.each_with_index.map do |client, index|
        "Cliente ##{index + 1}:\n" +
          "  Nome: #{client.name}\n" +
          "  ID de Chegada: #{client.id_arrival}\n" +
          "  Hora de Chegada: #{client.time_arrival}\n" +
          "  Tempo de Serviço: #{client.time_service} minutos"
      end.join("\n\n")
    end

  end
end