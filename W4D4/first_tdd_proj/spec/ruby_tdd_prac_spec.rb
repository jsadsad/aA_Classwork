require 'ruby_tdd_prac'

# describe Array do
#   subject(:test_arr) { Array.new }

#   let(:my_uniq_item) { double([1, 1, 2, 3]) }

#   describe "#my_uniq" do
#     it "should return only unique elements" do
#       expect(test_arr.my_uniq).to eq([1,2,3])
#     end
#   end
# end

describe Array do
  
  describe "#my_uniq" do
    let(:test_arr) { [1,1,2,3] }

    it "should return only unique elements" do
      expect(test_arr.my_uniq).to eq([1,2,3])
    end

  end
  
describe "#two_sum" do
  let(:test_arr) { [-1, 0, 2, -2, 1] }
  let(:no_sum_arr) { [1, 2, 4, 5] }

  it "should return the index positions of pair sums of 0" do
    expect(test_arr.two_sum).to eq([[0, 4], [2, 3]])
  end
  
  it "should return an empty array if no pairs found" do
    expect(no_sum_arr.two_sum).to eq([])
  end
end

  describe "#my_transpose" do
    let(:matrix_arr) {[
      [0, 1, 2],
      [3, 4, 5],
      [6, 7, 8]
    ]}
    it "should transpose the matrix" do
      expect(matrix_arr.my_transpose).to eq([
        [0, 3, 6],
        [1, 4, 7],
        [2, 5, 8]
      ])
    end
    it "can not use the built-in transpose method" do
      expect_any_instance_of(Array).not_to receive(:transpose)
    end

  end


end

