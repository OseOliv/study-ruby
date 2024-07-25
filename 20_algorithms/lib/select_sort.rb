# frozen_string_literal: true
class SelectSort
  def select_sort(arr)
    n = arr.length
    (0...n).each do |i|
      min_index = i
      ((i + 1)...n).each do |j|
        if arr[min_index] > arr[j]
          min_index = j
        end
      end
      if min_index != i
        arr[i], arr[min_index] = arr[min_index], arr[i]
      end
    end
    arr
  end
end
