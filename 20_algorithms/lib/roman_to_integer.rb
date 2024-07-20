class RomanToInteger
  def self.roman_to_int(s)
    roman_hash = {
      'I' => 1, 'V' => 5, 'X' => 10, 'L' => 50,
      'C' => 100, 'D' => 500, 'M' => 1000
    }

    total = 0
    prev_value = 0

    s.upcase.chars.reverse.each do |char|
      value = roman_hash[char]
      if value < prev_value
        total -= value
      else
        total += value
      end
      prev_value = value
    end

    total
  end
end

