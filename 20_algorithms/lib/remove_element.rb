class RemoveElement
  def remove_element(nums, val)
    k = 0
    nums.each do |num|
      if num != val
        nums[k] = num
        k += 1
      end
    end
    k
  end
end

remover = RemoveElement.new
nums = [3, 2, 2, 3, 4]
val = 3
puts remover.remove_element(nums, val)