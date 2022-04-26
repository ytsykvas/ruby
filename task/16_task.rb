# frozen_string_literal: true

require_relative './main_task'

# Instructions
_instructions = %(
Create a method `team_points` that takes an array as an argument.
Array contains results of football games. Each match look like "x:y".
The method should counts the points of the team in the championship.
Rules for counting points for each match:
if x>y - 3 points
if x<y - 0 point
if x=y - 1 point
)
# Code
def team_points(arr)
  point = 0
  arr.map do |item|
      new_arr = item.split(":")
      x = new_arr[0].to_i
      y = new_arr[1].to_i
      point += 3 if x > y
      point += 0 if x < y
      point += 1 if x == y
  end
  return point
end
# Recommendations
_helper = %(
  methods `map`, `split`
 )

# Tests
describe 'team_points' do
  it { expect(team_points(['1:0', '2:0', '3:0', '4:0', '2:1', '3:1', '4:1', '3:2', '4:2', '4:3'])).to eq(30) }
  it { expect(team_points(['1:1', '2:2', '3:3', '4:4', '2:2', '3:3', '4:4', '3:3', '4:4', '4:4'])).to eq(10) }
  it { expect(team_points(['0:1', '0:2', '0:3', '0:4', '1:2', '1:3', '1:4', '2:3', '2:4', '3:4'])).to eq(0) }
  it { expect(team_points(['1:0', '2:0', '3:0', '4:0', '2:1', '1:3', '1:4', '2:3', '2:4', '3:4'])).to eq(15) }
  it { expect(team_points(['1:0', '2:0', '3:0', '4:4', '2:2', '3:3', '1:4', '2:3', '2:4', '3:4'])).to eq(12) }
end
