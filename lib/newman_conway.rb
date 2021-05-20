

# Time complexity: O(n)
# Space Complexity: O(n)
def newman_conway(num)
  pairs = {1=>1, 2=>1}
  return "1" if num == 1
  raise ArgumentError if num < 1
  
  values = "1 1"
  i = 3

  until i > num
    pairs[i] = pairs[pairs[i - 1]] + pairs[i - pairs[i - 1]]
    values += " " + pairs[i].to_s
    i += 1
  end

  return values
end