class Array

  def my_uniq
    arr = []
    self.each do |ele|
      arr.push(ele) if !arr.include?(ele)
    end
    arr
  end

  def two_sum
    pair_positions = Array.new
    self.each_with_index do |el1, idx1|
      self.each_with_index do |el2, idx2|
        if idx2 > idx1
        pair_positions.push([idx1, idx2]) if el1 + el2 == 0
        end
      end
    end
    pair_positions
  end

  def my_transpose
    arr = Array.new(self.length){Array.new(self.length)}
    self.each_with_index do |ele1, idx1|
      ele1.each_with_index do |ele2, idx2|
        arr[idx2][idx1] = self[idx1][idx2]
      end
    end
    arr
  end

#   Stock Picker
# Write a method that takes an array of stock prices (prices on days 0, 1, ...), and outputs the most profitable pair of days on which to first buy the stock and then sell the stock. Remember, you can't sell stock before you buy it!

  def stock_picker
    biggest_sum = Hash.new{|h,v|h[v] = []}
    combinations_arr = []
    self.each_with_index do |ele1, idx1|
      self.each_with_index do |ele2, idx2|
        if idx2 > idx1
          combinations_arr.push([ele1, ele2])
        end
      end
    end
    combinations_arr.each do |subarr|
      biggest_sum[subarr.sum] = subarr
    end
    biggest_sum.max[-1]
  end
end