def group_words_by_unique_characters(words)
  groups = Hash.new { |hash, key| hash[key] = [] }

  words.each do |word|
    key = word.chars.uniq.sort.join
    groups[key] << word
  end
  
  result = {}
  groups.each do |_key, words|
    sorted_words = words.sort
    result[sorted_words.first] = sorted_words.join(', ')
  end

  result
end
