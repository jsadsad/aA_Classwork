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
  end

end