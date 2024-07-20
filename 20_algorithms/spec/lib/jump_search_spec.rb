# spec/jump_search_spec.rb
require 'spec_helper'
require 'jump_search'

RSpec.describe JumpSearch do
  describe '.jump_search' do
    it 'finds the index of the value' do
      array = [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610]
      value = 55
      expect(JumpSearch.jump_search(array, value)).to eq(10)
    end

    it 'finds the index of the value' do
      array = [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610]
      value = 144
      expect(JumpSearch.jump_search(array, value)).to eq(12)
    end

  end
end
