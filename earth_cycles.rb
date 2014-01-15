require_relative 'cycle'

class EarthCycles
  DAY_IN_SECONDS = 24 * 60 * 60

  AN_AXIS_TURNPOINT_N = Time.new(2012,12,21,11,12)
  YEAR_IN_DAYS = 365.24219
  YEAR_IN_SECONDS = YEAR_IN_DAYS * DAY_IN_SECONDS

  A_NEW_MOON = Time.new(2012,11,28,14,45)
  MONTH_IN_DAYS = 29.53059
  MONTH_IN_SECONDS = MONTH_IN_DAYS * DAY_IN_SECONDS

  def initialize(point_in_time)
    @point_in_time = point_in_time
    @year = Cycle.new(AN_AXIS_TURNPOINT_N, YEAR_IN_SECONDS)
    @month = Cycle.new(A_NEW_MOON, MONTH_IN_SECONDS)
  end

  def day_of_year
    @year.day_of_cycle(@point_in_time)
  end

  def day_of_month
    @month.day_of_cycle(@point_in_time)
  end  
end

#
# public  static final long LENGTH = 31556925216l ;  //(365.24219 * Day.LENGTH);
# private static final GregorianCalendar ANCHORCAL = new GregorianCalendar(2012,11,21,11,12); 