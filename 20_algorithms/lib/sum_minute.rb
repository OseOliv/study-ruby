class SumMinute
  def self.time_after_k_minutes(time, k)
    hours, minutes = time.split(':').map(&:to_i)
    total_minutes = minutes + k
    new_minutes = total_minutes % 60
    additional_hours = total_minutes / 60
    new_hours = (hours + additional_hours) % 24
    format('%02d:%02d', new_hours, new_minutes)
  end
end

puts SumMinute.time_after_k_minutes("12:43", 21)  # Saída: "13:04"


