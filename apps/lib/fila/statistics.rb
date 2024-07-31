require_relative 'managequeue'
class Statistics
  def initialize(queue)
    @queue = queue
  end

  def average_waiting_time
    return 0 if @queue.instance_variable_get(:@queue).empty?

    total_waiting_time = 0
    total_minutes_in_day = 1440

    @queue.instance_variable_get(:@queue).each do |client|
      arrival_time = time_to_minutes(client.time_arrival)
      waiting_time = total_minutes_in_day - arrival_time
      total_waiting_time += waiting_time
    end

    total_waiting_time.to_f / @queue.instance_variable_get(:@queue).size
  end

  def average_time_in_system
    return 0 if @queue.instance_variable_get(:@queue).empty?

    total_time_in_system = 0

    @queue.instance_variable_get(:@queue).each do |client|
      arrival_time = time_to_minutes(client.time_arrival)
      service_end_time = arrival_time + client.time_service
      time_in_system = service_end_time - arrival_time
      total_time_in_system += time_in_system
    end

    total_time_in_system.to_f / @queue.instance_variable_get(:@queue).size
  end

  def server_occupancy_rate
    return 0 if @queue.instance_variable_get(:@queue).empty?

    total_service_time = @queue.instance_variable_get(:@queue).sum { |client| client.time_service }
    total_time = @queue.instance_variable_get(:@queue).size * 60

    (total_service_time.to_f / total_time) * 100
  end

  private

  def time_to_minutes(time_str)
    hours, minutes = time_str.split(':').map(&:to_i)
    (hours * 60) + minutes
  end
end