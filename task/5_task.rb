# frozen_string_literal: true

require_relative './main_task'

# Instructions
_instructions = %(
Create a method `range` that returns all the integers between two given numbers.
The method should take two numbers as arguments.
)

# Code

# Recommendations
_helper = %(
  Ruby Ranges
 )

# Tests
describe 'range' do
  it { expect(range(2, 9)).to eq([3, 4, 5, 6, 7, 8]) }
  it { expect(range(6, 9)).to eq([7, 8]) }
end

