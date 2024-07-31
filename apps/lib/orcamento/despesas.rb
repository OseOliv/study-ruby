class Expenses
  attr_accessor :rent_bill, :water_bill, :energy_bill, :internet_bill, :food
  def initialize(rent_bill, water_bill, energy_bill, internet_bill, food)
    @rent_bill = rent_bill
    @water_bill = water_bill
    @energy_bill = energy_bill
    @internet_bill = internet_bill
    @food = food
  end

end