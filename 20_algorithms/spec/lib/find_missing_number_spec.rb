require 'spec_helper'
require 'find_missing_number'

RSpec.describe FindMissingNumber do
  describe '#find_missing_number' do
    it '> the missing number should be' do
      array = [1, 2, 3, 4, 6, 7, 8, 9, 10]
      n = 10
      expect(FindMissingNumber.find_missing_number(array, n)).to eq(5)
    end

    it '> the missing number should not be' do
      array = [1, 2, 3, 5]
      n = 5
      expect(FindMissingNumber.find_missing_number(array, n)).to eq(4)
    end

    it '> the missing number should not be' do
      array = [1, 2, 4, 6, 3, 7, 8]
      n = 8
      expect(FindMissingNumber.find_missing_number(array, n)).to eq(5)
    end

  end
end