require_relative 'cycle'

class EarthCycles
  SPIN_IN_SECONDS = 24 * 60 * 60
  #START_OF_SPIN = Date.new
  AN_AXIS_TURNPOINT_N = DateTime.new(2012,12,21,11,12)
  SPINS_IN_YEAR = 365.24219
  YEAR_IN_SECONDS = SPINS_IN_YEAR * SPIN_IN_SECONDS

  def initialize(the_point_in_time)
    @the_point_in_time = the_point_in_time
    @year = Cycle.new(AN_AXIS_TURNPOINT_N, YEAR_IN_SECONDS)
  end

  def time_of_year
    @year.timeOfCycle
  end
end

#
# public  static final long LENGTH = 31556925216l ;  //(365.24219 * Day.LENGTH);
# private static final GregorianCalendar ANCHORCAL = new GregorianCalendar(2012,11,21,11,12); 