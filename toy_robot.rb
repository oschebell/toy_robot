class ToyRobot

toy_robot = ToyRobot.new

  def place(x, y, direction)
    if x >= 0 && x <= 5
      @x = x
    else
      puts "That is not a valid coordinate"
    end

    if y >= 0 && y <= 5
      @y = y
    else
      puts "That is not a valid coordinate"
    end
    @direction = direction
  end

  def report
    p "#{@x}, #{@y}, #{@direction}"
  end

  def move
    if @direction == "EAST" && (@x + 1 < 6 )
      @x = @x + 1
    elsif @direction == "NORTH" && (@y + 1 < 6 )
      @y = @y + 1
    elsif @direction == "SOUTH" && (@y - 1 >= 0 )
      @y = @y - 1
    elsif @direction == "WEST" && (@x - 1 >= 0 )
      @x = @x - 1
    end
  end

  def left
    if @direction == "NORTH"
      @direction = "WEST"
    elsif @direction == "WEST"
      @direction = "SOUTH"
    elsif @direction == "SOUTH"
      @direction = "EAST"
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


# toy_robot = ToyRobot.new
# toy_robot.place(5, 5, "NORTH")
# toy_robot.report
