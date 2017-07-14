require "benchmark"
 time1=Benchmark.realtime do 
 
def fibonacci_iterative(num)
 
  a = 0
  b = 1

  num.times do
    temp = a
    a = b
    b = temp + b
  end

  a
end 


      

 p fibonacci_iterative(0) == 0
 p fibonacci_iterative(1) == 1
 p fibonacci_iterative(2) == 1
 p fibonacci_iterative(3) == 2
 p fibonacci_iterative(4) == 3
 p fibonacci_iterative(5)  == 5
end

puts
puts 

puts
puts
  time2=Benchmark.realtime do
def fibonacci_recursive(num)
 if num<=1  
  num 
  else
    fibonacci_recursive((num)-1) + fibonacci_recursive((num)-2)
  end
end





p fibonacci_recursive(0) == 0
p fibonacci_recursive(1) == 1
p fibonacci_recursive(2) == 1
p fibonacci_recursive(3) == 2
p fibonacci_recursive(4) == 3
p fibonacci_recursive(5) == 5
end




puts
puts
p time1*1000
p time2*1000

#el iterativo tarda menos porque hace las operaciones solo una vez por nùmero, en cambio el recursivo llama al mètodo
#y lo ejecuta tres veces por numero

