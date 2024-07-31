require 'spec_helper'
require 'positive_and_negative'



RSpec.describe PositiveNegative do
  describe '#rearrange_array' do
    it 'alternates between positive and negative numbers' do
      pn = PositiveNegative.new
      array = [1, -1, 2, -2, 3, -3]
      pn.rearrange_array(array)
      expect(array).to eq([1, -1, 2, -2, 3, -3])
    end

    it 'handles more positives than negatives' do
      pn = PositiveNegative.new
      array = [1, 2, 3, -1, -2]
      pn.rearrange_array(array)
      expect(array).to eq([1, -1, 2, -2, 3])
    end

    it 'handles more negatives than positives' do
      pn = PositiveNegative.new
      array = [-1, -2, -3, 1, 2]
      pn.rearrange_array(array)
      expect(array).to eq([1, -1, 2, -2, -3])
    end

    it 'handles all positive numbers' do
      pn = PositiveNegative.new
      array = [1, 2, 3]
      pn.rearrange_array(array)
      expect(array).to eq([1, 2, 3])
    end

    it 'handles all negative numbers' do
      pn = PositiveNegative.new
      array = [-1, -2, -3]
      pn.rearrange_array(array)
      expect(array).to eq([-1, -2, -3])
    end

    it 'handles an empty array' do
      pn = PositiveNegative.new
      array = []
      pn.rearrange_array(array)
      expect(array).to eq([])
    end
  end
end