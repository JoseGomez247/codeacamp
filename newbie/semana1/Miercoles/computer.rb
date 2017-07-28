class Computer
  attr_accessor :color

  def initialize(color)
  @color = color
end
end
mac= Computer.new("Platinum")

 mac.color="red"
p mac.color
