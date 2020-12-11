require 'byebug'

# Write a method #first_anagram? that will generate and store all the possible anagrams of the first string. Check if the second string is one of these.

# Hints:

def anagrams?(word, anagram)
  # subs = []
  # (0...word.length).each do |i1|
  #   (0...word.length).each do |i2|
  #     if i2 > i1
  #       subs << word[i1..i2]
  #     end
  #   end
  # end
  # subs
  perms = word.split("").permutation.to_a
  perms.any? { |word_arr| word_arr.join("") == anagram }
end

# O(n!) because permutations. Recursive loop on the length of the string - 1

