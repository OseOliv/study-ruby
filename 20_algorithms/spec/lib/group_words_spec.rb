require 'spec_helper'
require 'group_words'

RSpec.describe '#group_words_by_unique_characters' do
  it 'groups words with unique characters' do
    input = ['abc', 'bca', 'cab', 'xyz', 'zyx', 'foo', 'oof']
    expected_output = {
      'abc' => 'abc, bca, cab',
      'xyz' => 'xyz, zyx',
      'foo' => 'foo, oof'
    }
    expect(group_words_by_unique_characters(input)).to eq(expected_output)
  end

  it 'handles an empty list' do
    expect(group_words_by_unique_characters([])).to eq({})
  end

  it 'handles unique words' do
    input = ['abcd', 'efgh', 'ijkl']
    expected_output = {
      'abcd' => 'abcd',
      'efgh' => 'efgh',
      'ijkl' => 'ijkl'
    }

    expect(group_words_by_unique_characters(input)).to eq(expected_output)
  end
end

