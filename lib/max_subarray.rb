
# Time Complexity: O(n)
# Space Complexity: O(1)
def max_sub_array(nums)
    return nil if nums.empty?
    
    # raise NotImplementedError, "Method not implemented yet!"
    max_so_far = nums[0]
    current_max = 0

    nums.each do |num|
        
        current_max += num

        if max_so_far < current_max
            max_so_far = current_max
        elsif current_max < 0
            current_max = 0
        end

    end

    return max_so_far   

end