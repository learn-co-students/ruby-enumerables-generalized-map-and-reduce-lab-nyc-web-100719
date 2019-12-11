def map(source_array)
i = 0
  return_array = []
    while i < source_array.length do
      return_array[i] = yield(source_array[i])
      i += 1
    end
  return return_array
end

def reduce(source_array, starting_point = 0)
  i = 0
  total = starting_point
    while i < source_array.length do
      total = yield(total, source_array[i])
      i += 1
    end
  return total
end
