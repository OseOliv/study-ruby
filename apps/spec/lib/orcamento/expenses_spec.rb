require 'spec_helper'
require 'orcamento/expenses'

RSpec.describe Expenses do
  describe '#initialize' do
    it 'sets up expenses correctly' do
      expenses = Expenses.new(1000, 50, 80, 60, 200)
      expect(expenses.rent_bill).to eq(1000)
      expect(expenses.water_bill).to eq(50)
      expect(expenses.energy_bill).to eq(80)
      expect(expenses.internet_bill).to eq(60)
      expect(expenses.food).to eq(200)
    end
  end

  describe '#total_expenses' do
    it 'calculates the total of rent, water, energy, and internet bills' do
      expenses = Expenses.new(1000, 50, 80, 60, 200)
      expect(expenses.total_expenses).to eq(1190)
    end
  end

  describe '#display_expenses' do
    it 'returns a hash with all expenses and total' do
      expenses = Expenses.new(1000, 50, 80, 60, 200)
      expected_output = {
        rent_bill: 1000,
        water_bill: 50,
        energy_bill: 80,
        internet_bill: 60,
        food: 200,
        total: 1190
      }
      expect(expenses.display_expenses).to eq(expected_output)
    end
  end

  describe '#update_expenses' do
    it 'updates the specified expense' do
      expenses = Expenses.new(1000, 50, 80, 60, 200)
      expenses.update_expenses(:food, 250)
      expect(expenses.food).to eq(250)
    end

    it 'returns an error message for invalid expense type' do
      expenses = Expenses.new(1000, 50, 80, 60, 200)
      result = expenses.update_expenses(:invalid_expense, 250)
      expect(result).to eq('Invalid expense type')
    end
  end
end