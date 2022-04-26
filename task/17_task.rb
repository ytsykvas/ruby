# frozen_string_literal: true

require_relative './main_task'

# Instructions
_instructions = %(
Create a method `small_enough?` that takes an array and a number.
The method should check that all values in the array are below or equal to the given number.
If they are, return true. Else, return false.
)
# Code
def small_enough?(array, number)
  array.all? {|item| item <= number}
end
# Recommendations
_helper = %(
  methods `all?`
 )

# Tests
describe 'small_enough?' do
  it { expect(small_enough?([66, 101], 200)).to eq(true) }
  it { expect(small_enough?([78, 117, 110, 99, 104, 117, 107, 115], 100)).to eq(false) }
  it { expect(small_enough?([101, 45, 75, 105, 99, 107], 107)).to eq(true) }
  it { expect(small_enough?([80, 117, 115, 104, 45, 85, 112, 115], 120)).to eq(true) }
end
