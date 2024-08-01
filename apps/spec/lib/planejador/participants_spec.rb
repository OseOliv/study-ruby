require 'spec_helper'
require 'planejador/participants'

RSpec.describe Participant, type: :model do
  it 'has a name and available_dates' do
    participant = Participant.new('Ana', ['2024-08-01', '2024-08-02'])

    expect(participant.name).to eq('Ana')
    expect(participant.available_dates).to eq(['2024-08-01', '2024-08-02'])
  end
end

RSpec.describe IdealDates, type: :model do
  let(:participant1) { Participant.new('Pedro', ['2024-08-01', '2024-08-02', '2024-08-03']) }
  let(:participant2) { Participant.new('Maria', ['2024-08-02', '2024-08-03', '2024-08-04']) }
  let(:participant3) { Participant.new('Joao', ['2024-08-01', '2024-08-03']) }

  subject { IdealDates.new }

  before do
    subject.add_participant(participant1)
    subject.add_participant(participant2)
    subject.add_participant(participant3)
  end

  it 'suggests the ideal dates for the event' do
    expect(subject.suggest_dates).to eq(['2024-08-03'])
  end

  it 'returns an empty array if no participants are added' do
    empty_planner = IdealDates.new
    expect(empty_planner.suggest_dates).to eq([])
  end
end