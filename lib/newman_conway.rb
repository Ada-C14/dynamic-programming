# Time complexity: O(n)
# Space Complexity: O(n)
def newman_conway(num)
  sequence = [0, 1, 1]

  raise ArgumentError if num == 0

  (3..num).each do |i|
    sequence << sequence[sequence[i - 1]] + sequence[i - (sequence[i - 1])]
  end

  return sequence[1..num].join(" ")
end
