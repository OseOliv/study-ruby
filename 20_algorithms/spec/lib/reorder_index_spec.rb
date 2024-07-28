require 'spec_helper'
require 'reorder_index'

RSpec.describe '#reorder_index' do
  it 'reorders array based on index array' do
    arr = [10, 11, 12]
    idx = [1, 0, 2]
    expected_reordered_arr = [11, 10, 12]
    expected_new_index = [0, 1, 2]

    reordered_arr, new_index = reorder_index(arr, idx)

    expect(reordered_arr).to eq(expected_reordered_arr)
    expect(new_index).to eq(expected_new_index)
  end

  it 'handles arrays with elements in a different order' do
    arr = [50, 40, 70, 60, 90]
    idx = [3, 0, 4, 1, 2]
    expected_reordered_arr = [40, 60, 90, 50, 70]
    expected_new_index = [0, 1, 2, 3, 4]

    reordered_arr, new_index = reorder_index(arr, idx)

    expect(reordered_arr).to eq(expected_reordered_arr)
    expect(new_index).to eq(expected_new_index)
  end
end