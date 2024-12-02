module AdventOfCode
  class InputReader
    def self.read(day)
      file_path = Rails.root.join("inputs", "day#{day}.txt")
      File.read(file_path)
    end
  end
end
