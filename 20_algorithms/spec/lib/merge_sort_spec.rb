require 'spec_helper'
require 'merge_sort'

RSpec.describe MergeSort do
  describe '#merge_sort' do
    it 'should return sorted array' do
      merged = MergeSort.new
      arr = [38, 27, 43, 3, 9, 82, 10]
      sorted_array = arr.sort
      expect(merged.merge_sort(arr)).to eq(sorted_array)
    end
    it 'should handle an array with a single element' do
      merged = MergeSort.new
      arr = [1]
      expect(merged.merge_sort(arr)).to eq([1])
    end
    it 'should handle an array with duplicate elements' do
      merged = MergeSort.new
      arr = [4, 1, 3, 4, 2, 4]
      sorted_array = arr.sort
      expect(merged.merge_sort(arr)).to eq(sorted_array)
    end
    it 'should handle an array with negative numbers' do
      merged = MergeSort.new
      arr = [3, -1, 4, -2, 0]
      sorted_array = arr.sort
      expect(merged.merge_sort(arr)).to eq(sorted_array)
    end
    it 'should handle an array with float values' do
      merged = MergeSort.new
      arr = [3.1, 2.5, 4.0, 1.2]
      sorted_array = arr.sort
      expect(merged.merge_sort(arr)).to eq(sorted_array)
    end
    it 'should handle an array with string elements' do
      merged = MergeSort.new
      arr = ["pear", "apple", "orange", "banana"]
      sorted_array = arr.sort
      puts sorted_array.inspect
      expect(merged.merge_sort(arr)).to eq(sorted_array)
    end
  end
end
