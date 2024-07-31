require 'spec_helper'
require 'fibonacci_search'

RSpec.describe FibonacciSearch do
  before(:each) do
    @search = FibonacciSearch.new
  end

  it 'finds an element present in the list' do
    array = [10, 22, 35, 40, 45, 50, 80, 82, 85, 90, 100]
    x = 85
    expect(@search.fibonacci_search(array, x)).to eq(8)
  end

  it 'does not find an element that is not in the list' do
    array = [10, 22, 35, 40, 45, 50, 80, 82, 85, 90, 100]
    x = 99
    expect(@search.fibonacci_search(array, x)).to eq(-1)
  end

  it 'finds the first element in the list' do
    array = [10, 22, 35, 40, 45, 50, 80, 82, 85, 90, 100]
    x = 10
    expect(@search.fibonacci_search(array, x)).to eq(0)
  end

  it 'finds the last element in the list' do
    array = [10, 22, 35, 40, 45, 50, 80, 82, 85, 90, 100]
    x = 100
    expect(@search.fibonacci_search(array, x)).to eq(10)
  end

  it 'does not find an element in an empty list' do
    array = []
    x = 1
    expect(@search.fibonacci_search(array, x)).to eq(-1)
  end

  it 'does not find an element in a list with a single element' do
    array = [5]
    x = 10
    expect(@search.fibonacci_search(array, x)).to eq(-1)
  end

  it 'finds an element in a list with a single element' do
    array = [5]
    x = 5
    expect(@search.fibonacci_search(array, x)).to eq(0)
  end
end