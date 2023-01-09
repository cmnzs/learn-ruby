require "date"

def day_of_week(time)
  Date::DAYNAMES[time.wday]
end

def greeting(time)
  "Hola World! Happy #{day_of_week(Time.now)}.."
end
