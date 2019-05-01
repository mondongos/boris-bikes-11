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
  it "provides a bike that  responds to working?" do
      bike = subject.release_bike
      expect(bike).to be_working
  end
end
