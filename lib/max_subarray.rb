
# Time Complexity: O(n)
# Space Complexity: O(n)
def max_sub_array(nums)
    return nil if nums.empty?
#     Initialize:
    max_so_far = nums[0]
    max_ending_here = 0

# Loop for each element of the array
nums.each do |num|
    max_ending_here = max_ending_here + num
        if max_so_far < max_ending_here
            max_so_far = max_ending_here
        end
        if max_ending_here < 0
            max_ending_here = 0
        end
    end
    return max_so_far
end
