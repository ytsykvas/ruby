# frozen_string_literal: true

require_relative './main_task'

# Instructions
_instructions = %(
Create a method `past` that calculates body mass index
https://www.cdc.gov/nccdphp/dnpao/growthcharts/training/bmiage/page5_1.html
The method should take two arguments - weight(number), height(number).
if bmi <= 18.5 return "Underweight"
if bmi <= 25.0 return "Normal"
if bmi <= 30.0 return "Overweight"
if bmi > 30 return "Obese"
)

# Code
def bmi(weight, height)
  i = weight/(height**2).to_f
  if (i <= 18.5)
    return "Underweight"
  elsif (i <= 25.0)
    return "Normal"
  elsif (i <= 30.0)
    return "Overweight"
  elsif (i > 30)
    return "Obese"
  end 
end

# Recommendations
_helper = %(
  Ruby one-line `return if x`
  Ruby square operator
 )

# Tests
describe 'bmi' do
  it { expect(bmi(50, 1.80)).to eq('Underweight') }
  it { expect(bmi(80, 1.80)).to eq('Normal') }
  it { expect(bmi(90, 1.80)).to eq('Overweight') }
  it { expect(bmi(110, 1.80)).to eq('Obese') }
  it { expect(bmi(50, 1.50)).to eq('Normal') }
end
