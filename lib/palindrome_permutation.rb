
# Write a method which takes a string as an argument and returns 
# true if the letters could be re-arranged into a palindrome.

 def palindrome_permutation?(string)
    pal_per = {}

    string.chars.each do |letter|
      if pal_per[letter] == nil
         pal_per[letter] = 1
      else
        pal_per[letter] += 1
      end
    end
    
    odd_count = 0
    pal_per.each do |letter, count|
      if count % 2 == 1
        odd_count += 1
      end
    end
    return odd_count <= 1
 end
  