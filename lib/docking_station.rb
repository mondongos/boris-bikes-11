require_relative 'bike'

class DockingStation
  attr_reader :bike_array, :station_capacity
  def initialize
    @bike_array = []
    @station_capacity = 12
  end

  def release_bike
    if @bike_array.length > 0
      Bike.new
    else
      raise StandardError
    end
  end

  def receive_bike(bike)
    if @bike_array.length >= @station_capacity
      raise StandardError
    else
      @bike_array << bike
    end
  end

  def check_bikes
    @bike_array
  end
end
