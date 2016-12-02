module StopHelper
  def next_bus_countdown(stop)
    now = formatted_time_now

    next_bus_time = next_stop_time(stop).arrival_time.change(month: now.month, day: now.day, year: now.year)

    if next_bus_time > now
      # today
      return next_bus_time - now
    else
      # tomorrow
      return next_bus_time.change(day: now.day + 1) - now
    end
  end

  def next_stop_time(stop)
    # get default date (any will do)
    default = stop.stop_times.first.arrival_time

    # set current time
    now = formatted_time_now.change(month: default.month, day: default.day, year: default.year)

    # find next stop record
    stop_time = stop.stop_times.where(arrival_time: now..now.end_of_day).first

    # find first stop of next day
    stop_time ||= stop.stop_times.first

    return stop_time
  end

  def formatted_time_now
    now = Time.now

    # TEST DATA
    now = Time.parse('9:00am UTC')

    return now
  end
end
