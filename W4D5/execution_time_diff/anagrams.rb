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

def second_anagram?(word, anagram)
  #debugger
  #iterating through anagram and if we find that letter inisde word, then delete it from the anagram
  split_word = word.split("")
  split_anagram = anagram.split("")
  split_word.each do |char| # 1
    if split_anagram.include?(char) 
      target_idx = split_anagram.find_index(char) # not nested. 
      split_anagram.delete_at(target_idx) # not nested.
    end
  end
  split_anagram.empty?
end

#O(n * m) - we don't know the size of the strings. Polynomial 

# p second_anagram?("gizmo", "sally")    #=> false
# p second_anagram?("elvis", "lives")    #=> true

# Write a method #third_anagram? that solves the problem by sorting both strings alphabetically. The strings are then anagrams if and only if the sorted versions are the identical.

# What is the time complexity of this solution? Is it better or worse than #second_anagram??

def third_anagram?(word, anagram)
  word_arr = word.split("").sort!
  anagram_arr = anagram.split("").sort!

  return word_arr == anagram_arr
end

# m is to define the other variable.
# (n log n) + (m log m) + m + n
# .sort is a `(n log n) because it is a quicksort`
# .split is an O(n)

# def fourth_anagram?(word, anagram)
#   word_hash = Hash.new(0)
#   anagram_hash = Hash.new(0)

#   word.each_char { |char| word_hash[char] += 1 }
#   anagram.each_char { |char| anagram_hash[char] += 1 }

#   word_hash == anagram_hash
# end

def fourth_anagram?(word, anagram)
  word_hash = Hash.new(0)

  word.each_char { |char| word_hash[char] += 1 }
  anagram.each_char { |char| word_hash[char] -= 1 }

  word_hash.all? { |k,v| v == 0 }
end

# O(n) + m
# mention m when the lengths are different

p fourth_anagram?("gizmo", "sally")    #=> false
p fourth_anagram?("elvis", "lives")    #=> true


