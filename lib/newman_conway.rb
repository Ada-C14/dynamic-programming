
# Time complexity: O(n)
# Space Complexity: O(n)2
def newman_conway(num)
  raise ArgumentError if num == 0
  return "1" if num == 1
  arr = [0, 1, 1]

  current_index = 3 # why index?? 
  while num >= current_index
    arr.push(arr[arr[current_index - 1]] + arr[current_index - arr[current_index - 1]])
    current_index += 1
  end
  
  return arr[1..arr.length].join(' ')
end
