# frozen_string_literal: true

require_relative './main_task'

# Instructions
_instructions = %(
Create a method `fake_binary` that takes a string of digits as an argument and return an array.
The method should replace any digit below 5 with '0' and any digit 5 and above with '1'. Return the resulting string.
)
# Code
def fake_binary(str)
  str.split('').map { |x| x.to_i < 5 ? 0 : 1 }.join
end
=begin
def fake_binary(arr)
  new_arr = []
  arr = arr.split(//)
  arr.each do |item|
    item = item.to_i
    if (item <= 4)
      item = 0
      new_arr.push(item)
    end
    if (item > 4)
      item = 1
      new_arr.push(item)
    end
  end
  p new_arr.join.to_s
end
=end
# Recommendations
_helper = %(
  methods `split`, `join`
 )

# Tests
describe 'fake_binary' do
  it { expect(fake_binary('45385593107843568')).to eq('01011110001100111') }
  it { expect(fake_binary('509321967506747')).to eq('101000111101101') }
  it { expect(fake_binary('366058562030849490134388085')).to eq('011011110000101010000011011') }
end
