
# Time Complexity: O(n)
# Space Complexity: (1)
def max_sub_array(nums)
	return nil if nums.empty?

	max_ending_here = 0
	# set max so far as first element in case array is totally negative
	max_so_far = nums[0]

	nums.each do |num|
		max_ending_here = max_ending_here + num
		
		# if current element is greater then the max ending here, reset the max ending here as the current element
		if max_ending_here < num
			max_ending_here = num
		end
		
		# if max ending here is greater than max so far, include the current element in max so far
		if max_so_far < max_ending_here
			max_so_far = max_ending_here
		end

	end

	return max_so_far
end
