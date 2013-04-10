require "lib/rann"

describe "RANN::Network" do

  it "creates a network with the expected number of layers" do
    network = RANN::Network.new([2, 2])
    network.size.should == 2
  end

end