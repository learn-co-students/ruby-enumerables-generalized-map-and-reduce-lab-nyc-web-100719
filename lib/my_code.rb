def map(source_arr) 
  new_arr = []
  source_arr.length.times { |index|
    new_arr << yield(source_arr[index])
  }
  new_arr
end 

def reduce(source_arr, start_value = 0)
  new_value = start_value
  source_arr.length.times { |index|
    if new_value.is_a?(Integer) ? new_value = yield(source_arr[index], new_value) : new_value = !!yield(source_arr[index], new_value)
    end
  }
  p new_value
end 
