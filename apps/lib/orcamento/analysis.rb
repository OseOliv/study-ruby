require 'expenses'

class Analysis
  attr_accessor :expenses_history, :monthly_budget

  def initialize(expenses_history, monthly_budget)
    @expenses_history = expenses_history
    @monthly_budget = monthly_budget
  end

  def total_expenses_for_month(month)
    month.values_at(:rent_bill, :water_bill, :energy_bill, :internet_bill, :food).sum
  end

  def monthly_savings
    @expenses_history.map do |month|
      total_expenses = total_expenses_for_month(month)
      savings = monthly_budget - total_expenses
      {month: month, savings: savings}
    end
  end


end