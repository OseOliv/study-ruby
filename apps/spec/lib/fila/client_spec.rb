require 'spec_helper'
require 'fila/client'



RSpec.describe Client do

  describe '#initialize' do
    it 'creates a client with the correct attributes' do
      client = Client.new('João', 1, '10:00', 30)

      expect(client.name).to eq('João')
      expect(client.id_arrival).to eq(1)
      expect(client.time_arrival).to eq('10:00')
      expect(client.time_service).to eq(30)
    end
  end

  describe '#name' do
    it 'returns the name of the client' do
      client = Client.new('João', 1, '10:00', 30)
      expect(client.name).to eq('João')
    end
  end

  describe '#id_arrival' do
    it 'returns the arrival ID of the client' do
      client = Client.new('João', 1, '10:00', 30)
      expect(client.id_arrival).to eq(1)
    end
  end

  describe '#time_arrival' do
    it 'returns the arrival time of the client' do
      client = Client.new('João', 1, '10:00', 30)
      expect(client.time_arrival).to eq('10:00')
    end
  end

  describe '#time_service' do
    it 'returns the service time of the client' do
      client = Client.new('João', 1, '10:00', 30)
      expect(client.time_service).to eq(30)
    end
  end
end