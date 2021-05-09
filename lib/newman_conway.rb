# Time complexity: O(n)
# Space Complexity: O(n)
def newman_conway(num)
  raise ArgumentError.new("cant be less than 1") if num < 1

  return "1" if num == 1
  array = [nil, 1, 1]

  3.upto(num) do |i|                                              # time: o(n)
    array[i] = array[array[i - 1]] + array[i - array[i - 1]]
  end

  return array[1..-1].join(" ")                                   # space: o(n), time: o(n)
end