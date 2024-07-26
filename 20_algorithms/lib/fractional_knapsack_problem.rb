def fractional_knapsack(items, capacity)
  items.sort_by! { |weight, profit| -(profit.to_f / weight) }

  total_profit = 0.0
  remaining_capacity = capacity

  items.each do |weight, profit|
    if weight <= remaining_capacity
      total_profit += profit
      remaining_capacity -= weight
    else
      total_profit += profit * (remaining_capacity.to_f / weight)
      break
    end
  end

  total_profit
end


