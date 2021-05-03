
# Time Complexity: O(n), it runs n times and n is the length of the input array to find the largest subarray.
# Space Complexity: O(n), although it uses limited variable to store the temp max value, 
#                         it calls n stacks in the recursion to do the calculation,
#                         and n is the length of the input array. So it's O(n).
def max_sub_array(nums)
    return nil if nums.empty?
    current_max = final_max = nums[0]
    return subarray_helper(nums, 1, current_max, final_max)
end

def subarray_helper(nums, index, current_max, final_max)
    return final_max if nums.length == index
    current_max = [current_max + nums[index], nums[index]].max
    subarray_helper(nums, index+1, current_max, [current_max, final_max].max)
end
