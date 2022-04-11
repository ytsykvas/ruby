# frozen_string_literal: true

require_relative './main_task'

# Instructions
_instructions = %(
Create a method `high_and_low` that returns the highest and lowest number as string.
The method should take string with list of numbers as arguments.
)

# Code
def high_and_low (string)
  arr = string.split(" ")
  min = arr[0].to_i
  max = arr[0].to_i
  arr.each do |item|
    item = item.to_i
    if (item <= min)
      min = item
    end
    if (item >= max)
      max = item
    end
  end
  return "#{max} #{min}"
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