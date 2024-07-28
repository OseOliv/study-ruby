class Hamming
  def self.compute(dna1, dna2)
    if dna1.length != dna2.length
      raise ArgumentError
    end

    count_differences = 0

    dna1.chars.each_with_index do |char1, index|
      if char1 != dna2[index]
        count_differences += 1
      end

    end

    count_differences

  end

end

