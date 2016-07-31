class ToyRobot
  def place(x, y, direction)
    @x = x
    @y = y
    @direction = direction
  end

  def report
    return "#{@x}, #{@y}, #{@direction}"
  end

  def move
    if @direction == "EAST"
      @x = @x + 1
    elsif @direction == "NORTH"
      @y = @y + 1
    elsif @direction == "SOUTH"
      @y = @y - 1
    elsif @direction == "WEST"
      @x = @x - 1
    end
  end
end
