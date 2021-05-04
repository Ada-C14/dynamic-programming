

# Time complexity: O(n) - until loop starts at 3 and runs up to num
# Space Complexity: O(n) - dp_arr is correlated with the num
def newman_conway(num)
  # print an array? what's the format of the output?
  raise ArgumentError if num < 1
  return "1" if num == 1
  return "1 1" if num == 2
  dp_arr = [1,1]

  n = 3
  until n > num
    dp_arr << dp_arr[dp_arr[n - 2] - 1] + dp_arr[(n - dp_arr[n - 2] - 1)]
    n += 1
  end

  dp_arr.join(" ")
end