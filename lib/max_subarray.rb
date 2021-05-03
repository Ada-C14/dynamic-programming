
# Time Complexity: O(n)
# Space Complexity: O(1)
def max_sub_array(nums)
  return nil if nums.empty?

  max_sum = nums[0]
  current_sum = max_sum

  (nums[1..-1]).each do |num|
    current_sum = [current_sum + num, num].max # which is greater?: contiguous sum (current_sum + num) OR just num
    max_sum = [current_sum, max_sum].max
  end

  return max_sum
end
