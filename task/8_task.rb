# frozen_string_literal: true

require_relative './main_task'

# Instructions
_instructions = %(
Create a method `doubled` that returns a new array with each value doubled.
The method should take array of integers as argument.
)

# Code

# Recommendations
_helper = %(
  Methods `map`
 )

# Tests
describe 'doubled' do
  it { expect(doubled([1, 2, 3])).to eq([2, 4, 6]) }
  it { expect(doubled([4, 1, 1, 1, 4])).to eq([8, 2, 2, 2, 8]) }
  it { expect(doubled([2, 2, 2, 2, 2, 2])).to eq([4, 4, 4, 4, 4, 4]) }
end
