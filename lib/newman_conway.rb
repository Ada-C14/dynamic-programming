

# Time complexity: O(n)
# Space Complexity: O(n)
def newman_conway(num)
  # raise NotImplementedError, "newman_conway isn't implemented"
  raise ArgumentError.new if num < 1

  return '1' if num == 1 
  return '1 1' if num == 2
  result = [0,1,1]

  for n in (3..num) do 
    answer = result[result[n - 1]] + result[n - result[n - 1]]
    result.push(answer)
  end 

  return result[1,result.length - 1].join(' ')
end