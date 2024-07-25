# frozen_string_literal: true
class MergeSort
  def merge_sort(arr)
    return arr if arr.length <= 1

    mid = arr.length / 2
    part1 = arr[0...mid]
    part2 = arr[mid..]

    merge(merge_sort(part1), merge_sort(part2))
  end

  def merge(arr1, arr2)
    sorted = []
    while arr1.any? && arr2.any?
      sorted << if arr1.first <= arr2.first
                  arr1.shift
                else
                  arr2.shift
                end
    end
    sorted + arr1 + arr2
  end
end


