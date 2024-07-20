class JumpSearch
  def self.jump_search(array, value)
    n = array.length
    m = Math.sqrt(n).to_i

    (0...n).step(m).each do |i|
      if array[i + m - 1] >= value
        (i...[i + m, n].min).each do |j|
          return j if array[j] == value
        end
      end
    end
  end
end


