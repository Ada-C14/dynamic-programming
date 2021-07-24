

# Time complexity: ?
# Space Complexity: ?
def newman_conway(num)
  if num == 0
    raise ArgumentError
  end
  if num == 1
    return "1"
  end
  
  array = []
  array[0] = 0
  array[1] = 1
  array[2] = 1

  i = 3
  
  while i <= num
    array[i] = array[array[i-1]] + array[i - array[i - 1]]
    i += 1
  end
  
  array.slice!(0)
  
  return array.join(',').gsub(',', ' ')
end