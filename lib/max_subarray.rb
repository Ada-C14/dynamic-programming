
# Time Complexity: o(n)
# Space Complexity: o(1)
def max_sub_array(nums)
    return 0 if nums == nil
    (1...nums.size).reduce([nums.first]) { |acc, i| acc << [nums[i], acc[i - 1] + nums[i]].max }.max
end
