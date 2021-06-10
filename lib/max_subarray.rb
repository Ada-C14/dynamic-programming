
# Time Complexity: O(n)
# Space Complexity: O(n)
def max_sub_array(nums)
    return 0 if nums == nil
    return nil if nums.length == 0
    
    max_so_far = curr_max = nums[0]
    i = 1
    while i < nums.length
        curr_max = [nums[i], curr_max + nums[i]].max
        max_so_far = [max_so_far, curr_max].max

        i += 1
    end
    return max_so_far
end
