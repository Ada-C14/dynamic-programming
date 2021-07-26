# Time Complexity: O(n) where n = nums
# Space Complexity: O(1) only storing integers
def max_sub_array(nums)
    return 0 if nums == nil
    return nil if nums.empty?
    
    max_so_far = nums[0]
    max_ending_here = 0

    nums.each do |num|

        if max_ending_here < 0
            max_ending_here = num
        else
            max_ending_here += num
        end

        if max_ending_here > max_so_far
            max_so_far = max_ending_here
        end

    end
    return max_so_far    
end