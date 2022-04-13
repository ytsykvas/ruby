# frozen_string_literal: true

require_relative './main_task'

# Instructions
_instructions = %(
Create a method `basic_operations` that does four basic mathematical operations.
The method should take three arguments - operation(string), value1(number), value2(number).
The method should return result of numbers after applying the chosen operation.
If invalid value for operation returns string 'Invalid operator'
)

# Code
def basic_operations(operation, value1, value2)
  case operation
    when '+'
      value1 + value2
    when '-'
      value1 - value2
    when '*'
      value1 * value2
    when '/'
      value1 / value2
    else
     'Invalid operator'
  end
end
# Recommendations
_helper = %(
  Ruby Case Statements
 )

# Tests
describe 'even_or_odd' do
  it { expect(basic_operations('+', 4, 7)).to eq(11) }
  it { expect(basic_operations('-', 15, 18)).to eq(-3) }
  it { expect(basic_operations('*', 5, 5)).to eq(25) }
  it { expect(basic_operations('/', 49, 7)).to eq(7) }
end
