require 'Arrays/binary_search'

describe Arrays::BinarySearch do
  describe '.execute' do
    it 'returns the correct search value' do
      input = [1, 2, 3, 4, 7, 8, 9]
      search_value = 4

      result = Arrays::BinarySearch.execute(input, search_value)

      expect(result).to eq(search_value)
    end

    it 'returns nil when search value is not found' do
      input = [1, 2, 3, 4, 7, 8, 9]
      search_value = 100

      result = Arrays::BinarySearch.execute(input, search_value)

      expect(result).to eq(nil)
    end
  end
end
