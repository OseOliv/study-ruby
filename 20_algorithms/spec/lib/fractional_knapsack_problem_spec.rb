require 'spec_helper'
require 'fractional_knapsack_problem'

RSpec.describe 'fractional_knapsack' do
  it 'calculates the maximum profit for given items and capacity' do
    items = [[20, 100], [10, 60], [30, 120]]
    capacity = 50
    result = fractional_knapsack(items, capacity)
    expect(result).to eq(240.0)
  end

  it 'returns 0 profit for a capacity of 0' do
    items = [[20, 100], [10, 60], [30, 120]]
    capacity = 0
    result = fractional_knapsack(items, capacity)
    expect(result).to eq(0.0)
  end

  it 'returns the full profit for a capacity that fits all items' do
    items = [[20, 100], [10, 60], [30, 120]]
    capacity = 60
    result = fractional_knapsack(items, capacity)
    expect(result).to eq(280.0)
  end
  it 'handles items where only a fraction can be taken' do
    items = [[50, 100], [20, 60]]
    capacity = 30
    result = fractional_knapsack(items, capacity)
    expect(result).to eq(80.0)  # Correção: valor total deve ser 80
  end

end