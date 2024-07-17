class Acronym
    def self.abbreviate(words)
      parts = words.split(/[\s-]+/)
      parts.map { |part| part[0] }.join.upcase
  end
end

puts Acronym.abbreviate("Thank George It's Friday!")