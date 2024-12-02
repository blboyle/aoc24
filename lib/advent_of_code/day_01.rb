module AdventOfCode
  class Day01
    def self.solve_part1(input)

      left_list = []
      right_list = []

      input.split("\n").map do |row| 
        new_row = row.split("   ")
        left_list << new_row[0].to_i
        right_list << new_row[1] .to_i
      end

      left_list_sorted = left_list.sort
      right_list_sorted = right_list.sort

      differences = []

      left_list_sorted.each_with_index do |item, i|
        difference = item - right_list_sorted[i]
        differences << difference.abs
      end

      differences.sum
    end

    def self.solve_part2(input)
      left_list = []
      right_list = []

      input.split("\n").map do |row| 
        new_row = row.split("   ")
        left_list << new_row[0].to_i
        right_list << new_row[1] .to_i
      end

      count_left_in_right_list = {}
      similarity_count = 0

      left_list.each do |left_item|

        if !count_left_in_right_list[left_item]
          right_list.each do |right_item|
            if left_item == right_item
              if !count_left_in_right_list[left_item]
                count_left_in_right_list[left_item] = left_item
              else
                count_left_in_right_list[left_item] += left_item
              end
            end
          end
        end

        if count_left_in_right_list[left_item]
          similarity_count += count_left_in_right_list[left_item]
        end
      end

      similarity_count

    end
  end
end