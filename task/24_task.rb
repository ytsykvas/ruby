# frozen_string_literal: true

require_relative './main_task'

# Instructions
_instructions = %(
Create a method `full_name` that takes an user first_name and last_name as string.
The method should return one string with first and last names joined.
)

# Code
def full_name(first_name, last_name)
  first_name + " " + last_name
end
# Recommendations
_helper = %(
  Ruby String Interpolation
 )

# Tests
describe 'full_name' do
  it { expect(full_name('Mike', 'Shinoda')).to eq('Mike Shinoda') }
end
