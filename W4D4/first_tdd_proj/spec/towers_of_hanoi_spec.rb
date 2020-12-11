require 'towers_of_hanoi'

describe "#move" do
  let(:matrix) { [[1,2,3,4,5], [], []] }
  it "can not be more than 1 greater than or less than disk" do
    expect(matrix.move).to eq()
end