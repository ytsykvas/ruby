# frozen_string_literal: true

require_relative './main_task'

# Instructions
_instructions = %(
Create a method `array_to_string` that takes an string and convert it into an array of words.
)

# Code
def array_to_string(string)
  string.split
end
# Recommendations
_helper = %(
  methods `split`
 )

# Tests
describe 'array_to_string' do
  it { expect(array_to_string('Robin Singh')).to eq(%w[Robin Singh]) }
  it { expect(array_to_string('String')).to eq(['String']) }
  it { expect(array_to_string('I love arrays')).to eq(%w[I love arrays]) }
end

