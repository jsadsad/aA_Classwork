# Execution Time Differences/Algorithms

#phase 1
# compares each element to every other element of the list. Return the element if all other elements in the array are larger.
# def my_min(list)
#   min = 0
#   list.each do |ele|
#     list.each do |ele2|
#       min = ele if ele < ele2 && ele < min
#     end
#   end
#   min
# end

#O(n^2) because we are iterating through the array 2 times for each element

#phase 2
# def my_min(list)
#   min = list[0]
#   (0...list.length).each do |i| 
#     min = list[i] if list[i] < min
#   end
#   min
# end

#O(n) because we are iterating through the array only once.

# list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
# p my_min(list)  # =>  -5

# --------------------------------------------------------------

def largest_contiguous_subsum(list)
  subs = []
end
# list = [5, 3, -7]
# largest_contiguous_subsum(list) # => 8

# possible sub-sums
# [5]           # => 5
# [5, 3]        # => 8 --> we want this one
# [5, 3, -7]    # => 1
# [3]           # => 3
# [3, -7]       # => -4
# [-7]          # => -7
