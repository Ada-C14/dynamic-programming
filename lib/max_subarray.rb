
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
  
  # o(n^2) way
  # max = nums[0]
  # nums.each_with_index do |num_1, index_1|
  #   current_sum = num_1
  #   j = index_1
  #   j.upto(nums.length - 1) do |index_2|
  #     if index_1 == index_2
  #       max = nums[index_1] > max ? nums[index_1] : max
  #     else
  #       current_sum += nums[index_2]
  #       max = current_sum > max ? current_sum : max
  #     end
  #   end
  # end
  # return max
end