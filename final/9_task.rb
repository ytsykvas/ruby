# frozen_string_literal: true

require_relative './main_task'

# Instructions
_instructions = %(
Create a method `positive_sum` that returns the sum of all of the positives ones.
The method should take array of integers as argument.
)

# Code
def positive_sum(arr)
  return arr.select {|value| value > 0}.sum
end
# Recommendations
_helper = %(
  Methods `select`, `sum`
 )

# Tests
describe 'positive_sum' do
  it { expect(positive_sum([1, 2, 3, 4, 5])).to eq(15) }
  it { expect(positive_sum([1, -2, 3, 4, 5])).to eq(13) }
  it { expect(positive_sum([-1, 2, 3, 4, -5])).to eq(9) }
  it { expect(positive_sum([])).to eq(0) }
  it { expect(positive_sum([-1, -2, -3, -4, -5])).to eq(0) }
end
