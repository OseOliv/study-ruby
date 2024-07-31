class PositiveNegative
  def rearrange_array(arr)
    positives = arr.select { |x| x >= 0 }
    negatives = arr.select { |x| x < 0 }

    rearranged = []
    pos_index = 0
    neg_index = 0

    arr.each_with_index do |_, index|
      if index.even?
        rearranged << positives[pos_index] if pos_index < positives.size
        pos_index += 1 if pos_index < positives.size
      else
        rearranged << negatives[neg_index] if neg_index < negatives.size
        neg_index += 1 if neg_index < negatives.size
      end
    end

    rearranged.concat(positives[pos_index..-1])
    rearranged.concat(negatives[neg_index..-1])

    arr.replace(rearranged)
  end
end

