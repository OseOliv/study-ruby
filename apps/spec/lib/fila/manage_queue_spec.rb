require 'spec_helper'
require 'fila/managequeue'


RSpec.describe ManageQueue do
  let(:queue) { ManageQueue.new }
  let(:client) { Client.new('João', 1, '10:00', 30) }
  let(:client2) { Client.new('Maria', 2, '10:15', 45) }

  describe '#initialize' do
    it 'initializes with an empty queue' do
      expect(queue.instance_variable_get(:@queue)).to eq([])
    end
  end

  describe '#new_client' do
    it 'adds a client to the queue' do
      queue.new_client(client)
      expect(queue.instance_variable_get(:@queue)).to include(client)
    end

    it 'increases the size of the queue by one' do
      expect { queue.new_client(client) }.to change { queue.instance_variable_get(:@queue).size }.by(1)
    end
  end

  describe '#queue_list' do
    context 'with no clients' do
      it 'if the queue is empty' do
        expect(queue.queue_list).to eq("The queue is empty")
      end
    end

    context 'with clients' do
      before do
        queue.new_client(client)
        queue.new_client(client2)
      end
      it 'returns the list of clients' do
        expected_output = <<~OUTPUT
          Cliente #1:
            Nome: João
            ID de Chegada: 1
            Hora de Chegada: 10:00
            Tempo de Serviço: 30 minutos

          Cliente #2:
            Nome: Maria
            ID de Chegada: 2
            Hora de Chegada: 10:15
            Tempo de Serviço: 45 minutos
        OUTPUT
        expect(queue.queue_list).to eq(expected_output.strip)
      end
    end

    describe '#add_random_client' do
      it 'adds a random client to the queue' do
        queue.add_random_client
        expect(queue.instance_variable_get(:@queue)).not_to be_empty
      end

      it 'adds exactly four clients to the queue' do
        4.times { queue.add_random_client }
        expect(queue.instance_variable_get(:@queue).size).to eq(4)
      end
    end
  end
end