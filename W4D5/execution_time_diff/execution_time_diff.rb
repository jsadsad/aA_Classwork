require 'byebug'

# Execution Time Differences/Algorithms

#phase 1
# compares each element to every other element of the list. Return the element if all other elements in the array are larger.
def my_min(list)
  min = 0
  list.each do |ele|
    list.each do |ele2|
      min = ele if ele < ele2 && ele < min
    end
  end
  min
end

#O(n^2) because we are iterating through the array 2 times for each element

#phase 2
def my_min(list)
  min = list[0]
  (0...list.length).each do |i| 
    min = list[i] if list[i] < min
  end
  min
end

#O(n) because we are iterating through the array only once.

# list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
# p my_min(list)  # =>  -5

# --------------------------------------------------------------

def largest_contiguous_subsum(list)
  subs = []
  list.each_with_index do |ele1, idx1|
    (idx1..list.length-1).each do |idx2|
      subs.push(list[idx1..idx2])
    end
  end
  subs_sum = subs.map{|sub_arr| sub_arr.sum}
  subs_sum.flatten.max
end
# list = [5, 3, -7]
# p largest_contiguous_subsum(list) # => 8

# possible sub-sums
# [5]           # => 5
# [5, 3]        # => 8 --> we want this one
# [5, 3, -7]    # => 1
# [3]           # => 3
# [3, -7]       # => -4
# [-7]          # => -7

# list = [2, 3, -6, 7, -6, 7]
# [2],[2,3], [2,3,-6],..., [3], [3 -6]

# p largest_contiguous_subsum(list)

# list = [-5, -1, -3]
# p largest_contiguous_subsum(list) # => -1 (from [-1])

##O(n^2 + n)
#O(n^3)

def largest_contiguous_subsum(list)
  largest_sum = 0
  current_sum = list[0]
  (1...list.length).each do |i|
    current_sum = 0 if current_sum < 0 #we need to reset current sum if we hit a negative number
    current_sum += list[i]
    largest_sum = current_sum if current_sum > largest_sum
  end
  largest_sum
end

# This is an O(n) because we are only indexing by 1 time.

# list = [2, 3, -6, 7, -6, 7]
# p largest_contiguous_subsum(list)