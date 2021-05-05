

# Time complexity: ?
# Space Complexity: ?
def newman_conway(num)
  raise ArgumentError if num < 1

  solutions = [1, 1]
  if num == 1
    return solutions.first.to_s
  elsif num == 2
    return "#{solutions[0]} #{solutions[1]}"
  end

  current = 3
  while current <= num
    # indices start at 0, not at 1 => subtract one from each index reference
    solutions << solutions[solutions[current - 2] - 1] + solutions[current - solutions[current - 2] - 1]
    current += 1
  end

  sequence = ""
  (solutions.length - 1).times do |i|
    sequence << "#{solutions[i]} "
  end

  return sequence << "#{solutions.last.to_s}"
end