

# Time complexity: O(n)
# Space Complexity: O(n)
def newman_conway(num)
  # raise NotImplementedError, "newman_conway isn't implemented"
  raise ArgumentError if num < 1

  return "1" if num == 1
  return "1 1" if num == 2

  sequence = [0, 1, 1]

  i = 3

  (3..num).each do |i|
    sequence.push(sequence[sequence[i -1]] + sequence[i - sequence[i - 1]])
    i += 1
  end

  sequence.shift
  return sequence.join(' ')

end


# P(1) = 1
# P(2) = 1
# for all n > 2
# P(n) = P(P(n - 1)) + P(n - P(n - 1))