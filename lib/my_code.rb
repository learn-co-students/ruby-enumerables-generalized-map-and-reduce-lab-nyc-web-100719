def map(source_array)
  index = 0 
  source_array.each do |number|
    source_array[index] = yield(number)
    index += 1 
  end
  source_array
end 

def reduce(array, starting_point = nil)
  if starting_point
    value = starting_point
    i = 0 
  else
    value = array[0]
    i = 1 
  end
  while i < array.length 
  value = yield(value, array[i])
  i += 1 
end
value
end 


  
  
  
    
    


