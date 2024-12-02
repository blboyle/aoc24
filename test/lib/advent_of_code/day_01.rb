require "test_helper"

class AdventOfCode::Day01Test < ActiveSupport::TestCase
  DAY_1_EXAMPLE_PATH  = Rails.root.join("test", "fixtures", "advent_of_code", "day_1_example.txt")
  DAY_1_EXAMPLE_INPUT = File.read(DAY_1_EXAMPLE_PATH)
  DAY_1_INPUT_PATH  = Rails.root.join("test", "fixtures", "advent_of_code", "day_1_input.txt")
  DAY_1_INPUT_INPUT = File.read(DAY_1_INPUT_PATH)

  test "day 1 part 1 example" do
    assert_equal 11, AdventOfCode::Day01.solve_part1(DAY_1_EXAMPLE_INPUT)
  end

  test "day 1 part 1 input" do
    assert_equal 1530215, AdventOfCode::Day01.solve_part1(DAY_1_INPUT_INPUT)
  end

  test "day 1 part 2 example" do
    assert_equal 31, AdventOfCode::Day01.solve_part2(DAY_1_EXAMPLE_INPUT)
  end

  test "day 1 part 2 input" do
    assert_equal 26800609, AdventOfCode::Day01.solve_part2(DAY_1_INPUT_INPUT)
  end
end