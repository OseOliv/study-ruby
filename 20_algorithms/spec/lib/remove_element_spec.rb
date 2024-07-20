require 'spec_helper'
require 'remove_element'

RSpec.describe RemoveElement do
  describe 'remove element from array' do
    it 'should remove all the the occurrences of the value from the array' do
      remove = RemoveElement.new
      nums = [3, 2, 2, 3, 4].sort
      val = 3
      new_length = remove.remove_element(nums, val)
      expect(new_length).to eq(3)
      expect(nums[0, new_length]).to eq([2, 2, 4].sort)
      puts "Test has passed!"
    end

    it 'should remove all the the occurrences of the value from the array' do
      remove = RemoveElement.new
      nums = [0,1,2,2,3,0,4,2].sort
      val = 2
      new_length = remove.remove_element(nums, val)
      expect(new_length).to eq(5)
      expect(nums[0, new_length]).to eq([0,1,4,0,3].sort)
      puts "Test has passed!"
    end
  end
end