
# Time Complexity: o(n)
# Space Complexity: o(1)

def max_sub_array(nums)
    return 0 if nums == nil
    
    largest_sum = nums[0] #global max sub array 
    current = nums[0] #curren max sub array 

    (nums[1..-1]).each do |num|
    current = [num, current + num].max 
    largest_sum = [largest_sum, current].max
    end
    return largest_sum
end