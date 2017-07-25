class Person
  attr_accessor :age, :name
  def initialize(age, name)
    @age = age
    @name = name
  end

  def age
    "#{@name} is #{years_old} years old."
  end
private
  def years_old(years= @age)
    t=  Time.now
    t.year - @age
  end

end
carlos= Person.new(1987, "Carlos")
martha= Person.new(1991, "Martha")
#test
p carlos.age == "Carlos is 30 years old."
#=>true
p martha.age == "Martha is 26 years old."
#=>true

p carlos.years_old
#=>private method `years_old'...(NoMethodError)
