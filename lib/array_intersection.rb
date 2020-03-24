#Design and implement a method that takes two integer arrays with unique 
#values and returns their intersection in a new array.
def intersection(array1, array2)
  intersection = []
  new_hash = {}
  
  array1.each do |number1|
    new_hash[number1] = 1
  end

  array2.each do |number2|
    if new_hash[number2] == 1
      intersection << number2
    end
  end
  return intersection
    
end

