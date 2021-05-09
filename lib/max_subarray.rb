
# Time Complexity: o(n)
# Space Complexity: o(1)
def max_sub_array(nums)
  return nil if nums.empty?

  # current_max = nums[0]
  # max = nums[0]

  # nums.each_with_index do |num, index|
  #   if index != 0
  #     current_max = [current_max + num, num].max
  #     max = [max, current_max].max
  #   end
  # end
  # return max

  return nil if nums.empty?

  max = nums[0]
  current_max = 0
  nums.each do |num|
    current_max += num
    if max < current_max
        max = current_max
    end
    if current_max < 0
      current_max = 0
    end
  end

  return max

end