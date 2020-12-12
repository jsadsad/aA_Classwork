require 'byebug'
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

##we want to have a value for arr[0] and arr[1]
def okay_two_sum?(arr, target)
    sorted = arr.sort # (n log n)
    i = 0
    j = arr.length - 1
    while i < j # n
        case arr[i] + arr[j] <=> target # 1
        when 1
            j -= 1
        when 0
            return true
        when -1
            i += 1
        end
    end
    false
end

# O(n log n) + n because sort is (n log n). O(n log n) dominates the space/time.

# arr = [0, 1, 5, 7]
# p okay_two_sum?(arr, 6) # => should be true
# p okay_two_sum?(arr, 10) # => should be false


def hash_two_sum?(arr, target)
    #debugger
    hash_sum = Hash.new
    arr.each do |ele|
        hash_sum[ele] = true
    end
    arr.each do |ele|
        ans = target - ele
        return true if hash_sum[ans]
    end
    false
end
#{0:true , 1:true , 5:true , 7 :true
arr = [0, 1, 5, 7]
p hash_two_sum?(arr, 6) # => should be true
p hash_two_sum?(arr, 10) # => should be false
## hash.any?{|k,v|}
#variable = hash[]
#

##iterate through the array one elemt at a time and check 
#ans = target - ele 
#return true if hash[ans]

##false