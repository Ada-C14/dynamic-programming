

# Time complexity: O(n)
# Space Complexity: O(n)
def newman_conway(num)
  return raise ArgumentError if num <= 0

  array = [1]
  index = 2

  if num > 1
    array << 1
    while index < num
      array << array[array[index - 1] - 1] + array[index - array[index - 1]]
      index += 1
    end
  end

  return array.join(' ')

end