def anagrams?(a_string, another_string)
  #TODO: implement the obvious method to test if two words are anagrams
  return a_string.downcase.scan(/\w/).sort == another_string.downcase.scan(/\w/).sort

end


def anagrams_on_steroids?(a_string, another_string)
  #TODO: implement the improved method
  # HASH

  a_tab = a_string.downcase.chars

  another_tab = another_string.downcase.chars

  hash_a = {}

    a_tab.each do |c|
      if c=~ /\w/
        if hash_a[c]
          hash_a[c] += 1
         else
          hash_a[c] = 1
        end
      end
    end

  hash_another = {}

      another_tab.each do |c|
        if c=~ /\w/
          if hash_another[c]
            hash_another[c] += 1
           else
            hash_another[c] = 1
          end
        end
      end

    hash_another == hash_a

end

