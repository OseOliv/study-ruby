require 'participants'
class Task
  attr_reader :description
  def initialize(description)
    @description = description
  end
end

