
# Time Complexity: ?
# Space Complexity: ?
def max_sub_array(nums)
    return 0 if nums == nil
    
    cur_max = next_max = 0

    nums.each do |i|
        next_max += nums
        if (next_max < 0)
            next_max = 0
        elsif (cur_max < next_max)
            cur_mar = next_max
        end
    end

    return next_max
end

def max_sub_array_helper(nums)
    
end
