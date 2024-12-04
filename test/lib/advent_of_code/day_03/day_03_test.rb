# test/lib/advent_of_code/test_day1.rb
require "test_helper"
require "advent_of_code/day_02"

class TestDay1 <  ActiveSupport::TestCase
  # def test_part_1_example
  #   file_path = Rails.root.join("test", "lib", "advent_of_code", "day3_example.txt")
  #   input = File.read(file_path)
  #   result = AdventOfCode::Day03.solve_part1(input)
  #   assert_equal 161, result
  # end

  # def test_part_1_input_checker
  #   file_path = Rails.root.join("test", "lib", "advent_of_code", "day3_input.txt")
  #   input = File.read(file_path)
  #   result = AdventOfCode::Day03.solve_part1(input)
  #   assert_equal 174336360, result
  # end

  def test_part_2_input_checker
    file_path = Rails.root.join("test", "lib", "advent_of_code", "day_03", "day3_2_example.txt")
    input = File.read(file_path)
    result = AdventOfCode::Day03.solve_part2(input)
    assert_equal 48, result
  end

  def test_part_2_input_checker
    file_path = Rails.root.join("test", "lib", "advent_of_code", "day_03", "day3_input.txt")
    input = File.read(file_path)
    result = AdventOfCode::Day03.solve_part2(input)
    assert_equal 88802350, result
  end
end
