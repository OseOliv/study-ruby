class Luhn
  def self.valid?(str)
    if str.strip.length <= 1
      return false
    end

    digits = str.gsub(/\s/, '')
    if digits.match?(/\D/)
      return false
    end

    numbers = digits.chars.map(&:to_i).reverse

    sum = numbers.each_with_index.sum do |digit, index|
      if index.odd?
        doubled = digit * 2
        doubled > 9 ? doubled - 9 : doubled
      else
        digit
      end
    end
    sum % 10 == 0
  end
end