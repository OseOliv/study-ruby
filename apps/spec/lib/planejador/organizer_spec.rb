require 'spec_helper'
require 'planejador/organizer'
require 'planejador/participants'


RSpec.describe TaskOrganizer, type: :model do
  let(:participant1) { Participant.new('Ana', []) }
  let(:participant2) { Participant.new('Maria', []) }
  let(:participant3) { Participant.new('Joao', []) }

  let(:task1) { Task.new('Buy groceries') }
  let(:task2) { Task.new('Book venue') }
  let(:task3) { Task.new('Prepare invitations') }
  let(:task4) { Task.new('Confirm attendance') }

  subject { TaskOrganizer.new }

  before do
    subject.add_participant(participant1)
    subject.add_participant(participant2)
    subject.add_participant(participant3)
    subject.add_task(task1)
    subject.add_task(task2)
    subject.add_task(task3)
    subject.add_task(task4)
  end

  it 'distributes tasks among participants' do
    expected_distribution = {
      'Ana' => ['Buy groceries', 'Confirm attendance'],
      'Maria' => ['Book venue'],
      'Joao' => ['Prepare invitations']
    }
    expect(subject.distribute_tasks).to eq(expected_distribution)
  end

  it 'returns an empty hash if there are no participants or tasks' do
    empty_organizer = TaskOrganizer.new
    expect(empty_organizer.distribute_tasks).to eq({})
  end
end