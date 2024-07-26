class LocomotiveEngineer
  def self.generate_list_of_wagons(*wagons)
    wagons
  end

  def self.fix_list_of_wagons(each_wagons_id, missing_wagons)
    first_wagon, second_wagon, third_wagon, *rest_of_wagon = each_wagons_id
    [third_wagon, *missing_wagons, *rest_of_wagon, first_wagon, second_wagon]
  end

  def self.add_missing_stops(transport_route, **stops)
    {**transport_route, stops: stops.values}
  end

  def self.extend_route_information(route, more_route_information)
    {**route, **more_route_information}
  end
end
