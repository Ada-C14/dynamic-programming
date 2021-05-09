# Time complexity: O(n)
# Space Complexity: O(n)
def newman_conway(num)
  raise ArgumentError.new("Input must be an integer greater than zero") if num < 1
  return "1" if num == 1
  nums = {}
  nums[1] = 1
  nums[2] = 1
  n = 3
  while n <= num
    nums[n] = nums[nums[n - 1]] + nums[n - nums[n - 1]]
    n += 1
  end
  return nums.values.join(" ")
end