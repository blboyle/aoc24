# test/lib/advent_of_code/test_day1.rb
require "test_helper"
require "advent_of_code/day_02"

class TestDay1 <  ActiveSupport::TestCase
  def test_part_1_example
    file_path = Rails.root.join("test", "lib", "advent_of_code", "day2_example.txt")
    input = File.read(file_path)
    result = AdventOfCode::Day02.solve_part1(input)
    assert_equal 2, result
  end

  def test_part_1_input_checker
    file_path = Rails.root.join("test", "lib", "advent_of_code", "day2_input.txt")
    input = File.read(file_path)
    result = AdventOfCode::Day02.solve_part1(input)
    refute_equal 505, result
  end

  def test_part_1_input
    file_path = Rails.root.join("test", "lib", "advent_of_code", "day2_input.txt")
    input = File.read(file_path)
    result = AdventOfCode::Day02.solve_part1(input)
    assert_equal 490, result
  end

  def test_part_2_example
    file_path = Rails.root.join("test", "lib", "advent_of_code", "day2_example.txt")
    input = File.read(file_path)
    result = AdventOfCode::Day02.solve_part2(input)
    assert_equal 4, result
  end

  def test_part_2_input
    file_path = Rails.root.join("test", "lib", "advent_of_code", "day2_input.txt")
    input = File.read(file_path)
    result = AdventOfCode::Day02.solve_part2(input)
    assert_equal 536, result
  end

  #  # 505 too low

  def test_part_2_input_checker
    file_path = Rails.root.join("test", "lib", "advent_of_code", "day2_input.txt")
    input = File.read(file_path)
    result = AdventOfCode::Day02.solve_part2(input)
    refute_equal 505, result
  end
end
