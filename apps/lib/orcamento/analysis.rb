require 'expenses'

class Analysis
  attr_accessor :expenses_history, :monthly_budget

  def initialize(expenses_history, monthly_budget)
    @expenses_history = expenses_history
    @monthly_budget = monthly_budget
  end


end