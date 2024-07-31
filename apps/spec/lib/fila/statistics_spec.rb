require 'spec_helper'
require 'fila/statistics'

RSpec.describe Statistics do
  let(:queue) { ManageQueue.new }
  let(:client1) { Client.new('João', 1, '10:00', 30) }
  let(:client2) { Client.new('Maria', 2, '11:00', 45) }

  before do
    queue.new_client(client1)
    queue.new_client(client2)
  end

  let(:statistics) { Statistics.new(queue) }

  describe '#average_waiting_time' do
    it 'calculates the average waiting time correctly' do
      expected_waiting_time = (1440 - 600 + 1440 - 660) / 2.0
      expect(statistics.average_waiting_time).to be_within(1).of(expected_waiting_time)
    end
  end

  describe '#average_time_in_system' do
    it 'calculates the average time in system correctly' do
      expected_time_in_system = (30 + 45) / 2.0
      expect(statistics.average_time_in_system).to be_within(1).of(expected_time_in_system)
    end
  end

  describe '#server_occupancy_rate' do
    it 'calculates the server occupancy rate correctly' do
      total_service_time = 30 + 45
      total_time = 2 * 60
      expected_occupancy_rate = (total_service_time.to_f / total_time) * 100
      expect(statistics.server_occupancy_rate).to be_within(1).of(expected_occupancy_rate)
    end
  end
end