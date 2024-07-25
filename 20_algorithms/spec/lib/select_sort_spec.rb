require 'spec_helper'
require 'select_sort'

RSpec.describe SelectSort do
  describe '#sort' do
    it 'sorted arrays should be' do
      sort = SelectSort.new
      arr = [64, 25, 12, 22, 11]
      expect(sort.select_sort(arr)).to eq([11, 12, 22, 25, 64])
    end

    it 'sorted another array of integer' do
      sort = SelectSort.new
      arr = [45, 22, 1, 55, 36]
      sorted_arr = arr.clone
      sorted_arr.sort!
      expect(sort.select_sort(arr)).to eq(sorted_arr)
    end
  end
end
