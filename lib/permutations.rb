# Write a method which will take two strings as arguments 
# and returns true if one string is a permutation of the other.

def permutations?(string1, string2)
  first_hash = {}
  second_hash = {}
 
  string1.chars.each do |letter|
    first_hash[letter] = 0
  end

  string1.chars.each do |letter|
   first_hash[letter] += 1
  end

  string2.chars.each do |letter|
    second_hash[letter] = 0
  end

  string2.chars.each do |letter|
    second_hash[letter] += 1
   end

   first_hash.each do |key, value|
    if second_hash.has_key?(key) 
      if second_hash[key] == value

      else
        return false
      end
    else
      return false
    end
  end
  return true
end

