
# Time Complexity: O(n) traverse the array
# Space Complexity: O(1) only integers and 2 elements array are created
def max_sub_array(nums)
  return 0 if nums == nil
  current_sum = 0
  max_sum = nums[0]
  nums.each do |num|
    current_sum = [num, current_sum + num].max
    max_sum = [max_sum, current_sum].max
  end
  return max_sum
end
