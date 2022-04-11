# frozen_string_literal: true

require_relative './main_task'

# Instructions
_instructions = %(
Create a method `count_and_sum` that takes an arrays of integers as an argument and return an array,
 where the first element is the count of positives numbers and the second element is sum of negative numbers.
0 is neither positive nor negative. If the input array is empty or null, return an empty array.
)
# Code

# Recommendations
_helper = %(
  methods `select`, `empty?`, `count`
 )

# Tests
describe 'count_and_sum' do
  it { expect(count_and_sum([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, -11, -12, -13, -14, -15])).to eq([10, -65]) }
  it { expect(count_and_sum([0, 2, 3, 0, 5, 6, 7, 8, 9, 10, -11, -12, -13, -14])).to eq([8, -50]) }
  it { expect(count_and_sum([1])).to eq([1, 0]) }
  it { expect(count_and_sum([-1])).to eq([0, -1]) }
  it { expect(count_and_sum([0, 0, 0, 0, 0, 0, 0, 0, 0])).to eq([0, 0]) }
  it { expect(count_and_sum([])).to eq([]) }
end
