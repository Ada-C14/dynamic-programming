
# Time Complexity: O(n)
# Space Complexity: O(1)
def max_sub_array(nums)
    return 0 if nums == nil
    return nil if nums.empty?

    # Initialize:
    max_so_far = max_ending_here = nums[0]

    # Loop for each element of the array
    #          (a) max_ending_here = max_ending_here + a[i]
    #          (b) if(max_ending_here < 0)
    #          max_ending_here = 0
    #          (c) if(max_so_far < max_ending_here)
    #          max_so_far = max_ending_here
    #          return max_so_far

    (1...nums.length).each do |i|
        max_ending_here = [nums[i], (max_ending_here + nums[i])].max
        max_so_far = [max_so_far, max_ending_here].max
    end

    return max_so_far
end