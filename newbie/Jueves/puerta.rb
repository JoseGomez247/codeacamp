class Door
  def initialize(color)
    @color= color
  end
def spray_paint(cor= @color)
  "The #{cor.capitalize} door looks great!"
end
end
big_door= Door.new("red")
p big_door.spray_paint('yellow') == "The Yellow door looks great!"
