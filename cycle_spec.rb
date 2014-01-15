require 'rspec'
require_relative 'cycle'

# let(:anchor) {DateTime.new(2012,12,21,11,12)}

describe Cycle do

  it "should show seconds into current cycle" do
    anchor = Time.new(2012,12,21,11,12)
    point = Time.new(2012,12,21,11,14)
    cycle = Cycle.new(anchor,100)
    cycle.seconds_into_cycle(point).should == 20
  end

  it "should show number of cycles since anchor" do
    anchor = Time.new(2012,12,21,11,12)
    point = Time.new(2012,12,21,11,14)
    cycle = Cycle.new(anchor,100)
    cycle.cycles_since_anchor(point).should == 1
  end

  it "should work out the start of current cycle" do
    anchor = Time.new(2012,12,21,11,12)
    point = Time.new(2012,12,21,11,14)
    cycle = Cycle.new(anchor,100)
    cycle.start_of_cycle(point).should ==  anchor + 100
  end

  it "should work out the first day start of cycle" do
    anchor = Time.new(2012,12,21,11,12)
    point = Time.new(2012,12,26,15,9)
    cycle = Cycle.new(anchor,60*60*24*1000) #1000 days
    cycle.first_day_start_of_cycle(point).should ==  Time.new(2012,12,22,0,0)
  end

  it "should work out the days into cycle" do
    anchor = Time.new(2012,12,21,11,12)
    point = Time.new(2012,12,26,15,9)
    cycle = Cycle.new(anchor,60*60*24*1000) #1000 days
    cycle.day_of_cycle(point).should ==  5
  end  


end