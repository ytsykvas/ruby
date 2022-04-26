# frozen_string_literal: true

require_relative './main_task'

# Instructions
_instructions = %(
Create a method `no_space` that takes an string and return string without spaces.
)

# Code
def no_space(str)
  #On my mind it is easier:
  str.split(" ").join("")
end

=begin

=end

# Recommendations
_helper = %(
  methods `delete`
 )

# Tests
describe 'no_space' do
  it { expect(no_space('8 j 8   mBliB8g  imjB8B8  jl  B')).to eq('8j8mBliB8gimjB8B8jlB') }
end
