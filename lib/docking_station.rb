require_relative 'bike'

class DockingStation
  attr_reader :bike_array
  def initialize
    @bike_array = []
  end

  def release_bike
    if @bike_array.length > 0
      Bike.new
    else
      raise StandardError
    end
  end

  def receive_bike(bike)
    @bike_array << bike
  end

  def check_bikes
    @bike_array
  end
end
