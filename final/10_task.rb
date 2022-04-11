# frozen_string_literal: true

require_relative './main_task'

# Instructions
_instructions = %(
Create a method `odd_numbers` that takes an arrays of integers as an argument and returns
all odd numbers into a new array.
)

# Code
def odd_numbers(arr)
  arr.select{|n| n.odd?}
end
# Recommendations
_helper = %(
  methods `select`
 )

# Tests
describe 'odd_numbers' do
  it { expect(odd_numbers([1, 2, 3, 4, 0, 6, 11])).to eq([1, 3, 11]) }
end
