
# Time Complexity: O(n)
# Space Complexity: O(1)
def max_sub_array(nums)
    return 0 if nums == nil

    max_amount = nums[0]
    current_amount = 0
    nums.each do |num|
        current_amount += num
        if max_amount < current_amount
            max_amount = current_amount
        elsif  current_amount < 0
            current_amount = 0
        end
    end
    return max_amount
end
