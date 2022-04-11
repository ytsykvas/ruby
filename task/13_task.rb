# frozen_string_literal: true

require_relative './main_task'

# Instructions
_instructions = %(
Create a method `smash` that takes an array of words and smashes them together into a sentence and returns the sentence.
)
# Code
def smash(arr)
  #arr = arr.split(//)
  arr = arr.join(" ").to_s
  return arr
end
# Recommendations
_helper = %(
  methods `join`
 )

# Tests
describe 'smash' do
  it { expect(smash(%w[hello world this is great])).to eq('hello world this is great') }
end
