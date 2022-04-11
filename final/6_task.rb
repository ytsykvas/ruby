# frozen_string_literal: true

require_relative './main_task'

# Instructions
_instructions = %(
Create a method `remove` that removes from a given array of integers all the values contained in a second array.
The method should take two arrays as arguments.
)

# Code
def remove(arr_1, arr_2)
  arr_1.each do |i|
    arr_2.each do |s|
      if (s == i)
        arr_1.delete(s)
      end
    end
  end
end
# Recommendations
_helper = %(
  Ruby Array operations
 )

# Tests
describe 'remove' do
  it { expect(remove([1, 1, 2, 3, 1, 2, 3, 4], [1, 3])).to eq([2, 2, 4]) }
  it { expect(remove([1, 1, 2, 3, 1, 2, 3, 4, 4, 3, 5, 6, 7, 2, 8], [1, 3, 4, 2])).to eq([5, 6, 7, 8]) }
  it { expect(remove([8, 2, 7, 2, 3, 4, 6, 5, 4, 4, 1, 2, 3], [2, 4, 3])).to eq([8, 7, 6, 5, 1]) }
  it { expect(remove([], [2, 2, 4, 3])).to eq([]) }
end
