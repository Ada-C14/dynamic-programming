# Time complexity: O(n)
# Space Complexity: O(n)
def newman_conway(num)
raise ArgumentError if num <= 0

return '1' if num == 1
return '1 1' if num == 2

record = [0, 1, 1]
i = 3
while (i <= num) 
    record[i] = record[record[i - 1]] + record[i - record[i - 1]]
    i += 1
  end
  record[1..-1].join(' ')
end


