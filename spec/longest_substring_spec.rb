require 'Arrays/longest_substring'

RSpec.shared_examples 'longest substring without repeating charaters' do |string, result|
  it 'returns expected length' do
    expect(Arrays::LongestSubstring.execute(string)).to eq(result)
  end
end

describe Arrays::LongestSubstring do
  describe '.execute' do
    include_examples 'longest substring without repeating charaters', 'sabs', 3
    include_examples 'longest substring without repeating charaters', 'pa', 2
    include_examples 'longest substring without repeating charaters', '', 0
    include_examples 'longest substring without repeating charaters', 'abcabcbb', 3
    include_examples 'longest substring without repeating charaters', 'pwwkew', 3
    include_examples 'longest substring without repeating charaters', 'pw@w@kw', 3
    include_examples 'longest substring without repeating charaters', 'pw@ k w', 5
    include_examples 'longest substring without repeating charaters', nil, 0
    include_examples 'longest substring without repeating charaters', 'dvdf', 3
  end
end
