module AdventOfCode
  class Day03
    def self.solve_part1(input)
     result = input.scan(/mul\(\d*,\d*\)/)
     products = result.map do |item|
        one, two = item.scan(/(\d*),(\d*)/)[0]
       one.to_i * two.to_i
     end
     products.reduce(0) { |accumulator, number| accumulator + number }
    end

    def self.solve_part2(input)
      result = input.scan(/(don\'t)|(do)|(mul\(\d*,\d*\))/)
      current = "do"
      products = result.map do |item|
        new_part = item.select { |part| part }[0]

        if new_part == "don't" || new_part == "do"
          current = new_part
          next
        end

        one, two = item.select { |part| part }[0].scan(/(\d*),(\d*)/)[0]
        next unless current == "do"

        one.to_i * two.to_i
      end
      products.select { |item| item }.reduce(0) { |accumulator, number| accumulator + number }
    end
  end
end
