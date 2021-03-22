
# Time Complexity: O(n) - A max subarray will imply that adding any values from indices 
# before or after the max subarray will be sub-optimal. This is turn implies that the first index
# of the max sub array must be larger than the first index of the array. Any following values
# larger than this first subarray index can be added to the total until a number decreases that total.
# then, the max so far is saved and the this new negative number is tracked until a number exceeds it. 
# if this new negative number marks the start of a max that exceeds the previous, the overall max
# subarray is updated. This means if the best_max is not updated, cur_max does not exceed the sum of 
# the starting index of the sum stored by cur_max and all its previous elements. By saving these two values, the brute force algorithms can be quickly 
# reduced to O(n), where you only have to go through the array once. 

# Space Complexity: O(1) - there IS a subarray made, but it is implied to be re-used over and over
# for each loop or discarded at the end of each loop, and its size is not dependent on the number of 
# elements in the array. 
def max_sub_array(nums)
    return nil if nums.empty?
    
    cur_max = 0 # the "dynamic programming" storing part
    best_max = nums[0] # account for one element arrays

    nums.each{|n| best_max = [best_max, cur_max = [n, cur_max + n].max].max}

    return best_max
end
