

# Time complexity: O(n) where n is num 
# Space Complexity: O(n) function stack call & array of (n) values
def newman_conway(num)
  return newman_helper(num, 3, [0, 1, 1]).slice(1, num).join(" ")
end

def newman_helper(num, current, memo)
  raise ArgumentError if num == 0
  if current > 2 && current <= num
    current_idx = current 
    memo[current_idx] = memo[memo[current_idx - 1]] + memo[current_idx - memo[current_idx - 1]]
    newman_helper(num, current + 1, memo)
  end

  return memo
end