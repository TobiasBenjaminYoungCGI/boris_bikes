require 'DockingStation'
describe DockingStation do

 it 'should make a response to release_bike' do

   expect(subject).to respond_to :release_bike
 end

 it 'releases working bikes' do
   bike = subject.release_bike
   expect(bike).to be_working
 end
end
