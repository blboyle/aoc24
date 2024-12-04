module AdventOfCode
  class Day04
    def self.solve_part1(input)
      puts "\n\n\n\n"
      xmas_map = input.split("\n").map do |row|
        row.split("")
      end

      xmasses = 0

      for y in 0..xmas_map.size - 1
        for x in 0..xmas_map[0].size - 1
          xmasses += count_horizontal(xmas_map, x, y)
          xmasses += count_vertical(xmas_map, x, y)
          xmasses += count_diagonal(xmas_map, x, y)
          # puts "amount #{xmasses} x #{x} y #{y}"
        end
      end

      xmasses
    end

    def self.solve_part2(input)
      puts "\n\n\n\n"
      xmas_map = input.split("\n").map do |row|
        row.split("")
      end

      xmasses = 0

      for y in 0..xmas_map.size - 1
        for x in 0..xmas_map[0].size - 1
          if xmas_map[y][x] === "A" && x > 0 && x < xmas_map[0].size - 1 && y > 0 && y < xmas_map.size - 1
            to_left = [ xmas_map[y-1][x+1], xmas_map[y][x], xmas_map[y+1][x-1] ].join("")
            to_right = [ xmas_map[y-1][x-1], xmas_map[y][x], xmas_map[y+1][x+1] ].join("")

            left_is_mas = to_left == "MAS" || to_left.reverse! == "MAS"
            right_is_mas = to_right == "MAS" || to_right.reverse! == "MAS"

            if left_is_mas && right_is_mas
              xmasses += 1
            end
          end
        end
      end

      xmasses
    end
  end
end

private

def count_horizontal(xmas_map, x, y)
  amount = 0
  width = xmas_map[0].size

  if x + 3 < width
    if [ xmas_map[y][x], xmas_map[y][x+1], xmas_map[y][x+2], xmas_map[y][x+3] ].join == "XMAS"
      puts "hf #{x}, #{y}"
      amount = amount + 1
    end
  end

  if x > 2
    if [ xmas_map[y][x], xmas_map[y][x-1], xmas_map[y][x-2], xmas_map[y][x-3] ].join == "XMAS"
       puts "hb #{x}, #{y}"
      amount = amount + 1
    end
  end
  amount
end

def count_vertical(xmas_map, x, y)
  amount = 0
  height = xmas_map.size

  if y + 3 < height
    if [ xmas_map[y][x], xmas_map[y+1][x], xmas_map[y+2][x], xmas_map[y+3][x] ].join == "XMAS"
       puts "vf #{x}, #{y}"
      amount = amount + 1
    end
  end

  if y > 2
    if [ xmas_map[y][x], xmas_map[y-1][x], xmas_map[y-2][x], xmas_map[y-3][x] ].join == "XMAS"
       puts "vb #{x}, #{y}"
      amount = amount + 1
    end
  end

  amount
end

def count_diagonal(xmas_map, x, y)
  amount = 0
  width = xmas_map[0].size
  height = xmas_map.size

  if  x + 3 < width && y + 3 < height
    if [ xmas_map[y][x], xmas_map[y+1][x+1], xmas_map[y+2][x+2], xmas_map[y+3][x+3] ].join == "XMAS"
      puts "d se #{x}, #{y}"
      amount = amount + 1
    end
  end

  if   x + 3 < width && y > 2
    if [ xmas_map[y][x], xmas_map[y-1][x+1], xmas_map[y-2][x+2], xmas_map[y-3][x+3] ].join == "XMAS"
      puts "d ne #{x}, #{y}"
      amount = amount + 1
    end
  end


  if x > 2 && y + 3 < height
    if [ xmas_map[y][x], xmas_map[y+1][x-1], xmas_map[y+2][x-2], xmas_map[y+3][x-3] ].join == "XMAS"
      puts "d sw #{x}, #{y}"
      amount = amount + 1
    end
  end

  if  x > 2 && y > 2
    if [ xmas_map[y][x], xmas_map[y-1][x-1], xmas_map[y-2][x-2], xmas_map[y-3][x-3] ].join == "XMAS"
      puts "d nw #{x}, #{y}"
      amount = amount + 1
    end
  end

  amount
end
