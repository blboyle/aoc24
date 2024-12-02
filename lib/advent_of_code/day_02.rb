module AdventOfCode
  class Day02
    def self.solve_part1(input)
      reports = input.split("\n")

      list_of_safety = reports.map do |report|
        levels = report.split(" ").map { |level| level.to_i }

        is_report_safe? levels
      end
      list_of_safety.count { |item| item }
    end

    def self.solve_part2(input)
      reports = input.split("\n")

      list_of_safety = reports.map do |report|
        levels = report.split(" ").map { |level| level.to_i }

        first_report_safety = is_report_safe? levels

        if first_report_safety
          next true
        end


        list_of_levels = []

        for a in 0...levels.size
          new_levels = levels.dup
          new_levels.delete_at(a)
          list_of_levels << new_levels
        end


        safety_levels = list_of_levels.map do |levels|
          is_report_safe?(levels)
        end


        safety_levels.count { |level| level } > 0
      end


      list_of_safety.count { |level| level }
    end

    def self.is_report_safe?(levels)
      report_safe = true
      direction = nil
      levels.each_with_index do |level, i|
        next if i ==0

        if !direction

            if level < levels[i-1]
              direction = "down"
            end

            if level > levels[i-1]
              direction = "up"
            end

        end

        if direction == "up"
          if level <= levels[i-1].to_i
            report_safe = false

          end
        end

        if direction == "down"
          if level >= levels[i-1].to_i
            report_safe = false

          end
        end

        difference = levels[i-1] - level
        if difference.abs < 1
          report_safe = false
        end

        if difference.abs > 3
          report_safe = false
        end
      end
      # puts report_safe
      report_safe
    end
  end
end
