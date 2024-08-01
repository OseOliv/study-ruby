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
    @tasks = []
  end
  def add_participant(participant)
    @participants << participant
  end
  def add_task(task)
    @tasks << task
  end

  def distribute_tasks
    return {} if @participants.empty? || @tasks.empty?

    tasks_distribution = Hash.new { |hash, key| hash[key] = [] }
    @tasks.each_with_index do |task, index|
      participant = @participants[index % @participants.length]
      tasks_distribution[participant.name] << task.description
    end
    tasks_distribution
  end

end