require 'Garage'
describe Garage do
  it {is_expected.to respond_to :fix_broken_bikes}

  it 'release fixed bikes' do
    bike = Bike.new
    dockingStation = DockingStation.new
    van = Van.new

    bike.report_broken
    dockingStation.dock(bike)
    van.collect_broken(dockingStation)
    van.deliver_to_garage(subject)
    subject.fix_broken_bikes
    subject.release_to_van(van)

    expect(bike.broken?).to eq false
  end
  it { is_expected.to respond_to(:store).with(1).argument }
end
