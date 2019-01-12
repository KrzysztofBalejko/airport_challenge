require_relative 'plane'
require_relative 'weather'

class Airport

  def initialize
    @airport = []
  end

  def land(plane, weather)
    if @airport.length >= 3
      fail 'Airport full'
    end
    if weather != "sunny"
      fail 'Landing not authorised'
    end
    @airport << plane
  end

  def take_off(weather)
    if weather != "sunny"
      fail 'Take off not authorised'
    end
    @airport.pop
    'Plane no longer in the airport'
  end
end
