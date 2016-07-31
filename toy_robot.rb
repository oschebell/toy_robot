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

  def left
    if @direction == "NORTH"
      @direction = "WEST"
    elsif @direction == "WEST"
      @direction = "SOUTH"
    elsif @direction == "SOUTH"
      @direction == "EAST"
    elsif @direction == "EAST"
      @direction = "NORTH"
    end
  end

  def right
    if @direction == "NORTH"
      @direction = "EAST"
    elsif @direction == "EAST"
      @direction = "SOUTH"
    elsif @direction == "SOUTH"
      @direction = "WEST"
    elsif @direction == "WEST"
      @direction = "NORTH"
    end  
  end
end
