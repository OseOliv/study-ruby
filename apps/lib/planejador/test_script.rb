# test_script.rb

require_relative 'participants'
require_relative 'organizer'
require_relative 'reminder'

# Creating participants
participant1 = Participant.new('Ana', ['2024-08-01', '2024-08-02', '2024-08-03'])
participant2 = Participant.new('Maria', ['2024-08-02', '2024-08-03', '2024-08-04'])
participant3 = Participant.new('Joao', ['2024-08-01', '2024-08-03'])

# Testing IdealDates
planner = IdealDates.new
planner.add_participant(participant1)
planner.add_participant(participant2)
planner.add_participant(participant3)

puts "Ideal dates for the event: #{planner.suggest_dates}"

# Creating tasks
task1 = Task.new('Buy groceries')
task2 = Task.new('Book venue', completed: true)
task3 = Task.new('Prepare invitations')
task4 = Task.new('Confirm attendance')

tasks = [task1, task2, task3, task4]

# Testing TaskOrganizer
organizer = TaskOrganizer.new
organizer.add_participant(participant1)
organizer.add_participant(participant2)
organizer.add_participant(participant3)
organizer.add_task(task1)
organizer.add_task(task2)
organizer.add_task(task3)
organizer.add_task(task4)

tasks_distribution = organizer.distribute_tasks
puts "Tasks distribution: #{tasks_distribution}"

organizer.complete!
puts "Organizer completed: #{organizer.complete!}"

# Testing Reminder
event_date = (Date.today + 5).to_s
reminder = Reminder.new(event_date, tasks, [participant1, participant2, participant3])
reminder.send_notifications
