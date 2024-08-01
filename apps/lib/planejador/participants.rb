# frozen_string_literal: true

class Participant
  attr_accessor :name, :available_dates

  def initialize(name, available_dates)
    @name = name
    @available_dates = available_dates
  end
end

class IdealDates

  def initialize
    @participants = []
  end

  def add_participant(participant)
    @participants << participant
  end

  def suggest_dates
    return [] if @participants.empty?

    all_dates = @participants.map(&:available_dates)

    ideal_dates = all_dates.reduce(:&)

    ideal_dates
  end
end

