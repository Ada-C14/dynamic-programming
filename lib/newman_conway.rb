

# Time complexity: O(n)
# Space Complexity: O(n)
def newman_conway(num)
  raise ArgumentError.new('num must be greater than 0') if num == 0
  return '1' if num == 1
  array = []
  array[0] = 0
  array[1], array[2] = 1, 1
  i = 3
  while i <= num
    array[i] = array[array[i-1]] + array[i - array[i - 1]]
    i += 1
  end
  array.slice!(0)
  return array.join(',').gsub(',', ' ')
end