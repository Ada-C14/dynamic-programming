

# Time complexity: O(n), it runs n times and n is the input to get the result. 
# Space Complexity: O(n), in the recursion, it takes n stacks to do the calculation and n is the input, 
#                         also, the track_array takes n elements to store the results from each loop.
def newman_conway(num)
  raise ArgumentError.new("#{num} must larger than 0") if num == 0
  return "1" if num == 1
  return "1 1" if num == 2
  return newman_helper(num+1, [1,1], 3).join(" ")
end

def newman_helper(num, track_array, current_num)
  return track_array if num == current_num 

  current_newman_conway_num = track_array[track_array[current_num - 2] - 1] + track_array[current_num - track_array[current_num - 2] - 1]
  track_array.push(current_newman_conway_num)

  newman_helper(num, track_array, current_num+1)
end