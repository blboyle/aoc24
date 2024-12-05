# test/lib/advent_of_code/test_day1.rb
require "test_helper"
require "advent_of_code/day_04"

class TestDay1 <  ActiveSupport::TestCase
  #  def test_part_1_example
  #    file_path = Rails.root.join("test", "lib", "advent_of_code", "day_05", "day5_example.txt")
  #    input = File.read(file_path)
  #    result = AdventOfCode::Day05.solve_part1(input)
  #    assert_equal 143, result
  #  end

  # def test_part_1_input
  #   file_path = Rails.root.join("test", "lib", "advent_of_code", "day_05", "day5_input.txt")
  #   input = File.read(file_path)
  #   result = AdventOfCode::Day05.solve_part1(input)
  #   assert_equal 4790, result
  # end

  # def test_part_2_example
  #   file_path = Rails.root.join("test", "lib", "advent_of_code", "day_05", "day5_example.txt")
  #   input = File.read(file_path)
  #   result = AdventOfCode::Day05.solve_part2(input)
  #   assert_equal 123, result
  # end

  # def test_part_2_input
  #   file_path = Rails.root.join("test", "lib", "advent_of_code", "day_05", "day5_input.txt")
  #   input = File.read(file_path)
  #   result = AdventOfCode::Day05.solve_part2(input)
  #   assert_operator 5387, :<, result
  # end

  # def test_part_2_input
  #   file_path = Rails.root.join("test", "lib", "advent_of_code", "day_05", "day5_input.txt")
  #   input = File.read(file_path)
  #   result = AdventOfCode::Day05.solve_part2(input)
  #   assert_operator 5912, :<, result
  # end

  # 5387 too low
  # 5912 too low
  # 6361 wrong answer

  def test_part_2_input
    file_path = Rails.root.join("test", "lib", "advent_of_code", "day_05", "day5_input.txt")
    input = File.read(file_path)
    result = AdventOfCode::Day05.solve_part2(input)
    assert_equal 5387, result
  end
end
