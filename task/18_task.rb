# frozen_string_literal: true

require_relative './main_task'

# Instructions
_instructions = %(
Create a method `unique_mult` that takes a list of integers.
The method should multiple uniq values.
)
# Code
def unique_mult(array)
  arr = array.uniq
  a = arr[0]
  arr.map do |item|
    a *=item
  end
  #i don`t understand how "reduce" method works
  return a
end
# Recommendations
_helper = %(
  methods `reduce`
 )

# Tests
describe 'unique_mult' do
  it { expect(unique_mult([1, 2, 3, 4, 5, 5, 9])).to eq(1080) }
  it { expect(unique_mult([1, 3, 8, 1, 8, 5])).to eq(120) }
end
