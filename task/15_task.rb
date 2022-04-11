# frozen_string_literal: true

require_relative './main_task'

# Instructions
_instructions = %(
Create a method `check` that takes an array and a value.
The method should check whether the provided array contains the value.
Array can contain numbers or strings. X can be either.
Return true if the array contains the value, false if not.
)
# Code
def check(obj1, obj2)
  if (obj1.include?(obj2))
    return true
  else
    return false
  end
end
# Recommendations
_helper = %(
  methods `include?`
 )

# Tests
describe 'check' do
  it { expect(check([78, 56, 232, 12, 8], 8)).to eq(true) }
  it { expect(check([78, 56, 232, 12, 8], 111)).to eq(false) }
  it { expect(check(%w[t e s t], 's')).to eq(true) }
  it { expect(check(%w[t e s t], 'b')).to eq(false) }
end
