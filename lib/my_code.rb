def map(array)
  counter = 0
  new_array = []
  while counter < array.length
    new_array << yield(array[counter]) 
    counter = counter + 1
  end 
  return new_array
end 

def reduce(array_two, place = nil)
    if place
        x =  place
        counter = 0
    else
        x = array_two[0]
        counter = 1 
    end 
        while counter < array_two.length
            x =  yield( x , array_two[counter] )
            counter = counter + 1
            end 
    return x
end