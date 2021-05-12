

# Time complexity: O(n)
# Space Complexity: O(n)
def newman_conway(num)
  raise ArgumentError if num < 1
  p = [0, 1, 1]
  
  i = 3
  while i <= num
    p << p[p[i - 1]] + p[i - p[i - 1]]
    
    i += 1
  end

  return p[1..num].join(" ")
end
