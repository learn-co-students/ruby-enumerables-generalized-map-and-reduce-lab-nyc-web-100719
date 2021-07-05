def map(array)

  i = 0 
  newarr = []
  
  while i < array.length 
    newarr << yield(array[i])
    
    i += 1 
  end 
  
  return newarr

end


def reduce(source_array, starting_point = nil)
  
  i = 0 
  
    if !!starting_point
      result = starting_point
    elsif !starting_point
      result = source_array[i]
      i += 1 
    end
  
  while i < source_array.length 

    result = yield(result, source_array[i])
    i += 1 
  end
  
  return result

end

