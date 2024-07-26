
class QuickSort
  def quick_sort(arr)
    return arr if arr.length <= 1

    pivot = arr[arr.length / 2]
    left = arr.select { |num| num < pivot }
    middle = arr.select { |num| num == pivot }
    right = arr.select { |num| num > pivot }

    quick_sort(left) + middle + quick_sort(right)
  end

end

