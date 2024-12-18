module AdventOfCode
  class Day06
    def self.solve_part1(input)
      guard_map = input.split("\n").map do |row|
        row.split("")
      end

      starting_location, obstacles = self.setup guard_map

      x, y = starting_location.split(",").map { |item| item.to_i }
      direction = 90

      locations = self.find_locations x, y, guard_map, obstacles, direction

      locations.keys.size
    end



    def self.solve_part2(input)
      guard_map = input.split("\n").map do |row|
        row.split("")
      end

      starting_location, obstacles = self.setup guard_map
      x, y = starting_location.split(",").map { |item| item.to_i }
      direction = 90
      spots = 0
      locations = self.find_locations x, y, guard_map, obstacles, direction

      pp starting_location
      pp locations


      locations.each_with_index do |location, i|
            new_spots = 0

          wide_x, wide_y, direction = location[0].split(",")

          x, y = starting_location.split(",").map { |item| item.to_i }
          direction = 90

          locations_with_direction = {}
          new_obstacles = obstacles.dup
          new_obstacles << [ wide_x, wide_y ].join(",")
          not_in_loop = true

          while x >= 0 && y >= 0 && x < guard_map[0].size - 1 && y < guard_map.size - 1 && not_in_loop
            if locations_with_direction.keys.include? [ x, y, direction ].join(",")
              new_spots += 1
              not_in_loop = false
              break
            end
            locations_with_direction["#{x},#{y},#{direction}"] = true
            x, y, direction = self.move_location(x, y, direction, new_obstacles)
          end
          if i % 50 == 0
            puts "location #{i+1}/#{locations.size}"
            puts "spots: #{new_spots}/#{spots}"
          end
          spots += new_spots
      end
      spots
    end


    def self.find_locations(x, y, guard_map, obstacles, direction)
      locations = {}

      while x < guard_map[0].size && y < guard_map.size
        locations["#{x},#{y}"] = true
        x, y, direction = self.move_location(x, y, direction, obstacles)
      end
      locations
    end

    def self.setup(guard_map)
      starting_location = nil
      obstacles = []

      for y in 0..guard_map.size - 1
        for x in 0..guard_map[0].size - 1
          if guard_map[y][x] == "^"
            starting_location = "#{x},#{y}"
          end
          if guard_map[y][x] == "#"
            obstacles << "#{x},#{y}"
          end
        end
      end
      [
        starting_location,
        obstacles
      ]
    end

    def self.move_location(x, y, direction, obstacles)
      if direction == 0
        if obstacles.include? [ x + 1, y ].join(",")
          direction = 270
        end

      end

      if direction == 90
        if obstacles.include? [ x, y - 1 ].join(",")
          direction = 0
        end
      end

      if direction == 180
        if obstacles.include? [ x - 1, y ].join(",")
          direction = 90
        end
      end

      if direction == 270
        if obstacles.include? [ x, y + 1 ].join(",")
          direction = 180
        end
      end

      if direction == 90
        y = y - 1
      end

      if direction == 180
        x = x - 1
      end

      if direction == 270
        y = y + 1
      end

      if direction == 0
        x = x + 1
      end

      [
        x,
        y,
        direction
      ]
    end
  end
end
