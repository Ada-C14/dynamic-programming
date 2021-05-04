
# Time Complexity: O(n) - iterate through the whole array
# Space Complexity: O(1) - constant variables
def max_sub_array(nums)
    return nil if nums.empty?
    
    current_streak = nums.first
    global_max = nums.first

    1.upto(nums.length - 1) do |i|
        current_streak = [nums[i], current_streak + nums[i]].max
        global_max = [global_max, current_streak].max
    end

    global_max
end
