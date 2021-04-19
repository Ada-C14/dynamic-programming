# Time Complexity: O(n)
# >> iterate through all nums in input arr
#
# Space Complexity: O(1)
# >> constant to keep track of current_max and overall_max integers
#
# PSEUDOCODE:
# >> for each iteration:
# >> add to the current_max if the sum is greater than the number itself
# >> otherwise, update current_max to the current num
# >> check if we need to update the overall_max after updating the current_max

def max_sub_array(nums)
  return 0 if nums.nil?

  overall_max = current_max = nil
  nums.each do |num|
    if current_max.nil?
      current_max = overall_max = num
    elsif num + current_max > num
      current_max += num
    else
      current_max = num
    end
    overall_max = current_max if current_max && current_max > overall_max
  end

  return overall_max
end