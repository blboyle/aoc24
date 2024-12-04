# test/lib/advent_of_code/test_day1.rb
require "test_helper"
require "advent_of_code/day_04"

class TestDay1 <  ActiveSupport::TestCase
   # def test_part_1_example
   #   file_path = Rails.root.join("test", "lib", "advent_of_code", "day_04", "day4_first.txt")
   #   input = File.read(file_path)
   #   result = AdventOfCode::Day04.solve_part1(input)
   #   assert_equal 4, result
   # end
   # def test_part_1_example
   #   file_path = Rails.root.join("test", "lib", "advent_of_code", "day_04", "day4_example.txt")
   #   input = File.read(file_path)
   #   result = AdventOfCode::Day04.solve_part1(input)
   #   assert_equal 18, result
   # end

   # def test_part_1_example
   #   file_path = Rails.root.join("test", "lib", "advent_of_code", "day_04", "day4_input.txt")
   #   input = File.read(file_path)
   #   result = AdventOfCode::Day04.solve_part1(input)
   #   assert_equal 2557, result
   # end



   def test_part_1_example
    file_path = Rails.root.join("test", "lib", "advent_of_code", "day_04", "day4_example.txt")
    input = File.read(file_path)
    result = AdventOfCode::Day04.solve_part2(input)
    assert_equal 9, result
  end

  def test_part_1_example
    file_path = Rails.root.join("test", "lib", "advent_of_code", "day_04", "day4_input.txt")
    input = File.read(file_path)
    result = AdventOfCode::Day04.solve_part2(input)
    assert_equal 9, result
  end
end
