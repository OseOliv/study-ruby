class Expenses
  attr_accessor :rent_bill, :water_bill, :energy_bill, :internet_bill, :food

  def initialize(rent_bill, water_bill, energy_bill, internet_bill, food)
    @rent_bill = rent_bill
    @water_bill = water_bill
    @energy_bill = energy_bill
    @internet_bill = internet_bill
    @food = food
  end

  def total_expenses
    rent_bill + water_bill + energy_bill + internet_bill
  end

  def display_expenses
    { rent_bill: rent_bill,
      water_bill: water_bill,
      energy_bill: energy_bill,
      internet_bill: internet_bill,
      food: food,
      total: total_expenses }
  end

  def update_expenses(expense_type, amount)
    case expense_type
    when :rent_bill
      self.rent_bill = amount
    when :water_bill
      self.water_bill = amount
    when :energy_bill
      self.energy_bill = amount
    when :internet_bill
      self.internet_bill = amount
    when :food
      self.food = amount
    else
      'Invalid expense type'
    end
  end

end
