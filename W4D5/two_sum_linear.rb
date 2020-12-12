def two_sum?(arr, target)
  values = {}
  arr.each do |ele|
    return true if values[target - ele]
    values[ele] = true
  end
  false
end


arr = [0, 1, 5, 7]
p two_sum?(arr, 6) # true
p two_sum?(arr, 10) # false
p two_sum?(arr, 1) # true
p two_sum?(arr, 99) # true
