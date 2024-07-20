class FindMissingNumber
  def self.find_missing_number(array, n)
    sum_total = n * (n + 1) / 2
    sum_array = array.sum
    sum_total - sum_array
  end
end


