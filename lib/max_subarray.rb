# Kadane's algorithm
# Initialize:
#     max_so_far = 0
#     max_ending_here = 0

# Loop for each element of the array
#   (a) max_ending_here = max_ending_here + a[i]
#   (b) if(max_ending_here < 0)
#             max_ending_here = 0
#   (c) if(max_so_far < max_ending_here)
#             max_so_far = max_ending_here
# return max_so_far
# TODO https://leetcode.com/problems/maximum-subarray/ - below solution doesn't work on Leetcode, go back & review

# Time Complexity: O(n) to iterate through the entire nums array 
# Space Complexity: O(1) given that the space required for max_so_far and max_ending_here do not change with the size of nums
def max_sub_array(nums)
    return nil if nums.empty? 
    
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
