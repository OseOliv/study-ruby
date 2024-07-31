class Client
  attr_accessor :name , :id_arrival, :time_arrival, :time_service
  def initialize(name, id_arrival, time_arrival, time_service)
    @name = name
    @id_arrival = id_arrival
    @time_arrival = time_arrival
    @time_service = time_service
  end
end