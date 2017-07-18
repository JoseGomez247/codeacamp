class Cat
  def initialize (age)
    @age = age
  end
  CAT_YEARS = 7

  def es_mayor_que?(cat)
    age > age
  end

   protected

  def age
    @age
  end
   private
  def age
  @age
 end
end

#test
katty = Cat.new(2)
peto = Cat.new(4)
p katty.es_mayor_que?(peto) == false
#=>true
