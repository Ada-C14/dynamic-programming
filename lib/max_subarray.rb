
# Time Complexity: O(n)
# Space Complexity: O(1)
def max_sub_array(nums)
    return nil if nums.empty?
    
    max_sum = nums.first
    current_sum = 0
    nums.each do |int|
        current_sum += int
        if max_sum < current_sum
            max_sum = current_sum
        elsif current_sum < 0
            current_sum = 0
        end
    end

    return max_sum
end
