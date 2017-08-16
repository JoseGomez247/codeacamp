require_relative 'app'

def assert(truthy)
  raise "Tests failed" unless truthy
end

chef = Chef.find(1)
meal = Meal.find(7)
# Este es un ejemplo de test ya que los nombres de los chefs son aleatorios, este test muy probablemente fallará
assert chef[:first_name] == 'Prince'
assert chef[:last_name] == 'Kerluke'
# p Chef.where("first_name='Ida'")
Chef.create(first_name:"Pepe", last_name:"Gomez", email:"naruto.pp@hotmail.com", phone:"717.799.3837 x58019", birthday:"2020-08-28 ((2440097j,0s,0n),+0s,2299161j)")
assert meal[:name] == 'Chicken Lasagna'
puts "finished"
