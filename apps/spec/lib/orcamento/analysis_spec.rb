require 'spec_helper'
require 'orcamento/analysis'

RSpec.describe Analysis do
  let(:expenses_history) do
    [
      { rent_bill: 800, water_bill: 50, energy_bill: 100, internet_bill: 60, food: 250 },
      { rent_bill: 800, water_bill: 55, energy_bill: 110, internet_bill: 65, food: 200 },
      { rent_bill: 800, water_bill: 52, energy_bill: 105, internet_bill: 70, food: 220 }
    ]
  end
  let(:monthly_budget) { 1000 }
  subject { described_class.new(expenses_history, monthly_budget) }

  describe '#total_expenses_for_month' do
    it 'calculates the total expenses for a given month' do
      month = expenses_history.first
      expect(subject.total_expenses_for_month(month)).to eq(1260)
    end
  end

  describe '#monthly_savings' do
    it 'calculates the savings for each month based on the budget' do
      expected_savings = [
        { month: expenses_history[0], savings: -260 },
        { month: expenses_history[1], savings: -230 },
        { month: expenses_history[2], savings: -247 }
      ]
      expect(subject.monthly_savings).to eq(expected_savings)
    end
  end

  describe '#suggest_savings_tips' do
    it 'provides tips based on average expenses' do
      expected_tips = [
        'Consider reducing food expenses. Try meal planning or cooking at home more often.',
        'Review your energy usage. Implement energy-saving measures like LED bulbs or smart thermostats.',
        'Check if you can get a better deal on your internet plan.'
      ]
      expect(subject.suggest_savings_tips).to eq(expected_tips)
    end
  end
end