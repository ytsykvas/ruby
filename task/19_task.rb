# frozen_string_literal: true

require_relative './main_task'

# Instructions
_instructions = %(
Create a method `flatten_and_sort` that takes a two-dimensional array of integers.
The method should return the flattened version of the array with all the integers in the sorted (ascending) order.
)
# Code
def flatten_and_sort(array)
  array.flatten.sort
end
# Recommendations
_helper = %(
  methods `flatten`
 )

# Tests
describe 'flatten_and_sort' do
  it { expect(flatten_and_sort([[]])).to eq([]) }
  it { expect(flatten_and_sort([[], []])).to eq([]) }
  it { expect(flatten_and_sort([[], [1]])).to eq([1]) }
  it { expect(flatten_and_sort([[], [], [], [2], [], [1]])).to eq([1, 2]) }
  it { expect(flatten_and_sort([[3, 2, 1], [7, 9, 8], [6, 4, 5]])).to eq([1, 2, 3, 4, 5, 6, 7, 8, 9]) }
  it { expect(flatten_and_sort([[1, 3, 5], [100], [2, 4, 6]])).to eq([1, 2, 3, 4, 5, 6, 100]) }
  it { expect(flatten_and_sort([[9, 7, 5, 3, 1], [8, 6, 4, 2, 0], [], [1]])).to eq([0, 1, 1, 2, 3, 4, 5, 6, 7, 8, 9]) }
  it { expect(flatten_and_sort([[-9, -8, -7, -6, -5, -4, -3, -2, -1]])).to eq([-9, -8, -7, -6, -5, -4, -3, -2, -1]) }
  it { expect(flatten_and_sort([[9, 8, 7, 6, 5, 4, 3, 2, 1]])).to eq([1, 2, 3, 4, 5, 6, 7, 8, 9]) }
end
