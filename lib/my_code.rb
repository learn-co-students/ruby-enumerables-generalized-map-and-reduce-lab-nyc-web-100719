# Your Code Here
def map(array)
  new_array = []
  
  array.each do |a|
    new_array.push(yield(a))
  end
  
  return new_array
end

def reduce(array, start = nil)
  if (start)
    sum = start
    i = 0
  else
    sum = array[0] 
    i = 1
  end
  while (i < array.length)
    sum = yield(sum, array[i])
    i += 1 
  end
  return sum
end  
