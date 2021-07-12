
# Time Complexity: ?
# Space Complexity: ?
def max_sub_array(nums)
    local_max = 0
    max = nil
    i = 0
    until i == nums.length
        local_max = [nums[i], nums[i] + local_max].max
        if max == nil || max < local_max
            max = local_max
        end
        i += 1
    end
    return max
end
