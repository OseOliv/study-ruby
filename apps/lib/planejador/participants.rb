# frozen_string_literal: true

class Participants
  attr_accessor :name, :available_date

  def initialize(name, available_date)
    @name = name
    @available_date = available_date
  end
end
