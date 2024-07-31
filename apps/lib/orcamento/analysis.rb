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

  def suggest_savings_tips
    average_expenses = {
      rent_bill: average_expenses(:rent_bill),
      water_bill: average_expenses(:water_bill),
      energy_bill: average_expenses(:energy_bill),
      internet_bill: average_expenses(:internet_bill),
      food: average_expenses(:food)
    }

    tips = []
    if average_expenses[:food] > 200
      tips << 'Consider reducing food expenses. Try meal planning or cooking at home more often.'
    end
    if average_expenses[:energy_bill] > 80
      tips << 'Review your energy usage. Implement energy-saving measures like LED bulbs or smart thermostats.'
    end
    if average_expenses[:internet_bill] > 60
      tips << 'Check if you can get a better deal on your internet plan.'
    end
    tips
  end

  private
  def average_expenses(category)
    total = @expenses_history.sum { |month| month[category].to_f }
    (total / @expenses_history.size.to_f).round(2)
  end
end