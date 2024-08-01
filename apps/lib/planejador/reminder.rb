require 'date'
class Reminder
  attr_acessor :event_date, :tasks, :participants

  def initialize(event_date, tasks, participants)
    @event_date = Date.parse(event_date)
    @tasks = tasks
    @participants = participants
  end

end