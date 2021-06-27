# Time Complexity: O(n)
# Space Complexity: O(1)
def max_sub_array(nums)
    return 0 if nums == nil

    max_ending_here = nums[0]
    max_so_far = nums[0]

    for i in (1..nums.length - 1 ) do 
        max_ending_here = [nums[i], max_ending_here + nums[i]].max
        max_so_far = [max_so_far, max_ending_here].max 
    end 
    return max_so_far

end