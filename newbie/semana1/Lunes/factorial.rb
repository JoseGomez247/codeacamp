def factorial(num)
  range= (1..num)
  if num == 0
    1
  else
  range.inject(:*)
end
end

p factorial(5) == 120
p factorial(4) == 24
p factorial(0) == 1
p factorial(1) == 1
p factorial(6) == 720
