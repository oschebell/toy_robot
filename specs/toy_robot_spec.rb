require_relative '../toy_robot'

RSpec.describe ToyRobot, "#place" do
  context "with valid coordinates" do
    it "will place the robot on the board at given coordinates" do
      toy_robot = ToyRobot.new
      toy_robot.place(0, 0, "NORTH")
      expect(toy_robot.report).to eq("0, 0, NORTH")
    end
  end
end

RSpec.describe ToyRobot, "#report" do
  it "will print coordinates and direction" do
    toy_robot = ToyRobot.new
    toy_robot.place(0, 0, "NORTH")
    expect(toy_robot.report).to eq("0, 0, NORTH")
  end
end

RSpec.describe ToyRobot, "#move" do
    it "will move the robot 1 unit north" do
      toy_robot = ToyRobot.new
      toy_robot.place(0, 0, "NORTH")
      toy_robot.move
      expect(toy_robot.report).to eq("0, 1, NORTH")
    end

    it "will move the robot 1 unit east" do
      toy_robot = ToyRobot.new
      toy_robot.place(0, 0, "EAST")
      toy_robot.move
      expect(toy_robot.report).to eq("1, 0, EAST")
    end

    it "will move the robot 1 unit south" do
      toy_robot = ToyRobot.new
      toy_robot.place(0, 1, "SOUTH")
      toy_robot.move
      expect(toy_robot.report).to eq("0, 0, SOUTH")
    end

    it "will move the robot 1 unit west" do
      toy_robot = ToyRobot.new
      toy_robot.place(1, 0, "WEST")
      toy_robot.move
      expect(toy_robot.report).to eq("0, 0, WEST")
    end
end

RSpec.describe ToyRobot, "#left" do
    it "will turn the robot 90 degrees left" do
      toy_robot = ToyRobot.new
      toy_robot.place(0, 0, "NORTH")
      toy_robot.left
      expect(toy_robot.report).to eq("0, 0, WEST")
    end
end

RSpec.describe ToyRobot, "#right" do
    it "will turn the robot 90 degrees right" do
      toy_robot = ToyRobot.new
      toy_robot.place(0, 0, "NORTH")
      toy_robot.right
      expect(toy_robot.report).to eq("0, 0, EAST")
    end
end
