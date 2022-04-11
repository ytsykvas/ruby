# frozen_string_literal: true

require_relative './main_task'

# Instructions
_instructions = %(
Create a method `even_or_odd` that takes an integer as an argument and returns "Even" for even numbers,
or "Odd" for odd numbers.
)

# Code

# Recommendations
_helper = %(
  methods `odd?` or `even?`
 )

# Tests
describe 'even_or_odd' do
  it { expect(even_or_odd(2)).to eq('Even') }
  it { expect(even_or_odd(0)).to eq('Even') }
  it { expect(even_or_odd(7)).to eq('Odd') }
  it { expect(even_or_odd(1)).to eq('Odd') }
  it { expect(even_or_odd(-1)).to eq('Odd') }
end

