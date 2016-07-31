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
