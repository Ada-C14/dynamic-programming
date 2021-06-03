
# Time Complexity: O(n)
# Space Complexity: O(n)
def max_sub_array(nums)
    local_max = nums[0]
    max = local_max
  
    1.upto(nums.length - 1) do |i|
      if local_max > 0
        local_max += nums[i]
      else
        local_max = nums[i]
      end
        max = local_max if local_max > max
    end
  
    return max
end
