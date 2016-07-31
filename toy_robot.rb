class ToyRobot
  def place(x, y, direction)
    @x = x
    @y = y
    @direction = direction
  end

  def report
    return "#{@x}, #{@y}, #{@direction}"
  end
end
