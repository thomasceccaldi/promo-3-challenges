# Warning:
# - One line of code for each method
# - Just look in the doc for the right method of the String, Fixnum, and Array classes !

def get_rid_of_surrounding_whitespaces(a_string)
  return a_string.strip
end

def belongs_to?(a_string, a_word)
  return a_string.include? a_word
end

def replace(initial_string, old_letter, new_letter)
  return initial_string.sub old_letter, new_letter
end

def exactly_divide(an_integer, a_divider)
  return an_integer.to_f / a_divider
end

def is_divisible_by_two(an_integer)
  return an_integer.modulo(2).zero?
end

def random_subset(an_array, sample_size)
  return an_array.sample(sample_size)
end

def randomize(an_array)
  return an_array.shuffle
end

def ascending_order(an_array)
  return an_array.sort
end