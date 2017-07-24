class Computer
  attr_accessor :mac
  
  def initialize(mac)
  @mac = mac
end

def color(cor= @mac)
   cor
end
end
mac= Computer.new("Platinum")

p mac.color("red")
