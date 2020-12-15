class HashSet
  attr_reader :count
 
  def initialize(num_buckets = 8)
    @store = Array.new(num_buckets) { Array.new }
    @count = 0
  end

  def insert(key)
    if !include?(key)
      hashed = key.hash
      bucket_num = hashed % @store.length
      @store[bucket_num].push(hashed)
      @count += 1
    end
    resize! if @count >= @store.length
  end

  def include?(key)
    hashed = key.hash
    bucket_num = hashed % @store.length
    @store[bucket_num].include?(hashed)
  end

  def remove(key)
    if include?(key)
      hashed = key.hash
      bucket_num = hashed % @store.length
      @store[bucket_num].delete(hashed)
      @count -= 1
    end
  end

  private

  def [](num)
    # optional but useful; return the bucket corresponding to `num`
  end

  def num_buckets
    @store.length
  end

  def resize!
    new_buckets = num_buckets * 2
    until num_buckets == new_buckets
      @store << Array.new
    end
    @store.each_with_index do |bucket, idx|
      bucket.each do |ele|
        @store[idx].delete(ele)
        private_insert(ele)
      end
    end
  end

  def private_insert(element)
    bucket_num = element % @store.length
    @store[bucket_num].push(element)
  end
end
