require 'spec_helper'
require 'quick_sort'

RSpec.describe QuickSort do
  describe '#quick_sort' do
    it 'returns an sorted array' do
      sorted = QuickSort.new
      arr = [3, 6, 8, 10, 1, 2, 1]
      expect(sorted.quick_sort(arr)).to eq([1, 1, 2, 3, 6, 8, 10])
    end

    it 'returns an sorted array' do
      sorted = QuickSort.new
      arr = [10, 7, 8, 9, 1, 5]
      sorted_arr = arr.sort
      expect(sorted.quick_sort(arr)).to eq(sorted_arr)
    end
  end
end
