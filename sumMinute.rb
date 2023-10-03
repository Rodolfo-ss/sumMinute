#Example one

require 'date'

def add_time(time, year: 0 ,month: 0, day: 0, hour: 0, minute: 0)
  time >>= 12*year
  time >>= month
  time +=  day
  time +=  Rational(hour,24)       # or (hour/24.0) if you dislike rationals
  time +=  Rational(minute, 24*60) # (minute/24.0*60) if you dislike rationals
end

p t = DateTime.now
p add_time(t, year: 1, minute: 30)










