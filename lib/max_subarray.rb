
# Time Complexity: O(n) - iterate through the whole array
# Space Complexity: O(1) - constant variables
def max_sub_array(nums)
    return 0 if nums == nil
    
    # there can be all negative numbers in the nums array
    max_so_far = nums[0]
    max_ending_here = nums[0]

    1.upto(nums.length-1) do |i|
        max_ending_here = [nums[i], max_ending_here + nums[i]].max
        max_so_far = [max_so_far, max_ending_here].max
    end

    max_so_far
end
