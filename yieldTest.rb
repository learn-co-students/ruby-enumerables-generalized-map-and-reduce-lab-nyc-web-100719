def make_sandwich(element1, element2)
  base = "A #{element1} and #{element2}"
  testing = "I'm not sure what happens"
  puts base
  yield
  testing
end
 
make_sandwich("chicken", "a sense of malaise") do |innards|
  puts "making some tasty stuff..."
end