require 'participants'
class Task
  attr_reader :description
  def initialize(description)
    @description = description
  end
end

class TaskOrganizer
  def initialize
    @participants = []
    @task = []
  end
  def add_participant(participant)
    @participants << participant
  end
  def add_task(task)
    @task << task
  end

end