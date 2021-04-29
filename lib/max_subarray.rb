
# Time Complexity: O(n)
# Space Complexity: O(1)
def max_sub_array(nums)
    return 0 if nums == nil
    
    max = nums[0]
    current_sum = 0

    i = 0
    while i < nums.length
        if current_sum > 0
            current_sum += nums[i]  
        else
            current_sum = nums[i]
        end

        if current_sum > max
            max = current_sum
        end
        i += 1
    end
    
    return max
    
end
