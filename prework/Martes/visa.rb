p payment= "Welcome, your visa credit card has been processed"
p  payment.include? "visa"
if payment.include? "visa"
  puts "Credit card has been charged"
   else
    puts "We only accept visa credit card"
   end 
p name= "Jose"
p age= 17

if age > 17 && name == "Jose"
  puts "Welcome"
else
  puts "No eres mayor de edad"
end