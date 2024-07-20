
class TwoSum
  def self.two_sum(nums, target)
    hash_num = Hash.new(0)

    nums.each_with_index do |num, index|
      compl = target - num
      if hash_num.has_key?(compl)
        return [hash_num[compl], index]
      else
        hash_num[num] = index
      end
    end
  end
end


