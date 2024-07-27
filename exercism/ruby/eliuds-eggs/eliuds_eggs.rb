class EliudsEggs
  def self.egg_count(deci)
    deci.to_s(2).count("1")
  end

end

puts EliudsEggs.egg_count(89)  # Output: 4
