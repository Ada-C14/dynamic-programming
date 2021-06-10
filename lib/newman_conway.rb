
# P(n) = P(P(n - 1)) + P(n - P(n - 1))
# Time complexity: O(n)
# Space Complexity: O(n)
def newman_conway(num)
  raise ArgumentError if num == 0
  return "1" if num == 1

  result = [0, 1, 1]

  i = 3
  while i <= num
    result[i] = result[result[i - 1]] + result[i - result[i - 1]]
    i += 1
  end

  string = result[1..-1].join(" ")

  return string
end 