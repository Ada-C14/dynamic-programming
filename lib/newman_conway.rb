

# Time complexity: O(n) increment i by 1 from 2 to num
# Space Complexity: O(n) store all the sequences in the array
# P(n) = P(P(n - 1)) + P(n - P(n - 1))
# P(3) = P(P(2)) + P(3 - P(2))=1+1
# p(4) = P(P(3)) + P(4-P(3)) = 1 +1

def newman_conway(num)
  nc_sequence = [1]
  if num <= 0
    raise ArgumentError
  elsif num > 1
    nc_sequence << 1
    i = 2 
    while i < num
      nc_sequence << nc_sequence[nc_sequence[i - 1] - 1] + nc_sequence[i - nc_sequence[i - 1]]
      i += 1
    end
  end
  return nc_sequence.join(' ')
end
