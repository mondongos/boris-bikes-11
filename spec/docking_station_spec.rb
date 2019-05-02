require 'docking_station'

# describe DockingStation do
#   it "responds to release bike" do
#     docking_station = DockingStation.new
#     expect(docking_station).to respond_to(:release_bike)
#   end
# end

describe DockingStation do
  docking_station = DockingStation.new
  it { is_expected.to respond_to(:release_bike) }
  it "provides a bike" do
    docking_station_with_bike = DockingStation.new
    docking_station_with_bike.receive_bike(Bike.new)
    expect(docking_station_with_bike.release_bike).to be_instance_of Bike
  end
  it "provides a bike that responds to working?" do
      docking_station_with_bike = DockingStation.new
      docking_station_with_bike.receive_bike(Bike.new)
      bike = docking_station_with_bike.release_bike
      expect(bike).to be_working
  end
  it { is_expected.to respond_to(:receive_bike) }
  it "checks if the bike is being stored in docking station" do
    station = DockingStation.new
    bike = Bike.new
    station.receive_bike(bike)
    expect(station.bike_array.include? bike).to eq(true)
  end
  it "checks what bikes are in bike_array" do
    expect(subject.check_bikes).to eq(subject.bike_array)
  end
  it "releasing a bike when bike_array is empty raises an error" do
    expect { subject.release_bike }.to raise_error if subject.bike_array.length == 0
  end
end
