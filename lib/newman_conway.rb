# Time complexity: O(n)
# >> O(n): create_store method will add a new array item up to the input number, num (n)
# >> O(n): iterate through each item in the store to concat to output string

# Space Complexity: O(n)
# >> O(n): nc_store will be up to size n
# >> O(n): output_str will include all n nums

# PSEUDOCODE:
# >> memoize previous items in sequence
# >> considered hash, but array works as well --> dont' really need keys

def newman_conway(num)
  raise ArgumentError, 'Input must be greater than 0' if num < 1
  return '1' if num == 1
  return '1 1' if num == 2

  nc_store = [nil, 1, 1]

  create_store(nc_store, num)

  output_str = ''
  nc_store.each_with_index do |item, ind|
    unless ind == 0
      if ind == nc_store.size - 1
        output_str << item.to_s
      else
        output_str << item.to_s + ' '
      end
    end
  end

  return output_str
end

def create_store(arr, num)
  current_ind = 3
  until current_ind > num
    # P(P(n - 1)) + P(n - P(n - 1))
    arr << arr[arr[current_ind - 1]] + arr[current_ind - arr[current_ind - 1]]
    current_ind += 1
  end
end