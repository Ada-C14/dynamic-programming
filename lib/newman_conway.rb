
# Time complexity: O(n) - Due to memoization, each recusive call, directly dependent on 
# how large input num is, only serves to increase one step closer to the base case where
# the array already contains the newman conway sequence up to num elements. The string method
# to join the array is an O(n) operation that occurs after the recurive helper call and doesn't
# nest in the helper function, keeping time complexity at O(n). Without memoization, I think
# two recursive calls would be needed for P(n-1) and P(n - P(n-1)) (which uses P(n-1) to begin with)
# which would imply a naive O(2^n) algorithm. 

# Space Complexity: O(n) - I checked the object_id of the input array for each call 
# to verify they were the same object this time. This means it's the same array being updated one
# by one, call by call until it has a size of input num + 1 (for the dummy zero index). The stack is dependent
# on these recursive calls to increase the array size one by one, which would result in of O(n)
# space complexity running parallel and not nested. IF it was a different array for each call --
# THEN (in that case but not here) for every recursive call you are inputting an arr with one more element than the previous, which adds
# up to about O(n^2) if it's considered a different array. But it's O(n) at least for Ruby. 
def newman_conway(num)
  raise ArgumentError, "Out of range" if num < 1
  nc_arr = [0, 1, 1] # zero index helps with indexing and tracking current call in helper
  # ^ 0 is a dummy spot here

  return_array = nc_helper(nc_arr, num) # get array from helper function to convert to string

  return return_array[1..num].join(' ') # this is an O(n) operation that doesn't nest in nc_helper
end

def nc_helper(nc_arr, num)
  cur = nc_arr.length # i finally checked and this is indeed O(1) in ruby
  # base cases: cur is not seed (1 or 2) and cur has not exceeded num

  if (num > 2 && cur <= num)
    
    # memoization reduces the number of recursive calls
    # which will be stored in an array that matches the number
    result = nc_arr[nc_arr[cur - 1]] + nc_arr[(cur - nc_arr[cur - 1])]

    nc_arr << result

    nc_helper(nc_arr, num) 
  end

  return nc_arr
end