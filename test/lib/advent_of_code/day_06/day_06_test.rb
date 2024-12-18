# test/lib/advent_of_code/test_day1.rb
require "test_helper"
require "advent_of_code/day_04"

class TestDay1 <  ActiveSupport::TestCase
    def test_part_1_example
      file_path = Rails.root.join("test", "lib", "advent_of_code", "day_06", "day6_example.txt")
      input = File.read(file_path)
      result = AdventOfCode::Day06.solve_part1(input)
      assert_equal 41, result
    end
   def test_part_1_input
     file_path = Rails.root.join("test", "lib", "advent_of_code", "day_06", "day6_input.txt")
     input = File.read(file_path)
     result = AdventOfCode::Day06.solve_part1(input)
     assert_equal 4964, result
   end

  def test_part_2_example
    file_path = Rails.root.join("test", "lib", "advent_of_code", "day_06", "day6_example.txt")
    input = File.read(file_path)
    result = AdventOfCode::Day06.solve_part2(input)
    assert_equal 6, result
  end

  # def test_part_2_input
  #   file_path = Rails.root.join("test", "lib", "advent_of_code", "day_06", "day6_input.txt")
  #   input = File.read(file_path)
  #   result = AdventOfCode::Day06.solve_part2(input)
  #   assert_equal 0, result
  # end

  # def test_part_2_input_checker_1
  #   file_path = Rails.root.join("test", "lib", "advent_of_code", "day_06", "day6_input.txt")
  #   input = File.read(file_path)
  #   result = AdventOfCode::Day06.solve_part2(input)
  #   assert_operator 1598, :<, result
  # end

  #  def test_part_2_input_checker_2
  #   file_path = Rails.root.join("test", "lib", "advent_of_code", "day_06", "day6_input.txt")
  #   input = File.read(file_path)
  #   result = AdventOfCode::Day06.solve_part2(input)
  #   assert_operator 1599, :<, result
  # end
end
