require "byebug"

class MaxIntSet
  attr_reader :store
  def initialize(max)
    @store = Array.new(max, false)
  end

  def insert(num)
    raise "Out of bounds" if out_of_bounds?(num)
    self.store[num] = true
  end

  def remove(num)
    self.store[num] = false
  end

  def include?(num)
    self.store[num]
  end

  private
 
  def out_of_bounds?(num)
    min = 0 
    max = self.store.length
    return true if num > max || num < min
    false
  end

  def is_valid?(num)
  end

  def validate!(num)
  end
end


class IntSet
  def initialize(num_buckets = 20)
    @store = Array.new(num_buckets) { Array.new }
  end

  def insert(num)
    bucket_num = num % @store.length
    @store[bucket_num] << num
  end

  def remove(num)
    bucket_num = num % @store.length
    @store[bucket_num].delete(num)
  end

  def include?(num)
    bucket_num = num % @store.length
    @store[bucket_num].include?(num)
  end

  private

  def [](num)
    # optional but useful; return the bucket corresponding to `num`
  end

  def num_buckets
    @store.length
  end
end

class ResizingIntSet
  attr_reader :count
  attr_reader :store

  def initialize(num_buckets = 20)
    @store = Array.new(num_buckets) { Array.new }
    @count = 0
  end

  def insert(num)
    if !include?(num)
      bucket_num = num % @store.length
      @store[bucket_num] << num
      @count += 1
    end
    resize! if @count >= @store.length
  end

  def remove(num)
    if include?(num)
      bucket_num = num % @store.length
      @store[bucket_num].delete(num)
      @count -= 1
    end
  end

  def include?(num)
    bucket_num = num % @store.length
    @store[bucket_num].include?(num)
  end

  private

  def [](num)
    # optional but useful; return the bucket corresponding to `num`
  end

  def num_buckets
    @store.length
  end

  def resize!
    new_buckets = @store.length * 2
    until @store.length == new_buckets
      @store << Array.new
    end
    @store.each_with_index do |bucket, idx|
      bucket.each do |ele|
        self.store[idx].delete(ele)
        # remove(ele)
        insert(ele)
        @count -= 1
      end
    end
  end
end
