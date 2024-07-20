require 'spec_helper'
require 'two_sum'

RSpec.describe TwoSum do
  describe 'Two sum' do
    it 'should return the indices of the two numbers such that they add up to the target' do
      nums = [2,7,11,15]
      target = 9
      expect(TwoSum.two_sum(nums, target)).to eq([0, 1])
    end

    it 'should return the indices of the target 1 and 2' do
      nums = [3,2,4]
      target = 6
      expect(TwoSum.two_sum(nums, target)).to eq([1,2])
    end
    it 'should return the indices of the target 0 and 1' do
      nums = [3,3]
      target = 6
      expect(TwoSum.two_sum(nums, target)).to eq([0,1])
    end
    it 'should return the indices of the target 2 and 5' do
      nums = [12,25,32,4,2,58,29,56]
      target = 90
      expect(TwoSum.two_sum(nums, target)).to eq([2,5])
    end
  end
end