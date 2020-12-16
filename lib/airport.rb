class Airport

  def initialize
    @planes = []
  end

  def clear_for_landing(flight_number)
    @planes << flight_number
  end

  def clear_for_takeoff(flight_number)
    @planes.delete(flight_number)
  end

  def hangar
    @planes
  end
  
end
