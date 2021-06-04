# [Newman-Conway sequence] is the one which generates the following integer sequence. 1 1 2 2 3 4 4 4 5 6 7 7….. and follows below recursive formula.

# P(1) = 1
# P(2) = 1
# for all n > 2
# P(n) = P(P(n - 1)) + P(n - P(n - 1))
# Given a number n then print n terms of Newman-Conway Sequence

# Examples:

# Input : 13
# Output : 1 1 2 2 3 4 4 4 5 6 7 7 8

# Input : 20
# Output : 1 1 2 2 3 4 4 4 5 6 7 7 8 8 8 8 9 10 11 12

# Time complexity: O(n)
# Space Complexity: O(n)
def newman_conway(num)
	raise ArgumentError, "Number must be greater than 0" if num <= 0
  return "1" if num == 1

	p = []

	n = 1
	while n <= num
		if n <= 2
			p.append(1)
		else
			# P(n) = P(P(n - 1)) + P(n - P(n - 1))
			# minus 1 to address 0 indexing
			p.append(p[p[n - 2] - 1] + p[n - p[n - 2] - 1])		
		end

		n += 1
	end

	return p.join(" ")

end
