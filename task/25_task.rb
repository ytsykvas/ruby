# frozen_string_literal: true

require_relative './main_task'

# Instructions
_instructions = %(
Create a method `abbrev_name` that takes user full name and convert a name into initials.
The output should be two capital letters with a dot separating them.
)

# Code
def abbrev_name(full_name)
  first_name, last_name = full_name.split(' ')
  "#{first_name[0]}.#{last_name[0]}"
end

# Recommendations
_helper = %(
  methods `split`, Ruby String Interpolation
 )

# Tests
describe 'abbrev_name' do
  it { expect(abbrev_name('Sam Harris')).to eq('S.H') }
  it { expect(abbrev_name('Patrick Feenan')).to eq('P.F') }
  it { expect(abbrev_name('Evan Cole')).to eq('E.C') }
  it { expect(abbrev_name('P Favuzzi')).to eq('P.F') }
  it { expect(abbrev_name('David Mendieta')).to eq('D.M') }
end
