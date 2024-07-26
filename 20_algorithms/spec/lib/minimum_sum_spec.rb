require 'spec_helper'
require 'minimum_sum'

RSpec.describe MinimumSum do
  describe '#minimu-sum' do
    it 'calculates the minimum sum of products for given arrays and mod' do
      min_sum = MinimumSum.new
      arr1 = [1, 2, -3]
      arr2 = [-2, 3, -5]
      mod = 5
      expect(min_sum.minimum_sum(arr1, arr2, mod)).to eq(-31)
    end
  end
end
