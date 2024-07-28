class CommonCharacter
  def self.common_characters(strings)
    hash_global = Array.new(26, 1)
    char_to_index = ->(char) { char.ord - 'a'.ord }

    strings.each do |string|
      hash_temp = Array.new(26, 0)
      string.chars.each do |char|
        hash_temp[char_to_index.call(char)] = 1
      end
      hash_global.each_index do |i|
        hash_global[i] = hash_global[i] & hash_temp[i]
      end
    end

    common_chars = hash_global.each_index.select { |i| hash_global[i] == 1 }
    common_chars.map { |i| (i + 'a'.ord).chr }.sort
  end
end
