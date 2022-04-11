# frozen_string_literal: true

require_relative './main_task'

# Instructions
_instructions = %(
Create a method `biggest_and_smallest` that takes an array of integers and returns the the biggest and the smallest.
)
# Code

# Recommendations
_helper = %(
  methods `min`, `max`
 )

# Tests
describe 'arr' do
  it { expect(biggest_and_smallest([78, 56, 232, 12, 8])).to eq([232, 8]) }
end
