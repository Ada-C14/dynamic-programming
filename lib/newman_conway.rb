

# Time complexity: ?
# Space Complexity: ?
def newman_conway(num)
  raise ArgumentError, "Out of range" if num < 1
  nc_arr = [0, 1, 1] # zero index helps with indexing

  return_array = nc_helper(nc_arr, num)

  return return_array[1..num].join(' ') # this is an O(n) operation that doesn't nest in nc_helper
end

def nc_helper(nc_arr, num)
  cur = nc_arr.length # i finally checked and this is indeed O(1) in ruby
  
  if (num > 2 && cur <= num)

    result = nc_arr[nc_arr[cur - 1]] + nc_arr[(cur - nc_arr[cur - 1])]

    nc_arr << result

    nc_helper(nc_arr, num) 
  end

  return nc_arr
end

puts newman_conway(1)