

# Time complexity: O(n)
# Space Complexity: O(n) because of array
def newman_conway(num)
  raise ArgumentError if num < 1

  return "1" if num == 1

  solutions = [nil, 1, 1]
  current = 3
  while current <= num
    solutions << solutions[solutions[current - 1]] + solutions[current - solutions[current - 1]]
    current += 1
  end

  return solutions[1..-1].join(" ")
end