
# Time Complexity: ?
# Space Complexity: ?
def max_sub_array(nums)
    return 0 if nums == nil
    return nil if nums == []
    return nums[0] if nums.length == 1 

    max_so_far = nums[0]
    max_ending_here = 0

    nums.each_with_index do |num, index| 
        i = index + 1 

        if num > max_so_far
            max_so_far = num
        end

        max_ending_here = num 

        while  i < nums.length do 
            max_ending_here = max_ending_here + nums[i]
                if (max_so_far < max_ending_here)
                    max_so_far = max_ending_here
                end
            i+=1
        end
    end


    return max_so_far
end
