
# Time Complexity: O(n)
# Space Complexity: O(1)
def max_sub_array(nums)
    if nums.empty? 
        return nil
    end
    max_so_far = nums[0]
    max_ending_here = 0

    nums.each do |num|
        max_ending_here += num
        if max_so_far < max_ending_here
            max_so_far = max_ending_here
        elsif max_ending_here < 0
            max_ending_here = 0
        end
        
    end
    return max_so_far
end
