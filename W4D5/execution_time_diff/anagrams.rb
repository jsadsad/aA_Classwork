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
  split_word.each do |char|
    if split_anagram.include?(char)
      target_idx = split_anagram.find_index(char)
      split_anagram.delete_at(target_idx)
    end
  end
  split_anagram.empty?
end

#O(n^4) because of .each . include .find _index .delete_at (4 nested loops)

p second_anagram?("gizmo", "sally")    #=> false
p second_anagram?("elvis", "lives")    #=> true


