require 'faker'

#Clase CreditCard
class CreditCard
  attr_reader :name, :number, :expiration, :cvc
  attr_accessor :status

#Cinco instancias de CreditCard
def initialize(name, number, expiration, cvc, status)
@name = name
@number = number
@expiration = expiration
@cvc = cvc
@status = status
end
end
#Array con cinco objetos de tarjetas de crédito
def create_card
  c= []
  arr= [Faker::Number.number(15)]
  date= Faker::Number.number(2)
  5.times do
  c<<CreditCard.new(Faker::Name.first_name, Faker::Number.number(12), ("#{date} / #{date}"), Faker::Number.number(3), arr)
end
c
end
#tests
cards=create_card
cards.each do |card|
   puts "#{card.name} responds to:"
   puts "\tName: #{card.respond_to?(:name) == true}"
   puts "\tNumber: #{card.respond_to?(:number) == true}"
   puts "\tExpiration: #{card.respond_to?(:expiration) == true}"
   puts "\tcvc: #{card.respond_to?(:cvc) == true}"
   puts "\tGet status: #{card.respond_to?(:status) == true}"
   puts "\tSet status: #{card.respond_to?(:status=) == true}"
   puts "\n\n"
end

#método para mostrar datos de tarjetas
def show_information(arr)
  print "|     name".ljust(15) + "|    number" .ljust(15) +  "|  expiration  |".ljust(15) + "    cvc   |".ljust(15) +  "        status            |".ljust(15)
  puts
  print "----------------------------------------------------------------------------------------".ljust(15)
  puts
  arr.each { |x|
  print "|   #{x.name}".ljust(15) +  "| #{x.number}".ljust(15)  +"| #{x.expiration}".ljust(15)+"|    #{x.cvc}   |".ljust(15) + "#{x.status}        |".ljust(15)
  puts
                }
end
show_information(cards)





#--------------------------------------------------------------------------------------------------------------------------------------

#Athletes
class Athletes
attr_reader :speed_record
attr_accessor :total_time, :total_distance

 def initialize (total_distance=0, total_time=0)

  @total_distance = total_distance
  @total_time = total_time
end

def speed

@speed_total=  @total_distance.to_f / @total_time.to_f
if @total_distance == 0 && @total_time == 0
  0
else
  @speed_total.round(2)
end
end
def new_workout(num1, num2)
@total_distance+=num1
@total_time+=num2
end
end
class Runner < Athletes

  def run
    "Ran #{@total_distance} meters, time: #{@total_time} seconds, speed: #{speed} m/s"
  end

end

class Swimmer < Athletes
  def swim
    "Swam #{@total_distance} meters, time: #{@total_time} seconds, speed: #{speed} m/s"
  end

end

class Cyclist < Athletes
  def ride_bike
    "Rode #{@total_distance} meters, time: #{@total_time} seconds, speed: #{speed} m/s"
  end

end

runner = Runner.new()
swimmer = Swimmer.new(50, 10)
cyclist = Cyclist.new(70, 27)

athletes = [runner, swimmer, cyclist]

athletes.each do |athlete|
  #¿qué tipo de atleta es?
  puts "#{athlete.class} responds to:"
  puts "\tAthlete speed: #{athlete.respond_to?(:speed) == true}"
  puts "\tGet Athlete time: #{athlete.respond_to?(:total_time) == true}"
  puts "\tSet Athlete time: #{athlete.respond_to?(:total_time=) == true}"
  puts "\tSpeed record: #{athlete.respond_to?(:speed_record) == true}"
  puts "\tGet Distance: #{athlete.respond_to?(:total_distance) == true}"
  puts "\tSet Distance: #{athlete.respond_to?(:total_distance=) == true}"
  puts "\trun method: #{athlete.respond_to?(:run) == true}" if athlete == runner
  puts "\tswim method: #{athlete.respond_to?(:swim) == true}" if athlete == swimmer
  puts "\tride_bike method: #{athlete.respond_to?(:ride_bike) == true}" if athlete == cyclist
  puts "\n\n"
end

#test for runner

#test para runner con distancia = 0
p runner.run #== "Ran 0 meters, time: 0 seconds, speed: 0 m/s"
#test para runner al hacer ejercicio, incrementa distancia = 20 metros y tiempo = 7 segundos
runner.new_workout(20, 7)
#test para runner con distancia = 20 metros y tiempo = 7 segundos
p runner.run == "Ran 20 meters, time: 7 seconds, speed: 2.86 m/s"

#test para swimmer con distancia = 50
p swimmer.swim == "Swam 50 meters, time: 10 seconds, speed: 5.0 m/s"
swimmer.new_workout(50, 30)
p swimmer.swim #== "Swam 50 meters, time: 10 seconds, speed: 5.0 m/s"
p cyclist.ride_bike == "Rode 70 meters, time: 27 seconds, speed: 2.59 m/s"




#------------------------------------------------------------------------------------------------------------------

#RaceCar class
class RaceCar
  LAP_DISTANCE = 100
def initialize(name, times)
@name = name
@times = times
end
  #método para obtener velocidad promedio
  def car_speed
   @times.map { |s|   LAP_DISTANCE / s.to_f}
end

def average_speed
  sum= 0
  (car_speed.inject{|x|  sum += x} / car_speed.length).round(2)
end
  #método que muestra nivel de cada race car
def car_lvl
if average_speed < 9
  "El carro #{@name} es nivel Avanzado"
elsif average_speed < 10
  "El carro #{@name} es nivel Medio"
elsif average_speed < 12
  "El carro #{@name} es nivel Normal"
else
  "El carro #{@name} es nivel Principiante"
end
end
end

#Team class
class Team

  def initialize(team)
    @team= team
  end
  #método para agregar nuevo race car
  def add_car(teams)
    @team << teams
  end

  #método para calcular promedio de velocidad del equipo
   def speeds_of_cars
     speeds = []
   @team.each do |car|
     speeds << car.average_speed
   end
   speeds
 end
 def average_speed_of_team
   sum= 0
   (speeds_of_cars.inject {|r| sum += r} / speeds_of_cars.length).round(2)
 end

end

#método para buscar race car


#método para generar la tabla


#método para mostrar nombre y nivel del race car



#instancias de RaceCar
car1 = RaceCar.new("Force", [30, 50, 26, 18])
car2 = RaceCar.new("Power", [45, 38, 29, 70])
car3 = RaceCar.new("Passwater", [37, 77, 36, 30])
car4 = RaceCar.new("Banjo", [9, 18, 70, 5])
car5 = RaceCar.new("Duck", [40, 57, 56, 90])
car6 = RaceCar.new("Cesar", [36, 56, 28, 30])

#tests

p "car1: #{car1.average_speed} m/s"
#ej. car1: 9.5 m/s
p "car2: #{car2.average_speed} m/s"
#ej. car2: 12.01 m/s
p "car3: #{car3.average_speed} m/s"
#ej. car3: 10.65 m/s
p "car4: #{car4.average_speed} m/s"
#ej. car4: 11.0 m/s
p "car5: #{car5.average_speed} m/s"
#ej. car5: 10.15 m/s
p "car6: #{car6.average_speed} m/s"
#ej. car6: 15.51 m/s

#create a team of cars
team1 = [car1, car2, car3, car4, car5]
team_one = Team.new(team1)

#test para buscar race car en equipo team_one
#p search("Power", team_one) == "Power is a racer"

p team_one.add_car(car6)

#calculate average speed of team
p team_one.average_speed_of_team
#ej. 10.66

#método para mostrar nombre y nivel del race car
