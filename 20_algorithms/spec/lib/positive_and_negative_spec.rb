require 'spec_helper'
require 'positive_and_negative'


RSpec.describe PositiveNegative, type: :model do
  describe '#rearrange' do
    let(:pn) { PositiveNegative.new }

    it 'rearranges positives at even indices and negatives at odd indices' do
      array1 = [1, -3, 5, 6, -3, 6, 7, -4, 9, 10]
      pn.rearrange(array1)
      expect(array1).to eq([1, -3, 5, -3, 6, 6, 7, -4, 9, 10])
    end

    it 'leaves extra elements in place if there are more positives or negatives' do
      array3 = [1, -3, 5, -6, 7, -8, 9, 10]
      pn.rearrange(array3)
      expect(array3).to eq([1, -3, 5, -6, 7, -8, 9, 10])

      array4 = [-1, 2, -3, 4, -5, 6]
      pn.rearrange(array4)
      expect(array4).to eq([2, -1, 4, -3, 6, -5])
    end

    it 'handles the case with only positive numbers' do
      array5 = [1, 2, 3, 4, 5]
      pn.rearrange(array5)
      expect(array5).to eq([1, 2, 3, 4, 5])
    end

    it 'handles the case with only negative numbers' do
      array6 = [-1, -2, -3, -4, -5]
      pn.rearrange(array6)
      expect(array6).to eq([-1, -2, -3, -4, -5])
    end

    it 'handles the case with no elements' do
      array7 = []
      pn.rearrange(array7)
      expect(array7).to eq([])
    end

    it 'handles the case with a single positive number' do
      array8 = [1]
      pn.rearrange(array8)
      expect(array8).to eq([1])
    end

    it 'handles the case with a single negative number' do
      array9 = [-1]
      pn.rearrange(array9)
      expect(array9).to eq([-1])
    end

    it 'handles the case with multiple positives and negatives but only one position to fill' do
      array10 = [1, -1]
      pn.rearrange(array10)
      expect(array10).to eq([1, -1])
    end
  end
end