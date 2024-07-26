class Lasagna
  EXPECTED_MINUTES_IN_OVEN = 40
  PREPARE_TIME_PER_LAYER = 2
  def remaining_minutes_in_oven(actual_minutes_in_oven)
    -actual_minutes_in_oven + EXPECTED_MINUTES_IN_OVEN
  end
  def preparation_time_in_minutes(layers)
    layers * PREPARE_TIME_PER_LAYER
  end
  def total_time_in_minutes(number_of_layers:, actual_minutes_in_oven:)
    preparation_time_in_minutes(number_of_layers) + actual_minutes_in_oven
  end
end

# Usage and Test
lasagna = Lasagna.new
puts lasagna.total_time_in_minutes(number_of_layers: 1, actual_minutes_in_oven: 30)  # Output: 38
