module Arrays
  class BinarySearch
    def self.execute(array, search_value)
      lower_bound = 0
      upper_bound = array.length - 1

      while lower_bound <= upper_bound
        midpoint = (upper_bound - lower_bound) / 2

        if array[midpoint] == search_value
          return search_value
        elsif search_value < array[midpoint]
          upper_bound -= 1
        else
          lower_bound += 1
        end
      end

      nil
    end
  end
end
