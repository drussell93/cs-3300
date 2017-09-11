# When done, submit this entire file to the autograder.

# Part 1

# Start with the base case and sum up all the values inside the array
# using one of Ruby's enumerable methods
def sum arr
  arr.inject(0){|sum,i| sum + i }
end

# Using recursion - If the array is empty then return 0. 
# Otherwise get the two max values inside the array and sum them.
def max_2_sum arr
  arr.empty? ? 0 : arr.max(2).reduce(:+) 
end

# Only check for unique elements in the array and combine all possible 
# combinations of 2 different numbers in the array. If arr = [1, 2, 3] it would 
# produce: [[1,2], [1,3], [2,3]]. Detect checks if the sums of the two numbers 
# add up to n. If the sums add up to n, return the combination. If the sum does 
# not add up to n then return false (nil).
# Double negate (!!) the result of the detect method to return true for 
# detecting the combination.
def sum_to_n? arr, n
  !!arr.uniq.combination(2).detect { |x, y| x + y == n }
end



# Part 2

# Return string "Hello, " with the input string (name) concatenated to it.
def hello(name)
  return "Hello, #{name}"
end

# If the string starts with a vowel that is upper or lower case or starts with 
# a non-word character (1-9, special chars), then return false.
# Else return true (implying the string starts with a consonant).
# \W checks for non-word characters.
def starts_with_consonant? s
   if /^[^aeiouAEIOU\W]/.match(s) == nil
    return false
  else
    return true
   end
end

# Check whether the binary number ends with 00 [a multiple of 4 (decimal) for 
# binary would be a number ending in 00 since 4(d) = 100(b)]
# Or check whether the binary number ends with 0 (for the 0 case).
# Otherwise return false.
def binary_multiple_of_4? s
  if /^[10]*00$/.match(s) or /^[10]*0$/.match(s) 
    return true
  else 
    return false
  end
end



# Part 3

# Set the attributes (isbn and price).
# Build the constructor (with error handling to ensure isbn is not empty and 
# the price of the book is >= 0).
# Call method that outputs the price formatted for currency ($ with 2 decimal 
# places).
class BookInStock
# Attributes
attr_accessor :isbn, :price

# Constructor
def initialize isbn, price
  raise ArgumentError if isbn.empty? or price <= 0
  @isbn = isbn
  @price = price
end
# Formatted price of book
def price_as_string
  format("$%.2f", @price)
end
end
