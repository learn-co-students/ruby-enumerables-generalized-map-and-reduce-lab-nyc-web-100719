# Your Code Here
def map(array)
  array.length.times{|index|
  array[index] = yield(array[index])
  }
  array
end

def reduce(array, starting_point = 0)
  result = starting_point
  array.length.times{|index|
  result = yield(array[index], result)
  }
  if result == nil 
  result = false
  end
  result 
end