# frozen_string_literal: true

require_relative './main_task'

# Instructions
_instructions = %(
Create a method `high_and_low` that returns the highest and lowest number as string.
The method should take string with list of numbers as arguments.
)

# Code
def high_and_low(numbers)
  numbers = numbers.split.map(&:to_i)
  "#{numbers.max} #{numbers.min}"
end

# Recommendations
_helper = %(
  Methods `split`, `max`
 )

# Tests
describe 'range' do
  it { expect(high_and_low('4 5 29 54 4 0 -214 542 -64 1 -3 6 -6')).to eq('542 -214') }
  it { expect(high_and_low('1 -1')).to eq('1 -1') }
  it { expect(high_and_low('1 1')).to eq('1 1') }
  it { expect(high_and_low('-1 -1')).to eq('-1 -1') }
  it { expect(high_and_low('1 -1 0')).to eq('1 -1') }
  it { expect(high_and_low('1 1 0')).to eq('1 0') }
  it { expect(high_and_low('-1 -1 0')).to eq('0 -1') }
  it { expect(high_and_low('42')).to eq('42 42') }
end
