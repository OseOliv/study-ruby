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
end