
# Time Complexity: O(n)
# Space Complexity: O(n)
def max_sub_array(nums)
    return 0 if nums == nil
    
    max_so_far = nums[0]
    max = nums[0]

    nums.each_with_index do |num, i|
        if i != 0
            max_so_far = [num, max_so_far + num].max
            max = [max, max_so_far].max
        end
    end
    return max
end
