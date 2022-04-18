# frozen_string_literal: true

require_relative './main_task'

# Instructions
_instructions = %(
Create a method `middle_string` that takes an string containing a sequence of character sequences separated by commas.
Method should return a new string containing the same character sequences except the first
and the last ones but this time separated by spaces.
)

# Code
def middle_string(string)
  arr = string.split(",")
  arr.delete_at(0)
  arr.delete_at(-1)
  puts arr.length
  #it should be easier. But when i try to solve it without if-else, my method return "0" but not "nil" with empty array. Whaiting for your comments :)
  if arr.length != 0
      arr.join(" ") 
  else
      arr = nil
  end
end

# Recommendations
_helper = %(
  methods `split`, `join`
 )

# Tests
describe 'middle_string' do
  it { expect(middle_string('')).to eq(nil) }
  it { expect(middle_string('1')).to eq(nil) }
  it { expect(middle_string('1,2')).to eq(nil) }
  it { expect(middle_string('1,2,3')).to eq('2') }
  it { expect(middle_string('1,2,3,4')).to eq('2 3') }
  it { expect(middle_string('1,2,3,4,5')).to eq('2 3 4') }
end

