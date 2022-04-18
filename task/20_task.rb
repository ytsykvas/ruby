# frozen_string_literal: true

require_relative './main_task'

# Instructions
_instructions = %(
Create a method `sort_by_length` that takes an array of strings as an argument.
The method should return a sorted array containing the same strings, ordered from shortest to longest.
)
# Code
def sort_by_length(string_array)
  string_array.sort_by {|item| item.length}
end
# Recommendations
_helper = %(
  methods `sort_by`
 )

# Tests
describe 'sort_by_length' do
  it { expect(sort_by_length(%w[beg life i to])).to eq(%w[i to beg life]) }
  it { expect(sort_by_length(['', 'moderately', 'brains', 'pizza'])).to eq(['', 'pizza', 'brains', 'moderately']) }
  it { expect(sort_by_length(%w[longer longest short])).to eq(%w[short longer longest]) }
  it { expect(sort_by_length(%w[dog food a of])).to eq(%w[a of dog food]) }
  it { expect(sort_by_length(['', 'dictionary', 'eloquent', 'bees'])).to eq(['', 'bees', 'eloquent', 'dictionary']) }
end
