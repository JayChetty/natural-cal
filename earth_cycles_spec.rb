require 'rspec'
require 'date'
require_relative 'earth_cycles'

describe EarthCycles do

  it "should cycle around the sun" do 
    firstDayOfYear = Time.new(2013,12,22)
    earth = EarthCycles.new(firstDayOfYear)
    earth.timeOfYear.should == 1  
  end

  # it "should have moon cycling it" do
  # end

end