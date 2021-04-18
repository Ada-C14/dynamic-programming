# Time complexity: ?
# Space Complexity: ?
#
# PSEUDOCODE:
# >> memoize previous items in sequence

def newman_conway(num)
  raise ArgumentError, 'Input must be greater than 0' if num < 1
  return '1' if num == 1
  return '1 1' if num == 2

  nc_store = { 1 => 1, 2 => 1 }

  create_store(nc_store, num)

  output_str = ''
  counter = 0
  nc_store.each do |k, v|
    if counter == nc_store.size - 1
      output_str << v.to_s
    else
      output_str << v.to_s + ' '
    end
    counter += 1
  end

  return output_str
end

def create_store(hash, num)
  prev_item = 3
  until prev_item > num
    # P(P(n - 1)) + P(n - P(n - 1))
    hash[prev_item] = hash[hash[prev_item - 1]] + hash[prev_item - hash[prev_item - 1]]
    prev_item += 1
  end
end