def anagrams?(str1, str2)
  letter_counts1 = Hash.new(0)
  letter_counts2 = Hash.new(0)

  str1.each_char { |char| letter_counts1[char] += 1 }
  str2.each_char { |char| letter_counts2[char] += 1 }

  letter_counts1 == letter_counts2
end

# This is linear. Keying into a hash is constant. The space complexity is Constant

def anagrams_one_hash?(str1, str2)
  letter_count = Hash.new(0)
  str1.each_char { |char| letter_count[char] += 1 }
  str2.each_char { |char| letter_count[char] -= 1 }

  letter_count.each_value.all? { |val| val == 0 }
end

def two_sum?(arr)
  values = {}
  arr.each do |el|
    return true if values[target - el]
    values[el] = true
  end
  # arr.each do |ele|
  #   values[el] = true
  # end
  # arr.each do |el|
  #   key = target - el
  #   return true if values[key] && key != el
  # end
  # false
end


#this is linear