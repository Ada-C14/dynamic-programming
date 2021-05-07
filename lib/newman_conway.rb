

# Time complexity: O(n)
# Space Complexity: O(n)
def newman_conway(num)
  raise ArgumentError if num < 1
  return "1" if num == 1
  return "1 1" if num == 2

  array = Array.new(num, 0)
  i = 1

  while i <= num 
    if i == 1 || i == 2
      array[i] = 1
    else
      array[i] = array[array[i - 1]] + array[i - array[i-1]]
    end
    i += 1
  end

  array.shift # remove first element
  
  return array.join(' ')
end