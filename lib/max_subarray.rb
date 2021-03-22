
# Time Complexity: ?
# Space Complexity: ?
def max_sub_array(nums)
    return nil if nums.empty?
    
    cur_max = 0 
    best_max = nums[0] # account for one element arrays

    nums.each{|n| best_max = [best_max, cur_max = [n, cur_max + n].max].max}
    # nums.each do |num|
    #     cur_max = cur_max + num > num ? cur_max + num : num # from two element array case
    #     best_max = best_max > cur_max ? best_max : cur_max
    # end

    return best_max
end
