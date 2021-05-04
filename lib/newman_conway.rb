# P(1) = 1
# P(2) = 1
# for all n > 2
# P(n) = P(P(n - 1)) + P(n - P(n - 1))

# Time complexity: O(n)
# Space Complexity: O(n)
def newman_conway(num)
  raise ArgumentError if num.nil? || num < 1

  values = [0, 1, 1]
  output_string = ""
  3.upto(num) do |i|
    values[i] = values[values[i-1]] + values[i - values[i-1]]
  end
  1.upto(num) do |i|
    output_string << "#{values[i]} "
  end
  return output_string[0..-2]
end