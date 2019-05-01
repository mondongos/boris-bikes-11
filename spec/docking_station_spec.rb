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
end
