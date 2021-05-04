

# Time complexity: O(n)
# Space Complexity: O(n)
def newman_conway(num)
  # P(1) = 1
  # P(2) = 1
  # for all n > 2
  #   P(n) = P(P(n - 1)) + P(n - P(n - 1))

  # base / edge
  raise ArgumentError, "must be greater than zero" if num <= 0
  return "1" if num == 1
  return "1 1" if num == 2

  memo = Array.new
  memo[0] = 0 # placeholder to prevent type error
  memo[1] = 1
  memo[2] = 1

  i = 3
  (3..num).each do |i|
    memo << memo[memo[i - 1]] + memo[i - (memo[i - 1])]
  end

  memo.shift # remove the placeholder
  return memo.join(" ")
end