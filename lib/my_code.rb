# Your Code Here
def map(array)
  counter = 0
  newArr = []
  while counter < array.length do
    newArr.push yield array[counter]
    counter += 1
  end
  newArr
end

def reduce(array, startingValue = 0)
  counter = 0
  while counter < array.length do
    startingValue = yield(array[counter], startingValue)
    counter += 1
  end
  if !startingValue
    return false
  else
    startingValue
  end
end
