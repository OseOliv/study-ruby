# frozen_string_literal: true

class Hero
  attr_reader :weapon, :life

  def initialize
    @weapon = 'sword'
    @life = 5000
  end
end
