
# Time Complexity: O(n)
# Space Complexity: O(1)
def max_sub_array(nums)
    return nil if nums.nil? || nums.empty?
    max_sum = - 1.0 / 0
    current_sum = 0
    nums.each do |n| 
        current_sum = [n, current_sum + n].max
        max_sum = [current_sum, max_sum].max
    end
    return max_sum
end
