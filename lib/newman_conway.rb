

# Time complexity: ?
# Space Complexity: ?
def newman_conway(num)
  raise ArgumentError if num <= 0
  return "1" if num == 1
  return "1 1" if num == 2

  result = [0, 1, 1]
  i = 3

  while i <= num
    result << result[result[i - 1]] + result[i - result[i - 1]] #P(n) = P(P(n - 1)) + P(n - P(n - 1))
    i += 1
  end
  p result

  result[1..-1].join(' ') # remove 0 
end
