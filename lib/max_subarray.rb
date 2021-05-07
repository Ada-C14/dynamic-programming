
# Time Complexity: ?
# Space Complexity: ?
def max_sub_array(nums)
    return 0 if nums == nil
    
    max = nums[0]
    max_sum = nums[0]
    i = 1

    while i <= (nums.length - 1)
        max = [nums[i], (max + nums[i])].max
        max_sum = max if max > max_sum
        i += 1
    end
    return max_sum
end
