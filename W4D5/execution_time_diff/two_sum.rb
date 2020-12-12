def bad_two_sum?(arr, target)
    arr.each_with_index do |ele1, idx1|
        arr.each_with_index do |ele2, idx2|
            if idx2 > idx1
                return true if ele1 + ele2 == target
            end
        end
    end
    false
end

##O(n^2) because we have 2 nested loops iterating twice
##we want to have a value for arr1 and arr0, so that 
def okay_two_sum?(arr, target)
    sorted = arr.sort

end



arr = [0, 1, 5, 7]
p bad_two_sum?(arr, 6) # => should be true
p bad_two_sum?(arr, 10) # => should be false