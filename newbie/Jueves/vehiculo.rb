class Vehicle
  attr_reader :number_of_wheels
  attr_reader :color
  attr_reader :has_motor
  attr_reader :tank_size
  attr_reader :refuel
  attr_reader :number_of_gears
  attr_reader :age


  def initialize
@number_of_wheels
@color
@has_motor
@tank_size
@refuel
@number_of_gears
@age
end
  def what_am_i?
    p "#{self}"
    # Este método va a ser utilizado por varias clases y deberá regresar
    # el nombre de la clase desde la cual se corrió.
    # ej.
    # bocho = Car.new
    # bocho.what_am_i? => Car
  end
  def age
    "5 years"
  end

  def age!
  end
end

class Motorized

end

class Motorbike < Vehicle
end

class Car < Vehicle
end

class Bicycle < Vehicle
  def initialize(num)
    @num = num
  end
end

class Skateboard < Vehicle
end

moto = Motorbike.new
car = Car.new
bike = Bicycle.new(8)
skateboard = Skateboard.new

vehicles = [moto, car, bike, skateboard]


vehicles.each do |vehicle|
  vehicle.age!
  puts "#{vehicle.what_am_i?} responds to:"
  puts "\tNumber of wheels: #{vehicle.respond_to?(:number_of_wheels) == true}"
  puts "\tColor: #{vehicle.respond_to?(:color) == true}"
  puts "\tAge!: #{vehicle.respond_to?(:age!) == true}"
  puts "\tHas motor: #{vehicle.respond_to?(:has_motor) == true}"
  puts "\tTank size: #{vehicle.respond_to?(:tank_size) == true}"
  puts "\tRefuel: #{vehicle.respond_to?(:refuel) == true}"
  puts "\tNumber of gears: #{vehicle.respond_to?(:number_of_gears) == true}"
  puts "\tAge: #{vehicle.age}"
  puts "\n\n"
end
