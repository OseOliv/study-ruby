require 'spec_helper'
require 'commom_characters'

RSpec.describe CommonCharacter do
  describe '.common_characters' do
    it 'returns common characters in all strings' do
      strings = ["geeksforgeeks", "gemkstones", "acknowledges", "aguelikes"]
      expect(CommonCharacter.common_characters(strings)).to eq(['e', 'g', 'k', 's'])
    end

    it 'returns common characters in two strings' do
      strings = ["apple", "orange"]
      expect(CommonCharacter.common_characters(strings)).to eq(['a', 'e'])
    end

    it 'returns an empty array if no common characters' do
      strings = ["apple", "banana", "cherry"]
      expect(CommonCharacter.common_characters(strings)).to be_empty
    end

    it 'returns characters in alphabetical order' do
      strings = ["abac", "bada", "cab"]
      expect(CommonCharacter.common_characters(strings)).to eq(['a', 'b'])
    end

    it 'handles single character strings' do
      strings = ["a", "a", "a"]
      expect(CommonCharacter.common_characters(strings)).to eq(['a'])
    end

    it 'handles strings with no common characters' do
      strings = ["abc", "def", "ghi"]
      expect(CommonCharacter.common_characters(strings)).to be_empty
    end
  end
end