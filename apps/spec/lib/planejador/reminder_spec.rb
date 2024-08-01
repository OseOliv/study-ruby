require 'spec_helper'
require 'planejador/reminder'
require 'planejador/organizer'
require 'planejador/participants'


RSpec.describe Reminder, type: :model do
  let(:participant1) { Participant.new('Ana', []) }
  let(:participant2) { Participant.new('Maria', []) }
  let(:participant3) { Participant.new('Joao', []) }

  let(:task1) { Task.new('Buy groceries') }
  let(:task2) { Task.new('Book venue', completed: true) }
  let(:task3) { Task.new('Prepare invitations') }
  let(:task4) { Task.new('Confirm attendance') }

  let(:tasks) { [task1, task2, task3, task4] }
  let(:event_date) { (Date.today + 5).to_s } # Event is 5 days from today

  subject { Reminder.new(event_date, tasks, [participant1, participant2, participant3]) }

  it 'calculates days until the event correctly' do
    expect(subject.days_until_event).to eq(5)
  end

  it 'determines pending tasks correctly' do
    expect(subject.pending_tasks).to contain_exactly(task1, task3, task4)
  end

  it 'sends notifications with correct message' do
    allow(subject).to receive(:send_notification)
    subject.send_notifications
    expect(subject).to have_received(:send_notification).exactly(3).times
  end
end