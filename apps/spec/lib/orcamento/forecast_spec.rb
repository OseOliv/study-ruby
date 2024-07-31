require 'spec_helper'
require 'orcamento/forecast'

RSpec.describe Forecast do
  let(:expenses_history) do
    [
      { rent_bill: 1000, water_bill: 50, energy_bill: 80, internet_bill: 60, food: 200 },
      { rent_bill: 1000, water_bill: 55, energy_bill: 85, internet_bill: 65, food: 220 },
      { rent_bill: 1000, water_bill: 52, energy_bill: 82, internet_bill: 62, food: 210 }
    ]
  end

  subject { Forecast.new(expenses_history) }

  describe '#average_expenses' do
    it 'calculates the average expense for a given category' do
      expect(subject.average_expenses(:rent_bill)).to eq(1000.0)
      expect(subject.average_expenses(:water_bill)).to eq(52.33)
    end
  end

  describe '#forecast_future_expenses' do
    it 'returns the forecasted future expenses based on historical averages' do
      expected_forecast = {
        rent_bill: 1000.0,
        water_bill: 52.33,
        energy_bill: 82.33,
        internet_bill: 62.33,
        food: 210.0
      }
      expect(subject.forecast_future_expenses).to eq(expected_forecast)
    end
  end
end