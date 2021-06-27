# Time complexity: O(n)
# Space Complexity: O(n)

# P(n) = P(P(n - 1)) + P(n - P(n - 1)
def newman_conway(num)
  if num < 1
    raise ArgumentError.new
  end 

  return "1" if num == 1 
  return "1 1" if num == 2
  result = [0,1,1]
 
  for i in (3..num) do 
    ans = result[result[i - 1]] + result[i - result[i - 1]]
    result.append(ans)
  end 
 
  return result[1,result.length - 1].join(" ")
end