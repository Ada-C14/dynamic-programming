
# Time Complexity: O(n)
# Space Complexity: O(1)
def max_sub_array(nums)
    return 0 if nums == nil

    # raise NotImplementedError, "Method not implemented yet!"
    largest_sum = nums[0]
    current = 0

    nums.each do |n|
        largest_sum = [n, largest_sum + n].max
        current = [current, largest_sum].max
    end 
    return largest_sum
end
