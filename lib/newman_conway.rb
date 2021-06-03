

# Time complexity: O(n) where n is the number of elements in the array
# Space Complexity: O(n) - Compact makes a copy of the array. 
def newman_conway(num)
#   Wave 1 Newman-Conway Sequence

# [Newman-Conway sequence] is the one which generates the following integer sequence. 1 1 2 2 3 4 4 4 5 6 7 7….. and follows below recursive formula.


  raise ArgumentError.new("num must be greater than zero") if num < 1
  return "1" if num == 1

  a = [nil, 1, 1]
  3.upto(num) {|idx| a.push(a[a[idx - 1]] + a[idx - a[idx - 1]])}
  return a.compact.join(" ")
  
end