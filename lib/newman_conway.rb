

# Time complexity: o(n)
# Space Complexity: o(n)
def newman_conway(num)
  raise ArgumentError if num == 0
  return "1" if num == 1

    list = []
    list[0] = 0
    list[1] = 1
    list[2] = 1
    i = 3
    
  while i <= num
        list[i] = list[list[i - 1]] + list[i - list[i - 1]]
        i += 1
  end

  list.shift

  return list.join(' ')
end