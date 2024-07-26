class MinimumSum
  def minimum_sum(arr1, arr2, mod)

    # Number of elements in arrays
    n = arr1.size
    # Calculate the initial sum of products
    res = 0
    arr1.each_with_index do |val, i|
      res += val * arr2[i]
    end

    # Track the maximum possible reduction
    diff = 0

    (0...n).each do |i|
      pro = arr1[i] * arr2[i]

      # Calculate the potential new product after k modifications
      temp = if pro < 0 && arr2[i] < 0
               (arr1[i] + 2 * mod) * arr2[i]
             elsif pro < 0 && arr1[i] < 0
               (arr1[i] - 2 * mod) * arr2[i]
             elsif pro > 0 && arr1[i] < 0
               (arr1[i] + 2 * mod) * arr2[i]
             elsif pro > 0 && arr1[i] > 0
               (arr1[i] - 2 * mod) * arr2[i]
             else
               pro
             end

      # Compute the difference and update the maximum difference
      d = (pro - temp).abs
      diff = d if d > diff
    end

    # Calculate and return the minimum possible sum
    res - diff
  end
end



