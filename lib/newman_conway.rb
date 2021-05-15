

# Time complexity: O(n)
# Space Complexity: O(n), always creating 1 array num + 1 length long and 1 string proprtionate to n 
# P(1) = 1
# P(2) = 1
# for all n > 2
# P(n) = P(P(n - 1)) + P(n - P(n - 1))
# 1 1 2 2 3 4 4 4 5 6 7 7….
def newman_conway(num)
  raise ArgumentError, "num must be > 0" if num < 1

  return "1" if num == 1
  return "1 1" if num == 2

  ncs_numbers = Array.new(num + 1)
  ncs_numbers[1] = 1
  ncs_numbers[2] = 1

  n = 3

  ncs_string = "1 1"
  while n <= num
    ncs_numbers[n] = ncs_numbers[ncs_numbers[n-1]] + ncs_numbers[n - ncs_numbers[n-1]]
    ncs_string << " " 
    ncs_string << ncs_numbers[n].to_s
    n += 1
  end

  return ncs_string
end