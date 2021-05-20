
# Time Complexity: O(n)
# Space Complexity: O(n)
def max_sub_array(nums)
    array_of_max_sum_ending_in_i = []
    array_of_max_sum_ending_in_i[0] = nums[0]

    i = 1
    while i < nums.length do
        array_of_max_sum_ending_in_i[i] = [array_of_max_sum_ending_in_i[i - 1] + nums[i], nums[i]].max
        i += 1
    end
    return array_of_max_sum_ending_in_i.max
end
