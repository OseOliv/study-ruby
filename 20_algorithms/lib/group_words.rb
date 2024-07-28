def group_words_by_unique_characters(words)
  groups = words.group_by { |word| word.chars.uniq.sort.join }
  groups.transform_values do |words|
    words.sort.join(', ')
  end.transform_keys do |key|
    groups[key].sort.first
  end
end
