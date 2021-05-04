# Initialize:
#   max_so_far = 0
# max_ending_here = 0
#
# Loop for each element of the array
#          (a) max_ending_here = max_ending_here + a[i]
#          (b) if(max_ending_here < 0)
#          max_ending_here = 0
#          (c) if(max_so_far < max_ending_here)
#          max_so_far = max_ending_here
#          return max_so_far

# Time Complexity: ?
# Space Complexity: ?
def max_sub_array(nums)
   return 0 if nums.nil?
   max_so_far = nums[0]
   max_ending_here = nums[0]
   all_negative = true

   nums.each_with_index do |num, i |
      if i > 0
         max_ending_here += num
         if num > 0
            all_negative = false
         end
         if (max_ending_here < 0)
            max_ending_here = 0
         end
         if (max_ending_here > max_so_far)
            max_so_far = max_ending_here
         end
      end
   end

   return all_negative ? nums.max : max_so_far
end
