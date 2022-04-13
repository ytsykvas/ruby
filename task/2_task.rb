# frozen_string_literal: true

require_relative './main_task'

# Instructions
_instructions = %(
Create a method `bool_to_word` that takes an boolean as an argument and returns a "Yes" string for true,
or a "No" string for false.
)
# Code
def bool_to_word(bool)
  bool ? 'Yes' : 'No' 
end

# Recommendations
_helper = %(
  Ruby Ternary Operator
 )

# Tests
describe 'even_or_odd' do
  it { expect(bool_to_word(true)).to eq('Yes') }
  it { expect(bool_to_word(false)).to eq('No') }
end

