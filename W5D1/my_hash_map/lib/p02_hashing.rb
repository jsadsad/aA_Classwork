require "byebug"
class Integer
  # Integer#hash already implemented for you
end
# index = num
# [1,2,3] => 112233 
class Array
  def hash
    num_str = ""
    self.each_with_index do |ele, idx|
      multiplier = idx + 1
      multiplier.times do 
        num_str += ele.to_s
      end
    end
    num_str.to_i.hash
  end
end
# convert every letter to its alphabet index.
# cat = [3, 1, 20].join => "3120"
class String
  def hash
    alph = ("a".."z").to_a
    num_str = ""
    self.each_char do |char|
      index = alph.index(char)
      num_str += index.to_s
    end
    num_str.to_i.hash
  end
end

class Hash
  # This returns 0 because rspec will break if it returns nil
  # Make sure to implement an actual Hash#hash method
  #hash.keys.each, hash.values.each combine?
  #if statetment to determine if its string array or integer or hash
  def hash
    hash_arr = self.keys.sort + self.values.sort
    num_str = ""
    hash_arr.each do |ele|
      # debugger
      # if ele.class == Array
      #   num_str += to_integer(ele)
      # elsif ele.class == Integer
      #   num_str += ele.to_s
      # elsif ele.class == String
      #   num_str += to_integer(ele)
      # elsif ele.class == Symbol
      #   num_str += to_integer(ele.to_s)
      # elsif ele.class == Hash
      #   num_str += ele.hash
      # else
      case ele # don't do ele.class
      when Array
        num_str += to_integer(ele)
      when Integer
        num_str += ele.to_s
      when String
        num_str += to_integer(ele)
      when Symbol
        num_str += to_integer(ele.to_s)
      when Hash
        num_str += ele.hash
      else
        puts "this failed"
      end
    end
    num_str.to_i.hash
  end

  def to_integer(element)
    if element.is_a?(String)
      alph = ("a".."z").to_a
      num_str = ""
      element.each_char do |char|
        index = alph.index(char)
        index += 1
        num_str += index.to_s
      end
    else
      num_str = ""
      element.each_with_index do |ele, idx|
        multiplier = idx + 1
        multiplier.times do 
          num_str += ele.to_s
        end
      end
    end
    return num_str
  end

end
