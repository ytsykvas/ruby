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
end

array = ['1:0', '2:0', '3:0', '4:0', '2:1', '3:1', '4:1', '3:2', '4:2', '4:3']
puts team_points(array)

=begin

if x>y - 3 points
if x<y - 0 point
if x=y - 1 point

=end
