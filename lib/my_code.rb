# Your Code Here


def map(array, block)
  yield array.map 
end

map(array, block) { |n| -n }

map(array, block)

map(array, block) { |n| n * 2 }

map?(array, block) { |n| n * n }



def reduce(source_array, block)
  yield source_array.reduce
end


reduce(source_array, block) { |sum, n| sum + n }


reduce(source_array, block)  { |beTrue, beFalse| beTrue && beFalse }


