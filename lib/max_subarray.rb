
# Time Complexity: ?
# Space Complexity: ?
def max_sub_array(nums)
    return nil if nums.nil?

    max_so_far = nums[0]
    max_ending_here = nums[0]

    nums.each_with_index do |number, index|
        if index > 0
            max_ending_here = [number, max_ending_here + number].max
            max_so_far = [max_so_far, max_ending_here].max
        end
    end

    return max_so_far
    
end
