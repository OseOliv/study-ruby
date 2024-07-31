# frozen_string_literal: true

class PositiveNegative
  def rearrange(arr)
    positive = 0
    negative = 1

    loop do
      positive += 2 while positive < arr.size && arr[positive] >= 0
      negative += 2 while negative < arr.size && arr[negative] <= 0
      break unless positive < arr.size && negative < arr.size

      arr[positive], arr[negative] = arr[negative], arr[positive]
      
    end
  end
end


