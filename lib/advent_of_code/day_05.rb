module AdventOfCode
  class Day05
    def self.solve_part1(input)
      orderingString, updatesString = input.split("\n\n")

      ordering = get_ordering orderingString
      updates = self.get_updates updatesString

      list_of_valid_updates, * = self.get_valid_updates ordering,  updates

      list_of_valid_updates.reduce(0) do |acc, list|
        middle = (list.size / 2).ceil
        acc + list[middle]
      end
    end

    def self.solve_part2(input)
      puts "part 2"
      orderingString, updatesString = input.split("\n\n")

      ordering = get_ordering orderingString
      updates = self.get_updates updatesString

      *, list_of_invalid_updates = self.get_valid_updates ordering,  updates

      updated = []

      list_of_invalid_updates.each_with_index do |update, i|
        updated << re_order(update, ordering)
      end

      # pp updated

      updated.reduce(0) do |acc, list|
        middle = (list.size / 2).ceil
        acc + list[middle]
      end
    end

    def self.re_order(update, ordering)
      new_update = []


      # sorted_ordering_array =  ordering.entries.sort do |a, b|
      #   if b[1].include? a[0]
      #     pp "in here"
      #     1
      #   else
      #     pp "in there"
      #     -1
      #   end
      # end

      # pp sorted_ordering_array

      # item_ordering_array = sorted_ordering_array.map { |item| item[0] }



      # sorted_ordering_array[sorted_ordering_array.size-1][1].each do |item|
      #   if !item_ordering_array.include? item
      #     item_ordering_array << item
      #   end
      # end

      # ordering_array << 13

      # pp ordering_array

      puts "\n"
      # p item_ordering_array
      # p sorted_ordering_array
      puts "\n"

      item_ordering_array.each do |item|
        if update.include? item
          new_update << item
        end
      end

      new_update
    end

    def self.get_ordering(orderingString)
      orderingString.split("\n").reduce({}) do |acc, item|
        before, after = item.split("|")
        if !acc[before.to_i]
          acc[before.to_i] = []
        end
        if !acc[before.to_i].include? after.to_i
          acc[before.to_i] << after.to_i
        end
        acc
      end
    end

    def self.get_updates(updatesString)
      updatesString.split("\n").map do |item|
        item.split(",").map { |n| n.to_i }
      end
    end

    def self.get_valid_updates(ordering, updates)
      valid_list = []
      invalid_list = []
      updates.each_with_index do |update, i|
       valid = self.check_if_valid update, ordering
        if valid
          valid_list << update
        else
          invalid_list << update
        end
      end
      [ valid_list, invalid_list ]
    end

    def self.check_if_valid(update, ordering)
      # puts ordering
      order = {}
      valid = true
      update.each_with_index do |thing, index|
        order[thing] = index
      end
      update.each_with_index do |thing, index|
        if ordering[thing] != nil
          ordering[thing].each do |checker|
            next if !order[checker]
            if order[thing] >= order[checker]
              valid = false
            end
          end
        end
      end
      update = []
      valid
    end
  end
end
