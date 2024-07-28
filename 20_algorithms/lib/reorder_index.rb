def reorder_index(arr, idx)
  reordered_arr = Array.new(arr.length)

  idx.each_with_index do |new_position, index|
    reordered_arr[new_position] = arr[index]
  end

  new_index = (0...idx.length).to_a

  return reordered_arr, new_index
end

