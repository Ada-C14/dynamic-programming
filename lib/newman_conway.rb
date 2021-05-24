

# Time complexity: ?
# Space Complexity: ?
def newman_conway(num)
#   Wave 1 Newman-Conway Sequence

# [Newman-Conway sequence] is the one which generates the following integer sequence. 1 1 2 2 3 4 4 4 5 6 7 7….. and follows below recursive formula.

# P(1) = 1
# P(2) = 1
# for all n > 2
# P(n) = P(P(n - 1)) + P(n - P(n - 1))
# 3
# Given a number n then print n terms of Newman-Conway Sequence
  #going to start with an array that has two values - a[0] = 1. a[1] = 1
  # start out at idx = 2
  # a[a[i-1]] + a[i - a[i - 1]]
  raise ArgumentError.new("num must be greater than zero") if num < 1
  return "1" if num == 1

  a = [nil, 1, 1]
  3.upto(num) {|idx| a.push(a[a[idx - 1]] + a[idx - a[idx - 1]])}
  return a.compact.join(" ")
  
end