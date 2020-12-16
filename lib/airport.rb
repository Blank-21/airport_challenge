class Airport

  attr_reader :hangar

  def initialize
    @hangar = []
  end

  def clear_for_landing(flight_number)
    @hangar << flight_number
  end

  def clear_for_takeoff(flight_number)
    @hangar.delete(flight_number)
  end

end
