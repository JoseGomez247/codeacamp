class Computer
  attr_reader :proc
  def initialize(proc)
    @proc = proc
  end
  def processor
    @proc
  end
end
mac= Computer.new("Intel")

#test
p mac.processor
#=>"Intel"
mac.processor = "AMD"
#=>...undefined method `processor='...
