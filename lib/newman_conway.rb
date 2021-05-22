

# Time complexity: O(n)
# Space Complexity: O(n)
def newman_conway(num)
  raise ArgumentError if num < 1

  return "1" if num == 1

  results = {}
  results[1] = 1
  results[2] = 1
  n = 3

  while n <= num
    results[n] = results[results[n-1]] + results[n - results[n - 1]]
    n += 1
  end

  return results.values.join(" ")

end