


class Cat

  def initialize(num)
    @num = 0
  end

def jump
   "#{"Saltando..."}"
end

def self.meow
   "#{"Miau... Miau..."}"
end

def run
   "corriendo 0 mts"
end
def run(par= @num)
  if par == 0
     "Corriendo 0 mts..."
  elsif par == 20
     "Corriendo #{@num += 20} mts..."
  else
   res= "Corriendo #{@num += 10} mts..."
end
end

end


cat_1= Cat.new(0)
cat_3= Cat.new(0)
cat_5= Cat.new(0)



p cat_1.jump == "Saltando..."
p cat_5.jump == "Saltando..."
p Cat.meow == "Miau... Miau..."
 p cat_3.run == "Corriendo 0 mts..."
 p cat_3.run(20) == "Corriendo 20 mts..."
 p cat_3.run(10) == "Corriendo 30 mts..."
 p cat_3.run(10) == "Corriendo 40 mts..."
