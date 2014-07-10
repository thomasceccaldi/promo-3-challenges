  # TODO: computes the sum of elements at odd indices (1, 3, 5, 7, etc.)
  #       You should make use Enumerable#each_with_index
def sum_odd_indexed(array)
  oddsum = 0
  array.each_with_index do |item, index|
    if index % 2 != 0
      oddsum += item
    end
  end
  return oddsum
end

# TODO: Return the even numbers from a list of integers.
#       You should use Enumerable#select

def even_numbers(array)
  array.select { |num| num.even? }
end

  # TODO: Take and array of words, return the array of words not exceeding max_length characters
  #       You should use Enumerable#reject

def short_words(array, max_length)

end

def first_under(array, limit)
  # TODO: Return the first number from an array that is less than limit.
  #       You should use Enumerable#find
end

def add_bang(array)
  # TODO: Take an array of strings and return a new array with "!" appended to each string.
  #       You should use Enumerable#map
end

def product(array)
  # TODO: Calculate the product of an array of numbers.
  #       You should use of Enumerable#reduce
end

def sorted_pairs(array)
  # TODO: Reorganize an array into slices of 2 elements, and sort each slice alphabetically.
  #       You should make use of Enumerable#each_slice
end


