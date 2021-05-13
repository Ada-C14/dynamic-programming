# Time complexity: O(n) as the number of iterations required increases as the number grows 
# Space Complexity: O(n) as the size of the solutions array grows as the size of the number grows 
def newman_conway(num)
  raise ArgumentError.new("Number must be at least greater than or equal to 1 to calculate newman conway sequence") if num <= 0 
  return "1" if num == 1
  return "1 1" if num == 2

  memo = [0, 1, 1]
  i = 3 

  while i <= num 
    memo << memo[memo[i - 1]] + memo[i - memo[i - 1]]
    i += 1 
  end

  return memo[1..-1].join(" ")
end