require_relative 'expenses'

class Forecast
  attr_accessor :expenses_history

  def initialize(expenses_history)
    @expenses_history = expenses_history
  end

  def average_expenses(category)
    total = @expenses_history.sum { |month| month[category].to_f }
    (total / @expenses_history.size.to_f).round(2)
  end

  def forecast_future_expenses
    {
      rent_bill: average_expenses(:rent_bill),
      water_bill: average_expenses(:water_bill),
      energy_bill: average_expenses(:energy_bill),
      internet_bill: average_expenses(:internet_bill),
      food: average_expenses(:food),
    }
  end
end
