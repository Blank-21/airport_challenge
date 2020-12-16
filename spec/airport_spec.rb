#As an air traffic controller
#So I can get passengers to a destination
#I want to instruct a plane to land at an airport

#airport class -> with method to allow for planes (#clear_for_landing(plane) storing planes in array called hangar)

#As an air traffic controller
#So I can get passengers on the way to their destination
#I want to instruct a plane to take off from an airport and confirm that it is no longer in the airport

#taking off method for airport -> #clear for takeoff(plane)
#remove plane from hangar

require 'airport'

describe Airport do

  let(:airport) {Airport.new}

  describe '#clear_for_landing' do
    it 'takes a plane and adds to the hangar' do
      airport.clear_for_landing("BA123")
      expect(airport.hangar).to include "BA123"
    end
  end

  describe '#clear_for_takeoff' do
    before(:each) do
      airport.clear_for_landing("BA123")
    end
    it 'takes a plane and removes it from the hangar' do
      airport.clear_for_landing("BA123")
      airport.clear_for_takeoff("BA123")
      expect(airport.hangar).not_to include("BA123")
    end

    it 'returns the flight number of the plane that took off' do
      airport.clear_for_landing("BA123")
      actual = airport.clear_for_takeoff("BA123")
      expect = "BA123"
      expect(actual).to eq expect
    end
  end

end
