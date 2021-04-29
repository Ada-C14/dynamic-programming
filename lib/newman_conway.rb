

# Time complexity: O(n)
# Space Complexity: O(n)
def newman_conway(num)
  raise ArgumentError, "num must be >= 1" if num < 1
  return "1" if num == 1

  thread = [nil, 1, 1]

  i = 3
  until i > num
    current = thread[thread[i - 1]] + thread[i - (thread[i - 1])]
    thread << current

    i += 1
  end
  
  thread.shift #removes nil
  return thread.join(' ')

  
end