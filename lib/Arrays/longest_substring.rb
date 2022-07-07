module Arrays
  class LongestSubstring
    def self.execute(_string)
      result = 0

      return result if _string.nil? || _string.length == 0
      return _string.length if _string.length == 1

      right = 0
      left = 0

      while right <= _string.length - 1
        substring = _string[right..left]
        next_char = _string[left + 1]
        result = [result, substring.length].max

        break if next_char.nil?

        if substring.include?(next_char)
          right += 1
          left = right
        else
          left += 1
        end
      end

      result
    end
  end
end
