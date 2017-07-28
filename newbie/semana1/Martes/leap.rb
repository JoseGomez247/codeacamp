require "date"

def leap_year?(num)
  Date.leap? num
end

p leap_year?(1900) == false
p leap_year?(1988) == true
p leap_year?(1989) == false
p leap_year?(1992) == true
p leap_year?(2000) == true
p leap_year?(2001) == false
p leap_year?(1600) == true
p leap_year?(1704) == true
