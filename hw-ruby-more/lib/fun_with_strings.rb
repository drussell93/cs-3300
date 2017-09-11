module FunWithStrings
  
  # Take the input value and downcase all the letters, then ignore non-word
  # characters. Check if this value is equal to the input value downcased,
  # ignoring non-word characters, AND reversed. If it is equal (it is a 
  # palindrome), return true. If it's not equal (not a palindrome) return false.
  def palindrome? 
    self.downcase.gsub(/\W+/,'') == self.downcase.reverse.gsub(/\W+/,'')
  end
  
  # Setup the hash.
  # Downcase all the letters in the input string, then ignore non-word chars.
  # Iterate through each word in the input string and get the size of each word.
  # Put the word plus its size into the hash.
  def count_words
    inputWord = Hash.new(0)
    self.downcase.gsub(/\w+/).each {|word| inputWord[word] = self.downcase.scan(/\b#{word}\b/).size} 
    inputWord
  end
  
  # Take the input string and split it into groups where:
  # Each word is downcased and sorted by value [meaning words with the same 
  # values - anagrams - (num of chars and type of chars | eg rat tar art)] are 
  # grouped together. Downcasing only affects the output.
  def anagram_groups
    self.split.group_by { |word| word.downcase.split('').sort }.values
  end
end

# make all the above functions available as instance methods on Strings:

class String 
  include FunWithStrings
end
