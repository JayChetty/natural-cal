require 'rspec'
require 'date'
require_relative 'earth_cycles'

describe EarthCycles do
# axisturn Time.new(2012,12,21,11,12)
  it "should show the days since axis change" do 
    first_day_of_year = Time.new(2012,12,22,12,00)
    earth = EarthCycles.new(first_day_of_year)
    earth.day_of_year.should == 1  
  end

  it "should show the days since new moon" do 
    first_day_of_month = Time.new(2012,11,29,12,00)
    earth = EarthCycles.new(first_day_of_month)
    earth.day_of_month.should == 1  
  end  


end