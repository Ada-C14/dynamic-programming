
# Time Complexity: o(n)
# Space Complexity: o(1)
def max_sub_array(nums)
  return nil if nums.empty?

  current_max = nums[0]
  max = nums[0]

  nums.each_with_index do |num, index|
    if index != 0
      current_max = [current_max + num, num].max
      max = [max, current_max].max
    end
  end
  return max
  
end