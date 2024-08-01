require 'date'
class Reminder
  attr_acessor :event_date, :tasks, :participants

  def initialize(event_date, tasks, participants)
    @event_date = Date.parse(event_date)
    @tasks = tasks
    @participants = participants
  end

  def days_until_event
    (@event_date - Date.today).to_i
  end

  def pending_tasks
    @tasks.select { |task| !task_completed?(task)}
  end

  def task_completed?(task)
    task.completed
  end

  def send_notifications
    pending_tasks_message = pending_tasks.empty? ? "All tasks are completed!" : "Pending tasks: #{pending_tasks.map(&:description).join(', ')}"

    @participants.each do |participant|
      send_notification(participant, days_until_event, pending_tasks_message)
    end
  end

  private

  def send_notification(participant, days_left, message)
    puts "Reminder for #{participant.name}: #{days_left} days until the event. #{message}"
  end
  
end