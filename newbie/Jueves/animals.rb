
class Animal
  ANIMALS= "...We are animals!! "
end

class Fish < Animal
  def swim
  end
end

class Mammal < Animal
  BLOOD= "We are warm blooded"
  def warm_blooded?
    BLOOD + ANIMALS
  end
end

class Bird < Animal
  FLY= "We fly"
def fly
   FLY + ANIMALS
end
end

class Reptile < Animal
  SCALES= "we have scales"
  def has_scales?
     SCALES + ANIMALS
  end
end
#-----------------subs------------------

class Dog < Mammal
BARK = "Guauuu... Guauuu..."
def warm_blooded?
  BARK + super
end
end


class Turtle < Reptile
  FOOD= "I eat lettuce..."
  def has_scales?
    FOOD + super
end
end


class Macaw < Bird
FRUIT= "I eat fruit..."
def fly
  FRUIT + super
end
end


class Dolphin < Mammal
IHIH= "IHH... IHH..."
def warm_blooded?
  IHIH + super
end
end



class Cat < Mammal
  MIAU = "Miau... Miau..."
  def warm_blooded?
    MIAU + super
  end
end

class Whale < Mammal
  WATER= "I drop water from my head..."
  def warm_blooded?
    WATER + super
end
end

class Snake < Reptile
  SSS= "Ssssss..."
  def has_scales?
    SSS + super
end
end
dog = Dog.new
macaw = Macaw.new
dolphin = Dolphin.new
turtle = Turtle.new
snake= Snake.new
whale = Whale.new
cat = Cat.new

p whale.warm_blooded? == "I drop water from my head...We are warm blooded...We are animals!! "

p snake.has_scales? == "Ssssss...we have scales...We are animals!! "

p turtle.has_scales? == "I eat lettuce...we have scales...We are animals!! "

p dolphin.warm_blooded? == "IHH... IHH...We are warm blooded...We are animals!! "

p macaw.fly == "I eat fruit...We fly...We are animals!! "

p dog.warm_blooded?  == "Guauuu... Guauuu...We are warm blooded...We are animals!! "

p cat.warm_blooded? == "Miau... Miau...We are warm blooded...We are animals!! "
